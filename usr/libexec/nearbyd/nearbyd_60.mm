uint64_t sub_100493EA4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a1 + 8);
  if (v3 != *(a1 + 12))
  {
    sub_1004D1FE0();
  }

  if (*(a2 + 24) < v3)
  {
    sub_1004D2038();
  }

  if (*(a2 + 28) < v3)
  {
    sub_1004D200C();
  }

  sub_1003A8CFC(a2, a1);
  v6 = *(a2 + 12);
  v7 = *(a2 + 32);
  v15 = *(a2 + 20);
  result = dpotrf_NEWLAPACK();
  *a3 = 1;
  if (v6)
  {
    v9 = 0;
    v10 = *(a2 + 32);
    v11 = v6 - 1;
    v12 = 1;
    do
    {
      ++v9;
      v13 = v12;
      v14 = v11;
      if (v9 < v6)
      {
        do
        {
          *(v10 + 8 * v13++) = 0;
          --v14;
        }

        while (v14);
      }

      --v11;
      v12 += v6 + 1;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t sub_100494088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0xC0000000CLL;
  *(a1 + 8) = xmmword_10089D980;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD250;
  *(a1 + 1192) = a2;
  *(a1 + 1224) = 0xC00000001;
  *(a1 + 1200) = off_1009ACEF0;
  *(a1 + 1208) = xmmword_10089DA70;
  *(a1 + 1232) = a1 + 1240;
  v7 = a1 + 1288;
  *(a1 + 1312) = 0xC00000001;
  *(a1 + 1288) = off_1009ACEF0;
  *(a1 + 1296) = xmmword_10089DA70;
  *(a1 + 1320) = a1 + 1328;
  sub_1004935F8(a1 + 1200, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 1216);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 1304);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 1232) + v12), *(*(a1 + 1320) + 4 * i));
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

void sub_100494268(_Unwind_Exception *a1)
{
  v1[161] = off_1009A90F0;
  v1[150] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1004942C8(void *a1)
{
  a1[161] = off_1009A90F0;
  a1[150] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100494338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0xC00000006;
  *(a1 + 8) = xmmword_10089D970;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD298;
  *(a1 + 616) = a2;
  *(a1 + 648) = 0x600000001;
  *(a1 + 624) = off_1009ACF38;
  *(a1 + 632) = xmmword_10089D9C0;
  *(a1 + 656) = a1 + 664;
  v7 = a1 + 688;
  *(a1 + 712) = 0xC00000001;
  *(a1 + 688) = off_1009ACEF0;
  *(a1 + 696) = xmmword_10089DA70;
  *(a1 + 720) = a1 + 728;
  sub_1004935F8(a1 + 624, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 640);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 704);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 656) + v12), *(*(a1 + 720) + 4 * i));
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

void sub_10049452C(_Unwind_Exception *a1)
{
  v1[86] = off_1009A90F0;
  v1[78] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_10049458C(void *a1)
{
  a1[86] = off_1009A90F0;
  a1[78] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_1004945FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000006;
  *(a1 + 8) = xmmword_10089D7B0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD2E0;
  *(a1 + 360) = 0x600000001;
  *(a1 + 328) = a2;
  *(a1 + 336) = off_1009ACF38;
  *(a1 + 344) = xmmword_10089D9C0;
  *(a1 + 368) = a1 + 376;
  v7 = a1 + 400;
  *(a1 + 424) = 0x600000001;
  *(a1 + 400) = off_1009ACF38;
  *(a1 + 408) = xmmword_10089D9C0;
  *(a1 + 432) = a1 + 440;
  sub_1004935F8(a1 + 336, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 352);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 416);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 368) + v12), *(*(a1 + 432) + 4 * i));
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

void sub_1004947D8(_Unwind_Exception *a1)
{
  v1[50] = off_1009A90F0;
  v1[42] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100494838(void *a1)
{
  a1[50] = off_1009A90F0;
  a1[42] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

_DWORD *sub_1004948A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    sub_1004D2274();
  }

  if (a1 == a3)
  {
    sub_1004D2248();
  }

  if (a1 == a4)
  {
    sub_1004D221C();
  }

  if (a2 == a3)
  {
    sub_1004D21F0();
  }

  if (a2 == a4)
  {
    sub_1004D21C4();
  }

  if (a3 == a4)
  {
    sub_1004D2198();
  }

  v8 = *(a1 + 8);
  if (*(a4 + 24) < v8)
  {
    sub_1004D216C();
  }

  v9 = *(a1 + 12);
  if (*(a4 + 28) < v9)
  {
    sub_1004D2140();
  }

  v10 = *(a2 + 24);
  if (v8 >= v9)
  {
    if (v10 < v9)
    {
      sub_1004D2064();
    }
  }

  else if (v10 < v8)
  {
    sub_1004D2114();
  }

  if (*(a3 + 24) < v9)
  {
    sub_1004D20E8();
  }

  if (*(a3 + 28) < v9)
  {
    sub_1004D20BC();
  }

  sub_1003A8CFC(a4, a1);
  v11 = *(a4 + 32);
  v12 = *(a2 + 32);
  v13 = *(a3 + 32);
  v14 = *(a3 + 28) * *(a3 + 24);
  v28 = *(a4 + 12);
  v29 = *(a4 + 8);
  v27 = *(a4 + 20);
  v15 = dgeqrf_NEWLAPACK();
  if (v14 < **(a3 + 32) && cnprint::CNPrinter::GetLogLevel(v15) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  if (*(a1 + 8) >= *(a1 + 12))
  {
    v16 = *(a1 + 12);
  }

  else
  {
    v16 = *(a1 + 8);
  }

  sub_1003A8C00(a2, v16, 1);
  result = sub_1003A8C00(a3, *(a3 + 24), *(a3 + 28));
  v18 = *(a4 + 12);
  if (v18)
  {
    v19 = 0;
    v20 = *(a4 + 8);
    v21 = *(a4 + 32);
    v22 = v20 - 1;
    v23 = *(a4 + 20) + 1;
    v24 = 1;
    do
    {
      ++v19;
      v25 = v24;
      v26 = v22;
      if (v19 < v20)
      {
        do
        {
          *(v21 + 8 * v25++) = 0;
          --v26;
        }

        while (v26);
      }

      --v22;
      v24 += v23;
    }

    while (v19 != v18);
  }

  return result;
}

uint64_t sub_100494BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A96E8;
  if (a2 > 1)
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

uint64_t sub_100494D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x200000001;
  *(a1 + 8) = xmmword_10089DA80;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD400;
  *(a1 + 88) = 0x200000001;
  *(a1 + 56) = a2;
  *(a1 + 64) = off_1009ACF80;
  *(a1 + 72) = xmmword_10089DA80;
  *(a1 + 96) = a1 + 104;
  sub_1004935F8(a1 + 64, a3);
  v5 = *(a1 + 72);
  if (*(a1 + 24) < v5)
  {
    v10 = "this->max_num_rows_ >= num_rows";
    v11 = 422;
    goto LABEL_9;
  }

  v6 = *(a1 + 76);
  if (*(a1 + 28) < v6)
  {
    v10 = "this->max_num_cols_ >= num_cols";
    v11 = 423;
LABEL_9:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v11, v10);
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = v6 * v5;
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a1 + 32) + 8 * i) = *sub_100494ED8(a2, *(*(a1 + 96) + 4 * i));
    }
  }

  return a1;
}

void sub_100494E98(_Unwind_Exception *a1)
{
  v1[8] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_100494ED8(uint64_t a1, unsigned int a2)
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

  return v2 + 8 * a2;
}

void sub_100494F14(void *a1)
{
  a1[8] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100494F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000001;
  *(a1 + 8) = xmmword_10089D9C0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD448;
  *(a1 + 120) = 0x100000001;
  *(a1 + 88) = a2;
  *(a1 + 96) = off_1009AA310;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 104) = v7;
  *(a1 + 128) = a1 + 136;
  v8 = a1 + 144;
  *(a1 + 168) = 0x600000001;
  *(a1 + 144) = off_1009ACF38;
  *(a1 + 152) = xmmword_10089D9C0;
  *(a1 + 176) = a1 + 184;
  sub_1004935F8(a1 + 96, a3);
  sub_1004935F8(v8, a4);
  v9 = *(a1 + 112);
  if (*(a1 + 24) < v9)
  {
    v17 = "this->max_num_rows_ >= num_rows";
    v18 = 422;
    goto LABEL_12;
  }

  v10 = *(a1 + 160);
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
          v15 = sub_1003A9F6C(a2, *(*(a1 + 128) + v13), *(*(a1 + 176) + 4 * i));
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

void sub_100495138(_Unwind_Exception *a1)
{
  v1[18] = off_1009A90F0;
  v1[12] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100495198(void *a1)
{
  a1[18] = off_1009A90F0;
  a1[12] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100495208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000002;
  *(a1 + 8) = xmmword_10089D9D0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD490;
  *(a1 + 168) = 0x200000001;
  *(a1 + 136) = a2;
  *(a1 + 144) = off_1009ACF80;
  *(a1 + 152) = xmmword_10089DA80;
  *(a1 + 176) = a1 + 184;
  v7 = a1 + 192;
  *(a1 + 216) = 0x600000001;
  *(a1 + 192) = off_1009ACF38;
  *(a1 + 200) = xmmword_10089D9C0;
  *(a1 + 224) = a1 + 232;
  sub_1004935F8(a1 + 144, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 160);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 208);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 176) + v12), *(*(a1 + 224) + 4 * i));
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

void sub_1004953F4(_Unwind_Exception *a1)
{
  v1[24] = off_1009A90F0;
  v1[18] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100495454(void *a1)
{
  a1[24] = off_1009A90F0;
  a1[18] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100495550(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000006;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009ACE18;
  if ((a2 & 0x80000000) != 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
LABEL_8:
    v5 = "cnmatrix.h";
    v6 = "CNMatrix";
    goto LABEL_12;
  }

  if ((a3 & 0x80000000) != 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
    goto LABEL_8;
  }

  if (a2 > 6)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
LABEL_11:
    v5 = "cnmatrixbase.h";
    v6 = "SetMatrixSize";
LABEL_12:
    __assert_rtn(v6, v5, v4, v3);
  }

  if (a3 >= 2)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
    goto LABEL_11;
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_100495654(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_1004C8B64();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_1004C8B38();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_1004C8B0C();
  }

  return v2 + 4 * a2;
}

uint64_t sub_100495690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000006;
  *(a1 + 8) = xmmword_10089D7B0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD520;
  *(a1 + 360) = 0x600000001;
  *(a1 + 328) = a2;
  *(a1 + 336) = off_1009ACF38;
  *(a1 + 344) = xmmword_10089D9C0;
  *(a1 + 368) = a1 + 376;
  v7 = a1 + 400;
  *(a1 + 424) = 0x100000006;
  *(a1 + 400) = off_1009ACE18;
  *(a1 + 408) = xmmword_10089D7C0;
  *(a1 + 432) = a1 + 440;
  sub_1004935F8(a1 + 336, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 352);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 416);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 368) + v12), *(*(a1 + 432) + 4 * i));
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

void sub_10049587C(_Unwind_Exception *a1)
{
  v1[50] = off_1009A90F0;
  v1[42] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1004958DC(void *a1)
{
  a1[50] = off_1009A90F0;
  a1[42] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_10049594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000003;
  *(a1 + 8) = xmmword_10089D9B0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD568;
  *(a1 + 216) = 0x300000001;
  *(a1 + 184) = a2;
  *(a1 + 192) = off_1009ACEA8;
  *(a1 + 200) = xmmword_10056FAD0;
  *(a1 + 224) = a1 + 232;
  v7 = a1 + 248;
  *(a1 + 272) = 0x100000006;
  *(a1 + 248) = off_1009ACE18;
  *(a1 + 256) = xmmword_10089D7C0;
  *(a1 + 280) = a1 + 288;
  sub_1004935F8(a1 + 192, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 208);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 264);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 224) + v12), *(*(a1 + 280) + 4 * i));
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

void sub_100495B38(_Unwind_Exception *a1)
{
  v1[31] = off_1009A90F0;
  v1[24] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100495B98(void *a1)
{
  a1[31] = off_1009A90F0;
  a1[24] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100495C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x300000001;
  *(a1 + 8) = xmmword_10056FAD0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD5F8;
  *(a1 + 96) = 0x300000001;
  *(a1 + 64) = a2;
  *(a1 + 72) = off_1009ACEA8;
  *(a1 + 80) = xmmword_10056FAD0;
  *(a1 + 104) = a1 + 112;
  sub_1004935F8(a1 + 72, a3);
  v5 = *(a1 + 80);
  if (*(a1 + 24) < v5)
  {
    v10 = "this->max_num_rows_ >= num_rows";
    v11 = 422;
    goto LABEL_9;
  }

  v6 = *(a1 + 84);
  if (*(a1 + 28) < v6)
  {
    v10 = "this->max_num_cols_ >= num_cols";
    v11 = 423;
LABEL_9:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v11, v10);
  }

  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = v6 * v5;
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      *(*(a1 + 32) + 8 * i) = *sub_100494ED8(a2, *(*(a1 + 104) + 4 * i));
    }
  }

  return a1;
}

void sub_100495DD8(_Unwind_Exception *a1)
{
  v1[9] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100495E18(void *a1)
{
  a1[9] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

_DWORD *sub_100495EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
    sub_1004D263C();
  }

  if (a1 == a3)
  {
    sub_1004D2610();
  }

  if (a1 == a4)
  {
    sub_1004D25E4();
  }

  if (a1 == a5)
  {
    sub_1004D25B8();
  }

  if (a2 == a3)
  {
    sub_1004D258C();
  }

  if (a2 == a4)
  {
    sub_1004D2560();
  }

  if (a2 == a5)
  {
    sub_1004D2534();
  }

  if (a3 == a4)
  {
    sub_1004D2508();
  }

  if (a3 == a5)
  {
    sub_1004D24DC();
  }

  if (a4 == a5)
  {
    sub_1004D24B0();
  }

  v10 = *(a4 + 24);
  v11 = *(a1 + 8);
  if (v10 < v11)
  {
    sub_1004D2484();
  }

  v12 = *(a1 + 12);
  if (v10 < v12)
  {
    sub_1004D2458();
  }

  v13 = *(a4 + 28);
  if (v13 < v11)
  {
    sub_1004D242C();
  }

  if (v13 < v12)
  {
    sub_1004D2400();
  }

  if (*(a5 + 24) < v11)
  {
    sub_1004D23D4();
  }

  if (*(a5 + 28) < v12)
  {
    sub_1004D23A8();
  }

  v14 = *(a2 + 24);
  if (v11 >= v12)
  {
    if (v14 < v12)
    {
      sub_1004D22A0();
    }
  }

  else if (v14 < v11)
  {
    sub_1004D237C();
  }

  if (*(a3 + 24) < v12)
  {
    sub_1004D2350();
  }

  if (*(a3 + 28) < v12)
  {
    sub_1004D2324();
  }

  sub_1003A8CFC(a5, a1);
  v15 = *(a5 + 32);
  v16 = *(a5 + 20);
  v17 = *(a2 + 32);
  v18 = *(a3 + 32);
  v19 = *(a3 + 28) * *(a3 + 24);
  v35 = *(a5 + 12);
  v37 = *(a5 + 8);
  v20 = dgeqrf_NEWLAPACK();
  if (v19 < **(a3 + 32) && cnprint::CNPrinter::GetLogLevel(v20) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  sub_1003A8CFC(a4, a5);
  if (*(a1 + 12) >= *(a1 + 8))
  {
    v21 = *(a1 + 8);
  }

  v22 = *(a4 + 32);
  v36 = *(a1 + 8);
  v23 = dorgqr_NEWLAPACK();
  if (v19 < **(a3 + 32) && cnprint::CNPrinter::GetLogLevel(v23) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  if (*(a1 + 8) >= *(a1 + 12))
  {
    v24 = *(a1 + 12);
  }

  else
  {
    v24 = *(a1 + 8);
  }

  sub_1003A8C00(a2, v24, 1);
  sub_1003A8C00(a3, *(a3 + 24), *(a3 + 28));
  result = sub_1003A8C00(a4, *(a1 + 8), *(a1 + 8));
  v26 = *(a5 + 12);
  if (v26)
  {
    v27 = 0;
    v28 = *(a5 + 8);
    v29 = *(a5 + 32);
    v30 = v28 - 1;
    v31 = *(a5 + 20) + 1;
    v32 = 1;
    do
    {
      ++v27;
      v33 = v32;
      v34 = v30;
      if (v27 < v28)
      {
        do
        {
          *(v29 + 8 * v33++) = 0;
          --v34;
        }

        while (v34);
      }

      --v30;
      v32 += v31;
    }

    while (v27 != v26);
  }

  return result;
}

uint64_t sub_1004962A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x900000009;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AD640;
  if (a2 > 9)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 0xA)
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

uint64_t sub_100496368(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000006;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009ACDD0;
  if ((a3 & 0x80000000) != 0)
  {
    v3 = "nc >= 0";
    v4 = 487;
    v5 = "cnmatrix.h";
    v6 = "CNMatrix";
    goto LABEL_9;
  }

  if (a2 > 6)
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

uint64_t sub_1004964E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000006;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009ACE18;
  if ((a3 & 0x80000000) != 0)
  {
    v3 = "nc >= 0";
    v4 = 487;
    v5 = "cnmatrix.h";
    v6 = "CNMatrix";
    goto LABEL_9;
  }

  if (a2 > 6)
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

uint64_t sub_1004965D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000001;
  *(a1 + 8) = xmmword_10089D9C0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD6D0;
  *(a1 + 120) = 0x100000001;
  *(a1 + 88) = a2;
  *(a1 + 96) = off_1009AA310;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 104) = v7;
  *(a1 + 128) = a1 + 136;
  v8 = a1 + 144;
  *(a1 + 168) = 0x100000006;
  *(a1 + 144) = off_1009ACE18;
  *(a1 + 152) = xmmword_10089D7C0;
  *(a1 + 176) = a1 + 184;
  sub_1004935F8(a1 + 96, a3);
  sub_1004935F8(v8, a4);
  v9 = *(a1 + 112);
  if (*(a1 + 24) < v9)
  {
    v17 = "this->max_num_rows_ >= num_rows";
    v18 = 422;
    goto LABEL_12;
  }

  v10 = *(a1 + 160);
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
          v15 = sub_1003A9F6C(a2, *(*(a1 + 128) + v13), *(*(a1 + 176) + 4 * i));
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

void sub_1004967B8(_Unwind_Exception *a1)
{
  v1[18] = off_1009A90F0;
  v1[12] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100496818(void *a1)
{
  a1[18] = off_1009A90F0;
  a1[12] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_1004968E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x700000007;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AD760;
  if (a2 > 7)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 8)
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

uint64_t sub_100496AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x600000002;
  *(a1 + 8) = xmmword_10089D9D0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1009AD7F0;
  *(a1 + 168) = 0x200000001;
  *(a1 + 136) = a2;
  *(a1 + 144) = off_1009ACF80;
  *(a1 + 152) = xmmword_10089DA80;
  *(a1 + 176) = a1 + 184;
  v7 = a1 + 192;
  *(a1 + 216) = 0x100000006;
  *(a1 + 192) = off_1009ACE18;
  *(a1 + 200) = xmmword_10089D7C0;
  *(a1 + 224) = a1 + 232;
  sub_1004935F8(a1 + 144, a3);
  sub_1004935F8(v7, a4);
  v8 = *(a1 + 160);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 208);
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
          v14 = sub_1003A9F6C(a2, *(*(a1 + 176) + v12), *(*(a1 + 224) + 4 * i));
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

void sub_100496CB4(_Unwind_Exception *a1)
{
  v1[24] = off_1009A90F0;
  v1[18] = off_1009A90F0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_100496D14(void *a1)
{
  a1[24] = off_1009A90F0;
  a1[18] = off_1009A90F0;
  *a1 = off_1009991A0;
  operator delete();
}

uint64_t sub_100496D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x800000008;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AD838;
  if (a2 > 8)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 9)
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

void sub_100496ED8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_100496EFC()
{
  v0 = sub_100498890(v11, &xmmword_10089DA90, &xmmword_10089DAA8, &xmmword_10089DAC0);
  sub_100498A58(&unk_1009FA178, v11, v0);
  __cxa_atexit(sub_1004855EC, &unk_1009FA178, &_mh_execute_header);
  qword_1009FA250 = 0x300000003;
  qword_1009FA238 = off_1009A8FC0;
  unk_1009FA240 = xmmword_10056EDB0;
  qword_1009FA258 = &unk_1009FA260;
  __cxa_atexit(sub_1003A8924, &qword_1009FA238, &_mh_execute_header);
  qword_1009FA2C0 = 0x300000003;
  qword_1009FA2A8 = off_1009A8FC0;
  *algn_1009FA2B0 = xmmword_10056EDB0;
  qword_1009FA2C8 = &unk_1009FA2D0;
  __cxa_atexit(sub_1003A8924, &qword_1009FA2A8, &_mh_execute_header);
  qword_1009FA330 = 0x300000003;
  qword_1009FA318 = off_1009A8FC0;
  unk_1009FA320 = xmmword_10056EDB0;
  qword_1009FA338 = &unk_1009FA340;
  __cxa_atexit(sub_1003A8924, &qword_1009FA318, &_mh_execute_header);
  qword_1009FA3A0 = 0x300000003;
  qword_1009FA388 = off_1009A8FC0;
  *algn_1009FA390 = xmmword_10056EDB0;
  qword_1009FA3A8 = &unk_1009FA3B0;
  __cxa_atexit(sub_1003A8924, &qword_1009FA388, &_mh_execute_header);
  qword_1009FA410 = 0x300000003;
  qword_1009FA3F8 = off_1009A8FC0;
  unk_1009FA400 = xmmword_10056EDB0;
  qword_1009FA418 = &unk_1009FA420;
  __cxa_atexit(sub_1003A8924, &qword_1009FA3F8, &_mh_execute_header);
  qword_1009FA480 = 0x300000003;
  qword_1009FA468 = off_1009A8FC0;
  *algn_1009FA470 = xmmword_10056EDB0;
  qword_1009FA488 = &unk_1009FA490;
  __cxa_atexit(sub_1003A8924, &qword_1009FA468, &_mh_execute_header);
  qword_1009FA4F0 = 0x300000003;
  qword_1009FA4D8 = off_1009A8FC0;
  unk_1009FA4E0 = xmmword_10056EDB0;
  qword_1009FA4F8 = &unk_1009FA500;
  __cxa_atexit(sub_1003A8924, &qword_1009FA4D8, &_mh_execute_header);
  qword_1009FA560 = 0x300000003;
  qword_1009FA548 = off_1009A8FC0;
  *algn_1009FA550 = xmmword_10056EDB0;
  qword_1009FA568 = &unk_1009FA570;
  __cxa_atexit(sub_1003A8924, &qword_1009FA548, &_mh_execute_header);
  qword_1009F94E8 = 0x40F86A0000000000;
  qword_1009F9508 = 0xC00000001;
  qword_1009F94F0[0] = off_1009ACEF0;
  unk_1009F94F8 = xmmword_10089DA70;
  qword_1009F9510 = &unk_1009F9518;
  sub_1003A8C00(qword_1009F94F0, 1, 12);
  for (i = 0; i != 12; ++i)
  {
    *sub_100492BDC(qword_1009F94F0, i) = i;
  }

  __cxa_atexit(sub_10048564C, qword_1009F94F0, &_mh_execute_header);
  qword_1009F9560 = 0x600000001;
  qword_1009F9548 = off_1009ACF38;
  *algn_1009F9550 = xmmword_10089D9C0;
  qword_1009F9568 = &unk_1009F9570;
  sub_1003A8C00(&qword_1009F9548, 1, 6);
  for (j = 0; j != 6; ++j)
  {
    *sub_100492BDC(&qword_1009F9548, j) = j;
  }

  __cxa_atexit(sub_10048566C, &qword_1009F9548, &_mh_execute_header);
  qword_1009F95A0 = 0x300000001;
  qword_1009F9588 = off_1009ACEA8;
  *algn_1009F9590 = xmmword_10056FAD0;
  qword_1009F95A8 = algn_1009F95B0;
  sub_1003A8C00(&qword_1009F9588, 1, 3);
  for (k = 0; k != 3; ++k)
  {
    *sub_100492BDC(&qword_1009F9588, k) = k + 6;
  }

  __cxa_atexit(sub_10048568C, &qword_1009F9588, &_mh_execute_header);
  qword_1009F95D8 = 0x200000001;
  qword_1009F95C0[0] = off_1009ACF80;
  unk_1009F95C8 = xmmword_10089DA80;
  qword_1009F95E0 = algn_1009F95E8;
  sub_1003A8C00(qword_1009F95C0, 1, 2);
  *sub_100492BDC(qword_1009F95C0, 0) = 6;
  *sub_100492BDC(qword_1009F95C0, 1u) = 7;
  __cxa_atexit(sub_1004856AC, qword_1009F95C0, &_mh_execute_header);
  qword_1009F9608 = 0x600000001;
  qword_1009F95F0[0] = off_1009ACF38;
  unk_1009F95F8 = xmmword_10089D9C0;
  qword_1009F9610 = &unk_1009F9618;
  sub_1003A8C00(qword_1009F95F0, 1, 6);
  for (m = 0; m != 6; ++m)
  {
    *sub_100492BDC(qword_1009F95F0, m) = m + 12;
  }

  __cxa_atexit(sub_10048566C, qword_1009F95F0, &_mh_execute_header);
  qword_1009F9648 = 0x200000001;
  qword_1009F9630[0] = off_1009ACF80;
  unk_1009F9638 = xmmword_10089DA80;
  qword_1009F9650 = algn_1009F9658;
  sub_1003A8C00(qword_1009F9630, 1, 2);
  *sub_100492BDC(qword_1009F9630, 0) = 1;
  *sub_100492BDC(qword_1009F9630, 1u) = 2;
  __cxa_atexit(sub_1004856AC, qword_1009F9630, &_mh_execute_header);
  qword_1009F9678 = 0x300000001;
  qword_1009F9660[0] = off_1009ACEA8;
  unk_1009F9668 = xmmword_10056FAD0;
  qword_1009F9680 = &unk_1009F9688;
  sub_1003A8C00(qword_1009F9660, 1, 3);
  for (n = 0; n != 3; ++n)
  {
    *sub_100492BDC(qword_1009F9660, n) = n;
  }

  __cxa_atexit(sub_10048568C, qword_1009F9660, &_mh_execute_header);
  qword_1009F96B0 = 0x300000001;
  qword_1009F9698[0] = off_1009ACEA8;
  unk_1009F96A0 = xmmword_10056FAD0;
  qword_1009F96B8 = &unk_1009F96C0;
  sub_1003A8C00(qword_1009F9698, 1, 3);
  for (ii = 0; ii != 3; ++ii)
  {
    *sub_100492BDC(qword_1009F9698, ii) = ii + 3;
  }

  __cxa_atexit(sub_10048568C, qword_1009F9698, &_mh_execute_header);
  qword_1009F96E8 = 0x300000001;
  qword_1009F96D0[0] = off_1009ACEA8;
  unk_1009F96D8 = xmmword_10056FAD0;
  qword_1009F96F0 = &unk_1009F96F8;
  sub_1003A8C00(qword_1009F96D0, 1, 3);
  for (jj = 0; jj != 3; ++jj)
  {
    *sub_100492BDC(qword_1009F96D0, jj) = jj + 6;
  }

  __cxa_atexit(sub_10048568C, qword_1009F96D0, &_mh_execute_header);
  qword_1009F9720 = 0x300000001;
  qword_1009F9708 = off_1009ACEA8;
  *algn_1009F9710 = xmmword_10056FAD0;
  qword_1009F9728 = algn_1009F9730;
  sub_1003A8C00(&qword_1009F9708, 1, 3);
  for (kk = 0; kk != 3; ++kk)
  {
    *sub_100492BDC(&qword_1009F9708, kk) = kk + 9;
  }

  __cxa_atexit(sub_10048568C, &qword_1009F9708, &_mh_execute_header);
  qword_1009F9758 = 0x300000003;
  qword_1009F9740[0] = off_1009A8FC0;
  unk_1009F9748 = xmmword_10056EDB0;
  qword_1009F9760 = &unk_1009F9768;
  sub_1003A8C00(qword_1009F9740, 3, 3);
  sub_1003A8C50(qword_1009F9740, 0.0);
  for (mm = 0; mm != 3; ++mm)
  {
    *sub_1003A9F6C(qword_1009F9740, mm, mm) = 0x3FF0000000000000;
  }

  __cxa_atexit(sub_1003A8924, qword_1009F9740, &_mh_execute_header);
  qword_1009F97C8 = 0x300000003;
  qword_1009F97B0[0] = off_1009A8FC0;
  unk_1009F97B8 = xmmword_10056EDB0;
  qword_1009F97D0 = &unk_1009F97D8;
  sub_1003A8C00(qword_1009F97B0, 3, 3);
  sub_1003A8C50(qword_1009F97B0, 0.0);
  return __cxa_atexit(sub_1003A8924, qword_1009F97B0, &_mh_execute_header);
}

uint64_t sub_100497A14@<X0>(double *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  for (i = 0; i != 3; ++i)
  {
    *&v7[i * 8] = a1[i + 3] * -9.80665;
  }

  return sub_100498808(a2, v7, a1 + 6, a1 + 9, a1 + 13, a1 + 16, a3, *a1);
}

void sub_100497A80(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v40[0] = a3;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v39 = *(a1 + 368) == 5;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 != v5)
  {
    v7 = (a1 + 72);
    while (1)
    {
      if ((*(a1 + 528) & 1) != 0 && *(v4 + 32) == 1 && *(v4 + 48) == 1)
      {
        v34 = *(a1 + 64);
        v35 = 0.0;
        v33 = *(a1 + 112);
        v32 = *(a1 + 114);
        __p = 0;
        v30 = 0;
        v31 = 0;
        sub_1000069DC(&__p, a1 + 115, a1 + 123, 8);
        v28 = *(a1 + 304);
        v27 = sub_1000422B8(*(v4 + 8));
        v26 = sub_1000422B8(*v4);
        v25 = 0.2;
        if ((*(v4 + 48) & 1) == 0)
        {
          sub_1000195BC();
        }

        v24 = sub_1000422B8(*(v4 + 40));
        if ((*(v4 + 32) & 1) == 0)
        {
          sub_1000195BC();
        }

        v8 = sub_1000422B8(*(v4 + 24));
        v23 = v8;
        v9 = *(a1 + 536);
        v10 = *(a1 + 544);
        v21 = v9;
        LOBYTE(v22) = v10;
        v11 = *(a1 + 368);
        v20 = v11;
        v12 = a2[1];
        if (v12 >= a2[2])
        {
          v16 = sub_100497E78(a2, &v34, &v33, &v32, &__p, v40, &v28, &v27, &v26, &v25, &v24, &v23, &v35, &v21, &v36, &v20, &v39);
          goto LABEL_14;
        }

        sub_1004980D8(v12, v34, v33, v32, &__p, v9, v22, &v36, v40[0], v28, v27, v26, v25, v24, v8, v35, v11, v39);
      }

      else
      {
        v21 = *(a1 + 64);
        LOWORD(v26) = *(a1 + 112);
        LOBYTE(v25) = *(a1 + 114);
        __p = 0;
        v30 = 0;
        v31 = 0;
        sub_1000069DC(&__p, a1 + 115, a1 + 123, 8);
        v13 = *(a1 + 48);
        v34 = *(a1 + 304);
        v35 = v13;
        v28 = sub_1000422B8(*(v4 + 8));
        v14 = sub_1000422B8(*v4);
        v27 = v14;
        v15 = *(a1 + 368);
        LOBYTE(v24) = v15;
        v12 = a2[1];
        if (v12 >= a2[2])
        {
          v16 = sub_100498460(a2, &v21, &v26, &v25, &__p, &v35, &v34, &v28, &v27, &unk_100571CBD, &v36, &v24, &v39);
          goto LABEL_14;
        }

        sub_1004980D8(v12, v21, SLOWORD(v26), SLOBYTE(v25), &__p, 0, 0, &v36, v35, *&v34, v28, v14, 0.1, 0.174532925, 0.174532925, 0.0, v15, v39);
      }

      v16 = v12 + 152;
LABEL_14:
      a2[1] = v16;
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      if (v17 != v18)
      {
        v19 = (a2[1] - 32);
        if (v19 != v7)
        {
          sub_10017AF94(v19, v17, v18, (v18 - v17) >> 3);
        }
      }

      v4 += 56;
      if (v4 == v5)
      {
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        return;
      }
    }
  }
}

void sub_100497DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  *(v28 + 8) = v29;
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  *(v30 - 144) = v28;
  sub_10018AD30((v30 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_100497E78(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4, uint64_t *a5, double *a6, double *a7, double *a8, double *a9, double *a10, double *a11, double *a12, double *a13, uint64_t *a14, uint64_t *a15, char *a16, char *a17)
{
  v17 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v18 = v17 + 1;
  if (v17 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v18)
  {
    v18 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v21 = 0x1AF286BCA1AF286;
  }

  else
  {
    v21 = v18;
  }

  v31 = a1;
  if (v21)
  {
    sub_1004981DC(a1, v21);
  }

  v28 = 0;
  v29 = 152 * v17;
  sub_100498070(a1, 152 * v17, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  v30 = 152 * v17 + 152;
  v22 = *(a1 + 8);
  v23 = 152 * v17 + *a1 - v22;
  sub_100498238(a1, *a1, v22, v23);
  v24 = *a1;
  *a1 = v23;
  v25 = *(a1 + 16);
  v27 = v30;
  *(a1 + 8) = v30;
  *&v30 = v24;
  *(&v30 + 1) = v25;
  v28 = v24;
  v29 = v24;
  sub_1004983E4(&v28);
  return v27;
}

uint64_t sub_1004980D8(uint64_t a1, uint64_t a2, __int16 a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, char a18)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 10) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100009A48(a1 + 16, *a5, a5[1], a5[1] - *a5);
  *(a1 + 120) = 0;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = a13;
  *(a1 + 64) = a11;
  *(a1 + 72) = a12;
  *(a1 + 80) = a14;
  *(a1 + 88) = a15;
  *(a1 + 96) = a16;
  *(a1 + 104) = a6;
  *(a1 + 112) = a7;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_100012F38(a1 + 120, *a8, a8[1], (a8[1] - *a8) >> 3);
  *(a1 + 144) = a17;
  *(a1 + 145) = a18;
  return a1;
}

void sub_1004981C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004981DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_100498238(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 7) = *(v7 + 7);
      *a4 = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v7[4];
      v7[3] = 0;
      v7[4] = 0;
      v7[2] = 0;
      v9 = *(v7 + 7);
      v10 = *(v7 + 9);
      v11 = *(v7 + 11);
      *(a4 + 97) = *(v7 + 97);
      *(a4 + 88) = v11;
      *(a4 + 72) = v10;
      *(a4 + 56) = v9;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = 0;
      *(a4 + 120) = *(v7 + 15);
      *(a4 + 136) = v7[17];
      v7[15] = 0;
      v7[16] = 0;
      v7[17] = 0;
      *(a4 + 144) = *(v7 + 72);
      v7 += 19;
      a4 += 152;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      sub_10018ADB8(a1, v5);
      v5 += 19;
    }
  }

  return sub_100498358(v13);
}

uint64_t sub_100498358(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100498390(a1);
  }

  return a1;
}

void sub_100498390(uint64_t *a1)
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
      v3 -= 19;
      sub_10018ADB8(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_1004983E4(void **a1)
{
  sub_100498418(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100498418(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 152;
    sub_10018ADB8(v4, (i - 152));
  }
}

uint64_t sub_100498460(uint64_t a1, uint64_t *a2, __int16 *a3, char *a4, uint64_t *a5, double *a6, double *a7, double *a8, double *a9, uint64_t a10, uint64_t *a11, char *a12, char *a13)
{
  v13 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v14 = v13 + 1;
  if (v13 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v14)
  {
    v14 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v17 = 0x1AF286BCA1AF286;
  }

  else
  {
    v17 = v14;
  }

  v27 = a1;
  if (v17)
  {
    sub_1004981DC(a1, v17);
  }

  v24 = 0;
  v25 = 152 * v13;
  v26 = 152 * v13;
  sub_1004980D8(152 * v13, *a2, *a3, *a4, a5, 0, 0, a11, *a6, *a7, *a8, *a9, 0.1, 0.174532925, 0.174532925, 0.0, *a12, *a13);
  *&v26 = 152 * v13 + 152;
  v18 = *(a1 + 8);
  v19 = 152 * v13 + *a1 - v18;
  sub_100498238(a1, *a1, v18, v25 + *a1 - v18);
  v20 = *a1;
  *a1 = v19;
  v21 = *(a1 + 16);
  v23 = v26;
  *(a1 + 8) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  sub_1004983E4(&v24);
  return v23;
}

void sub_100498634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1004983E4(va);
  _Unwind_Resume(a1);
}

double *sub_100498648(double *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, double a7, double a8)
{
  *a1 = 0.0;
  a1[1] = 0.0;
  sub_100172550(a1 + 2, 3uLL);
  sub_100172550(a1 + 5, 3uLL);
  sub_100172550(a1 + 8, 4uLL);
  sub_100172550(a1 + 11, 3uLL);
  sub_100172550(a1 + 14, 3uLL);
  v16 = 0;
  a1[17] = 0.0;
  a1[18] = 0.0;
  a1[19] = 0.0;
  *a1 = a7;
  a1[1] = a8;
  v17 = *(a1 + 2);
  *v17 = *a2;
  v17[1] = a2[1];
  v17[2] = a2[2];
  v18 = *(a1 + 5);
  *v18 = *a3;
  v18[1] = a3[1];
  v18[2] = a3[2];
  v19 = *(a1 + 8);
  do
  {
    *(v19 + v16) = *(a4 + v16);
    v16 += 8;
  }

  while (v16 != 32);
  v20 = *(a1 + 11);
  *v20 = *a5;
  v20[1] = a5[1];
  v20[2] = a5[2];
  v21 = *(a1 + 14);
  *v21 = *a6;
  v21[1] = a6[1];
  v21[2] = a6[2];
  return a1;
}

void sub_1004987A4(_Unwind_Exception *exception_object)
{
  v3 = v1[11];
  if (v3)
  {
    v1[12] = v3;
    operator delete(v3);
  }

  v4 = v1[8];
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  v5 = v1[5];
  if (v5)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10049880C(void *a1)
{
  v1 = 0;
  LOBYTE(v2) = 1;
  do
  {
    v2 = v2 && *(a1[2] + v1) == 0.0 && *(a1[5] + v1) == 0.0;
    v1 += 8;
  }

  while (v1 != 24);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LOBYTE(v4) = 1;
  do
  {
    v4 = v4 && *(a1[8] + v3) == 0.0;
    v3 += 8;
  }

  while (v3 != 32);
  return !v4;
}

__n128 sub_100498890(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v5;
  result = *a4;
  *(a1 + 64) = a4[1].n128_u64[0];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1004988D4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + 24) = 0x100000003;
  *a1 = off_1009A8F78;
  *(a1 + 8) = xmmword_10056EDA0;
  *(a1 + 32) = a1 + 40;
  v4 = a1 + 64;
  *(a1 + 88) = 0x100000003;
  *(a1 + 64) = off_1009A8F78;
  *(a1 + 72) = xmmword_10056EDA0;
  *(a1 + 96) = a1 + 104;
  v5 = a1 + 128;
  *(a1 + 152) = 0x100000003;
  *(a1 + 128) = off_1009A8F78;
  *(a1 + 136) = xmmword_10056EDA0;
  *(a1 + 160) = a1 + 168;
  v6 = (a2 + 24);
  do
  {
    v7 = *(v6 - 3);
    *sub_1003AFDBC(a1, v3) = v7;
    v8 = *v6;
    *sub_1003AFDBC(v4, v3) = v8;
    v9 = v6[3];
    *sub_1003AFDBC(v5, v3++) = v9;
    ++v6;
  }

  while (v3 != 3);
  return a1;
}

void sub_100498A00(_Unwind_Exception *a1)
{
  v1[16] = off_1009991A0;
  v1[8] = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_100498A5C(void *a1, double *a2)
{
  sub_100013A08((a1 + 6), a2);

  return sub_100498AA0(a1, a2);
}

uint64_t sub_100498AA0(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 25 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_100498E88(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19);
  }

  result = sub_10047E4C4(v8, a2);
  ++a1[5];
  return result;
}

uint64_t sub_100498B60(int64x2_t *a1)
{
  result = sub_100498D5C(a1);
  if (result)
  {
    sub_100498BE8(a1);
    a1[5] = vaddq_s64(a1[5], xmmword_100561EC0);

    return sub_1000139A8(a1[3].i64, 1);
  }

  return result;
}

uint64_t sub_100498BE8(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x19uLL)) + 160 * (a1[2].i64[0] % 0x19uLL));
  v3 = v2[17];
  if (v3)
  {
    v2[18] = v3;
    operator delete(v3);
  }

  v4 = v2[14];
  if (v4)
  {
    v2[15] = v4;
    operator delete(v4);
  }

  v5 = v2[11];
  if (v5)
  {
    v2[12] = v5;
    operator delete(v5);
  }

  v6 = v2[8];
  if (v6)
  {
    v2[9] = v6;
    operator delete(v6);
  }

  v7 = v2[5];
  if (v7)
  {
    v2[6] = v7;
    operator delete(v7);
  }

  v8 = v2[2];
  if (v8)
  {
    v2[3] = v8;
    operator delete(v8);
  }

  a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);

  return sub_10049905C(a1, 1);
}

void sub_100498CD0(void *a1)
{
  if (sub_100498D5C(a1))
  {
    sub_1001891E0(a1);
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

    a1[10] = v6;
  }
}

uint64_t sub_100498D5C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result != *(a1 + 88))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "IMU data buffer and time buffer have different sizes.");
  }

  return result;
}

uint64_t sub_100498DD8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_10018AF1C((a1 + 16), a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

double sub_100498E58(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_100498E88(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
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

void sub_100499010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10049905C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x19)
  {
    a2 = 1;
  }

  if (v2 < 0x32)
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
    *(a1 + 32) -= 25;
  }

  return v4 ^ 1u;
}

uint64_t sub_1004990BC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    if (a2 > 199)
    {
      goto LABEL_4;
    }

    if ((a2 - 100) >= 0x1B)
    {
      if (a2 > 0x1B)
      {
        goto LABEL_17;
      }

      if (((1 << a2) & 0xFFFF800) == 0)
      {
        if (((1 << a2) & 0x78) != 0 || ((1 << a2) & 0x780) != 0)
        {
LABEL_18:
          v3 = &xmmword_10089E0F0;
          goto LABEL_25;
        }

LABEL_17:
        if (a2 >= 3)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

LABEL_21:
    v4 = 0;
    *a3 = 0;
LABEL_22:
    *(a3 + 184) = v4;
    return result;
  }

  if (a2 <= 99)
  {
    if (a2 > 0x1B)
    {
      return result;
    }

    if (((1 << a2) & 0xFFFFF80) != 0)
    {
      goto LABEL_21;
    }

    v3 = &xmmword_10089E1A8;
LABEL_25:
    v5 = v3[9];
    *(a3 + 128) = v3[8];
    *(a3 + 144) = v5;
    *(a3 + 160) = v3[10];
    *(a3 + 176) = *(v3 + 22);
    v6 = v3[5];
    *(a3 + 64) = v3[4];
    *(a3 + 80) = v6;
    v7 = v3[7];
    *(a3 + 96) = v3[6];
    *(a3 + 112) = v7;
    v8 = v3[1];
    *a3 = *v3;
    *(a3 + 16) = v8;
    v9 = v3[2];
    v10 = v3[3];
    v4 = 1;
    *(a3 + 32) = v9;
    *(a3 + 48) = v10;
    goto LABEL_22;
  }

  if (a2 <= 199)
  {
    if ((a2 - 100) >= 0x1B)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_4:
  if ((a2 - 200) < 3 || a2 == 997 || a2 == 999)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1004991D4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  v2 = a1 + 64;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0x300000003;
  *(a1 + 56) = 0;
  *(a1 + 64) = off_1009A8FC0;
  *(a1 + 72) = xmmword_10056EDB0;
  *(a1 + 96) = a1 + 104;
  sub_1003A8C00((a1 + 64), 3, 3);
  sub_1003A8C50(v2, 0.0);
  for (i = 0; i != 3; ++i)
  {
    *sub_1003A9F6C(v2, i, i) = 0x3FF0000000000000;
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  v13 = 0x300000003;
  v11 = off_1009A8FC0;
  v12 = xmmword_10056EDB0;
  v14 = &v15;
  sub_1003A8C00(&v11, 3, 3);
  sub_1003A8C50(&v11, 0.0);
  for (j = 0; j != 3; ++j)
  {
    *sub_1003A9F6C(&v11, j, j) = 0x3FF0000000000000;
  }

  sub_1003A8CFC(v2, &v11);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 48) = 0;
  v7 = (v6 - v5) >> 3;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v8 = *(a1 + 24);
      v5 = (*(a1 + 16) + 8);
      *(a1 + 16) = v5;
      v7 = (v8 - v5) >> 3;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v9 = 256;
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v9 = 512;
LABEL_11:
    *(a1 + 40) = v9;
  }

  return a1;
}

void sub_100499398(_Unwind_Exception *a1)
{
  *v2 = off_1009991A0;
  sub_100188E54(v1);
  _Unwind_Resume(a1);
}

double sub_1004993DC(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

void sub_100499924(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Entitlement check failed! - rejecting unentitled client with pid %d", v2, 8u);
}

void sub_10049999C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Accepting connection from an entitled client with pid %d", v2, 8u);
}

void sub_100499ACC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Accepting connection from an entitled client with pid %d", v2, 8u);
}

void sub_100499D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 23);
  sub_100013F40(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#ses-grResponder,getSessionTicketForDevice: Create a new GR session failed for address: %llu client Id: %s", v4, 0x16u);
}

void sub_100499DD4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-grResponder,Failed to start ranging. Return code: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_100499E38(unsigned __int16 a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v4 = *a2;
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 2048;
  *(buf + 10) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-grResponder,triggerRangingForRoseSession rotate address for ticket%hu, rotated addr: %llu", buf, 0x12u);
}

void sub_100499E98(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-grResponder,Failed to re-start ranging. Return code: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_100499EFC(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100499FA0(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10049A010(uint64_t *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049A088(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10049A1C8(float *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049A244(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10049A2B4(uint64_t *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049A32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 23);
  sub_100013F40(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#ses-grResponder,Failed to allocate a UWB session for UWBAddress: %llu. Error: %s", v5, 0x16u);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_10049A540()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049A678(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049A704(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10049A898(uint64_t a1, unsigned int *a2)
{
  sub_10002A2AC(a1, a2);
  if (!(!v10 & v9))
  {
    v11 = off_10098AC20[v8];
  }

  sub_10002A2C4(5.8081e-34, v3, v4, v5, v6, v7);
  sub_10002A2DC(&_mh_execute_header, v14, v12, "#ble,addPeerToken %{private}@ failed, state is %s", v13);
}

void sub_10049A8FC(uint64_t a1, unsigned int *a2)
{
  sub_10002A2AC(a1, a2);
  if (!(!v10 & v9))
  {
    v11 = off_10098AC20[v8];
  }

  sub_10002A2C4(5.8081e-34, v3, v4, v5, v6, v7);
  sub_10002A2DC(&_mh_execute_header, v14, v12, "#ble,removePeerToken %{private}@ failed, state is %s", v13);
}

void sub_10049A960(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049A9EC(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049AA78(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049AB04()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049AB40(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#ble,Overriding advertising T19 payload to burst adv rate: [%@]", &v2, 0xCu);
}

void sub_10049ABB8(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049AC44(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049ACD0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049AD0C(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049AD98(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049AE24(uint64_t a1, unsigned int *a2)
{
  sub_10002A2F4(a1, a2);
  if (!(!v4 & v3))
  {
    v5 = off_10098AC20[v2];
  }

  sub_100008DB0();
  v9 = 2080;
  v10 = v6;
  sub_10002A2DC(&_mh_execute_header, v7, v7, "#ble,stopScanningAndRemovePeers[%s] failed, state is %s", v8);
}

void sub_10049AED0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = 6;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ble,PRBLEDiscoverySession addrBytes length %lu does not match expected value of %d", buf, 0x12u);
}

void sub_10049AF28()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049AF64(uint64_t a1, unsigned int *a2)
{
  sub_10002A2F4(a1, a2);
  if (!(!v4 & v3))
  {
    v5 = off_10098AC20[v2];
  }

  sub_100008DB0();
  v9 = 2080;
  v10 = v6;
  sub_10002A2DC(&_mh_execute_header, v7, v7, "#ble,allowScreenOffOperation[%s] failed, state is %s", v8);
}

void sub_10049B010(unsigned int *a1)
{
  sub_100008F50(a1, __stack_chk_guard);
  if (!(!v3 & v2))
  {
    v4 = off_10098AC20[v1];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10049B09C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049B0D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049B7F4()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,peer %@ added multiple times with different secure ranging keys", v4, v5);
}

void sub_10049B838(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10049B8A0()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,found a map entry for %@ but no peers were erased", v4, v5);
}

void sub_10049B8E4()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,no map entry found when attempting to erase peer %@", v4, v5);
}

void sub_10049BBD8()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,error callback is nullptr for peer ID: %@", v4, v5);
}

void sub_10049BD88()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10049BE2C()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10049BE9C(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 40);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10049C0E8()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10049C2A4()
{
  sub_100008F7C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10049C340()
{
  sub_100008F7C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10049C3B0(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10049C3E4(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = 4;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

__n128 sub_10049C42C(uint8_t *a1, unint64_t a2, int8x8_t *a3, NSObject *a4)
{
  v4 = vdupq_n_s64(a2);
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v4, xmmword_100549590), v5), xmmword_1005495A0), vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v4, xmmword_100549570), v5), xmmword_100549580), vshlq_u64(vandq_s8(vshlq_u64(v4, xmmword_100549550), v5), xmmword_100549560)));
  *a1 = 134217984;
  *a3 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  sub_10003A938(&_mh_execute_header, "#wifi-service,found empty peer list when creating array of peers for key 0x%llx", a1, a4);
  return result;
}

void sub_10049C584(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10003A96C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10049C5D8()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,readiness callback is nullptr for peer ID: %@", v4, v5);
}

void sub_10049C73C(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_10049C770()
{
  sub_10003A928();
  sub_10003A960(v1, v2, v3, 5.7779e-34);
  sub_10003A938(&_mh_execute_header, "#wifi-service,No results callback for peer with matched ranging results. peerID: %@", v4, v5);
}

void sub_10049C7B4(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "onWiFiDeviceClientRangingCallback2p4GHz";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#wifi-service,%s: fPeer2p4GHz should not be null when we are processing ranging results", buf, 0xCu);
}

void sub_10049C804()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10049CAF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "tried to run unrecognized activity %@", &v2, 0xCu);
}

void sub_10049CC10(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#bundle Error while getting bundle proxy for app: %@. Error: %@", buf, 0x16u);
}

void sub_10049CD00(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Entitlement check failed! - rejecting unentitled client with pid %d", v2, 8u);
}

void sub_10049CDA4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#wifi,Default value set for WiFiServiceNumMeas must be 1, 2, 4, or 8. invalid value: %d", v2, 8u);
}

void sub_10049CEFC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "WRTT: Unexpected hardware %u in getUnlockThreshold", v2, 8u);
}

void sub_10049D03C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10049D0AC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049D0E8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10049D158()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049D194()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049D1D0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049D20C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049D2B0()
{
  sub_100008DBC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "CLFindMyAccessoryManager failed with error: %@, for device: %@", v2, 0x16u);
}

void sub_10049D48C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 serviceName];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[PRXPCServicesManager] no service listening for %@, connection: %@", &v5, 0x16u);
}

void sub_10049DF5C(uint64_t a1, void **a2)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*a2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000AD84(v3);
  }
}

void sub_10049E5C8(uint64_t a1, void *a2, NSObject *a3)
{
  if (*(a1 + 63) < 0)
  {
    a2 = *a2;
  }

  LODWORD(v3) = 136315138;
  HIDWORD(v3) = a2;
  sub_10016A3EC(&_mh_execute_header, a2, a3, "#lut,setting AoACalculator LUT using file %s failed", v3);
}

void sub_10049E740(uint64_t a1, void *a2, NSObject *a3)
{
  if (*(a1 + 63) < 0)
  {
    a2 = *a2;
  }

  LODWORD(v3) = 136315138;
  HIDWORD(v3) = a2;
  sub_10016A3EC(&_mh_execute_header, a2, a3, "#lut,writing LUT file %s fails", v3);
}

void sub_10049E7B8(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#me,MeasEngMetricsCalculator::checkTOACIRDataEvent: firstPathAmplitude <= 0: %3f\n", &v2, 0xCu);
}

void sub_10049E994(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#accessory,download,data of accessory %s not present", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_10049EB38(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#aggr,addRangeResult: no mach continuous time (mach abs = %.9f), ignoring", &v3, 0xCu);
}

uint64_t sub_10049EBB4(os_log_t log, _BYTE *a2)
{
  *v4 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#aggr,addRangeResult: got both AOA and TOA CIR events, purging both!", v4, 2u);
  return *a2 & 1;
}

void sub_10049EC50(unsigned __int16 *a1, uint64_t *a2)
{
  sub_100008DE4(a1, a2, __stack_chk_guard);
  sub_100008FB0();
  *&v6[2] = v2;
  sub_10017C624(&_mh_execute_header, v3, v4, "#aggr,haveReceivedRoseMeasurements ticketId %hu targetMac 0x%016llx NO", v5, *v6);
}

void sub_10049ECBC(unsigned __int16 *a1, uint64_t *a2)
{
  sub_100008DE4(a1, a2, __stack_chk_guard);
  sub_100008FB0();
  *&v6[2] = v2;
  sub_10017C624(&_mh_execute_header, v3, v4, "#aggr,haveReceivedRoseMeasurements ticketId %hu targetMac 0x%016llx YES", v5, *v6);
}

void sub_10049ED28(unsigned __int16 *a1, uint64_t *a2)
{
  sub_100008DE4(a1, a2, __stack_chk_guard);
  sub_100008FB0();
  *&v6[2] = v2;
  sub_10017C624(&_mh_execute_header, v3, v4, "#aggr,haveReceivedRoseMeasurements ticketId %hu targetMac 0x%016llx: no buffer slot", v5, *v6);
}

void sub_10049ED94()
{
  sub_100008FB0();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#aggr,sendReceivedRoseMeasurements: no measurements for ticketId %hu targetMac 0x%016llx", v2, 0x12u);
}

void sub_10049EE40(unsigned __int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#aggr,failed to obtain device mac address for ticket_id %hu", v2, 8u);
}

void sub_10049F020(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#me,RoseMeasurementEngine::getRangeResult: error: local and remote timestamp values are inconsistent with measured frequency. Computed range: %lf", &v2, 0xCu);
}

void sub_10049F104()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F140(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049F1B0(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049F24C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F288()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F2C4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F300(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049F370()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F3D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049F414(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10049F484()
{
  if (sub_100182C20())
  {
    sub_100008DF4(&_mh_execute_header, v1, v2, "txSlotSize = %lld", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_10049F53C()
{
  if (sub_100182C20())
  {
    sub_100008DF4(&_mh_execute_header, v1, v2, "txSlotSize = %lld", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_10049F650(int a1)
{
  if (sub_100182C20())
  {
    v9 = 67109120;
    LODWORD(v10) = a1;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "pxgCount = %d", &v9, 8u);
    v1 = qword_1009F9820;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/RangingServiceLib/ServiceProvider/RoseCycleIntervalPicker.cpp";
    v11 = 1024;
    v12 = 51;
    v13 = 2080;
    v14 = "SymmetricalMultipeer";
    sub_100008FDC(&_mh_execute_header, v3, v4, "%s:%d: assertion failure in %s", v5, v6, v7, v8, 2u);
  }

  abort();
}

void sub_10049F718()
{
  if (__cxa_guard_acquire(&qword_1009EA928))
  {
    __cxa_atexit(&std::mutex::~mutex, &unk_1009EA8E8, &_mh_execute_header);
    __cxa_guard_release(&qword_1009EA928);
  }
}

void sub_10049F818(unsigned __int8 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sp,nb_rx_status = %d", buf, 8u);
}

void sub_10049F864(unsigned __int8 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sp,mms_rx_status = %d", buf, 8u);
}

void sub_10049F910(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10049F9EC(void *a1, NSObject *a2)
{
  v2 = (a1[1] - *a1) / 144;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#sp,computeAndEmitSensorFusionSolution(imu_data): got %zu solutions", &v3, 0xCu);
}

void sub_10049FB1C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10049FBB8()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!ranging_rate_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_10049FC84()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!session_start_notification.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_10049FD50()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!range_result_debug_v2_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_10049FE1C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!range_result_debug_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_10049FEE8()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!timestamp_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_10049FFB4()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!resp_sf_stats.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A0080()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!toa_cir_data_v2_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A014C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!toa_cir_data_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A0218()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!aoa_cir_data_event.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A02E4()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!cir_data.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A03B0()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#sp,!range_result.has_value()", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#sp,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A0520()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A0594(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A07A8(uint64_t a1)
{
  v1 = *(a1 + 90);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A0910(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 104);
  sub_10018B4B0();
  sub_10018B4C8(&_mh_execute_header, v4, v5, "#sp,Ticket id %d has unspecified solution type preference. Peer: 0x%llx", v6, v7);
}

void sub_1004A0980(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 104);
  sub_10018B4B0();
  sub_10018B4C8(&_mh_execute_header, v4, v5, "#sp,No computation preference found for ticket ID: %d. Peer: 0x%llx", v6, v7);
}

void sub_1004A09F0(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004A0A78(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 64);
  sub_10018B4B0();
  sub_10018B4C8(&_mh_execute_header, v4, v5, "#sp,computeAndEmitSensorFusionSolution(rose_data): Failed to add rose data to filter. Ticket ID: %d, Peer: 0x%llx", v6, v7);
}

void sub_1004A0AE8(uint64_t a1)
{
  v6 = *(a1 + 64);
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004A0B60(uint64_t a1)
{
  v2 = *(a1 + 832);
  if (v2)
  {
    *(a1 + 840) = v2;
    operator delete(v2);
  }
}

void sub_1004A0B78(uint64_t a1)
{
  v2 = *(a1 + 1656);
  if (v2)
  {
    *(a1 + 1664) = v2;
    operator delete(v2);
  }
}

void sub_1004A0B90()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0BCC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0C08()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0C44()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A0D28()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A0D98()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A0E08()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0E44()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0E80()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A0F70()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A0FAC(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1004A1198(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[RoseServiceProvider] %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A11FC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A1238()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A12A0(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    sub_100013F74(a1);
  }
}

void sub_1004A12B0(uint64_t a1)
{
  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1004A13D8(uint64_t *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004A1490(uint64_t *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004A1508(uint64_t a1)
{
  v6 = *(a1 + 64);
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A16E0()
{
  v0 = __cxa_guard_acquire(&qword_1009EF738);
  if (v0)
  {
    sub_10000902C(v0, &unk_1009EA930, &_mh_execute_header);
    __cxa_guard_release(&qword_1009EF738);
  }
}

void sub_1004A1724()
{
  v0 = __cxa_guard_acquire(&qword_1009F0110);
  if (v0)
  {
    sub_10000902C(v0, &stru_1009EA970, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F0110);
  }
}

void sub_1004A1E2C()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A1F04()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A1F74()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A2018()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A2088()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A20F8()
{
  sub_10000901C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A21D0(uint64_t a1)
{
  v2 = *(a1 + 760);
  if (v2)
  {
    sub_1001A4490(v2, a1);
  }
}

void sub_1004A2218(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1004A2330(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100192CE4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10000904C();
  sub_100008E3C(&_mh_execute_header, v8, v9, "RoseScheduler - %s", v10, v11, v12, v13, v14, __p, v17, v18, 2u);
  if (v19 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1004A2434(int a1)
{
  sub_1001A3548(a1, __p);
  sub_10000904C();
  HIDWORD(v11) = v1;
  sub_100008E3C(&_mh_execute_header, v2, v3, "RoseScheduler::handleServiceRequestStatusUpdate got unexpected status update %s", v4, v5, v6, v7, v8, __p[0], __p[1], v10, 2u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004A2510(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A2580(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A25F0(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A2660(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A26D0(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A2740(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A2A48(uint64_t a1)
{
  v2 = *(a1 + 720);
  if (v2)
  {
    *(a1 + 728) = v2;
    operator delete(v2);
  }
}

void sub_1004A3E6C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "Time bases must be different", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A3F04()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "Must specify a timebase to convert to", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A3F9C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "Must specify a timebase to convert from", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A40B0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A40EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100013F7C();
  sub_10000907C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1004A4164(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  sub_10000907C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x14u);
}

void sub_1004A41F8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "regulatory,geo,loc,knownLonLat", buf, 2u);
}

void sub_1004A4238()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4274()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A42B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100013F7C();
  sub_10000907C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1004A4328()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A44D8(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004A45CC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4608()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4644(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004A46C4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v3) = 0;
    _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "#btsampledistributor Registered for device presence bluetooth sample but does not support device presence.", &v3, 2u);
  }

  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v3 = 136315650;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/DevicePresence/NIServerBluetoothSampleDistributor.mm";
    v5 = 1024;
    v6 = 234;
    v7 = 2080;
    v8 = "[NIServerBluetoothSampleInternalObserver _registerForInternalBluetoothSamples:reportCache:]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#btsampledistributor %s:%d: assertion failure in %s", &v3, 0x1Cu);
  }

  abort();
}

void sub_1004A4790()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A4800()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A483C()
{
  sub_10000908C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A48AC(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#btsampledistributor #nibtfinding invalid btaddress length: %s", buf, 0xCu);
}

void sub_1004A48F4(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#btsampledistributor #nibtfinding macAddressHexString less than 1: %lu", buf, 0xCu);
}

void sub_1004A493C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4978()
{
  sub_10000908C();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A49E8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4A24()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A4A60()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A4AD0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A4B40(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "enumerateFiles: null filename from reverseEnumerateFiles", buf, 2u);
}

void sub_1004A4B80(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pruneLogFiles: directory %s does not exist", &v3, 0xCu);
}

void sub_1004A4C08(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pruneLogFiles: clock_gettime failed with errno %d", buf, 8u);
}

void sub_1004A4E44(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136380675;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-secure-ranging,WiFi ranging error:%{private}s", &v4, 0xCu);
}

void sub_1004A4ED0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "regulatory,geof,qm,default,fUwbOnDelay, %.1f", &v3, 0xCu);
}

void sub_1004A5460(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#system-health,failed to submit task with error: %@", &v2, 0xCu);
}

void sub_1004A55A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#system-health,_tryToSendScheduledHealthReport: Failed to notify SystemHealthManager of HW status. Error: %@", &v2, 0xCu);
}

void sub_1004A5620()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A565C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A5738(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-container,Unable to run session due to activation failure. Activation error code: %ld", buf, 0xCu);
}

void sub_1004A5780(uint64_t a1)
{
  sub_1001D0B4C(a1, __stack_chk_guard);
  sub_1001D0AF0();
  sub_1001D0B1C(&_mh_execute_header, v1, v2, "#ses-container,Failed to categorize specialized session class %@. Error: %@");
}

void sub_1004A57EC(uint64_t a1)
{
  sub_1001D0B4C(a1, __stack_chk_guard);
  sub_1001D0AF0();
  sub_1001D0B1C(&_mh_execute_header, v1, v2, "#ses-container,Failed to create specialized session %@. Error: %@");
}

void sub_1004A5858(uint64_t a1)
{
  sub_1001D0B4C(a1, __stack_chk_guard);
  sub_1001D0AF0();
  sub_1001D0B1C(&_mh_execute_header, v1, v2, "#ses-container,Failed to configure specialized session %@. Error: %@");
}

void sub_1004A58C4(uint64_t a1)
{
  sub_1001D0B4C(a1, __stack_chk_guard);
  sub_1001D0AF0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004A5938(uint64_t a1)
{
  sub_1001D0B4C(a1, __stack_chk_guard);
  sub_1001D0AF0();
  sub_1001D0B1C(&_mh_execute_header, v1, v2, "#ses-container,Failed to run specialized session %@. Error: %@");
}

void sub_1004A5B70()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A5BF0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A5C70()
{
  sub_10003A928();
  sub_1001D0B04(v1, v2, v3, 5.778e-34);
  sub_1001D0B58(&_mh_execute_header, "#ses-container,Configuring local device not authorized. Signing identity: %@, pid: %d.", v4, v5);
}

void sub_1004A5D1C(uint64_t a1)
{
  v6 = *(a1 + 236);
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004A5D94()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-container,UWB provider is nil when requested from NIServerSessionResourceManager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-container,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A5E2C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-container,WiFi provider is nil when requested from NIServerSessionResourceManager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-container,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A5EC4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ses-container,Entitlement with integer value %d is out of bounds", v2, 8u);
}

void sub_1004A60A8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A61B4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A61F0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A62B8()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-container,received app state unknown.", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-container,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004A6350(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#ses-ecosystem,Error adding service client: %@", &v2, 0xCu);
}

void sub_1004A64A8(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ses-ecosystem,Unexpected RoseSolutionType: %d", v3, 8u);
}

void sub_1004A665C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-ecosystem,Rose session invalidated unexpectedly. Reason: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004A6704(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-ecosystem,Bluetooth device %@. Error: %@", buf, 0x16u);
}

void sub_1004A67D4(uint64_t *a1)
{
  v6 = *a1;
  sub_100008E78();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004A6B40()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6BB0()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6C20()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6C90()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6D00()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6DD8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6E48()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6EB8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A6F90()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A7000()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A7070()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A70E0()
{
  sub_100008DBC();
  sub_1001DA350();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1004A7154()
{
  sub_100008DBC();
  sub_1001DA350();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_1004A71C8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004A7238(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100008DBC();
  sub_100008E78();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1004A73D4(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PRRosePowerManager: Invalid roseDefaultPowerVoteCount, using system default %d", v1, 8u);
}

void sub_1004A7728(uint64_t a1, uint64_t *a2)
{
  sub_1001EA0F8(a1, a2, __stack_chk_guard);
  sub_1001EA078();
  sub_1001EA0AC();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x26u);
}

void sub_1004A7798(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1001EA0F8(a1, a2, __stack_chk_guard);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 49);
  v6 = *(v2 + 50);
  sub_1001EA078();
  sub_1001EA0AC();
  _os_log_debug_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 0x42u);
}

void sub_1004A7840(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 14);
  v3 = *(a1 + 22);
  v4 = *(a1 + 30);
  v5 = *(a1 + 38);
  v6 = *(a1 + 46);
  v7 = *(a1 + 54);
  v8 = *(a1 + 55);
  sub_1001EA078();
  sub_100008E30();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x46u);
}

void sub_1004A78F4(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 16);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x14u);
}

void sub_1004A7980(uint64_t *a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    v2 = off_10099D620[a2];
  }

  v7 = *a1;
  sub_1001EA0AC();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x1Cu);
}

void sub_1004A7A3C(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1001EA0B8();
  sub_1001EA0AC();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x12u);
}

void sub_1004A7AB8(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = *(a1 + 20);
  v3 = *(a1 + 22);
  sub_1001EA0B8();
  sub_100008E30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1004A7B68(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#roseprovider,LPEM enable response status %d is not RoseFWErrorCode::Success", v2, 8u);
}

void sub_1004A7BE0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7C1C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7C58()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7C94()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7CD0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7D0C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7DBC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7E2C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7E68(uint64_t a1)
{
  v1 = *(a1 + 12);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A7EDC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7F18(uint64_t a1)
{
  v1 = *(a1 + 12);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A7F8C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A7FC8(uint64_t a1)
{
  v1 = *(a1 + 12);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A803C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A8078()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A80B4()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A80F0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A812C()
{
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A81A0()
{
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004A828C()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A82FC()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A836C()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A83DC()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A844C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A8488()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A84FC()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A8570()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A85E4()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A8658()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A8744()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A8780()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A87BC(uint64_t a1)
{
  v1 = *(a1 + 13);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004A8830()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A886C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A8978(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,%s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A89CC(void *a1, void *a2)
{
  sub_1001EA0E4(a1, a2, __stack_chk_guard);
  sub_1001EA0D0();
  sub_1001EA0AC();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1004A8A48(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,Rose returned error. Command type: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A8BD4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,#alisha Rose returned error. Command type: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A8CC4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,#aop-sf Rose returned error. Command type: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A8D18(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,#aop-sf-report Rose returned error. Command type: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A8D6C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,#deep-slp Rose returned error while sending command. Command type:%s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A8DC0(void *a1, void *a2)
{
  sub_1001EA0E4(a1, a2, __stack_chk_guard);
  sub_1001EA0D0();
  sub_1001EA0AC();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1004A8E9C(NSObject *a1, char a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    if ((a2 - 1) > 2u)
    {
      v4 = "GetKeyResponse";
    }

    else
    {
      v4 = off_10099D678[(a2 - 1)];
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "#roseprovider,#alisha delete keys - got %s report type.", &v6, 0xCu);
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/DaemonCore/Ranging/Providers/Rose/PRRoseProvider.mm";
    v8 = 1024;
    v9 = 941;
    v10 = 2080;
    v11 = "_sendAlishaDeleteKeysCommandSync";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#roseprovider,%s:%d: assertion failure in %s", &v6, 0x1Cu);
  }

  abort();
}

void sub_1004A900C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9048()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9084()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A90C0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9130()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A91A0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9210()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9280(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#roseprovider,Rose returned error while sending command. Command type:%s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004A92D4()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004A9470(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004A94F4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004A9564()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_1004A95D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete();
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_1004A9650(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1004A9678(uint64_t a1)
{
  v2 = *(a1 + 1280);
  if (v2)
  {
    *(a1 + 1288) = v2;
    operator delete(v2);
  }
}

void sub_1004A9970(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ni-assertion,Failed to acquire %@. Error: %@", &v3, 0x16u);
}

void sub_1004A99F8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ni-assertion,Couldn't acquire power assertion. Return code %d", v2, 8u);
}

void sub_1004A9A70(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ni-assertion,Couldn't release power assertion. Return code %d", v2, 8u);
}

void sub_1004AA02C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AA068()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AA318()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,run() but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA45C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AA510()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,ACWG session reason stack cannot be empty on M1 error", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA5A8()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,processAcwgM1Msg but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA6B8()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,processAcwgM3Msg but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA7FC()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,suspendAcwgRanging but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA90C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,ACWG session reason stack cannot be empty on resume error", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AA9A4()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,processAcwgRangingSessionResumeRequestMsg but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AAAB4()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,prefetchAcwgUrsk but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AAB4C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AAC5C()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,processBluetoothHostTimeSyncWithType but no ACWG manager", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AADE4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AB000(uint64_t a1)
{
  v2 = sub_1001FF2A0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-acwg,Failed to allocate Acwg session (%s)", v5, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004AB0E4(uint64_t a1)
{
  v2 = sub_1001FF2A0(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-acwg,Alisha session invalidated unexpectedly. Reason: %s", v5, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004AB1C8(std::__shared_weak_count **a1, std::__shared_weak_count *this)
{
  v3 = *a1;
  if (v3)
  {
    sub_10000AD84(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
  operator delete(v4);
}

void sub_1004AB2F0()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,ACWG session suspend timestamp isn't valid", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AB400()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,ACWG session reason stack cannot be empty here", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AB510()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,ACWG session reason stack cannot be empty here", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004AB710(uint64_t *a1)
{
  v1 = sub_1001FF2A0(a1);
  if (v4 != v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v1;
  }

  v7 = 136315138;
  v8 = v6;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-acwg,timeout event %s unsupported", &v7, 0xCu);
}

void sub_1004AB808()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AB8BC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ABA28()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#ses-acwg,Not supported tx_preamble in service request", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#ses-acwg,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004ABAC0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ABAFC(os_log_t log)
{
  v1 = 138412290;
  v2 = @"Not authorized.";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-system,%@", &v1, 0xCu);
}

void sub_1004ABB80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[PRAppStateMonitor] error creating handle for identifier. Error: %@", &v2, 0xCu);
}

void sub_1004ABBF8(int *a1, int a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    v5 = *a1;
    v7 = 67109376;
    *v8 = a2;
    *&v8[4] = 1024;
    *&v8[6] = v5;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "[PRAppStateMonitor] pid (%d) != _monitoredPID (%d)", &v7, 0xEu);
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    *v8 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/AppState/PRAppStateMonitor.mm";
    *&v8[8] = 1024;
    v9 = 274;
    v10 = 2080;
    v11 = "[PRAppStateMonitor _process:didUpdateState:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", &v7, 0x1Cu);
  }

  abort();
}

void sub_1004ABD48(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-bt-loc,CLFindMyAccessoryManager failed with error: %@, for device: %@", &v3, 0x16u);
}

void sub_1004ABF48(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#peer-gr,Unexpected RoseSolutionType: %d", v3, 8u);
}

void sub_1004ABFC4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-gr,Rose session invalidated unexpectedly. Reason: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AC01C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-gr,Failed to allocate a UWB session. Error: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AC150(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-gr,Failed to start ranging. Return code: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AC1DC()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC260()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC2D0()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC30C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100008DB0();
  sub_100008EB0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004AC380()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC3BC()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC3F8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC468()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC4D8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC548()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC5B8()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC5F4()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC630()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC66C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC6A8()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC6E4()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC720()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC75C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AC880()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC8F0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC98C()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AC9FC()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004ACA6C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACAA8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004ACB18(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004ACB8C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACBC8(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 40);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004ACC40(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 40);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004ACCB8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACCF4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#find-proxy,%@", buf, 0xCu);
}

void sub_1004ACD4C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACD88()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004ACDF8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACE34()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004ACEA4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACEE0(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004ACF50()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ACF8C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004ACFFC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD038()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD074()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD0E4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD120()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD190()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD1CC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD23C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD278()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD2B4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD2F0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD32C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AD368()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD594(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Device %@ does not have token data and it is not a known device", &v2, 0xCu);
}

void sub_1004AD664()
{
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD6E0()
{
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AD7F8(uint64_t a1)
{
  v1 = *(a1 + 436);
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1004AD880(unsigned int *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004AD8F4(unsigned int *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004ADA1C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADA58()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADA94()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADAD0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADB74()
{
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004ADBE8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADC24()
{
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004ADC98(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  sub_1002301E8(&_mh_execute_header, a2, a3, "regulatory,geo,monitor,clearStoredRegulatoryArea:%s", &v3);
}

void sub_1004ADD54(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004ADDC4(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004ADE34(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004ADED8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004ADF14(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    v1 = *(a1 + 296);
  }

  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004ADF94(uint64_t a1)
{
  if (*(a1 + 319) < 0)
  {
    v1 = *(a1 + 296);
  }

  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004AE014()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE050(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AE0C0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1002301E8(&_mh_execute_header, v8, v9, "regulatory,geo,monitor,forwardTestMcc,mccSource:%s.", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AE114(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AE184(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1002301E8(&_mh_execute_header, v8, v9, "regulatory,geo,monitor,processIsoCountryFromPhone,isoCountrySource:%s.", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AE1D8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE214()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE284()
{
  sub_100008DA4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004AE2F8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE334()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE3D0(uint64_t a1, void *a2, NSObject *a3)
{
  if (*(a1 + 399) < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  sub_1002301E8(&_mh_execute_header, a2, a3, "regulatory,geo,monitor,setStoredRegulatoryArea:%s", &v3);
}

void sub_1004AE44C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 463) < 0 && *(a1 + 448))
  {
    v2 = *(a1 + 440);
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_100008DB0();
  v7 = 2080;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "geo,mon fCurrentWifiIso current:%s new:%s", v6, 0x16u);
}

void sub_1004AE5A0()
{
  if (__cxa_guard_acquire(&qword_1009F1D98))
  {
    dword_1009F1D90 = 1966090;
    __cxa_guard_release(&qword_1009F1D98);
  }
}

void sub_1004AE77C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#alisha-tom,invalidate() must be called before destructing CarKeyTimeoutManager for session identifier %@", &v3, 0xCu);
}

void sub_1004AE838()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AE914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  sub_100008DBC();
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-home,Failed to add peers %@. Session identifier: %@", v5, 0x16u);
}

void sub_1004AE9A4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEA14()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEA84()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AEAC0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AEAFC(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AEB6C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEBDC()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AEC18()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEC88()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AED04()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AED74()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AEDB0(int *a1)
{
  v6 = *a1;
  sub_100008EB0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004AEE28()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AEE64()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEED4(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AEF44()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AEFE0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF01C(_DWORD *a1, _DWORD *a2, os_log_t log)
{
  v3 = *a1 - *a2;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = 16;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-home,Received unexpected remote data: too small (%d < %d)", v4, 0xEu);
}

void sub_1004AF0B4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF124()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF1C0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF1FC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF26C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF2A8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF2E4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF354()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF3C4()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF400()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF43C(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000090CC(&_mh_execute_header, a2, a3, "#ses-home,Session key has invalid length. %@", a2);
}

void sub_1004AF488()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF4F0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#ses-home,Failed to allocate a UWB session. Error: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AF548()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF634(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#ses-home,Rose session invalidated unexpectedly. Reason: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004AF6B8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF6F4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AF7E8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF824()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF860()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF89C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF8D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF914()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF950()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AF98C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AF9FC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AFA38()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AFAA8()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AFB18()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AFB88(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004AFBF8(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_100008DB0();
  sub_1000090CC(&_mh_execute_header, v3, v4, "#ses-home,WiFi ranging error:%{private}s", v5);
}

void sub_1004AFCF0(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2117;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#find-ses,Service processSelfLocation [%{private}@]: %{sensitive}@", buf, 0x16u);
}

void sub_1004AFD58(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#find-ses,Service processSelfHeading [%{private}@]: %{private}@", buf, 0x16u);
}

void sub_1004AFE00()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AFE3C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 88);
  v4 = *a2;
  v5 = 138478083;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#find-ses,Providers could not be initialized for token: %{private}@ with configuration: %@", &v5, 0x16u);
}

void sub_1004AFF34()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004AFFA4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004AFFE0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B001C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B008C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B00C8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B0138()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B0174()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B01E4()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B0254()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B0290(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109379;
  v4[1] = v3;
  v5 = 2113;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#find-ses,didRangeWithPeer:newSolution: unexpected RoseSolutionType: %d. Token: %{private}@", v4, 0x12u);
}

void sub_1004B0394()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B03D0()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B0440(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#find-ses,%{public}@", buf, 0xCu);
}

void sub_1004B0498()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B060C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B067C()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B072C()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B079C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B07D8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B0814()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B08F8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B09F4(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B0A64(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] set data size failed %d");
}

void sub_1004B0ACC(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] set MAC size failed %d");
}

void sub_1004B0B34(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] add nonce failed %d");
}

void sub_1004B0B9C(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] add auth data failed %d");
}

void sub_1004B0C04(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] cryptor-update failed %d");
}

void sub_1004B0C6C(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Encryptor] get auth tag failed %d");
}

void sub_1004B0CD4(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B0D44(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B0DB4(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] set data size failed %d");
}

void sub_1004B0E1C(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] set MAC size failed %d");
}

void sub_1004B0E84(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] add nonce failed %d");
}

void sub_1004B0EEC(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] add auth data failed %d");
}

void sub_1004B0F54(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] cryptor-update failed %d");
}

void sub_1004B0FBC(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][Decryptor] get auth tag failed %d");
}

void sub_1004B1024(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B1094(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B1104(uint64_t a1, int a2, uint64_t a3)
{
  sub_100008EBC(a1, a2, a3, 5.8082e-34);
  *(v3 + 20) = 11;
  sub_100250F98(&_mh_execute_header, "#crypto,[%{private}@][Decryptor] ciphertext too small (%d < %d)", v4, v5);
}

void sub_1004B1148(uint64_t a1, int a2, uint64_t a3)
{
  sub_100008EBC(a1, a2, a3, 5.8082e-34);
  *(v3 + 20) = 5;
  sub_100250F98(&_mh_execute_header, "#crypto,[%{private}@][Decryptor] ciphertext too small (%d < %d)", v4, v5);
}

void sub_1004B118C(uint64_t a1, int a2, uint64_t a3)
{
  sub_100008EBC(a1, a2, a3, 5.8082e-34);
  *(v3 + 20) = 1;
  sub_100250F98(&_mh_execute_header, "#crypto,[%{private}@][Decryptor] ciphertext too small (%d < %d)", v4, v5);
}

void sub_1004B11D0(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B1240(uint64_t a1)
{
  sub_100250F8C(a1, __stack_chk_guard);
  sub_1000090E8();
  sub_10018B4C8(&_mh_execute_header, v1, v2, "#crypto,[%{private}@][KDF] derive key failed %d");
}

void sub_1004B12E8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B14C0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B14FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to submit task with error: %@", &v2, 0xCu);
}

void sub_1004B16B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#vision,Session failed with error: %@", &v2, 0xCu);
}

void sub_1004B1794(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  v2 = *(a1 + 29);
  v3 = *(a1 + 28);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1004B1864(void *a1, void *a2)
{
  sub_1001EA0E4(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004B191C(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B19B0()
{
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B1B4C(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B1BC8(uint64_t a1)
{
  sub_10025911C(a1, a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B1E5C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B1E98(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1004B1ECC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008EB0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B1F40(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1004B1F74(_BYTE *a1, _BYTE *a2)
{
  sub_100013F64(a1, a2);
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1004B21BC()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B222C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B235C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v7;
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B2458(char a1, unsigned __int8 *a2)
{
  if (a1)
  {
    v2 = *a2;
    sub_100008DA4();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose::_handleRoseControlReport unknown type %hhu", v4, 8u);
  }

  __assert_rtn("_handleRoseControlReport", "PRRose.mm", 804, "false");
}

void sub_1004B25F0(void *a1, void *a2)
{
  sub_1001EA0E4(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B26CC(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B2860(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v7;
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B2928(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v7;
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B2B70(uint64_t a1)
{
  v1 = *(a1 + 1517);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2BE4(uint64_t a1)
{
  v1 = *(a1 + 1518);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2C58(uint64_t a1)
{
  v1 = *(a1 + 1519);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2CCC(uint64_t a1)
{
  v1 = *(a1 + 1520);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2D40(uint64_t a1)
{
  v1 = *(a1 + 1521);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2DB4(uint64_t a1)
{
  v1 = *(a1 + 1522);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2E28(uint64_t a1)
{
  v1 = *(a1 + 1523);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2E9C(uint64_t a1)
{
  v1 = *(a1 + 1524);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2F10(uint64_t a1)
{
  v1 = *(a1 + 1525);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2F84(uint64_t a1)
{
  v1 = *(a1 + 1526);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B2FF8(uint64_t a1)
{
  v1 = *(a1 + 1527);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B306C(uint64_t a1)
{
  v1 = *(a1 + 1528);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B3384(unsigned int a1)
{
  if (a1 <= 2)
  {
    v1 = off_1009A10D8[a1];
  }

  sub_100008DB0();
  v5 = 2080;
  v6 = v2;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "PRRose: Handling unrecoverable error %s. Current boot already crashed on %s, so don't crash again", v4, 0x16u);
}

void sub_1004B3448()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B3524()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B3594(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B3644(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B36F4(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B37A4(void *a1, void *a2)
{
  sub_1001EA0E4(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B3880(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B3964(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B3B4C(int a1)
{
  if ((a1 - 2) <= 2)
  {
    v1 = off_1009A1160[a1 - 2];
  }

  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B3CE4()
{
  sub_10026BF30();
  sub_100013FA0(v0);
  sub_100009100();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B4074()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B4228(uint64_t a1)
{
  sub_10026BF14(a1);
  sub_100008ED8();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B42B0(uint64_t a1)
{
  sub_10026BF14(a1);
  sub_100008ED8();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B4470()
{
  sub_10026BF30();
  sub_100013FA0(v0);
  sub_100009100();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B44F4(uint64_t a1)
{
  sub_10026BF14(a1);
  sub_100008ED8();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B457C(uint64_t a1)
{
  sub_10026BF14(a1);
  sub_100008ED8();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1004B4604()
{
  sub_10026BF30();
  sub_100013FA0(v0);
  sub_100009100();
  sub_100009118(&_mh_execute_header, v1, v2, "PRRose unexpected event while in state: %s, event: %s", v3, v4, v5, v6, v7);
}

void sub_1004B4680()
{
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B49D4(unsigned int *a1)
{
  sub_10026BF3C(a1);
  sub_100008DBC();
  sub_10026BF04();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B4BF0()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B4C64()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B4CD8()
{
  sub_100008DA4();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B4D4C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B4DBC()
{
  sub_100008E88();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "#handoffca rangingRateChanged() monotonicTimeSeconds: %f s, rangingIntervalMilliseconds %d s", v2, 0x12u);
}

void sub_1004B52AC()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v2) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "Registered for vision input but does not support camera assistance.", &v2, 2u);
  }

  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v2 = 136315650;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/VIO/NIServerVisionDataDistributor.mm";
    v4 = 1024;
    v5 = 59;
    v6 = 2080;
    v7 = "[NIServerVisionDataDistributor registerForVisionInput:]";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", &v2, 0x1Cu);
  }

  abort();
}

void sub_1004B5404(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#type19,UWB Data to parse: %@, Presence Data to parse: %@ ", &v3, 0x16u);
}

float sub_1004B548C(unsigned __int8 *a1, NSObject *a2)
{
  v2 = a1[8];
  v3 = a1[9];
  v4 = a1[10];
  v5 = a1[11];
  v7[0] = 67109888;
  v7[1] = v2;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  v12 = 1024;
  v13 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#type19,Parsed. Flag FE: %d. FS: %d. FC: %d. FC2: %d.", v7, 0x1Au);
  return result;
}

void sub_1004B5614()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5650()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B56C4(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004B5734(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004B57A4(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004B5814()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5850()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B588C()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B5974(unsigned int *a1)
{
  v1 = *a1;
  sub_100008DA4();
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ses-loc,Unexpected RoseSolutionType: %d", v3, 8u);
}

void sub_1004B59EC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5A28()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5A64(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004B5AD4()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B5B48(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B5BA4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5BE0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B5D3C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B5D98()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5DD4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B5E10(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1004B5F60(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B5FD4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B605C(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004B60CC()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004B6140()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B617C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B61B8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B621C(int *a1)
{
  v6 = *a1;
  sub_100008E78();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1004B62A0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v7;
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B6404(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B6474(uint64_t a1, uint64_t a2)
{
  sub_1002979E8(a1, a2);
  sub_1002979D0(v3, 5.8081e-34, v4, v5);
  sub_1002979A4(&_mh_execute_header, "#find-range,#crypto Failed to encrypt (self ID %{private}@), id: %@", v6, v7);
}

void sub_1004B65BC(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B662C(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B669C(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B670C(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B677C(uint64_t a1, uint64_t a2)
{
  sub_1002979E8(a1, a2);
  sub_1002979D0(v3, 5.8081e-34, v4, v5);
  sub_1002979A4(&_mh_execute_header, "#find-range,#crypto Failed to decrypt (peer ID %{private}@). %@", v6, v7);
}

void sub_1004B67C0(_DWORD *a1, _DWORD *a2)
{
  sub_10029796C(a1, a2);
  sub_100008DA4();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B6830(_DWORD *a1, _DWORD *a2)
{
  sub_10029796C(a1, a2);
  sub_100008DA4();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B68A0(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B6910(uint64_t a1)
{
  v1 = sub_100297960(a1, __stack_chk_guard);
  *(v1 + 1008);
  *(v1 + 1816);
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1004B69C0(uint64_t a1)
{
  v1 = sub_100297960(a1, __stack_chk_guard);
  *v2;
  *(v1 + 1816);
  sub_100008E78();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1004B6A70()
{
  sub_1002979C0();
  v2 = *(v1 + 23);
  sub_100297980(v3, v1, v4, 5.778e-34);
  sub_1002979A4(&_mh_execute_header, "#find-range,Failed to initialize a NBAMMS session for %@. Error: %s", v5, v6);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1004B6B60(uint64_t a1)
{
  sub_100297960(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B6CB4(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#find-range,#auth Message could not be parsed for peer %s state", buf, 0xCu);
}

void sub_1004B6CFC(_DWORD *a1, _DWORD *a2)
{
  sub_10029796C(a1, a2);
  sub_100008DA4();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B6D6C()
{
  sub_1002979C0();
  *v1 = 136315394;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  sub_1002979A4(&_mh_execute_header, "#find-range,#auth IGNORED peer [%s] mutual auth:      %@", v4, v5);
}

void sub_1004B6E28(unsigned int *a1)
{
  v1 = *a1;
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004B71B4()
{
  sub_1002979C0();
  v2 = *(v1 + 23);
  sub_100297980(v3, v1, v4, 4.8151e-34);
  sub_1002979A4(&_mh_execute_header, "#find-range,[%s] Rose session invalidated unexpectedly. Reason: %s", v5, v6);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1004B723C(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B72B4(uint64_t a1, uint64_t a2)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004B73DC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B744C(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = sub_10029906C(v4);
  sub_100008DBC();
  v8 = 1024;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#ca-aggr,Recording usage %@ (day %d) failed because aggregator hasn't been notified of first unlock", v7, 0x12u);
}

void sub_1004B750C(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ca-aggr,Day number inconsistent with last time we pushed (%d < %d). Reset day number for CA pushes", v3, 0xEu);
}

void sub_1004B75D4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B76C4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B7734()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B77A4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004B77E4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7820()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B785C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B7958()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7994(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "#ses-nrby-peer,Solution mac_addr = %llu", v2, 0xCu);
}

void sub_1004B7A08()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7A78(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B7AE8(_DWORD *a1, _DWORD *a2, os_log_t log)
{
  v3 = *a1 - *a2;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = 16;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-nrby-peer,Received unexpected remote data: too small (%d < %d)", v4, 0xEu);
}

void sub_1004B7B80()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7BF0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B7C94()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B7D04()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7D40()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7D7C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B7DEC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7E5C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B7F00()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B7F70(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004B8048()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B80B8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B8128()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B81D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8214()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004B8284()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8390()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B83CC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8408()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B84BC()
{
  if (__cxa_guard_acquire(&qword_1009F3BB8))
  {
    qword_1009F3BC0 = 850045863;
    xmmword_1009F3BC8 = 0u;
    unk_1009F3BD8 = 0u;
    xmmword_1009F3BE8 = 0u;
    qword_1009F3BF8 = 0;
    unk_1009F3C00 = 850045863;
    xmmword_1009F3C08 = 0u;
    unk_1009F3C18 = 0u;
    xmmword_1009F3C28 = 0u;
    qword_1009F3C38 = 0;
    __cxa_atexit(sub_1002BD554, &qword_1009F3BC0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009F3BB8);
  }
}

void sub_1004B8554(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = sub_1002BDBBC(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#ttr,Another alert is being presented. Do not present alert for event %@", &v5, 0xCu);
}

void sub_1004B8644()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8AD4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#ses-carkey,_processCarKeyEvent: vehicle sent ranging suspension sub-event. Vehicle identifier: %@. No Alisha manager, nothing to do here.", buf, 0xCu);
}

void sub_1004B8B2C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#ses-carkey,_processCarKeyEvent: vehicle sent ranging terminated sub-event. Vehicle identifier: %@. No Alisha manager, nothing to do here.", buf, 0xCu);
}

void sub_1004B8B84()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8BC0(int a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2112;
  *(buf + 10) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-carkey,_processCarKeyEvent: unknown event type %d for vehicle identifier: %@", buf, 0x12u);
}

void sub_1004B8C28()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8C64()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B8CA0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-carkey,Failed to allocate Alisha session. Error: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B8D04(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#ses-carkey,Alisha session invalidated unexpectedly. Reason: %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004B96E8()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v2) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "#ses-carkey,Not supported tx_preamble in service request", &v2, 2u);
  }

  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v2 = 136315650;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerCarKeySession.mm";
    v4 = 1024;
    v5 = 205;
    v6 = 2080;
    v7 = "operator()";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "#ses-carkey,%s:%d: assertion failure in %s", &v2, 0x1Cu);
  }

  abort();
}

void sub_1004B97B8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004B9808(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#configurator,Add client %@ but client already registered", v3, v4, v5, v6, v7);
}

void sub_1004B9870(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#configurator,Remove client %@ but client not found", v3, v4, v5, v6, v7);
}

void sub_1004B98D8(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#configurator,Client %@ requested prewarm but client not found", v3, v4, v5, v6, v7);
}

void sub_1004B9940(unsigned __int8 a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a1;
  *(buf + 4) = 2112;
  *(buf + 10) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#configurator,Client notified resource usage limit exceeded (%d) for unsupported configuration type %@", buf, 0x12u);
}

void sub_1004B99AC(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#configurator,Client %@ notified resource usage but client not found", v3, v4, v5, v6, v7);
}

void sub_1004B9A14(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#configurator,Client %@ notified passive access but client not found", v3, v4, v5, v6, v7);
}

void sub_1004B9A7C(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#configurator,%@ UWB-SE secure channel failed with unexpected result %s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_1004B9B6C(uint64_t a1, _BYTE *a2, os_log_t log)
{
  if ((*a2 - 1) > 3u)
  {
    v3 = "GetKeyResponse";
  }

  else
  {
    v3 = off_1009A3298[(*a2 - 1)];
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2080;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#configurator,%@ UWB-SE secure channel failed with unexpected get-key payload type %s", &v4, 0x16u);
}

void sub_1004B9C24(uint64_t a1, unsigned __int16 *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#configurator,%@ UWB-SE secure channel failed with unexpected get-key-complete-event status %x", &v4, 0x12u);
}

void sub_1004B9D8C(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#convertAlgorithmFindeeDataToRoseFindeeData BoundedDisplacementEnterTimestamp=%lf", &v2, 0xCu);
}

void sub_1004B9ED8(uint64_t *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 134217984;
  *(buf + 4) = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#convertToAlgorithmFindeeData mach_absolute_receipt_timestamp=%lf", buf, 0xCu);
}

void sub_1004B9F24(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#convertToAlgorithmFindeeData BoundedDisplacementEnterTimestamp=%lf", &v2, 0xCu);
}

void sub_1004BA03C(void *a1)
{
  v1 = a1[70];
  v7 = a1[67];
  v8 = a1[68];
  v9 = a1[69];
  sub_1002D18A0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x34u);
}

void sub_1004BA0E0(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BA154(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BA1C8(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BA2F4(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  v4[0] = 67109378;
  v4[1] = v1;
  v5 = 2080;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "regulatory,geof,processIsoChange,slot:%d,iso:%s", v4, 0x12u);
}

void sub_1004BA540(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pblogger, protobuf Trying to log before opening log file. %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004BA74C()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004BA824()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004BA894()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004BAA08()
{
  sub_10003A954();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004BAB14(char *a1, uint8_t *buf, os_log_t log, void *a4)
{
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v6;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pblogger, getPbCIRPacketType: unrecognized CIR packet type: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a4 = qword_1009F9820;
}

void sub_1004BABD0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pblogger, logRangeCIREvent failure 3", buf, 2u);
}

void sub_1004BB000(uint64_t *a1, NSObject *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = 134219008;
  v8 = v2;
  v9 = 2048;
  v10 = v3;
  v11 = 2048;
  v12 = v4;
  v13 = 2048;
  v14 = v5;
  v15 = 2048;
  v16 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "pblogger, RoseSensorFusion: logSensorFusionInputAndOutputWithMotion. Solution = ID: 0x%llx Timestamp: %f Range: %f El: %f Az: %f", &v7, 0x34u);
}

void sub_1004BB564(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#peer-nba,Unexpected RoseSolutionType: %d", v3, 8u);
}

void sub_1004BB67C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-nba,Failed to start ranging. Return code: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BB708(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-nba,Rose session invalidated unexpectedly. Reason: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BB760(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_1000090CC(&_mh_execute_header, v3, v4, "#peer-nba,Failed to allocate a UWB session. Error: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BBC88()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BBDC4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BBE40()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC0A4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "#accessory-service,Not able to convert preamble %s to FiRa preamble index", v9, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BC104(void *a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v2 = 136315650;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerNearbyAccessoryRangingService.mm";
    v4 = 1024;
    v5 = 1880;
    v6 = 2080;
    v7 = "AppleToFiRaPreamble";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "#accessory-service,%s:%d: assertion failure in %s", &v2, 0x1Cu);
  }

  abort();
}

void sub_1004BC1DC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC218()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC254()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC290()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC2CC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC37C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#accessory-service,Build and run session: Failed to initalize. Error: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BC3D0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#accessory-service,Build and run session: Failed to start. Error: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BC424()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC4A0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_1000090CC(&_mh_execute_header, v8, v9, "#accessory-service,Failed to restart ranging. Error: %s", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BC4F4()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC530()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC56C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC5A8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC5E4()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC698()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BC784()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BC8B0()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BC924()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BC960(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004BC9D8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BCA14(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004BCA8C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-base,Error while invalidating session. Session identifier: %@. Error: %@", buf, 0x16u);
}

void sub_1004BCC1C(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#coex,onIncomingUCMEvent-Unexpected XPC connection event: %{public}s", &v2, 0xCu);
}

void sub_1004BCC94(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#coex,onIncomingUCMEvent-XPC connection error: %{public}s", buf, 0xCu);
}

void sub_1004BCDE0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_1000090CC(&_mh_execute_header, a2, a3, "#GestureFileUtils System volume folder '%s' does not exist.", a2);
}

void sub_1004BCE1C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_1000090CC(&_mh_execute_header, a2, a3, "#GestureFileUtils Resource bundle '%s' does not exist in system volume.", a2);
}

void sub_1004BCE58(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_1000090CC(&_mh_execute_header, a2, a3, "#GestureFileUtils Secondary Resource bundle '%s' does not exist in system volume.", a2);
}

void sub_1004BCED8(void **a1, void **a2)
{
  do
  {
    v4 = a1;
    a1 -= 4;
    if (*(v4 - 8) == 1 && *(v4 - 9) < 0)
    {
      operator delete(*a1);
    }
  }

  while (a1 != a2);
}

void sub_1004BCF28(char *a1, uint64_t *a2)
{
  sub_100304244(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1004BCFAC(char *a1, uint64_t *a2)
{
  sub_100304244(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1004BD0F4(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BD16C(unsigned __int16 *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BD1E4(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BD29C(char *a1, uint64_t *a2)
{
  sub_100008EEC(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BD30C(char *a1, uint64_t *a2)
{
  sub_100008EEC(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BD37C(char *a1, uint64_t *a2)
{
  sub_100008EEC(a1, a2, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BD3EC(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  if (*(v1 + 23) < 0)
  {
    v2 = *v1;
  }

  sub_100008DB0();
  sub_100008E78();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1004BD478(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004BD4E8(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004BD760(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FATAL CLIENT ERROR: Client hasn't dequeued %zu xpc messages. Invalidating connection.", &v2, 0xCu);
}

void sub_1004BD7D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#ota,failed to submit task with error: %@", &v2, 0xCu);
}

void sub_1004BD850(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  v4 = 136315394;
  v5 = v1;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#ota,error reading file %s (%@)", &v4, 0x16u);
}

void sub_1004BD8D8(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  v3 = 136315138;
  v4 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "#ota,file %s did not contain a dictionary as expected", &v3, 0xCu);
}

void sub_1004BD950(uint64_t a1, NSObject *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Did fail with error: %s", &v5, 0xCu);
}

void sub_1004BDAA8(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "fileutil,decompress,cantOpenDstFile,%s", v3, v4, v5, v6, v7);
}

void sub_1004BDB10(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_100008DB0();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "fileutil,decompress,cantOpenSrcFile,%s", v4, 0xCu);
}

void sub_1004BDB98(uint64_t a1, NSObject *a2)
{
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Caught Exception: %s", &v4, 0xCu);
}

void sub_1004BDC44(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "fileutil,decompress,cantWriteDecompressedFile,%s, fstream write error", v3, v4, v5, v6, v7);
}

void sub_1004BDCAC(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "fileutil,decompress,cantWriteDecompressedFile,%s", v3, v4, v5, v6, v7);
}

void sub_1004BDD14(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "fileutil,decompress,cantReadCompressedFile,%s", v3, v4, v5, v6, v7);
}

void sub_1004BDD7C(uint64_t *a1)
{
  sub_100008FC4(a1, __stack_chk_guard);
  if (*(v1 + 23) < 0)
  {
    v2 = *v1;
  }

  sub_100008DB0();
  v6 = 2080;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "fileutil,decompress,src,%s,dst,%s,done", v5, 0x16u);
}

void sub_1004BDF50()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BDFC0(uint64_t a1, uint64_t a2)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004BE038()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BE0A8(uint64_t *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004BE154(int *a1)
{
  v6 = *a1;
  sub_100008EB0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BE2C8(int *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BE340(int *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BE3EC(unint64_t a1, NSObject *a2)
{
  sub_10031AC04(a1);
  sub_100008DBC();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ses-item-loc,Unexpected BT state: %s", v3, 0xCu);
}

void sub_1004BE4DC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BE578()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BE5E8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BE624()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BE660()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BE6D0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BE72C(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BE788(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BE818()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BE888()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BE960()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004BE99C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BEA74()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BEAE4()
{
  sub_100008DBC();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BEBE8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BEC8C()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BEE00()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BEED8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BEF48()
{
  sub_100008DBC();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1004BF02C()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004BF450()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004BF4F4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_10003A96C();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004BF5D8()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v2) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[PRConfigurationManager] At least one of Ch5 or Ch9 must be allowed.", &v2, 2u);
  }

  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v2 = 136315650;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/DaemonCore/PRConfigurationManager.mm";
    v4 = 1024;
    v5 = 125;
    v6 = 2080;
    v7 = "getPreferredChannels";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", &v2, 0x1Cu);
  }

  abort();
}

void sub_1004BF6A8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[PRConfigurationManager] %d is invalid value for preferred channel in default write.", v2, 8u);
}

void sub_1004BF754(uint64_t a1)
{
  v6 = *(a1 + 24);
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004BFBFC(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "regulatory,geo,loc,checkRegulatoryIso,assertionAlreadyAcquired", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004BFC9C()
{
  if (sub_10032B2B4())
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "regulatory,geo,loc,checkRegulatoryIso,assertionRefCountTooLarge", v3, v4, v5, v6, 0);
  }

  v7 = *(v0 + 896);
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v8, v9, "%s:%d: assertion failure in %s", v10, v11, v12, v13, 2u);
  }

  abort();
}

void sub_1004BFD30(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "regulatory,geo,loc,checkRegulatoryIso,geoServices,error,%{private}@", &v2, 0xCu);
}

void sub_1004BFE1C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "regulatory,geo,loc,checkRegulatoryIso,assertionAlreadyReleased", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004BFEBC()
{
  if (sub_10032B2B4())
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "regulatory,geo,loc,checkRegulatoryIso,assertionRefCountTooSmall", v3, v4, v5, v6, 0);
  }

  v7 = *(v0 + 896);
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v8, v9, "%s:%d: assertion failure in %s", v10, v11, v12, v13, 2u);
  }

  abort();
}

void sub_1004C0098(uint64_t *a1, uint64_t a2)
{
  v3 = sub_100013FF0(a1, a2);
  sub_100330348(4.8151e-34, v3, v4, v5);
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#rlm,Ignoring duplicate indicateRangingStarted for '%s' with sessionIdentifier %@", v6, 0x16u);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_1004C00F4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_100013FF0(a1, a2);
  sub_100330348(4.8151e-34, v3, v4, v5);
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#rlm,Ignoring duplicate indicateRangingStopped for '%s' with sessionIdentifier %@", v6, 0x16u);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_1004C0150(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#rlm,RangingDurationTracker(%s): ranging started, subsequent one", v9, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C01B0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#rlm,RangingDurationTracker(%s): ranging started, first one", v9, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C0210(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_100008F04(&_mh_execute_header, v8, v9, "#rlm,Attempt to stop ranging for '%s' when there is none ongoing", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C0264(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C02F8()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v7) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "#rlm,useCases empty", &v7, 2u);
  }

  if (sub_10032B2D4())
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/RangingLimitManager/NIServerRangingLimitManager.mm";
    v9 = 1024;
    v10 = 396;
    v11 = 2080;
    v12 = "RangingBudgetTracker";
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C03B0(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_100008F04(&_mh_execute_header, v8, v9, "#rlm,RangingBudgetTracker not setup for use case '%s'", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C0404(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C0498(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#rlm,failed to submit task with error: %@", &v2, 0xCu);
}

void sub_1004C0510(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v5 != v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v2;
  }

  sub_1001EA0A0(v3, v7, 4.8149e-34);
  sub_100008F04(&_mh_execute_header, v8, v9, "#rlm,Unsupported use case '%s'", v10);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C0564(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C05F8(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C068C(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C0720(void *a1)
{
  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v1, v2, "#rlm,%s:%d: assertion failure in %s", v3, v4, v5, v6, 2u);
  }

  abort();
}

void sub_1004C07B4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C0824()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0860()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C089C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C08D8(int *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C0950(int *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C0A08()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C0A78()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C0AE8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C0B58()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0B94()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0BD0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0C0C()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C0C7C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0CB8()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C0D28()
{
  sub_100008DBC();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1004C0DA4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0DE0()
{
  sub_1000090B4();
  sub_100008E78();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C0E50()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0E8C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0F3C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0F78()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0FB4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C0FF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error receiving DeviceMotion: %{public}@", &v2, 0xCu);
}

void sub_1004C111C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRWirelessProximityAdapter.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

void sub_1004C1234()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,Cannot initialize() an already initialized session object.", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C12CC()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,STATE ERROR: using session after invalidation.", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C13D0()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,logic error: mismatching tickets.", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C1468(NSObject *a1)
{
  if (sub_1003445E0(a1))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#rose-ses,logic error: notify reason must be FW event.", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#rose-ses,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C1504()
{
  if (sub_100182C20())
  {
    sub_100008DF4(&_mh_execute_header, v0, v1, "#rose-ses,%{private}s called from an initiator.", v2, v3, v4, v5, 3u);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

uint64_t sub_1004C15F0(uint64_t result, int *a2)
{
  v2 = *(result + 113);
  if (v2 == 2)
  {
    v3 = 1;
  }

  else if (v2 == 3)
  {
    v3 = 2;
  }

  else
  {
    if (!*(result + 113))
    {
      if (sub_10018B478())
      {
        sub_100008FFC(&_mh_execute_header, v4, v5, "#rose-ses,Converting aop alisha health to nearbyd alisha health failed", v6, v7, v8, v9, 0);
      }

      if (sub_10018B494())
      {
        sub_100008FDC(&_mh_execute_header, v10, v11, "#rose-ses,%s:%d: assertion failure in %s", v12, v13, v14, v15, 2u);
      }

      abort();
    }

    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1004C16F4(uint64_t *a1, char a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a1 + 31);
  v7 = a1[1];
  v5 = a1 + 1;
  v6 = v7;
  if (v4 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v10 = 134218498;
  v11 = v3;
  if (a2)
  {
    v9 = "Notify";
  }

  else
  {
    v9 = "Invalidate";
  }

  v12 = 2080;
  v13 = v8;
  v14 = 2080;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#rose-ses,Failed with error. Code: %ld, Description: %s. Action: %s", &v10, 0x20u);
}

void sub_1004C17E4(NSObject *a1)
{
  if (sub_1003445E0(a1))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#rose-ses,Throttle rate must be between 0 and 1.", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#rose-ses,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C1880()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,Given negative throttle rate.", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C1918()
{
  if (sub_100182C20())
  {
    sub_100008DF4(&_mh_execute_header, v0, v1, "#rose-ses,%{private}s called from an initiator", v2, v3, v4, v5, 3u);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C19C4(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136380675;
  *(v3 + 4) = v9;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#rose-ses,updatePeerData: %{private}s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C1A28(NSObject *a1)
{
  if (sub_1003445E0(a1))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#rose-ses,Did not expect successful KeyResponse in AlishaSubsystem::getKey.", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#rose-ses,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C1AC4(_BYTE *a1, NSObject *a2)
{
  if ((*a1 - 1) > 3u)
  {
    v2 = "GetKeyResponse";
  }

  else
  {
    v2 = (&off_1009A6388)[(*a1 - 1)];
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#rose-ses,Got %s in AlishaSubsystem::getKey.", &v3, 0xCu);
}

void sub_1004C1BA0()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,AlishaSubsystem: #time-convert wrong conversion result. Timebase-from not BT", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C1C38()
{
  if (sub_10018B478())
  {
    sub_100008FFC(&_mh_execute_header, v0, v1, "#rose-ses,AlishaSubsystem: #time-convert wrong conversion result. Timebase-to not Rose", v2, v3, v4, v5, 0);
  }

  if (sub_10018B494())
  {
    sub_100008FDC(&_mh_execute_header, v6, v7, "#rose-ses,%s:%d: assertion failure in %s", v8, v9, v10, v11, 2u);
  }

  abort();
}

void sub_1004C1CD0(NSObject *a1)
{
  if (sub_1003445E0(a1))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#rose-ses,AlishaSubsystem: #time-convert wrong conversion result. Original time doesn't match", v3, v4, v5, v6, 0);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#rose-ses,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C1D6C(char a1)
{
  if (sub_100182C20())
  {
    if ((a1 - 1) <= 3u)
    {
      v8 = (&off_1009A63A8)[(a1 - 1)];
    }

    sub_100008DF4(&_mh_execute_header, v2, v3, "#rose-ses,Got %s in AlishaSubsystem::_debugSetKey.", v4, v5, v6, v7, 2u);
  }

  if (sub_10032B2D4())
  {
    sub_100008FDC(&_mh_execute_header, v9, v10, "#rose-ses,%s:%d: assertion failure in %s", v11, v12, v13, v14, 2u);
  }

  abort();
}

void sub_1004C1F34(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1004C1F94(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#rose-ses,triggerAlishaSessionStats failed with status code %s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004C20B0(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004C2224()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2260()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C22D0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C2340()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C237C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C23B8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C2428()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C2498()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C24D4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2510(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{private}@", buf, 0xCu);
}

void sub_1004C2568()
{
  sub_100008DBC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Delegate: notify invalidation: %@. Sanitized: %@", v2, 0x16u);
}

void sub_1004C2630(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#regulatory,regulatory,geo,mcc,copyCellInfo,error:%@", &v2, 0xCu);
}

void sub_1004C275C(uint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004C2820(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = 6;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "advertisingAddress.length (%lu) != rose::kBtAdvAddressByteLength (%d)", buf, 0x12u);
}

void sub_1004C296C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NIServerConnection.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"sessionID"}];
}

void sub_1004C29E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote object error: %@", &v2, 0xCu);
}

void sub_1004C2A60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Synchronous remote object error: %@", &v2, 0xCu);
}

void sub_1004C2AD8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NIServerConnection.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"object"}];
}

void sub_1004C2B54()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2B90()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2BCC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2C34()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2C70()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2CAC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2CE8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2D24(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to place service request: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004C2D98(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C2E08()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2E44(uint64_t a1, uint64_t a2)
{
  sub_100014014(a1, a2);
  sub_100009150(1.5047e-36, v3, v4, v5);
  sub_100363FB4(&_mh_execute_header, "Failed to unregister for service. Ticket ID: %d. Error: %s", v6, v7);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_1004C2E94()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2ED0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2F0C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C2F48(uint64_t a1, uint64_t a2)
{
  sub_100014014(a1, a2);
  sub_100009150(1.5047e-36, v3, v4, v5);
  sub_100363FB4(&_mh_execute_header, "Failed to trigger ranging. Ticket ID: %d. Error: %s", v6, v7);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_1004C2F98()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004C300C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C3048()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C3084(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C30F4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C3130()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C316C(uint64_t a1, uint64_t a2)
{
  sub_100014014(a1, a2);
  sub_100009150(1.5047e-36, v3, v4, v5);
  sub_100363FB4(&_mh_execute_header, "Failed to stop ranging. Ticket ID: %d. Error: %s", v6, v7);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_1004C31BC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C31F8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C3234()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C329C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C32D8()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004C334C()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004C33C0(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C3430(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C34A0(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C3510(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C35D8()
{
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1004C364C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Speculative Cleanup: no requests for client %p.", &v3, 0xCu);
}

void sub_1004C36C8(unsigned __int16 *a1)
{
  sub_1000252C0(a1);
  sub_100008DA4();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C3738()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C37B4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C3830()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C39B8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#ses-wifi-test,Configuration did not contain expected role: %@", &v3, 0xCu);
}

void sub_1004C3BAC(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136380675;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#ses-wifi-test,WiFi ranging error:%{private}s", &v4, 0xCu);
}

void sub_1004C3D08(char a1, uint64_t a2, os_log_t log)
{
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Accessory notify is attached: %@ accessory: %@ but modelNumber is nil", &v4, 0x16u);
}

void sub_1004C3DA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "regulatory,acc,Accessory detached, but was not connected. UUID: %@", &v2, 0xCu);
}

void sub_1004C3E20(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#reg-prov,user provided regulatory group: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004C3F94(uint64_t *a1, char a2, os_log_t log)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = 136315394;
  v5 = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#reg-prov,injectIsoCode,isoCountryCode:%s,success:%d", &v4, 0x12u);
}

void sub_1004C41D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4498()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C4508()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4544(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004C45B8()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C4628(char a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1 & 1;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1004C46B0()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C4720(uint64_t a1)
{
  v1 = *(a1 + 88);
  sub_100008DB0();
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004C47AC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C481C(os_log_t log)
{
  v1[0] = 67109376;
  v1[1] = 0;
  v2 = 1024;
  v3 = 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#ses-hps,Device rediscovered decision: Not restarting UWB session since addressChange?: %d and active UWB session?:%d", v1, 0xEu);
}

void sub_1004C48A8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C48E4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4920(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004C4994()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C4A7C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4AB8(_DWORD *a1, _DWORD *a2)
{
  v7 = *a1 - *a2;
  sub_10003A96C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1004C4BC4()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4C00()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C4D2C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C4E14(char *a1, uint64_t a2)
{
  if (a1[23] >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  *a2 = 136315138;
  *(a2 + 4) = v3;
  sub_10003A96C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004C4FEC()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5028()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C5098(uint64_t *a1)
{
  v1 = *a1;
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004C51FC()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5238()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C52BC()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C52F8()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5334()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C53A4()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C5414()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C5484(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#find-disc,Start advertising error: %@", &v2, 0xCu);
}

void sub_1004C54FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#find-disc,Stop advertising error: %@", &v2, 0xCu);
}

void sub_1004C55BC(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315395;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#find-disc,[%s] Found device (BT) but does not contain advertisement. Device: %{private}@", buf, 0x16u);
}

void sub_1004C567C(unint64_t a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = sub_100378ED4(a1);
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#find-disc,Unexpected BT state: %s", &v3, 0xCu);
}

void sub_1004C5770(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#find-disc,[%s] BT error: %@", buf, 0x16u);
}

void sub_1004C57C8()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C5838()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C58A8()
{
  sub_10000908C();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C5A1C(int *a1)
{
  v6 = *a1;
  sub_100008EB0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004C5A94()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5AD0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5B0C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5B48(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#nrby-eng,#region-class elements in regionDict: %lu", buf, 0xCu);
}

void sub_1004C5B90()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5C40()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5C7C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5CB8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5D28()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5D64()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5DA0()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C5F0C(uint64_t *a1)
{
  v6 = *a1;
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004C5F84()
{
  if (__cxa_guard_acquire(&qword_1009EC1C0))
  {
    __cxa_atexit(nullsub_152, &unk_1009EC1B8, &_mh_execute_header);

    __cxa_guard_release(&qword_1009EC1C0);
  }
}

void sub_1004C6018()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C60D8()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C6114()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C6184()
{
  sub_100008DBC();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C61F4()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C6264(char a1, uint64_t a2, os_log_t log)
{
  v3 = "activated";
  if ((a1 & 1) == 0)
  {
    v3 = "deactivated";
  }

  v4 = 134218242;
  v5 = a2;
  v6 = 2080;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#nrby-eng,#region-class device monitor for device 0x%llx was %s", &v4, 0x16u);
}

void sub_1004C6330(uint64_t *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 134217984;
  *(buf + 4) = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#nrby-eng,no object for identifier 0x%llx", buf, 0xCu);
}

void sub_1004C637C(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    v1 = *(a1 + 136);
  }

  sub_100008D70();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004C6400(uint64_t *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v4 = *a1;
  v5 = (a2 + 136);
  if (*(a2 + 159) < 0)
  {
    v5 = *v5;
  }

  *buf = 134218242;
  *(buf + 4) = v4;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#nrby-eng,#sa_algo,New measurement for SA with timestamp %f - unaccepted type for SA. Unique identifier: %s", buf, 0x16u);
}

void sub_1004C65A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#nrby-eng,Mismatching finding peer token: %@ != %@", &v4, 0x16u);
}

void sub_1004C6630()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C666C()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C66DC()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C674C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C6788()
{
  sub_100008DBC();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C67F8(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#nrby-eng,%s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004C68E0(void **a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_10038F658(a1);
  }
}

void sub_1004C698C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No subscription for user default change: %@", &v2, 0xCu);
}

void sub_1004C6A04()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_100009118(&_mh_execute_header, v1, v2, "#alisha-param-neg,BT event UWB clock (%llu [us]) < shared event UWB clock (%llu [us])", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#alisha-param-neg,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C6AD8()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_100009118(&_mh_execute_header, v1, v2, "#alisha-param-neg,Ranging start time UWB clock (%llu [us]) < shared event UWB clock (%llu [us])", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#alisha-param-neg,%s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004C6D90(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1004C6DA8()
{
  sub_1003A32A0(__stack_chk_guard);
  sub_1003A03C4(v0, v1);
  sub_10000904C();
  sub_10001402C();
  sub_100008E3C(&_mh_execute_header, v2, v3, "#alisha-sm,Session RQ Get Key Failure (%s)", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1004C6E34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

void sub_1004C6E60()
{
  sub_1003A32A0(__stack_chk_guard);
  sub_1003A03C4(v0, v1);
  sub_10000904C();
  sub_10001402C();
  sub_100008E3C(&_mh_execute_header, v2, v3, "#alisha-sm,Recovery RQ Get Key Failure (%s)", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1004C6EEC()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_100004A08(__p, "SecureRangingSetupFlow");
    if (SBYTE3(v8) >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = *__p;
    }

    v2 = 136315138;
    v3 = v1;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "#alisha-sm,%s is not a recovery flow", &v2, 0xCu);
    if (SBYTE3(v8) < 0)
    {
      operator delete(*__p);
    }

    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *__p = 136315650;
    *&__p[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/AlishaSupport/AlishaStateMachine.cpp";
    v5 = 1024;
    v6 = 593;
    v7 = 2080;
    v8 = "_processRecoveryRequest";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "#alisha-sm,%s:%d: assertion failure in %s", __p, 0x1Cu);
  }

  abort();
}

void sub_1004C702C(uint64_t a1, NSObject *a2)
{
  sub_1003A32A0(__stack_chk_guard);
  sub_1003A0BC8(v3, v4);
  sub_10000904C();
  sub_10001402C();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#alisha-sm,processDCKSuspendRS error: not expecting suspend response in state %s", buf, 0xCu);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004C70CC()
{
  sub_1003A32A0(__stack_chk_guard);
  sub_1003A03C4(v0, v1);
  sub_10000904C();
  sub_10001402C();
  sub_100008E3C(&_mh_execute_header, v2, v3, "#alisha-sm,processDCKSuspendRS error: disable ranging failed (%s)", v4, v5, v6, v7, v8, __p, v11, v12, v14);
  if (v13 < 0)
  {
    operator delete(__pa);
  }
}

void sub_1004C7158(NSObject *a1, void *a2)
{
  sub_100004A08(&__p, "SessionRequested");
  sub_10001402C();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "#alisha-sm,Unexpected alisha timeout event %s is sent to alisha state machine", buf, 0xCu);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  *a2 = qword_1009F9820;
}

void sub_1004C8250()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

double sub_1004C828C(uint64_t a1, float *a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a1 + 24);
  v5 = *a2;
  *buf = 134218240;
  *(buf + 4) = v5;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sa_algo,Populating range output with SA, range: %0.2f m, timestamp: %f s", buf, 0x16u);
  return result;
}

void sub_1004C82F0()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C8364()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C83D8()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C844C()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C84C0()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C8534()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C85A8()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C861C()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C8690()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C8704()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C8778()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C87EC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C8828(void *a1)
{
  v6 = a1[53];
  v7 = a1[54];
  v8 = a1[55];
  v9 = a1[56];
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Au);
}

void sub_1004C88C0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C88FC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C8938()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C8974()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C89B0()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C8A24()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C8A98()
{
  sub_100009138();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004C8FDC(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#findalgs-watchitemfinder,Unknown motion state: %d", buf, 8u);
}

void sub_1004C9188(os_log_t log, __n128 a2)
{
  v2 = 134218752;
  v3 = a2.n128_f32[3];
  v4 = 2048;
  v5 = a2.n128_f32[0];
  v6 = 2048;
  v7 = a2.n128_f32[1];
  v8 = 2048;
  v9 = a2.n128_f32[2];
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sa_algo_finder_io,io propagated pose, quatw: %f, quatx: %f, quaty: %f, quatz: %f", &v2, 0x2Au);
}

void sub_1004C923C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9278()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C92EC()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C9360(void *a1)
{
  v1 = a1[69];
  v2 = a1[70];
  v3 = a1[68];
  sub_1003B604C();
  sub_100008E30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1004C93F0()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C9464()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C94A0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C94DC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9518()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9594()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004C97B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 176);
  *(a1 + 178);
  sub_1001EA0B8();
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1004C9880(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  sub_1001EA0B8();
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_1004C98F8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C99A0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9A50()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9A8C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9B08()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9B44()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9B80()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9BBC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9BF8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9C34(uint64_t *a1)
{
  v1 = *a1;
  sub_1003B604C();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004C9CAC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9CE8()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9D24()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004C9D60(uint64_t a1, NSObject *a2, double a3)
{
  v3 = *(a1 + 8);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,Invalid measurement rejected by the batch filter filter, range passed: %f m, range uncertainty passed: %f m", &v4, 0x16u);
}

uint64_t sub_1004C9DE8()
{
  do
  {
    sub_100009174();
    *(v0 - 64) = v1;
    *(v0 - 136) = off_1009991A0;
    result = v0 - 176;
  }

  while (result != v3);
  return result;
}

uint64_t sub_1004C9EBC(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 72;
  v4 = (a1 - 72);
  v5 = (a1 - 72);
  do
  {
    v6 = *v5;
    v5 -= 9;
    result = (*v6)(v4);
    v3 -= 72;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_1004C9F28(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 64;
  v4 = (a1 - 64);
  v5 = (a1 - 64);
  do
  {
    v6 = *v5;
    v5 -= 8;
    result = (*v6)(v4);
    v3 -= 64;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_1004C9F94()
{
  do
  {
    sub_100009174();
    *(v0 - 72) = v1;
    *(v0 - 144) = off_1009991A0;
    result = v0 - 152;
  }

  while (result != v3);
  return result;
}

uint64_t sub_1004CA010(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 56;
  v4 = (a1 - 56);
  v5 = (a1 - 56);
  do
  {
    v6 = *v5;
    v5 -= 7;
    result = (*v6)(v4);
    v3 -= 56;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_1004CAA8C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#spatialGesturesPredictor Predicting intent using %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

double sub_1004CAB00(uint64_t a1, NSObject *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 8);
  v6 = 134218496;
  v7 = v2;
  v8 = 2048;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#spatialGesturesPredictor #probabilities Other = %f, HighConfidenceHandoff = %f, LowConfidenceHandoff = %f", &v6, 0x20u);
  return result;
}

void sub_1004CAEC0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#spatialGesturesPredictor Something wrong with filtering, using unfiltered signal", buf, 2u);
}

void sub_1004CAF8C(os_log_t log)
{
  v1 = 134217984;
  v2 = 0x3FF0000000000000;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#spatialGesturesPredictor Gesture classifier was not configured, returning intent score = %f, no AoA and no Spatial Gestures predictor involved", &v1, 0xCu);
}

void sub_1004CB200()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v1) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "#dec-proc, Assertion failed", &v1, 2u);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136315650;
    v2 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/NearbyAlgorithms/AutoUnlock/NRBYPeerRangingDecisionProcessor.cpp";
    v3 = 1024;
    v4 = 40;
    v5 = 2080;
    v6 = "filterRangesAndEstimateUnlock";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "#dec-proc, %s:%d: assertion failure in %s", &v1, 0x1Cu);
  }

  abort();
}

void sub_1004CB3C4(uint64_t a1, uint64_t **a2, os_log_t log)
{
  v3 = *(a1 - 24);
  v4 = **a2;
  v5 = a1 - *a2;
  v6 = 134218496;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2048;
  v11 = v5 / 24;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#boundedregiongrange-estimator, Buffer start and end after pruning: %3.2f - %3.2f s, size: %zu", &v6, 0x20u);
}

void sub_1004CB46C(uint64_t a1, NSObject *a2, double a3)
{
  v3 = *(a1 + 8);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter,Invalid measurement rejected by the batch filter filter, range passed: %f m, range uncertainty passed: %f m", &v4, 0x16u);
}

uint64_t sub_1004CB4F4()
{
  do
  {
    sub_1003DBE04();
    *(v0 - 64) = v1;
    *(v0 - 128) = off_1009991A0;
    result = v0 - 136;
  }

  while (result != v3);
  return result;
}

uint64_t sub_1004CB544(uint64_t result)
{
  do
  {
    *(result - 88) = off_1009991A0;
    result = sub_100009194(result) - 192;
  }

  while (result != v1);
  return result;
}

uint64_t sub_1004CB594()
{
  do
  {
    sub_1003DBE04();
    *(v0 - 112) = v1;
    result = sub_100009194(v0) - 208;
  }

  while (result != v3);
  return result;
}

void sub_1004CB5DC(os_log_t log, double a2)
{
  v2 = 134283521;
  v3 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#hist-unlock, WRTT: rangeThreshold %{private}f resulted in 0 unlock probability, not unlocking", &v2, 0xCu);
}

void sub_1004CB658(os_log_t log, double a2)
{
  v2 = 134283521;
  v3 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#hist-unlock, Measurement %{private}f outside of histogram range", &v2, 0xCu);
}

void sub_1004CB748()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CB7F8()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CB8D0()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CB974(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#bias-est, totalProbability = %f", &v2, 0xCu);
}

void sub_1004CBA24(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#bias-est, Bundle path '%s' does not exist.", buf, 0xCu);
}

void sub_1004CBA6C()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CC458()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CC494(void *a1)
{
  v1 = a1[15];
  v2 = a1[16];
  v3 = a1[17];
  v4 = a1[18];
  sub_1003EC3C8();
  sub_100008E30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_1004CC50C(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a1[15];
  v5 = a1[16];
  v6 = a1[17];
  v7 = a1[18];
  sub_1003EC3C8();
  sub_100008E30();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
  if ((*a3 & 1) == 0)
  {
    sub_1000195BC();
  }
}

void sub_1004CC634()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CC670(uint64_t a1)
{
  v1 = *(a1 + 784);
  sub_1003ADBF0(*(a1 + 736), *(a1 + 752), *(a1 + 768));
  sub_1003EC3F0();
  sub_1000091B4(v2);
  sub_1003EC408(&_mh_execute_header, v3, v4, "#sa_algo_particlefilter,particle filter current pose, source: pose , quatw: %f, quatx: %f, quaty: %f, quatz: %f", v5, v6, v7, v8, v9);
}

void sub_1004CC6F4(uint64_t a1, _BYTE *a2)
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  if ((*a2 & 1) == 0)
  {
    sub_1000195BC();
  }
}

void sub_1004CC748(uint64_t a1)
{
  v1 = *(a1 + 784);
  sub_1003ADBF0(*(a1 + 736), *(a1 + 752), *(a1 + 768));
  sub_1003EC3F0();
  sub_1000091B4(v2);
  sub_1003EC408(&_mh_execute_header, v3, v4, "#sa_algo_particlefilter,particle filter current pose, source: deltav , quatw: %f, quatx: %f, quaty: %f, quatz: %f", v5, v6, v7, v8, v9);
}

void sub_1004CC7CC(uint64_t a1, _BYTE *a2)
{
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  if ((*a2 & 1) == 0)
  {
    __assert_rtn("ingestMeasurement", "ParticleFilter.cpp", 917, "_currentPose.has_value()");
  }
}

void sub_1004CC880()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CC914()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v1) = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "#sa_algo_particlefilter,", &v1, 2u);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v1 = 136315650;
    v2 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/NearbyAlgorithms/Finding/ParticleFilter.cpp";
    v3 = 1024;
    v4 = 1413;
    v5 = 2080;
    v6 = "resetFrameRotationForParticles";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "#sa_algo_particlefilter,%s:%d: assertion failure in %s", &v1, 0x1Cu);
  }

  abort();
}

uint64_t sub_1004CCF6C(uint64_t a1, _BYTE *a2)
{
  sub_100008D98();
  sub_100008E14(&_mh_execute_header, v3, v4, "#findalgs-itemfinder,provided solution, PF", v5, v6, v7, v8, v10);
  return *a2 & 1;
}

uint64_t sub_1004CCFB4(uint64_t a1, _BYTE *a2)
{
  sub_100008D98();
  sub_100008E14(&_mh_execute_header, v3, v4, "#findalgs-itemfinder,provided solution, SA", v5, v6, v7, v8, v10);
  return *a2 & 1;
}

uint64_t sub_1004CD098()
{
  sub_100008D98();
  sub_100008E14(&_mh_execute_header, v0, v1, "#findalgs-peoplefinder,provided solution, SA with findee VIO", v2, v3, v4, v5, v7);
  return sub_1003FB038();
}

uint64_t sub_1004CD0E0()
{
  sub_100008D98();
  sub_100008E14(&_mh_execute_header, v0, v1, "#findalgs-peoplefinder,provided solution, SA", v2, v3, v4, v5, v7);
  return sub_1003FB038();
}

uint64_t sub_1004CD128(uint64_t a1, _BYTE *a2)
{
  sub_100008D98();
  sub_100008E14(&_mh_execute_header, v3, v4, "#findalgs-peoplefinder,provided solution, PF", v5, v6, v7, v8, v10);
  return *a2 & 1;
}

void sub_1004CD274()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CD450(char a1, NSObject *a2)
{
  v2 = "Self";
  if (a1)
  {
    v2 = "Peer";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "#findalgs-peoplefinder,Conversion of %s location time to mach continuous time failed", &v3, 0xCu);
}

void sub_1004CD554(uint64_t a1, _BYTE *a2)
{
  sub_100008E30();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  if ((*a2 & 1) == 0)
  {
    sub_1000195BC();
  }
}

void sub_1004CD660()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CD69C(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1004CD720(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1004CD7A8(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004CD9B8(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v9 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  if ((*a3 & 1) == 0)
  {
    sub_1000195BC();
  }
}

void sub_1004CDA7C()
{
  sub_100009138();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004CDAF0(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1004CDB7C()
{
  sub_100008D98();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CDBB8()
{
  sub_100009138();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004CDC2C(uint64_t a1)
{
  v6 = (*(a1 + 169) & *(a1 + 168));
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004CDD14(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 8368);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#findalgs-peoplefinder,processPeerLocation,peerLoc.has_value(),%d,_lastSelfLocation.has_value(),%d", v5, 0xEu);
}

void sub_1004CE26C()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#regionmon #spatialGesturesPredictor for intent predictor MotionBasedSpatialGestures, gestureClassifiers should have value", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#regionmon %s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004CE31C()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_100008FFC(&_mh_execute_header, v1, v2, "#regionmon #spatialGesturesPredictor for intent predictor MotionBasedSpatialGestures, motionTriggeredHandoffCallback must be defined", v3, v4, v5, v6, 0);
    v0 = qword_1009F9820;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    sub_100008FDC(&_mh_execute_header, v7, v8, "#regionmon %s:%d: assertion failure in %s", v9, v10, v11, v12, 2u);
  }

  abort();
}

void sub_1004CE43C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#regionmon unexpected remote antenna mask in SG prediction for dev 0x%llx. skipping intent prediction", v3, v4, v5, v6, v7);
}

void sub_1004CE4D0(uint8_t *buf, uint64_t a2, int a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#regionmon Error unexpected BT threshold detector early return with out of bubble estimate, RSSI: %f, numSamples: %d", buf, 0x12u);
}

void sub_1004CE528(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008DC8(&_mh_execute_header, v1, v2, "#regionmon deviceMonitor:%llu does not accept bt samples so its bt threshold cannot be offset.", v3, v4, v5, v6, v7);
}

void sub_1004CE66C(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#loc-pe,Clock drift filter not available for address %hu", v3, 8u);
}

void sub_1004CE6E8(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }
}

void sub_1004CE78C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#ils,not enough measurements for cluster %hu", v3, 8u);
}

void sub_1004CE834(uint64_t a1)
{
  v6 = *(a1 + 24);
  sub_100008EB0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004CE8B0()
{
  sub_100008D98();
  sub_100008EB0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CE9AC(char *a1, void *a2, os_log_t log)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#regionmon more than one region with name: %s\n", &v3, 0xCu);
}

void sub_1004CEA9C(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10018B4B0();
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#regionmon #region-class using class %d regions for device 0x%llx", v5, 0x12u);
}

void sub_1004CEB1C(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10018B4B0();
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#regionmon #region-class region for class %d not found. will not create a device monitor for 0x%llx", v5, 0x12u);
}

void sub_1004CEBD0(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1 && *(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1004CEC04(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#findalgs-devicefinder,Unknown motion state: %d", buf, 8u);
}

void sub_1004CEDFC()
{
  sub_1000091E4();
  sub_10041AF24();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_1004CEE84()
{
  sub_1000091E4();
  sub_10041AF24();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

double sub_1004CEEFC(uint64_t a1, float *a2, uint8_t *buf, os_log_t log)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  *buf = 134218240;
  *(buf + 4) = v5;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Populating range output with SA, range: %0.2f m, timestamp: %f s", buf, 0x16u);
  return result;
}

void sub_1004CEF60()
{
  sub_1000091E4();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004CEFD8(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1004CF0D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1000091E4();
  sub_100008E30();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004CF154()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004CF1C8()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004CF23C()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004CF2B0()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004CF324()
{
  sub_100008E88();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004CF3CC(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[RoseSupervisorInterface] IOServiceOpen failed. Error: %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004CF710()
{
  if (__cxa_guard_acquire(&qword_1009EC3A0))
  {
    qword_1009EC360 = 850045863;
    xmmword_1009EC368 = 0u;
    unk_1009EC378 = 0u;
    xmmword_1009EC388 = 0u;
    qword_1009EC398 = 0;
    qword_1009EC358 = os_log_create("com.apple.librose", "client");
    __cxa_atexit(sub_100428E50, &qword_1009EC358, &_mh_execute_header);

    __cxa_guard_release(&qword_1009EC3A0);
  }
}

void sub_1004CF7BC()
{
  if (__cxa_guard_acquire(&qword_1009EC3E8))
  {
    qword_1009EC3A8 = 850045863;
    unk_1009EC3B0 = 0u;
    unk_1009EC3C0 = 0u;
    unk_1009EC3D0 = 0u;
    qword_1009EC3E0 = 0;
    __cxa_atexit(std::mutex::~mutex, &qword_1009EC3A8, &_mh_execute_header);

    __cxa_guard_release(&qword_1009EC3E8);
  }
}

uint64_t sub_1004CF884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("invalid refcon in rose event callback", a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = abort_report_np();
  return sub_1004CF8AC(v8);
}

uint64_t sub_1004CF8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("fCrashCallback not found", a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = abort_report_np();
  return sub_1004CF8D4(v8);
}

uint64_t sub_1004CF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("invalid refcon in crash callback", a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = abort_report_np();
  return sub_1004CF8FC(v8);
}

uint64_t sub_1004CF8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("fStateChangeCb not found", a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = abort_report_np();
  return sub_1004CF924(v8);
}

uint64_t sub_1004CF924(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("invalid refcon in FW State Change callback, state %u", a2, a3, a4, a5, a6, a7, a8, a1);
  v8 = abort_report_np();
  return sub_1004CF95C(v8);
}

uint64_t sub_1004CF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("fErrorReportCb not found", a2, a3, a4, a5, a6, a7, a8, v10);
  v8 = abort_report_np();
  return sub_1004CF984(v8);
}

uint64_t sub_1004CF984(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100428B48("invalid refcon in errorReportCallback, errorCode: %u", a2, a3, a4, a5, a6, a7, a8, a1);
  v8 = abort_report_np();
  return sub_1004CF9BC(v8);
}

void sub_1004CFA00(uint64_t a1)
{
  v1 = sub_10045E874(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  v4 = v1[4];
  sub_10045E850();
  sub_100008E30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1004CFA7C(uint64_t a1)
{
  v1 = sub_10045E884(a1, __stack_chk_guard);
  if (v3 < 0)
  {
    v4 = *v1;
  }

  v5 = *v2;
  sub_100008F20();
  sub_10000907C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1004CFAF8(uint64_t a1)
{
  v1 = sub_10045E874(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  v4 = v1[4];
  sub_10045E850();
  sub_100008E30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1004CFB74(uint64_t a1)
{
  v1 = sub_10045E884(a1, __stack_chk_guard);
  if (v3 < 0)
  {
    v4 = *v1;
  }

  v5 = *v2;
  sub_100008F20();
  sub_10000907C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1004CFBF0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CFD64()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CFDA0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CFDDC(uint64_t a1)
{
  v1 = sub_10045E874(a1, __stack_chk_guard);
  if (v2 < 0)
  {
    v3 = *v1;
  }

  v4 = v1[4];
  sub_10045E850();
  sub_100008E30();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1004CFE58()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004CFF64(uint64_t a1)
{
  v1 = sub_10045E884(a1, __stack_chk_guard);
  if (v3 < 0)
  {
    v4 = *v1;
  }

  v5 = *v2;
  sub_100008F20();
  sub_10000907C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1004D005C(uint64_t a1, unsigned int *a2)
{
  sub_10045E868(a2, __stack_chk_guard);
  sub_1000091F8();
  sub_10000907C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1004D00CC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100008F20();
  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1004D0140(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004D01C0(char a1, NSObject *a2)
{
  if (a1)
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEFAULT, "regulatory,comp,getRegulatoryCountryParams,cantFind,kUnknownCountry", v2, 2u);
  }

  __assert_rtn("getRegulatoryCountryParams", "roseRegulatoryCompliance.mm", 652, "false");
}

void sub_1004D0218(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1004D0298(char a1, NSObject *a2)
{
  if (a1)
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEFAULT, "regulatory,comp,getRegulatoryNBCountryParams,cantFind,kUnknownCountry", v2, 2u);
  }

  __assert_rtn("getRegulatoryNBCountryParams", "roseRegulatoryCompliance.mm", 683, "false");
}

void sub_1004D02F0(char *a1, uint8_t *buf, int a3, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = v5;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "regulatory,comp,getTx_NB_SAR_PowerTableFromIsoGroup,NO_ACCESSORY regulatory params also not found, NB_SAR, flags,%d,accessory,%s", buf, 0x12u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1004D0374(char *a1, uint64_t *a2)
{
  if (*a1 < 0)
  {
    v2 = *a2;
  }

  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1004D041C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D0458(uint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *a2;
  sub_10000907C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004D04E0(int *a1)
{
  v6 = *a1;
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1004D0558()
{
  if (__cxa_guard_acquire(&qword_1009F92E8))
  {
    unk_1009F9300 = 0;
    xmmword_1009F92F0 = 0uLL;
    __cxa_atexit(&std::string::~string, &xmmword_1009F92F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009F92E8);
  }
}

void sub_1004D0648(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *a2;
  }

  sub_100008DBC();
  sub_10000907C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1004D06E8()
{
  if (__cxa_guard_acquire(&qword_1009F9318))
  {
    unk_1009F9330 = 0;
    xmmword_1009F9320 = 0uLL;
    __cxa_atexit(&std::string::~string, &xmmword_1009F9320, &_mh_execute_header);

    __cxa_guard_release(&qword_1009F9318);
  }
}

void sub_1004D0760(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("error getting system group container: %llu", a2, a3, a4, a5, a6, a7, a8, *a1);
  v9 = *a1;
  abort_report_np();
  sub_1004D07A0();
}

void sub_1004D0A10(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = a1[10];
  v5 = *(*(v4 + ((a1[13] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[13] & 0x1FFLL));
  v6 = *(*(v4 + (((a1[13] + a1[14] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[13] + a1[14] - 1) & 0x1FF));
  *buf = 134218496;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = v5;
  *(buf + 11) = 2048;
  *(buf + 3) = v6;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#sf,RoseSensorFusionManager::addIMUdata: IMU buffer size is %lu, time stamps from %f to %f", buf, 0x20u);
}

void sub_1004D0B44(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = sub_100498D5C(a1);
  v6 = a2[10];
  v7 = *(*(v6 + ((a2[13] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a2[13] & 0x1FFLL));
  v8 = *(*(v6 + (((a2[13] + a2[14] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a2[13] + a2[14] - 1) & 0x1FF));
  v9 = 134218496;
  v10 = v5;
  v11 = 2048;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#sf,RoseSensorFusionManager::addRoseMeasurementsToTrackingTargetSet failed: IMU buffer size is %lu, time stamps from %f to %f", &v9, 0x20u);
}

void sub_1004D12A0()
{
  sub_100496EF0();
  sub_100008D70();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004D1320(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#sf,%s", v5, 0xCu);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004D13B0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D1418(std::string *a1, NSObject *a2)
{
  sub_10048E520(a1, &__p);
  sub_10000904C();
  v6 = 136315138;
  v7 = v3;
  sub_100496ED8(&_mh_execute_header, a2, v4, "#sf,RoseEKF measUpdateAlt R: %s", &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1004D14E8(uint64_t a1, NSObject *a2)
{
  v4 = 134217984;
  v5 = sub_1002EB6B8(a1, 0, 0);
  sub_100496ED8(&_mh_execute_header, a2, v3, "#sf,RoseEKF: measUpdateRange R: %f", &v4);
}

void sub_1004D15A0(uint64_t a1, NSObject *a2)
{
  v4 = sub_1002EB6B8(a1, 0, 0);
  v5 = sub_1002EB6B8(a1, 0, 1);
  v6 = sub_1002EB6B8(a1, 1, 0);
  sub_1002EB6B8(a1, 1, 1);
  v9 = 134218752;
  v10 = v4;
  sub_100496EF0();
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: measUpdateAoA R: %f, %f; %f, %f", &v9, 0x2Au);
}

void sub_1004D16D0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D17DC()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D184C()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D1888(uint64_t *a1)
{
  v2 = sub_100008F38(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_100496ED8(&_mh_execute_header, v4, v4, "#sf,RoseEKF: initial P matrix %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_1004D18E4(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *(*(*(v1 + 56) + ((*(v1 + 80) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v1 + 80) & 0x1FFLL));
  sub_100008DB0();
  sub_100496EF0();
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#sf,RoseEKF error: The measurement timestamp (%f) is older than the oldest IMU timestamp (%f) - rejecting the measurement for initialization", v5, 0x16u);
}

void sub_1004D19B4()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D19F0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004D1A2C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1A9C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1B0C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1B7C(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100008DB0();
  sub_100496EF0();
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#sf,RoseEKF: Rewinding back to the last measurement at t = %f s from t = %f s", v5, 0x16u);
}

void sub_1004D1C34(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008E30();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1CA4(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1D40(uint64_t *a1)
{
  sub_100013F94(a1, __stack_chk_guard);
  sub_100008DB0();
  sub_100008D70();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1004D1DB0()
{
  sub_100008D98();
  sub_100008E30();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::__fs::filesystem::file_time_type std::__fs::filesystem::__last_write_time(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v4.__d_.__rep_ = std::__fs::filesystem::__last_write_time(a1, __ec).__d_.__rep_;
  v3 = *(&v4.__d_.__rep_ + 1);
  v2 = *&v4.__d_.__rep_;
  *(&result.__d_.__rep_ + 1) = v3;
  *&result.__d_.__rep_ = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  v3 = ___invert_f2(a1);
  v2 = v3.columns[1];
  v1 = v3.columns[0];
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}