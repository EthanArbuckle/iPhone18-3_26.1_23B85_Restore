void sub_10046DFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046E0BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10022FCD8(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10046E0D8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100167388(result, a2);
  }

  return result;
}

unsigned __int8 *sub_10046E17C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  *a1 = *a2;
  *(a1 + 1) = 0;
  sub_10046CCF0(a2);
  v4 = *a1;
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1u:
        v7 = *(a2 + 1);
        sub_10046E244();
      case 2u:
        v8 = *(a2 + 1);
        sub_10046E510();
      case 3u:
        v5 = *(a2 + 1);
        sub_10046D710();
    }
  }

  else
  {
    if (*a1 <= 5u)
    {
      if (v4 == 4)
      {
        v6 = a2[8];
        goto LABEL_16;
      }

      if (v4 != 5)
      {
        goto LABEL_17;
      }

LABEL_12:
      v6 = *(a2 + 1);
LABEL_16:
      *(a1 + 1) = v6;
      goto LABEL_17;
    }

    if (v4 == 6 || v4 == 7)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  sub_10046CCF0(a1);
  return a1;
}

void *sub_10046E2A0(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10046E2F8(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_10046E2F8(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10046E380(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_10046E380(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_10029F9AC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10046E404();
  }

  return result;
}

void sub_10046E47C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10046D634(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10046E498(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10046E17C(__dst + 24, a2 + 24);
  return __dst;
}

void sub_10046E4F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046E57C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10046E604(result, a4);
  }

  return result;
}

void sub_10046E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10046CE00(&a9);
  _Unwind_Resume(a1);
}

void sub_10046E604(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_10046E640(a1, a2);
  }

  sub_100019B38();
}

void sub_10046E640(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10046E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10046E17C(a4, v6);
      v6 += 16;
      a4 += 16;
      v7 -= 16;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10046E6E8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 16);
    do
    {
      v4 = sub_10046CC60(v4) - 16;
      v2 += 16;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_10046E70C@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  if (!sub_10046E7A4(a1, a2))
  {
    goto LABEL_8;
  }

  v12 = *(sub_1000054A8() + 187);
  if (!v12)
  {
    goto LABEL_8;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v13 = *a1;

      return sub_10046E8B4(v13, v6, v7, v8, v9, v10, v11, a3);
    }

LABEL_8:
    *a3 = 0;
    a3[192] = 0;
    return result;
  }

  v14 = *a1;

  return sub_10046ED50(v14, v6, v7, v8, v9, v10, v11, a3);
}

uint64_t sub_10046E7A4(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a2 + 16;
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_100296B98(&__p, v5, v4, v4 - v5);
  v6 = sub_10046F8E0(&__p);
  v7 = sub_10046F8B8(v6);
  LODWORD(v19) = v7;
  WORD2(v19) = WORD2(v7);
  if (*(a1 + 25) == 1 && !sub_1004262C8(&v19))
  {
    sub_100005D28("collectDTTagMessage: waiting for start of multipart message; ignoring partial data", v8, v9, v10, v11, v12, v13, v14, v19);
  }

  else
  {
    if (sub_1004262C8(&v19))
    {
      v15 = 0;
      *(a1 + 25) = 0;
      v16 = *a1;
      *(a1 + 8) = *a1;
    }

    else
    {
      v16 = *(a1 + 8);
      v15 = 20;
    }

    sub_100426C1C(a1, v16, (v15 + *a2), a2[1], a2[1] - (v15 + *a2));
    if (sub_1004262E8(&v19))
    {
      v17 = 1;
      *(a1 + 25) = 1;
      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_10:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_10046E894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10046E8B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = sub_100427984(*(a1 + 20), a1, a2, a3, a4, a5, a6, a7);
  v73 = *(a1 + 24);
  v74 = *(a1 + 22);
  v11 = *(a1 + 25);
  v12 = sub_10041C3B4(*(a1 + 29));
  v13 = v12;
  v14 = *(a1 + 37);
  v15 = *(a1 + 41);
  v16 = *(a1 + 50);
  v17 = *(a1 + 56);
  LODWORD(v12) = *(a1 + 46);
  v75 = v12;
  v25 = sub_100427984(*(a1 + 58), v18, v19, v20, v21, v22, v23, v24);
  v26 = vcvtd_n_f64_s32(*(a1 + 59), 2uLL);
  v27 = *(a1 + 77);
  v76 = vdupq_n_s64(0x3DB1351558C0E8F2uLL);
  v72 = vmulq_f64(vcvtq_f64_u64(*(a1 + 61)), v76);
  v35 = sub_100427984(*(a1 + 100), v28, v29, v30, v31, v32, v33, v34);
  v43 = *&v75;
  v44 = vcvtd_n_f64_s32(*(a1 + 101), 2uLL);
  v45 = *(a1 + 119);
  LOWORD(v94) = v10;
  WORD1(v94) = v74;
  BYTE4(v94) = v73;
  DWORD2(v94) = v11;
  *&v95 = v13;
  *(&v95 + 1) = __PAIR64__(v15, v14);
  LODWORD(v96) = LODWORD(v75);
  BYTE4(v96) = v16;
  WORD3(v96) = v17;
  WORD4(v96) = v25;
  *(&v96 + 3) = v26;
  v97 = v72;
  LODWORD(v98) = v27;
  WORD2(v98) = v35;
  *(&v98 + 2) = v44;
  v99 = vmulq_f64(vcvtq_f64_u64(*(a1 + 103)), v76);
  LODWORD(v100) = v45;
  BYTE8(v100) = 0;
  LOBYTE(v102) = 0;
  BYTE8(v102) = 0;
  v104 = 0;
  v105 = 0uLL;
  v106 = 0;
  if (!v25)
  {
    v67 = *(a1 + 81);
    if (v67 == 13)
    {
      if (*(a1 + 82))
      {
        goto LABEL_2;
      }

      v80 = 0uLL;
      v81.f64[0] = 0.0;
      sub_1000069DC(&v80, a1 + 83, a1 + 95, 12);
      *(&v100 + 1) = sub_10046F2B4(&v80);
      *&v101 = v70;
      *(&v101 + 1) = v71;
      if ((v102 & 1) == 0)
      {
        LOBYTE(v102) = 1;
      }
    }

    else
    {
      if (v67 != 11 || *(a1 + 82) != 1)
      {
        goto LABEL_2;
      }

      v80 = 0uLL;
      v81.f64[0] = 0.0;
      sub_1000069DC(&v80, a1 + 83, a1 + 93, 10);
      *(&v102 + 1) = sub_10046F1EC(&v80);
      *&v103 = v68;
      *(&v103 + 1) = v69;
      if ((v104 & 1) == 0)
      {
        v104 = 1;
      }
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    v43 = *&v75;
  }

LABEL_2:
  v46 = vmovl_u8(v43).u16[0];
  if (v46)
  {
    v47 = 0;
    v48 = 50 * v46;
    do
    {
      v49 = sub_100427984(*(a1 + v47 + 128), v36, v37, v38, v39, v40, v41, v42);
      *&v50 = vcvtd_n_f64_s32(*(a1 + v47 + 129), 2uLL);
      v51 = *(a1 + v47 + 131);
      v52 = *(a1 + v47 + 151);
      v53 = sub_10046F41C(*(a1 + v47 + 155));
      LOWORD(v54) = *(a1 + v47 + 157);
      v55 = *(a1 + v47 + 159) & 1;
      LOWORD(v80) = v49;
      *(&v80 + 4) = __PAIR64__(v51, v50);
      v81 = vmulq_f64(vcvtq_f64_u64(*(a1 + v47 + 135)), v76);
      v82 = v52;
      v83 = v53;
      v84 = v54 * 1.565e-11;
      v85 = v55;
      LOBYTE(v86) = 0;
      v89 = 0;
      LOBYTE(v90) = 0;
      v93 = 0;
      if (!v49)
      {
        v56 = *(a1 + v47 + 164);
        if (v56 == 13)
        {
          if (!*(a1 + v47 + 165))
          {
            __p = 0;
            v78 = 0;
            v79 = 0;
            sub_1000069DC(&__p, a1 + v47 + 166, a1 + v47 + 178, 12);
            v86 = sub_10046F2B4(&__p);
            v87 = v59;
            v88 = v60;
            if ((v89 & 1) == 0)
            {
              v89 = 1;
            }

            goto LABEL_15;
          }
        }

        else if (v56 == 11 && *(a1 + v47 + 165) == 1)
        {
          __p = 0;
          v78 = 0;
          v79 = 0;
          sub_1000069DC(&__p, a1 + v47 + 166, a1 + v47 + 176, 10);
          v90 = sub_10046F1EC(&__p);
          v91 = v57;
          v92 = v58;
          if ((v93 & 1) == 0)
          {
            v93 = 1;
          }

LABEL_15:
          if (__p)
          {
            v78 = __p;
            operator delete(__p);
          }
        }
      }

      sub_10046F4BC(&v105, &v80);
      v47 += 50;
    }

    while (v48 != v47);
  }

  v61 = v103;
  *(a8 + 128) = v102;
  *(a8 + 144) = v61;
  *(a8 + 160) = v104;
  v62 = v99;
  *(a8 + 64) = v98;
  *(a8 + 80) = v62;
  v63 = v101;
  *(a8 + 96) = v100;
  *(a8 + 112) = v63;
  v64 = v95;
  *a8 = v94;
  *(a8 + 16) = v64;
  v65 = v97;
  *(a8 + 32) = v96;
  *(a8 + 48) = v65;
  result = *&v105;
  *(a8 + 168) = v105;
  *(a8 + 184) = v106;
  *(a8 + 192) = 1;
  return result;
}

void sub_10046ECEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a57)
  {
    operator delete(a57);
  }

  _Unwind_Resume(exception_object);
}

double sub_10046ED50@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v10 = sub_100427984(*(a1 + 20), a1, a2, a3, a4, a5, a6, a7);
  v73 = *(a1 + 24);
  v74 = *(a1 + 22);
  v11 = *(a1 + 25);
  v12 = sub_10041C3B4(*(a1 + 29));
  v13 = v12;
  v14 = *(a1 + 37);
  v15 = *(a1 + 41);
  v16 = *(a1 + 51);
  v17 = *(a1 + 56);
  LODWORD(v12) = *(a1 + 47);
  v75 = v12;
  v25 = sub_100427984(*(a1 + 58), v18, v19, v20, v21, v22, v23, v24);
  v26 = vcvtd_n_f64_s32(*(a1 + 59), 2uLL);
  v27 = *(a1 + 77);
  v76 = vdupq_n_s64(0x3DB1351558C0E8F2uLL);
  v72 = vmulq_f64(vcvtq_f64_u64(*(a1 + 61)), v76);
  v35 = sub_100427984(*(a1 + 100), v28, v29, v30, v31, v32, v33, v34);
  v43 = *&v75;
  v44 = vcvtd_n_f64_s32(*(a1 + 101), 2uLL);
  v45 = *(a1 + 119);
  LOWORD(v94) = v10;
  WORD1(v94) = v74;
  BYTE4(v94) = v73;
  DWORD2(v94) = v11;
  *&v95 = v13;
  *(&v95 + 1) = __PAIR64__(v15, v14);
  LODWORD(v96) = LODWORD(v75);
  BYTE4(v96) = v16;
  WORD3(v96) = v17;
  WORD4(v96) = v25;
  *(&v96 + 3) = v26;
  v97 = v72;
  LODWORD(v98) = v27;
  WORD2(v98) = v35;
  *(&v98 + 2) = v44;
  v99 = vmulq_f64(vcvtq_f64_u64(*(a1 + 103)), v76);
  LODWORD(v100) = v45;
  BYTE8(v100) = 0;
  LOBYTE(v102) = 0;
  BYTE8(v102) = 0;
  v104 = 0;
  v105 = 0uLL;
  v106 = 0;
  if (!v25)
  {
    v67 = *(a1 + 81);
    if (v67 == 13)
    {
      if (*(a1 + 82))
      {
        goto LABEL_2;
      }

      v80 = 0uLL;
      v81.f64[0] = 0.0;
      sub_1000069DC(&v80, a1 + 83, a1 + 95, 12);
      *(&v100 + 1) = sub_10046F2B4(&v80);
      *&v101 = v70;
      *(&v101 + 1) = v71;
      if ((v102 & 1) == 0)
      {
        LOBYTE(v102) = 1;
      }
    }

    else
    {
      if (v67 != 11 || *(a1 + 82) != 1)
      {
        goto LABEL_2;
      }

      v80 = 0uLL;
      v81.f64[0] = 0.0;
      sub_1000069DC(&v80, a1 + 83, a1 + 93, 10);
      *(&v102 + 1) = sub_10046F1EC(&v80);
      *&v103 = v68;
      *(&v103 + 1) = v69;
      if ((v104 & 1) == 0)
      {
        v104 = 1;
      }
    }

    if (v80)
    {
      *(&v80 + 1) = v80;
      operator delete(v80);
    }

    v43 = *&v75;
  }

LABEL_2:
  v46 = vmovl_u8(v43).u16[0];
  if (v46)
  {
    v47 = 0;
    v48 = 50 * v46;
    do
    {
      v49 = sub_100427984(*(a1 + v47 + 128), v36, v37, v38, v39, v40, v41, v42);
      *&v50 = vcvtd_n_f64_s32(*(a1 + v47 + 129), 2uLL);
      v51 = *(a1 + v47 + 131);
      v52 = *(a1 + v47 + 151);
      v53 = sub_10046F41C(*(a1 + v47 + 155));
      LOWORD(v54) = *(a1 + v47 + 157);
      v55 = *(a1 + v47 + 159) & 1;
      LOWORD(v80) = v49;
      *(&v80 + 4) = __PAIR64__(v51, v50);
      v81 = vmulq_f64(vcvtq_f64_u64(*(a1 + v47 + 135)), v76);
      v82 = v52;
      v83 = v53;
      v84 = v54 * 1.565e-11;
      v85 = v55;
      LOBYTE(v86) = 0;
      v89 = 0;
      LOBYTE(v90) = 0;
      v93 = 0;
      if (!v49)
      {
        v56 = *(a1 + v47 + 164);
        if (v56 == 13)
        {
          if (!*(a1 + v47 + 165))
          {
            __p = 0;
            v78 = 0;
            v79 = 0;
            sub_1000069DC(&__p, a1 + v47 + 166, a1 + v47 + 178, 12);
            v86 = sub_10046F2B4(&__p);
            v87 = v59;
            v88 = v60;
            if ((v89 & 1) == 0)
            {
              v89 = 1;
            }

            goto LABEL_15;
          }
        }

        else if (v56 == 11 && *(a1 + v47 + 165) == 1)
        {
          __p = 0;
          v78 = 0;
          v79 = 0;
          sub_1000069DC(&__p, a1 + v47 + 166, a1 + v47 + 176, 10);
          v90 = sub_10046F1EC(&__p);
          v91 = v57;
          v92 = v58;
          if ((v93 & 1) == 0)
          {
            v93 = 1;
          }

LABEL_15:
          if (__p)
          {
            v78 = __p;
            operator delete(__p);
          }
        }
      }

      sub_10046F4BC(&v105, &v80);
      v47 += 50;
    }

    while (v48 != v47);
  }

  v61 = v103;
  *(a8 + 128) = v102;
  *(a8 + 144) = v61;
  *(a8 + 160) = v104;
  v62 = v99;
  *(a8 + 64) = v98;
  *(a8 + 80) = v62;
  v63 = v101;
  *(a8 + 96) = v100;
  *(a8 + 112) = v63;
  v64 = v95;
  *a8 = v94;
  *(a8 + 16) = v64;
  v65 = v97;
  *(a8 + 32) = v96;
  *(a8 + 48) = v65;
  result = *&v105;
  *(a8 + 168) = v105;
  *(a8 + 184) = v106;
  *(a8 + 192) = 1;
  return result;
}

void sub_10046F188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a57)
  {
    operator delete(a57);
  }

  _Unwind_Resume(exception_object);
}

double sub_10046F1EC(char **a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 10)
  {
    sub_1004D0984();
  }

  v2 = *(v1 + 3);
  v3 = (*v1 | (*(v1 + 2) << 16)) & 0xF0FFFFFF | ((((v2 & 0xF0) >> 4) & 0xF) << 24) | 0xF0000000;
  if (v2 >= 0)
  {
    v3 = (*v1 | (*(v1 + 2) << 16)) & 0xF0FFFFFF | ((((v2 & 0xF0) >> 4) & 0xF) << 24);
  }

  v5 = *(v1 + 3);
  v4 = *(v1 + 4) << 24;
  v6 = *(v1 + 5);
  *(v1 + 6);
  v7 = *(v1 + 7);
  *(v1 + 9);
  return v3 / 1000.0;
}

double sub_10046F2B4(void *a1)
{
  v1 = *a1;
  if (a1[1] - *a1 != 12)
  {
    sub_1004D09B0();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v7 = 1 << (v3 + i);
      v8 = v5 & ~v7;
      v5 |= v7;
      if (((*(v1 + v4) >> i) & 1) == 0)
      {
        v5 = v8;
      }
    }

    ++v4;
    v3 += 8;
  }

  while (v4 != 4);
  v21 = v5 & 0xFFFFFFFEFFFFFFFFLL | ((((*(v1 + 4) & 0x80) >> 7) & 1) << 32);
  v9 = sub_10046F5F4(&v21);
  HIDWORD(v10) = *(*a1 + 4);
  LODWORD(v10) = *(*a1 + 5) << 24;
  v11 = (v10 >> 31);
  HIDWORD(v10) = *(*a1 + 5);
  LODWORD(v10) = *(*a1 + 6) << 24;
  v12 = v10 >> 31;
  HIDWORD(v10) = *(*a1 + 6);
  LODWORD(v10) = *(*a1 + 7) << 24;
  v13 = v10 >> 31;
  v14 = *(*a1 + 8);
  HIDWORD(v10) = *(*a1 + 7);
  LODWORD(v10) = v14 << 24;
  v20 = v11 & 0xFFFFFFFF000000FFLL | (v12 << 8) | (v13 << 16) & 0xFFFFFFFF00FFFFFFLL | ((v10 >> 31) << 24) | (((v14 >> 6) & 1) << 32);
  sub_10046F5F4(&v20);
  HIDWORD(v10) = *(*a1 + 8);
  LODWORD(v10) = *(*a1 + 9) << 24;
  v15 = (v10 >> 30);
  HIDWORD(v10) = *(*a1 + 9);
  LODWORD(v10) = *(*a1 + 10) << 24;
  v16 = v10 >> 30;
  v17 = *(*a1 + 11);
  HIDWORD(v10) = *(*a1 + 10);
  LODWORD(v10) = v17 << 24;
  v19 = v15 & 0xFFFFFFFFC00000FFLL | (v16 << 8) | ((v10 >> 30) << 16) & 0xFFFFFFFFC0FFFFFFLL | ((v17 & 0x3F) << 24);
  sub_10046F6CC(&v19);
  return v9;
}

float sub_10046F41C(unsigned int a1)
{
  v1 = 0;
  v2 = 0.0;
  v3 = 9;
  do
  {
    if ((a1 >> v3))
    {
      v2 = COERCE_DOUBLE(0x3FE0000000000000 - (v1 << 52)) + v2;
    }

    v1 = (v1 + 1);
    --v3;
  }

  while (v1 != 10);
  v4 = vdupq_n_s32(a1);
  v5.i64[0] = 0x1000000010;
  v5.i64[1] = 0x1000000010;
  v6 = vbicq_s8(v5, vceqzq_s32(vandq_s8(v4, xmmword_100574630)));
  v7 = vbicq_s8(xmmword_100574650, vceqzq_s32(vandq_s8(v4, xmmword_100574640)));
  v7.i32[0] = vorrq_s8(v6, v7).u32[0];
  result = v2 + vaddvq_s32(v7);
  if ((a1 & 0x8000u) != 0)
  {
    return result + -32.0;
  }

  return result;
}

void sub_10046F4BC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x222222222222222)
    {
      sub_100019B38();
    }

    v15 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x111111111111111)
    {
      v16 = 0x222222222222222;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_100020B28(a1, v16);
    }

    v17 = 120 * v13;
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    *(v17 + 32) = a2[2];
    *(v17 + 48) = v20;
    *v17 = v18;
    *(v17 + 16) = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[6];
    *(v17 + 112) = *(a2 + 14);
    *(v17 + 80) = v22;
    *(v17 + 96) = v23;
    *(v17 + 64) = v21;
    v12 = 120 * v13 + 120;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy((v17 - v24), *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    *(v4 + 32) = a2[2];
    *(v4 + 48) = v8;
    *v4 = v6;
    *(v4 + 16) = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[6];
    *(v4 + 112) = *(a2 + 14);
    *(v4 + 80) = v10;
    *(v4 + 96) = v11;
    *(v4 + 64) = v9;
    v12 = v4 + 120;
  }

  *(a1 + 8) = v12;
}

double sub_10046F5F4(unint64_t *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 0.0;
  v4 = 23;
  do
  {
    if ((v2 >> v4))
    {
      v3 = v3 + COERCE_DOUBLE(0x3FE0000000000000 - (v1 << 52));
    }

    ++v1;
    --v4;
  }

  while (v1 != 24);
  v5 = vdupq_n_s64(v2);
  v6 = vorrq_s8(vbicq_s8(xmmword_100574680, vuzp1q_s32(vceqzq_s64(vandq_s8(v5, xmmword_100574660)), vceqzq_s64(vandq_s8(v5, xmmword_100574670)))), vbicq_s8(xmmword_100574650, vuzp1q_s32(vceqzq_s64(vandq_s8(v5, xmmword_100574690)), vceqzq_s64(vandq_s8(v5, xmmword_1005746A0)))));
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  result = v3 + (v6.i32[0] | v6.i32[1]);
  if ((v2 & &_mh_execute_header) != 0)
  {
    return result + -256.0;
  }

  return result;
}

double sub_10046F6CC(unint64_t *a1)
{
  v1 = 0;
  v2 = *a1;
  v3 = 0.0;
  v4 = 20;
  do
  {
    if ((v2 >> v4))
    {
      v3 = v3 + COERCE_DOUBLE(0x3FE0000000000000 - (v1 << 52));
    }

    ++v1;
    --v4;
  }

  while (v1 != 21);
  v5 = vdupq_n_s64(v2);
  v6 = vorrq_s8(vbicq_s8(xmmword_100574680, vuzp1q_s32(vceqzq_s64(vandq_s8(v5, xmmword_1005746B0)), vceqzq_s64(vandq_s8(v5, xmmword_1005746C0)))), vbicq_s8(xmmword_100574650, vuzp1q_s32(vceqzq_s64(vandq_s8(v5, xmmword_1005746D0)), vceqzq_s64(vandq_s8(v5, xmmword_1005746E0)))));
  *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  result = v3 + (v6.i32[0] | v6.i32[1]);
  if ((v2 & 0x20000000) != 0)
  {
    return result + -256.0;
  }

  return result;
}

uint64_t sub_10046F7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = (a1 + 24);
  if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      v10 = *a1;
    }

    sub_100005D28("power assertion (%u) is already taken for %s", a2, a3, a4, a5, a6, a7, a8, *(a1 + 24));
    return 1;
  }

  v12 = a1;
  if (*(a1 + 23) < 0)
  {
    v12 = *a1;
  }

  v13 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
  if (v13)
  {
    v21 = v13;
    v22 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v13, v9);
    CFRelease(v21);
    if (!v22)
    {
      v30 = *(v8 + 24);
      if (*(v8 + 23) < 0)
      {
        v31 = *v8;
      }

      sub_100005D28("Successfully taken powerAssertionId (%u) for %s", v23, v24, v25, v26, v27, v28, v29, v30);
      return 1;
    }

    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    sub_100428B48("Failed to take powerAssertionId for %s, return value: 0x%x", v23, v24, v25, v26, v27, v28, v29, v8);
  }

  else
  {
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    sub_100428B48("Failed to create CFString for %s", v14, v15, v16, v17, v18, v19, v20, v8);
  }

  return 0;
}

uint64_t sub_10046F8E0(unsigned int **a1)
{
  if ((a1[1] - *a1) <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1004211BC(exception, "packet too short to contain a 4-byte header");
  }

  return **a1;
}

_BYTE *sub_10046F95C(char *__src, size_t __len, _BYTE *__dst, int a4)
{
  v4 = __dst;
  v5 = __len;
  if (a4 == 1)
  {
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    v4 += v5;
  }

  else if (__len)
  {
    do
    {
      *v4++ = __src[--v5];
    }

    while (v5);
  }

  return v4;
}

void sub_10046F9C0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  if (v5 > 0x30)
  {
    if (v5 >= 0x89)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1004211BC(exception, "logical packet too long to split into multiple physical packets");
    }

    v7 = sub_10046F8E0(a1);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v8 = *(a1 + 8) - *a1 - 4;
    if (*(a1 + 8) - *a1 != 4)
    {
      v9 = v7;
      v10 = (*a1 + 4);
      do
      {
        v11 = *a2;
        v12 = a2[1];
        if (v8 >= 0x2Cu)
        {
          v13 = 44;
        }

        else
        {
          v13 = v8;
        }

        sub_100025100(&__p, v13 + 4);
        if (v8 <= 0x2Cu)
        {
          v14 = 327680;
        }

        else
        {
          v14 = 196608;
        }

        if (v12 == v11)
        {
          v14 = 0x10000;
        }

        v15 = __p;
        *__p = v9 | v14;
        memmove(v15 + 4, v10, v13);
        sub_10046FBE0(a2, &__p);
        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }

        v10 += v13;
        LOBYTE(v8) = v8 - v13;
      }

      while (v8);
    }
  }

  else
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    sub_100009A48(&__p, v3, v4, v5);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_10046FFD8(a2, &__p, &v20, 1uLL);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

uint64_t sub_10046FBE0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100470160(a1, a2);
  }

  else
  {
    sub_100470110(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10046FC20(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_10026B0D4(&v23);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  sub_10000EA44(&v23, v11, v12);
  v13 = v23;
  v14 = &v23 + *(v23 - 3);
  if (*(v14 + 36) == -1)
  {
    std::ios_base::getloc((&v23 + *(v23 - 3)));
    v15 = std::locale::use_facet(&v27, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 32);
    std::locale::~locale(&v27);
    v13 = v23;
  }

  *(v14 + 36) = 48;
  *(&v23 + *(v13 - 3) + 8) = *(&v23 + *(v13 - 3) + 8) & 0xFFFFFFB5 | 8;
  if (a3)
  {
    v16 = 0;
    do
    {
      *(&v25[1].__locale_ + *(v23 - 3)) = 2;
      v17 = *(a2 + v16);
      v18 = std::ostream::operator<<();
      sub_10000EA44(v18, " ", 1);
      if (v16 % a4 == a4 - 1)
      {
        sub_10000EA44(&v23, "\n", 1);
      }

      ++v16;
    }

    while (a3 != v16);
  }

  if (a3 % a4)
  {
    sub_10000EA44(&v23, "\n", 1);
  }

  v19 = *(a5 + 23);
  if (v19 >= 0)
  {
    v20 = a5;
  }

  else
  {
    v20 = *a5;
  }

  if (v19 >= 0)
  {
    v21 = *(a5 + 23);
  }

  else
  {
    v21 = *(a5 + 8);
  }

  sub_10000EA44(&v23, v20, v21);
  std::stringbuf::str();
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10046FF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_10046FF5C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_10046FC20(a1, a2, a3, a4, a5);
  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_1004289F8("%s", v5, v6, v7, v8, v9, v10, v11, p_p);
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

void sub_10046FFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046FFD8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10039B054(result, a4);
  }

  return result;
}

void sub_100470040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001674A8(&a9);
  _Unwind_Resume(a1);
}

void *sub_100470060(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100009A48(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10039B0F8(v8);
  return v4;
}

uint64_t sub_100470110(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100009A48(v3, *a2, a2[1], a2[1] - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100470160(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100019B38();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_10039B0A0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100009A48(24 * v2, *a2, a2[1], a2[1] - *a2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_100170384(&v14);
  return v8;
}

void sub_100470278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100170384(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10047028C(char *a1, _DWORD *__dst)
{
  __dst[8] = 0;
  *__dst = 0u;
  *(__dst + 1) = 0u;
  __src = 0x4000;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 0x20uLL, v4, 1);
  if (__dst + 9 >= v5)
  {
    if (__dst + 9 > v5)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v6, v7, v8, v9, v10, v11, v12, "buildHelloCommandPacket");
    }

    if (*(__dst + 35))
    {
      sub_100005D28("%s: software version string was overrun.", v6, v7, v8, v9, v10, v11, v12, "buildHelloCommandPacket");
      result = 0;
      *(__dst + 35) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v6, v7, v8, v9, v10, v11, v12, "buildHelloCommandPacket");
    return 1;
  }

  return result;
}

uint64_t sub_100470364(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24) - *(a1 + 16);
  if ((v8 >> 1) >= 9)
  {
    v9 = "Too many devices in device list in ranging config command.";
LABEL_12:
    sub_100428B48(v9, a2, a3, a4, a5, a6, a7, a8, v27);
    return 1;
  }

  if ((v8 >> 1) <= 1)
  {
    v9 = "Not enough devices in device list in ranging config command.";
    goto LABEL_12;
  }

  v12 = *a2;
  *(a2 + 8) = *a2;
  v30 = 0;
  if (v8 != -24)
  {
    sub_100250E48(a2, v8 + 24, &v30);
    v12 = *a2;
  }

  __src = 16385;
  v13 = sub_10046F95C(&__src, 4uLL, v12, 1);
  v14 = sub_10046F95C(a1, 2uLL, v13, 1);
  v15 = sub_10046F95C((a1 + 2), 1uLL, v14, 1);
  v16 = sub_10046F95C((a1 + 3), 1uLL, v15, 1);
  v17 = sub_10046F95C((a1 + 4), 2uLL, v16, 1);
  v18 = sub_10046F95C((a1 + 6), 2uLL, v17, 1);
  v19 = sub_10046F95C((a1 + 8), 1uLL, v18, 1);
  v20 = sub_10046F95C((a1 + 9), 1uLL, v19, 1);
  v21 = sub_10046F95C((a1 + 10), 1uLL, v20, 1);
  v28 = (*(a1 + 24) - *(a1 + 16)) >> 1;
  v22 = sub_10046F95C(&v28, 1uLL, v21 + 7, 1);
  a3 = sub_10046F95C((a1 + 11), 1uLL, v22, 1);
  if (v28)
  {
    v23 = 0;
    for (i = 0; i < v28; ++i)
    {
      a3 = sub_10046F95C((*(a1 + 16) + v23), 2uLL, a3, 1);
      v23 += 2;
    }
  }

  v25 = *(a2 + 8);
  if (v25 < a3)
  {
    v27 = "buildRangingConfigCommandPacket";
    v9 = "%s: Memory bounds of array exceeded.";
    goto LABEL_12;
  }

  if (v25 > a3)
  {
    sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", a2, a3, a4, a5, a6, a7, a8, "buildRangingConfigCommandPacket");
  }

  return 0;
}

uint64_t sub_100470574(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24) - *(a1 + 16);
  if ((v8 >> 1) >= 9)
  {
    v9 = "Too many devices in device list in ranging config command.";
LABEL_12:
    sub_100428B48(v9, a2, a3, a4, a5, a6, a7, a8, v32);
    return 1;
  }

  if ((v8 >> 1) <= 1)
  {
    v9 = "Not enough devices in device list in ranging config command.";
    goto LABEL_12;
  }

  v12 = *a2;
  *(a2 + 8) = *a2;
  v35 = 0;
  if (v8 != -28)
  {
    sub_100250E48(a2, v8 + 28, &v35);
    v12 = *a2;
  }

  __src = 16385;
  v13 = sub_10046F95C(&__src, 4uLL, v12, 1);
  v14 = sub_10046F95C(a1, 2uLL, v13, 1);
  v15 = sub_10046F95C((a1 + 2), 1uLL, v14, 1);
  v16 = sub_10046F95C((a1 + 3), 1uLL, v15, 1);
  v17 = sub_10046F95C((a1 + 4), 2uLL, v16, 1);
  v18 = sub_10046F95C((a1 + 6), 2uLL, v17, 1);
  v19 = sub_10046F95C((a1 + 8), 1uLL, v18, 1);
  v20 = sub_10046F95C((a1 + 9), 1uLL, v19, 1);
  v21 = sub_10046F95C((a1 + 10), 1uLL, v20, 1);
  v22 = sub_10046F95C((a1 + 48), 2uLL, v21, 1);
  v23 = sub_10046F95C((a1 + 50), 2uLL, v22, 1);
  v33 = (*(a1 + 24) - *(a1 + 16)) >> 1;
  v24 = sub_10046F95C(&v33, 1uLL, v23 + 3, 1);
  v25 = sub_10046F95C((a1 + 11), 1uLL, v24, 1);
  v26 = sub_10046F95C((a1 + 52), 1uLL, v25, 1);
  v27 = sub_10046F95C((a1 + 53), 1uLL, v26, 1);
  a3 = sub_10046F95C((a1 + 54), 2uLL, v27, 1);
  if (v33)
  {
    v28 = 0;
    for (i = 0; i < v33; ++i)
    {
      a3 = sub_10046F95C((*(a1 + 16) + v28), 2uLL, a3, 1);
      v28 += 2;
    }
  }

  v30 = *(a2 + 8);
  if (v30 < a3)
  {
    v32 = "buildRangingConfigCommandPacketR2";
    v9 = "%s: Memory bounds of array exceeded.";
    goto LABEL_12;
  }

  if (v30 > a3)
  {
    sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", a2, a3, a4, a5, a6, a7, a8, "buildRangingConfigCommandPacketR2");
  }

  return 0;
}

uint64_t sub_1004707E8(char *a1, void *__dst)
{
  *__dst = 0;
  __dst[1] = 0;
  *(__dst + 14) = 0;
  __src = 16386;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 2uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 8, 8uLL, v5, 1);
  v7 = sub_10046F95C(a1 + 16, 4uLL, v6, 1);
  v8 = sub_10046F95C(a1 + 20, 4uLL, v7, 1);
  if (__dst + 22 >= v8)
  {
    if (__dst + 22 > v8)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v9, v10, v11, v12, v13, v14, v15, "buildRangingEnableCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v9, v10, v11, v12, v13, v14, v15, "buildRangingEnableCommandPacket");
    return 1;
  }
}

uint64_t sub_1004708D4(char *a1, char *__dst)
{
  *(__dst + 3) = 0;
  *__dst = 0;
  __src = 16387;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 2uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 2, 1uLL, v5, 1);
  if (__dst + 7 >= v6)
  {
    if (__dst + 7 > v6)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v7, v8, v9, v10, v11, v12, v13, "buildRangingDisableCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v7, v8, v9, v10, v11, v12, v13, "buildRangingDisableCommandPacket");
    return 1;
  }
}

uint64_t sub_100470998(char *a1, char *__dst)
{
  *(__dst + 78) = 0;
  *(__dst + 3) = 0u;
  *(__dst + 4) = 0u;
  *(__dst + 1) = 0u;
  *(__dst + 2) = 0u;
  *__dst = 0u;
  __src = 16480;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 2uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 2, 1uLL, v5, 1);
  v7 = sub_10046F95C(a1 + 3, 1uLL, v6, 1);
  v8 = sub_10046F95C(a1 + 4, 1uLL, v7, 1);
  v9 = sub_10046F95C(a1 + 6, 2uLL, v8, 1);
  v10 = sub_10046F95C(a1 + 8, 2uLL, v9, 1);
  v11 = sub_10046F95C(a1 + 22, 1uLL, v10 + 12, 1);
  v12 = sub_10046F95C(a1 + 23, 1uLL, v11, 1);
  v13 = sub_10046F95C(a1 + 24, 1uLL, v12, 1);
  v14 = sub_10046F95C(a1 + 26, 2uLL, v13, 1);
  v15 = sub_10046F95C(a1 + 28, 1uLL, v14, 1);
  v16 = sub_10046F95C(a1 + 30, 2uLL, v15, 1);
  v17 = sub_10046F95C(a1 + 32, 1uLL, v16, 1);
  v18 = sub_10046F95C(a1 + 33, 1uLL, v17, 1);
  v19 = sub_10046F95C(a1 + 34, 1uLL, v18, 1);
  v20 = sub_10046F95C(a1 + 36, 1uLL, v19, 1);
  v21 = sub_10046F95C(a1 + 37, 1uLL, v20, 1);
  v22 = sub_10046F95C(a1 + 35, 1uLL, v21, 1);
  v23 = sub_10046F95C(a1 + 43, 1uLL, v22 + 5, 1);
  v24 = sub_10046F95C(a1 + 44, 1uLL, v23, 1);
  v25 = sub_10046F95C(a1 + 62, 2uLL, v24 + 16, 1);
  v26 = sub_10046F95C(a1 + 64, 8uLL, v25, 1);
  v27 = sub_10046F95C(a1 + 72, 4uLL, v26, 1);
  v28 = sub_10046F95C(a1 + 76, 2uLL, v27, 1);
  v29 = sub_10046F95C(a1 + 80, 8uLL, v28, 1);
  if (__dst + 86 >= v29)
  {
    if (__dst + 86 > v29)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v30, v31, v32, v33, v34, v35, v36, "buildTestNBAMMSRangeEnableCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v30, v31, v32, v33, v34, v35, v36, "buildTestNBAMMSRangeEnableCommandPacket");
    return 1;
  }
}

uint64_t sub_100470C40(_DWORD *a1, uint64_t a2)
{
  __src = 16388;
  v4 = *a2;
  v5 = *(a2 + 8) - *a2;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      *(a2 + 8) = v4 + 4;
    }
  }

  else
  {
    sub_100009838(a2, 4 - v5);
    v4 = *a2;
  }

  sub_10046F95C(&__src, 4uLL, v4, 1);
  v6 = (a1[2] - *a1);
  v12 = *(a1 + 8) - *a1;
  sub_1001FE4D0(a2, &v12);
  v8 = *a1;
  v7 = *(a1 + 1);
  while (v8 != v7)
  {
    v9 = *v8++;
    v11 = v9;
    sub_1001FE4D0(a2, &v11);
  }

  return 0;
}

BOOL sub_100470D08(void *a1, uint64_t a2)
{
  if (a1[1] - *a1 > 0x1FE0uLL)
  {
    return 1;
  }

  v22 = v2;
  v23 = v3;
  __src = 16389;
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (v8 > 3)
  {
    if (v8 != 4)
    {
      *(a2 + 8) = v7 + 4;
    }
  }

  else
  {
    sub_100009838(a2, 4 - v8);
    v7 = *a2;
  }

  sub_10046F95C(&__src, 4uLL, v7, 1);
  v20 = (*(a1 + 2) - *a1) >> 5;
  sub_1001FE4D0(a2, &v20);
  v10 = *a1;
  v9 = a1[1];
  if (v10 == v9)
  {
    return 0;
  }

  do
  {
    v11 = *(v10 + 2) - *(v10 + 1);
    if (v11 > 0xFF)
    {
      break;
    }

    v19 = *v10;
    sub_1001FE4D0(a2, &v19);
    v12 = *(v10 + 2);
    v13 = (*(v10 + 4) - v12);
    v18 = v10[16] - v12;
    sub_1001FE4D0(a2, &v18);
    v14 = *(v10 + 1);
    v15 = *(v10 + 2);
    while (v14 != v15)
    {
      v16 = *v14++;
      v17 = v16;
      sub_1001FE4D0(a2, &v17);
    }

    v10 += 32;
  }

  while (v10 != v9);
  return v11 > 0xFF;
}

uint64_t sub_100470E60(char *a1, _WORD *__dst)
{
  __dst[4] = 0;
  *__dst = 0;
  __src = 16390;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 1uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 1, 1uLL, v5, 1);
  v7 = sub_10046F95C(a1 + 4, 4uLL, v6, 1);
  if (__dst + 5 >= v7)
  {
    if (__dst + 5 > v7)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v8, v9, v10, v11, v12, v13, v14, "buildSleepEnableCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v8, v9, v10, v11, v12, v13, v14, "buildSleepEnableCommandPacket");
    return 1;
  }
}

uint64_t sub_100470F38(char *a1, _BYTE *__dst)
{
  __dst[4] = 0;
  *__dst = 0;
  __src = 16397;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 1uLL, v4, 1);
  if (__dst + 5 >= v5)
  {
    if (__dst + 5 > v5)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v6, v7, v8, v9, v10, v11, v12, "buildSetNBSARStateCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v6, v7, v8, v9, v10, v11, v12, "buildSetNBSARStateCommandPacket");
    return 1;
  }
}

uint64_t sub_100470FE8(int a1, char *__dst)
{
  *__dst = 0;
  v2 = __dst + 4;
  __src = 16467;
  v3 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  if (v2 >= v3)
  {
    if (v2 > v3)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v4, v5, v6, v7, v8, v9, v10, "buildAlishaGetCapCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v4, v5, v6, v7, v8, v9, v10, "buildAlishaGetCapCommandPacket");
    return 1;
  }
}

uint64_t sub_100471078(char *a1, void *__dst)
{
  __dst[4] = 0;
  *__dst = 0u;
  *(__dst + 1) = 0u;
  __src = 16466;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 4uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 4, 0x20uLL, v5, 1);
  if (__dst + 5 >= v6)
  {
    if (__dst + 5 > v6)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v7, v8, v9, v10, v11, v12, v13, "buildAlishaDbgSetKeyCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v7, v8, v9, v10, v11, v12, v13, "buildAlishaDbgSetKeyCommandPacket");
    return 1;
  }
}

uint64_t sub_100471140(char *a1, char *__dst)
{
  *__dst = 0;
  v3 = __dst + 8;
  __src = 16465;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 4uLL, v4, 1);
  if (v3 >= v5)
  {
    if (v3 > v5)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v6, v7, v8, v9, v10, v11, v12, "buildAlishaGetKeyCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v6, v7, v8, v9, v10, v11, v12, "buildAlishaGetKeyCommandPacket");
    return 1;
  }
}

uint64_t sub_1004711E8(char *a1, _OWORD *__dst)
{
  __dst[1] = 0u;
  __dst[2] = 0u;
  *__dst = 0u;
  __src = 16464;
  v4 = sub_10046F95C(&__src, 4uLL, __dst, 1);
  v5 = sub_10046F95C(a1, 2uLL, v4, 1);
  v6 = sub_10046F95C(a1 + 2, 1uLL, v5, 1);
  v7 = sub_10046F95C(a1 + 3, 1uLL, v6, 1);
  v8 = sub_10046F95C(a1 + 4, 1uLL, v7, 1);
  v9 = sub_10046F95C(a1 + 5, 1uLL, v8, 1);
  v10 = sub_10046F95C(a1 + 6, 1uLL, v9, 1);
  v11 = sub_10046F95C(a1 + 7, 1uLL, v10, 1);
  v12 = sub_10046F95C(a1 + 8, 4uLL, v11, 1);
  v13 = sub_10046F95C(a1 + 12, 2uLL, v12, 1);
  v14 = sub_10046F95C(a1 + 14, 2uLL, v13, 1);
  v15 = sub_10046F95C(a1 + 16, 2uLL, v14, 1);
  v16 = sub_10046F95C(a1 + 18, 1uLL, v15, 1);
  v17 = sub_10046F95C(a1 + 19, 1uLL, v16, 1);
  v18 = sub_10046F95C(a1 + 20, 1uLL, v17, 1);
  v19 = sub_10046F95C(a1 + 21, 1uLL, v18, 1);
  v20 = sub_10046F95C(a1 + 24, 4uLL, v19, 1);
  v21 = sub_10046F95C(a1 + 28, 4uLL, v20, 1);
  v22 = sub_10046F95C(a1 + 32, 1uLL, v21, 1);
  v23 = sub_10046F95C(a1 + 33, 1uLL, v22, 1);
  v24 = sub_10046F95C(a1 + 34, 1uLL, v23, 1);
  v25 = sub_10046F95C(a1 + 35, 1uLL, v24, 1);
  v26 = sub_10046F95C(a1 + 36, 2uLL, v25, 1);
  v27 = sub_10046F95C(a1 + 40, 8uLL, v26, 1);
  if (__dst + 3 >= v27)
  {
    if (__dst + 3 > v27)
    {
      sub_100005D28("%s: Memory bounds of array not reached. struct member not copied?", v28, v29, v30, v31, v32, v33, v34, "buildAlishaRangeEnableCommandPacket");
    }

    return 0;
  }

  else
  {
    sub_100428B48("%s: Memory bounds of array exceeded.", v28, v29, v30, v31, v32, v33, v34, "buildAlishaRangeEnableCommandPacket");
    return 1;
  }
}

uint64_t sub_100471454@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v43 = 0u;
  v44 = 0u;
  v45 = 1065353216;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = &v41;
  v37 = &v38;
  v38 = 0;
  v35 = &v40;
  v36 = &v43;
  v33 = &v40;
  v34 = &v37;
  v32 = &v37;
  if (a1 > 199)
  {
    if (a1 <= 201)
    {
      if (a1 != 200)
      {
        if (!a3)
        {
          v22 = &unk_10089A7FE;
LABEL_93:
          sub_100472964(&v36, v22);
          goto LABEL_215;
        }

        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1317;
LABEL_362:
        __assert_rtn("ConstructRegulatoryTxPowerTableMap", "roseRegulatoryCompliancePowerTables.cpp", v21, v20);
      }

      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1307;
        goto LABEL_362;
      }

      v30 = &unk_100898F2E;
    }

    else
    {
      if (a1 != 202)
      {
        if ((a1 == 997 || a1 == 999) && a3)
        {
          v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
          v21 = 1323;
          goto LABEL_362;
        }

        goto LABEL_215;
      }

      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1312;
        goto LABEL_362;
      }

      v30 = &unk_100899B96;
    }

    sub_10047321C(&v36, v30);
    goto LABEL_215;
  }

  switch(a1)
  {
    case 0:
      v28 = &unk_10071B37E;
      if ((a3 - 2) < 0xC || (a3 - 998) < 2 || !a3)
      {
        goto LABEL_206;
      }

      if (a3 != 1)
      {
        goto LABEL_215;
      }

      v28 = &unk_1007160F6;
      goto LABEL_206;
    case 1:
      if (a3 > 0xD)
      {
        if ((a3 - 998) < 2)
        {
          goto LABEL_96;
        }

        goto LABEL_215;
      }

      if (a3 != 2)
      {
LABEL_96:
        v28 = &unk_10072588E;
        goto LABEL_206;
      }

      v28 = &unk_100720606;
      goto LABEL_206;
    case 2:
      if (a3 > 0xD)
      {
        if ((a3 - 998) < 2)
        {
          goto LABEL_71;
        }

        goto LABEL_215;
      }

      if (a3 != 3)
      {
LABEL_71:
        v28 = &unk_10072FD9E;
        goto LABEL_206;
      }

      v28 = &unk_10072AB16;
      goto LABEL_206;
    case 3:
      if (a3 <= 7)
      {
        if (a3 <= 3)
        {
          if (a3 >= 4)
          {
            goto LABEL_215;
          }

          goto LABEL_175;
        }

        if (a3 > 5)
        {
          if (a3 == 6)
          {
            v28 = &unk_10073F536;
          }

          else
          {
            v28 = &unk_1007447BE;
          }
        }

        else if (a3 == 4)
        {
          v28 = &unk_100735026;
        }

        else
        {
          v28 = &unk_10073A2AE;
        }

        goto LABEL_206;
      }

      if (a3 <= 10)
      {
        if (a3 == 8)
        {
          v28 = &unk_100749A46;
        }

        else if (a3 == 9)
        {
          v28 = &unk_10074ECCE;
        }

        else
        {
          v28 = &unk_100753F56;
        }

        goto LABEL_206;
      }

      if ((a3 - 11) < 3 || (a3 - 998) < 2)
      {
LABEL_175:
        v28 = &unk_1007591DE;
        goto LABEL_206;
      }

      goto LABEL_215;
    case 4:
      if (a3 <= 7)
      {
        if (a3 <= 3)
        {
          if (a3 >= 4)
          {
            goto LABEL_215;
          }

          goto LABEL_171;
        }

        if (a3 > 5)
        {
          if (a3 == 6)
          {
            v28 = &unk_100768976;
          }

          else
          {
            v28 = &unk_10076DBFE;
          }
        }

        else if (a3 == 4)
        {
          v28 = &unk_10075E466;
        }

        else
        {
          v28 = &unk_1007636EE;
        }

        goto LABEL_206;
      }

      if (a3 <= 10)
      {
        if (a3 == 8)
        {
          v28 = &unk_100772E86;
        }

        else if (a3 == 9)
        {
          v28 = &unk_10077810E;
        }

        else
        {
          v28 = &unk_10077D396;
        }

        goto LABEL_206;
      }

      if ((a3 - 11) < 3 || (a3 - 998) < 2)
      {
LABEL_171:
        v28 = &unk_10078261E;
        goto LABEL_206;
      }

      goto LABEL_215;
    case 5:
      if (a3 <= 7)
      {
        if (a3 <= 3)
        {
          if (a3 >= 4)
          {
            goto LABEL_215;
          }

          goto LABEL_179;
        }

        if (a3 > 5)
        {
          if (a3 == 6)
          {
            v28 = &unk_100791DB6;
          }

          else
          {
            v28 = &unk_10079703E;
          }
        }

        else if (a3 == 4)
        {
          v28 = &unk_1007878A6;
        }

        else
        {
          v28 = &unk_10078CB2E;
        }

        goto LABEL_206;
      }

      if (a3 <= 10)
      {
        if (a3 == 8)
        {
          v28 = &unk_10079C2C6;
        }

        else if (a3 == 9)
        {
          v28 = &unk_1007A154E;
        }

        else
        {
          v28 = &unk_1007A67D6;
        }

        goto LABEL_206;
      }

      if ((a3 - 11) < 3 || (a3 - 998) < 2)
      {
LABEL_179:
        v28 = &unk_1007ABA5E;
        goto LABEL_206;
      }

      goto LABEL_215;
    case 6:
      if (a3 <= 7)
      {
        if (a3 <= 3)
        {
          if (a3 >= 4)
          {
            goto LABEL_215;
          }

          goto LABEL_167;
        }

        if (a3 > 5)
        {
          if (a3 == 6)
          {
            v28 = &unk_1007BB1F6;
          }

          else
          {
            v28 = &unk_1007C047E;
          }
        }

        else if (a3 == 4)
        {
          v28 = &unk_1007B0CE6;
        }

        else
        {
          v28 = &unk_1007B5F6E;
        }

        goto LABEL_206;
      }

      if (a3 <= 10)
      {
        if (a3 == 8)
        {
          v28 = &unk_1007C5706;
        }

        else if (a3 == 9)
        {
          v28 = &unk_1007CA98E;
        }

        else
        {
          v28 = &unk_1007CFC16;
        }

        goto LABEL_206;
      }

      if ((a3 - 11) < 3 || (a3 - 998) < 2)
      {
LABEL_167:
        v28 = &unk_1007D4E9E;
        goto LABEL_206;
      }

      goto LABEL_215;
    case 7:
      switch(a2)
      {
        case 0:
          if (a3 > 11)
          {
            if ((a3 - 998) >= 2)
            {
              if (a3 == 13)
              {
                v28 = &unk_1007E4636;
              }

              else
              {
                if (a3 != 12)
                {
                  break;
                }

                v28 = &unk_1007DF3AE;
              }

              goto LABEL_206;
            }
          }

          else if (a3 >= 0xB)
          {
            if (a3 != 11)
            {
              break;
            }

            v28 = &unk_1007DA126;
            goto LABEL_206;
          }

          v28 = &unk_1007E98BE;
          goto LABEL_206;
        case 1:
          if (a3 > 11)
          {
            if ((a3 - 998) < 2)
            {
              goto LABEL_195;
            }

            if (a3 == 13)
            {
              v28 = &unk_1007F9056;
            }

            else
            {
              if (a3 != 12)
              {
                break;
              }

              v28 = &unk_1007F3DCE;
            }
          }

          else
          {
            if (a3 < 0xB)
            {
LABEL_195:
              v28 = &unk_1007FE2DE;
              goto LABEL_206;
            }

            if (a3 != 11)
            {
              break;
            }

            v28 = &unk_1007EEB46;
          }

LABEL_206:
          sub_1004728B0(&v36, v28);
          break;
        case 2:
          v20 = "false";
          v21 = 611;
          goto LABEL_362;
      }

LABEL_215:
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 1065353216;
      *(a4 + 40) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 96) = 0;
      if (&v43 != a4)
      {
        *(a4 + 32) = v45;
        sub_100473680(a4, v44, 0);
      }

      if (v42)
      {
        sub_1004732C4(a4 + 40, &v40);
      }

      if (v39)
      {
        sub_100473324(a4 + 72, &v37);
      }

      sub_10022E1CC(&v37, v38);
      sub_10022E1CC(&v40, v41);
      return sub_10022E230(&v43);
    case 8:
      if (!a2)
      {
        if (a3 > 11)
        {
          if ((a3 - 998) >= 2)
          {
            if (a3 == 13)
            {
              v28 = &unk_10080DA76;
            }

            else
            {
              if (a3 != 12)
              {
                goto LABEL_215;
              }

              v28 = &unk_1008087EE;
            }

            goto LABEL_206;
          }
        }

        else if (a3 >= 0xB)
        {
          if (a3 != 11)
          {
            goto LABEL_215;
          }

          v28 = &unk_100803566;
          goto LABEL_206;
        }

        v28 = &unk_100812CFE;
        goto LABEL_206;
      }

      if (a2 == 1)
      {
        if (a3 > 11)
        {
          if ((a3 - 998) >= 2)
          {
            if (a3 == 13)
            {
              v28 = &unk_100822496;
            }

            else
            {
              if (a3 != 12)
              {
                goto LABEL_215;
              }

              v28 = &unk_10081D20E;
            }

            goto LABEL_206;
          }
        }

        else if (a3 >= 0xB)
        {
          if (a3 != 11)
          {
            goto LABEL_215;
          }

          v28 = &unk_100817F86;
          goto LABEL_206;
        }

        v28 = &unk_10082771E;
        goto LABEL_206;
      }

      if (a2 != 2)
      {
        goto LABEL_215;
      }

      v20 = "false";
      v21 = 682;
      goto LABEL_362;
    case 9:
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 == 2)
          {
            v20 = "false";
            v21 = 753;
            goto LABEL_362;
          }

          goto LABEL_215;
        }

        if (a3 > 11)
        {
          if ((a3 - 998) >= 2)
          {
            if (a3 == 13)
            {
              v28 = &unk_10084B8D6;
            }

            else
            {
              if (a3 != 12)
              {
                goto LABEL_215;
              }

              v28 = &unk_10084664E;
            }

            goto LABEL_206;
          }
        }

        else if (a3 >= 0xB)
        {
          if (a3 != 11)
          {
            goto LABEL_215;
          }

          v28 = &unk_1008413C6;
          goto LABEL_206;
        }

        v28 = &unk_100850B5E;
        goto LABEL_206;
      }

      if (a3 > 11)
      {
        if ((a3 - 998) >= 2)
        {
          if (a3 == 13)
          {
            v28 = &unk_100836EB6;
          }

          else
          {
            if (a3 != 12)
            {
              goto LABEL_215;
            }

            v28 = &unk_100831C2E;
          }

          goto LABEL_206;
        }
      }

      else if (a3 >= 0xB)
      {
        if (a3 != 11)
        {
          goto LABEL_215;
        }

        v28 = &unk_10082C9A6;
        goto LABEL_206;
      }

      v28 = &unk_10083C13E;
      goto LABEL_206;
    case 10:
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 == 2)
          {
            v20 = "false";
            v21 = 824;
            goto LABEL_362;
          }

          goto LABEL_215;
        }

        if (a3 > 11)
        {
          if ((a3 - 998) >= 2)
          {
            if (a3 == 13)
            {
              v28 = &unk_100874D16;
            }

            else
            {
              if (a3 != 12)
              {
                goto LABEL_215;
              }

              v28 = &unk_10086FA8E;
            }

            goto LABEL_206;
          }
        }

        else if (a3 >= 0xB)
        {
          if (a3 != 11)
          {
            goto LABEL_215;
          }

          v28 = &unk_10086A806;
          goto LABEL_206;
        }

        v28 = &unk_100879F9E;
        goto LABEL_206;
      }

      if (a3 > 11)
      {
        if ((a3 - 998) >= 2)
        {
          if (a3 == 13)
          {
            v28 = &unk_1008602F6;
          }

          else
          {
            if (a3 != 12)
            {
              goto LABEL_215;
            }

            v28 = &unk_10085B06E;
          }

          goto LABEL_206;
        }
      }

      else if (a3 >= 0xB)
      {
        if (a3 != 11)
        {
          goto LABEL_215;
        }

        v28 = &unk_100855DE6;
        goto LABEL_206;
      }

      v28 = &unk_10086557E;
      goto LABEL_206;
    case 11:
      v22 = &unk_10087F226;
      if (a3 >= 0xE && (a3 - 998) > 1)
      {
        goto LABEL_215;
      }

      goto LABEL_93;
    case 12:
      v22 = &unk_100881B6E;
      goto LABEL_92;
    case 13:
      v22 = &unk_1008844B6;
      goto LABEL_92;
    case 14:
      v22 = &unk_100886DFE;
LABEL_92:
      if (a3 >= 0xE && (a3 - 998) >= 2)
      {
        goto LABEL_215;
      }

      goto LABEL_93;
    case 15:
      sub_100472A18(&v36, &unk_1005746F0);
      sub_100472AD4(&v35, &unk_1005888B8);
      v27 = &unk_1005889EC;
      goto LABEL_211;
    case 16:
      sub_100472A18(&v36, &unk_100588C7A);
      sub_100472AD4(&v35, &unk_10059CE42);
      v27 = &unk_10059CF76;
      goto LABEL_211;
    case 17:
    case 23:
      v5 = 0;
      v6 = &unk_10065EE6D;
      do
      {
        v7 = v6;
        v8 = 10296;
        do
        {
          v48[0] = &unk_10065EE6C + v5;
          v9 = sub_100473384(v36, &unk_10065EE6C + v5);
          v48[0] = v7;
          sub_10045A9A8((v9 + 3), v48);
          v7 += 33;
          v8 -= 33;
        }

        while (v8);
        v5 += 10297;
        v6 += 10297;
      }

      while (v5 != 82376);
      v10 = 0;
      v11 = &unk_100673035;
      do
      {
        v46 = 0;
        v47 = byte_100673034[v10];
        v12 = v11;
        v13 = 76;
        do
        {
          v48[0] = &v46;
          v14 = sub_1004735E0(&v40, &v46);
          v48[0] = v12;
          sub_10045A9A8(v14 + 40, v48);
          v12 += 38;
          v13 -= 38;
        }

        while (v13);
        v10 += 77;
        v11 += 77;
      }

      while (v10 != 308);
      v15 = 0;
      v16 = &unk_100673169;
      do
      {
        v46 = 0;
        v47 = byte_100673168[v15];
        v17 = v16;
        v18 = 108;
        do
        {
          v48[0] = &v46;
          v19 = sub_1004735E0(&v37, &v46);
          v48[0] = v17;
          sub_10045A9A8(v19 + 40, v48);
          v17 += 18;
          v18 -= 18;
        }

        while (v18);
        v15 += 109;
        v16 += 109;
      }

      while (v15 != 654);
      goto LABEL_215;
    case 18:
      sub_100472A18(&v36, &unk_1006733F6);
      sub_100472AD4(&v35, &unk_1006875BE);
      v27 = &unk_1006876F2;
      goto LABEL_211;
    case 19:
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_215;
          }

          v20 = "false";
          v21 = 971;
          goto LABEL_362;
        }

        sub_100472A18(&v36, &unk_1005B178E);
        sub_100472AD4(&v35, &unk_1005C5956);
        v27 = &unk_1005C5A8A;
      }

      else
      {
        sub_100472A18(&v36, &unk_10059D204);
        sub_100472AD4(&v35, &unk_1005B13CC);
        v27 = &unk_1005B1500;
      }

LABEL_211:
      sub_100472B88(&v34, v27);
      goto LABEL_215;
    case 20:
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_215;
          }

          v20 = "false";
          v21 = 999;
          goto LABEL_362;
        }

        sub_100472A18(&v36, &unk_1005DA2A2);
        sub_100472AD4(&v35, &unk_1005EE46A);
        v27 = &unk_1005EE59E;
      }

      else
      {
        sub_100472A18(&v36, &unk_1005C5D18);
        sub_100472AD4(&v35, &unk_1005D9EE0);
        v27 = &unk_1005DA014;
      }

      goto LABEL_211;
    case 21:
      sub_100472A18(&v36, &unk_1005EE82C);
      sub_100472AD4(&v35, &unk_1006029F4);
      v27 = &unk_100602B28;
      goto LABEL_211;
    case 22:
      sub_100472A18(&v36, &unk_100602DB6);
      sub_100472AD4(&v35, &unk_100616F7E);
      v27 = &unk_1006170B2;
      goto LABEL_211;
    case 24:
      if (a2)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            goto LABEL_215;
          }

          v20 = "false";
          v21 = 1040;
          goto LABEL_362;
        }

        sub_100472A18(&v36, &unk_100617340);
        sub_100472C3C(&v33, &unk_10062B8D4);
        v29 = &unk_10062BA0C;
      }

      else
      {
        sub_100472A18(&v36, &unk_100617340);
        sub_100472C3C(&v33, &unk_10062B508);
        v29 = &unk_10062B640;
      }

LABEL_214:
      sub_100472CE4(&v32, v29);
      goto LABEL_215;
    case 25:
      sub_100472A18(&v36, &unk_10062BCA0);
      sub_100472C3C(&v33, &unk_10063FE68);
      v29 = &unk_10063FFA0;
      goto LABEL_214;
    case 26:
      switch(a2)
      {
        case 0:
          sub_100472A18(&v36, &unk_100640234);
          sub_100472C3C(&v33, &unk_1006543FC);
          v29 = &unk_100654534;
          goto LABEL_214;
        case 1:
          sub_100472A18(&v36, &unk_100640234);
          sub_100472C3C(&v33, &unk_1006547C8);
          v29 = &unk_100654900;
          goto LABEL_214;
        case 2:
          v20 = "false";
          v21 = 1073;
          goto LABEL_362;
      }

      goto LABEL_215;
    case 27:
      sub_100472D8C(&v36, &unk_100654B94);
      sub_100472E44(&v33, byte_10065EC7C);
      v24 = &unk_10065ED1C;
      goto LABEL_128;
    case 100:
      if (!a3)
      {
        v26 = &unk_100889746;
LABEL_146:
        sub_100472F70(&v36, v26);
        goto LABEL_215;
      }

      v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
      v21 = 1106;
      goto LABEL_362;
    case 101:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1111;
        goto LABEL_362;
      }

      v26 = &unk_10088ABEE;
      goto LABEL_146;
    case 102:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1116;
        goto LABEL_362;
      }

      v26 = &unk_10088C096;
      goto LABEL_146;
    case 103:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1121;
        goto LABEL_362;
      }

      v26 = &unk_10088D53E;
      goto LABEL_146;
    case 104:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1126;
        goto LABEL_362;
      }

      v26 = &unk_10088E9E6;
      goto LABEL_146;
    case 105:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1131;
        goto LABEL_362;
      }

      v26 = &unk_10088FE8E;
      goto LABEL_146;
    case 106:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1136;
        goto LABEL_362;
      }

      v26 = &unk_100891336;
      goto LABEL_146;
    case 107:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1141;
        goto LABEL_362;
      }

      v26 = &unk_1008927DE;
      goto LABEL_146;
    case 108:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1146;
        goto LABEL_362;
      }

      v23 = &unk_100893C86;
      goto LABEL_149;
    case 109:
      if (!a3)
      {
        v23 = &unk_100894D0E;
LABEL_149:
        sub_100473024(&v36, v23);
        goto LABEL_215;
      }

      v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
      v21 = 1151;
      goto LABEL_362;
    case 110:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1156;
        goto LABEL_362;
      }

      v23 = &unk_100895D96;
      goto LABEL_149;
    case 111:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1161;
        goto LABEL_362;
      }

      v23 = &unk_100896E1E;
      goto LABEL_149;
    case 112:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1166;
        goto LABEL_362;
      }

      v23 = &unk_100897EA6;
      goto LABEL_149;
    case 113:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1171;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_100687980);
      sub_1004730D8(&v35, &unk_100691A68);
      v25 = &unk_100691B04;
      goto LABEL_156;
    case 114:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1180;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_100691C4E);
      sub_1004730D8(&v35, &unk_10069BD36);
      v25 = &unk_10069BDD2;
      goto LABEL_156;
    case 115:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1189;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_10069BF1C);
      sub_1004730D8(&v35, &unk_1006A6004);
      v25 = &unk_1006A60A0;
      goto LABEL_156;
    case 116:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1198;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006A61EA);
      sub_1004730D8(&v35, &unk_1006B02D2);
      v25 = &unk_1006B036E;
      goto LABEL_156;
    case 117:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1207;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006B04B8);
      sub_1004730D8(&v35, &unk_1006BA5A0);
      v25 = &unk_1006BA63C;
      goto LABEL_156;
    case 118:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1216;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006BA786);
      sub_1004730D8(&v35, &unk_1006C486E);
      v25 = &unk_1006C490A;
      goto LABEL_156;
    case 119:
      if (!a3)
      {
        sub_100472D8C(&v36, &unk_1006C4A54);
        sub_1004730D8(&v35, &unk_1006CEB3C);
        v25 = &unk_1006CEBD8;
LABEL_156:
        sub_100473168(&v34, v25);
        goto LABEL_215;
      }

      v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
      v21 = 1225;
      goto LABEL_362;
    case 120:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1234;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006CED22);
      sub_1004730D8(&v35, &unk_1006D8E0A);
      v25 = &unk_1006D8EA6;
      goto LABEL_156;
    case 121:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1243;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006D8FF0);
      sub_1004730D8(&v35, &unk_1006E30D8);
      v25 = &unk_1006E3174;
      goto LABEL_156;
    case 122:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1252;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006E32BE);
      sub_100472E44(&v33, byte_1006ED3A6);
      v24 = &unk_1006ED446;
      goto LABEL_128;
    case 123:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1264;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006ED596);
      sub_100472E44(&v33, byte_1006F767E);
      v24 = &unk_1006F771E;
      goto LABEL_128;
    case 124:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1274;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_1006F786E);
      sub_100472E44(&v33, byte_100701956);
      v24 = &unk_1007019F6;
      goto LABEL_128;
    case 125:
      if (!a3)
      {
        sub_100472D8C(&v36, &unk_100701B46);
        sub_100472E44(&v33, byte_10070BC2E);
        v24 = &unk_10070BCCE;
LABEL_128:
        sub_100472EC8(&v32, v24);
        goto LABEL_215;
      }

      v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
      v21 = 1285;
      goto LABEL_362;
    case 126:
      if (a3)
      {
        v20 = "accessoryType == AccessoryType::NO_ACCESSORY";
        v21 = 1297;
        goto LABEL_362;
      }

      sub_100472D8C(&v36, &unk_10070BE1E);
      sub_100472E44(&v33, byte_100715F06);
      v24 = &unk_100715FA6;
      goto LABEL_128;
    default:
      goto LABEL_215;
  }
}

void sub_100472868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void *);
  v16 = va_arg(va2, void);
  sub_100459D64(v7);
  sub_10022E1CC(va, v11);
  sub_10022E1CC(va1, v15);
  sub_10022E230(va2);
  _Unwind_Resume(a1);
}

void sub_1004728B0(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 2640;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 2641;
    v5 += 2641;
  }

  while (v4 != 21128);
}

void sub_100472964(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 1320;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 1321;
    v5 += 1321;
  }

  while (v4 != 10568);
}

void sub_100472A18(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 10296;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 10297;
    v5 += 10297;
  }

  while (v4 != 82376);
}

void sub_100472AD4(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    v10[0] = 0;
    v10[1] = *(a2 + v4);
    v6 = v5;
    v7 = 76;
    do
    {
      v8 = *a1;
      v11 = v10;
      v9 = sub_1004735E0(v8, v10);
      v11 = v6;
      sub_10045A9A8(v9 + 40, &v11);
      v6 += 38;
      v7 -= 38;
    }

    while (v7);
    v4 += 77;
    v5 += 77;
  }

  while (v4 != 308);
}

void sub_100472B88(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    v10[0] = 0;
    v10[1] = *(a2 + v4);
    v6 = v5;
    v7 = 108;
    do
    {
      v8 = *a1;
      v11 = v10;
      v9 = sub_1004735E0(v8, v10);
      v11 = v6;
      sub_10045A9A8(v9 + 40, &v11);
      v6 += 18;
      v7 -= 18;
    }

    while (v7);
    v4 += 109;
    v5 += 109;
  }

  while (v4 != 654);
}

void sub_100472C3C(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = v5;
    v7 = 76;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_1004735E0(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8(v9 + 40, &v10);
      v6 += 38;
      v7 -= 38;
    }

    while (v7);
    v4 += 78;
    v5 += 78;
  }

  while (v4 != 312);
}

void sub_100472CE4(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = v5;
    v7 = 108;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_1004735E0(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8(v9 + 40, &v10);
      v6 += 18;
      v7 -= 18;
    }

    while (v7);
    v4 += 110;
    v5 += 110;
  }

  while (v4 != 660);
}

void sub_100472D8C(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 5148;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 5149;
    v5 += 5149;
  }

  while (v4 != 41192);
}

void sub_100472E44(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = 160;
  do
  {
    v5 = *a1;
    v7 = a2;
    v6 = sub_1004735E0(v5, a2);
    v7 = a2 + 2;
    sub_10045A9A8(v6 + 40, &v7);
    a2 += 40;
    v4 -= 40;
  }

  while (v4);
}

void sub_100472EC8(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = v5;
    v7 = 54;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_1004735E0(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8(v9 + 40, &v10);
      v6 += 18;
      v7 -= 18;
    }

    while (v7);
    v4 += 56;
    v5 += 56;
  }

  while (v4 != 336);
}

void sub_100472F70(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 660;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 661;
    v5 += 661;
  }

  while (v4 != 5288);
}

void sub_100473024(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 528;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 529;
    v5 += 529;
  }

  while (v4 != 4232);
}

void sub_1004730D8(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + 1);
  v4 = 156;
  do
  {
    v7[0] = 0;
    v7[1] = *(v3 - 1);
    v5 = *a1;
    v8 = v7;
    v6 = sub_1004735E0(v5, v7);
    v8 = v3;
    sub_10045A9A8(v6 + 40, &v8);
    v3 += 39;
    v4 -= 39;
  }

  while (v4);
}

void sub_100473168(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    v10[0] = 0;
    v10[1] = *(a2 + v4);
    v6 = v5;
    v7 = 54;
    do
    {
      v8 = *a1;
      v11 = v10;
      v9 = sub_1004735E0(v8, v10);
      v11 = v6;
      sub_10045A9A8(v9 + 40, &v11);
      v6 += 18;
      v7 -= 18;
    }

    while (v7);
    v4 += 55;
    v5 += 55;
  }

  while (v4 != 330);
}

void sub_10047321C(void **a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = v5;
    v7 = 396;
    do
    {
      v8 = *a1;
      v10 = a2 + v4;
      v9 = sub_100473384(v8, (a2 + v4));
      v10 = v6;
      sub_10045A9A8((v9 + 3), &v10);
      v6 += 33;
      v7 -= 33;
    }

    while (v7);
    v4 += 397;
    v5 += 397;
  }

  while (v4 != 3176);
}

uint64_t sub_1004732C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_100473F0C(a1, *a2, (a2 + 8));
    }
  }

  else
  {
    sub_10045DDA0(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_100473324(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_100474228(a1, *a2, (a2 + 8));
    }
  }

  else
  {
    sub_10045E2C4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t **sub_100473384(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1004735E0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *sub_10045E110(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_100473680(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v13[0] = v8 + 2;
        v13[1] = v8 + 3;
        sub_1004737A8(v13, (v4 + 2));
        v10 = *v8;
        v11 = *(v8 + 16);
        v8[1] = v11;
        v12 = sub_100473924(a1, v11, v8 + 16);
        sub_100473A84(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_10022E26C(a1, v10);
  }

  if (v4 != a3)
  {
    sub_100473DD8();
  }
}

void sub_100473778(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10022E26C(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_1004737A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != (a2 + 8))
  {
    sub_1004737F8(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *sub_1004737F8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10026AB58(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_100473924(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_100473B6C(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_100473A84(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_100473B6C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100473C5C(a1, prime);
    }
  }
}

void sub_100473C5C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100013B04();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100473E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_10045DCD0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100473EF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10045DCD0(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_100473F0C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_10018A270(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 5);
          sub_10047409C(v16, (v9 + 4));
          v10 = sub_1004740F0(v5, v16, v15 + 32);
          sub_100036FC8(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_10018A270(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100474154(&v13);
  }

  if (a2 != a3)
  {
    sub_1004741AC();
  }

  return result;
}

void sub_100474088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100474154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10047409C(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  if (v3 != (a2 + 8))
  {
    sub_1004737F8(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

void *sub_1004740F0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  v3 = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v3 = v4;
        v7 = *(v4 + 32);
        if (v6 >= v7 && (v7 < v6 || a3[1] >= *(v4 + 33)))
        {
          break;
        }

        v4 = *v4;
        v8 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v8 = v3 + 1;
  }

  else
  {
    v8 = v3;
  }

LABEL_11:
  *a2 = v3;
  return v8;
}

uint64_t sub_100474154(uint64_t a1)
{
  sub_10022E1CC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10022E1CC(*a1, v2);
  }

  return a1;
}

void sub_100474204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_10045E1F4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_100474228(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_10018A270(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 5);
          sub_10047409C(v16, (v9 + 4));
          v10 = sub_1004740F0(v5, v16, v15 + 32);
          sub_100036FC8(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_10018A270(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100474154(&v13);
  }

  if (a2 != a3)
  {
    sub_1004743B8();
  }

  return result;
}

void sub_1004743A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100474154(va);
  _Unwind_Resume(a1);
}

void sub_100474410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_10045E1F4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100474434(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = atomic_load((a1 + 1177));
  if (v9)
  {

    sub_100005D28("packetReceived: ignoring packet because fIgnorePacketsUntilFirmwareDownloaded == true", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v10 = a3;
    if (*(a1 + 1176) == 1)
    {
      std::mutex::lock((a1 + 8));
      if (v10)
      {
        sub_1004751E8((a1 + 72), a2);
      }

      else
      {
        sub_10047528C(a1 + 72, a2);
      }

      std::mutex::unlock((a1 + 8));
    }

    else
    {
      v13 = sub_10046F8E0(a2);
      v14 = sub_10046F8B8(v13);
      v55 = v14;
      v56 = WORD2(v14);
      if (sub_100426878(*(a1 + 1180), 5))
      {
        sub_100193120(v50);
        v15 = sub_10000EA44(&v51, "===========", 11);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(&v48, &std::ctype<char>::id);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(&v48);
        std::ostream::put();
        std::ostream::flush();
        v17 = sub_10000EA44(&v51, "RX Packet:", 10);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(&v48, &std::ctype<char>::id);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v48);
        std::ostream::put();
        std::ostream::flush();
        v19 = v51;
        v20 = &v51 + *(v51 - 24);
        if (*(v20 + 36) == -1)
        {
          std::ios_base::getloc((&v51 + *(v51 - 24)));
          v21 = std::locale::use_facet(&v48, &std::ctype<char>::id);
          (v21->__vftable[2].~facet_0)(v21, 32);
          std::locale::~locale(&v48);
          v19 = v51;
        }

        *(v20 + 36) = 48;
        *(&v51 + *(v19 - 24) + 8) = *(&v51 + *(v19 - 24) + 8) & 0xFFFFFFB5 | 8;
        v22 = sub_10000EA44(&v51, "Message Type: ", 14);
        *(v22 + *(*v22 - 24) + 24) = 2;
        std::ostream::operator<<();
        v23 = sub_10000EA44(&v51, " Group ID: ", 11);
        *(v23 + *(*v23 - 24) + 24) = 2;
        std::ostream::operator<<();
        v24 = sub_10000EA44(&v51, " Message ID: ", 13);
        *(v24 + *(*v24 - 24) + 24) = 2;
        v25 = std::ostream::operator<<();
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(&v48, &std::ctype<char>::id);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v48);
        std::ostream::put();
        std::ostream::flush();
        std::stringbuf::str();
        v27 = *a2;
        v28 = a2[1];
        sub_100004A08(__p, "===========\n");
        sub_10046FF5C(&v48, v27, v28 - v27, 4u, __p);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v48.__locale_);
        }

        v51 = v29;
        if (v54 < 0)
        {
          operator delete(v53[7].__locale_);
        }

        std::locale::~locale(v53);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      if (sub_10042630C(&v55))
      {
        v37 = sub_100426320(&v55);
        switch(v37)
        {
          case 3:
            if (v10)
            {
              sub_100428B48("Unexpected event received", v38, v39, v40, v41, v42, v43, v44, v45);
            }

            sub_1004753FC(a1, &v55, a2);
            break;
          case 2:
            if ((v10 & 1) == 0)
            {
              sub_100428B48("Unexpected response received", v38, v39, v40, v41, v42, v43, v44, v45);
            }

            sub_100475340(a1, &v55, a2);
            break;
          case 1:
            sub_100428B48("Packet received with unexpected message type 0x%02x (command), groupId 0x%02x, messageId 0x%02x", v38, v39, v40, v41, v42, v43, v44, v55);
            break;
          default:
            sub_100428B48("Packet received with unknown message type 0x%02x, groupId 0x%02x, messageId 0x%02x, isResponse %u", v38, v39, v40, v41, v42, v43, v44, v55);
            break;
        }
      }

      else
      {
        sub_100428B48("Packet received with unknown message type 0x%02x, groupId 0x%02x, messageId 0x%02x", v30, v31, v32, v33, v34, v35, v36, v55);
      }
    }
  }
}

void sub_100474B64(std::mutex *this)
{
  sig = this[2].__m_.__sig;
  if (sig)
  {
    *this[2].__m_.__opaque = sig;
    operator delete(sig);
  }

  v3 = *&this[1].__m_.__opaque[32];
  if (v3)
  {
    *&this[1].__m_.__opaque[40] = v3;
    operator delete(v3);
  }

  v4 = *this[1].__m_.__opaque;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::mutex::~mutex(this);
}

void sub_100474BC4(std::mutex *this)
{
  v2 = *this[1].__m_.__opaque;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::mutex::~mutex(this);
}

void sub_100474C04(uint64_t a1)
{
  *a1 = off_1009ACA88;
  *(a1 + 8) = 850045863;
  *(a1 + 120) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 232) = 850045863;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 281) = 0u;
  sub_100004A08(&__p, "RoseCommunicationMgrQueue");
  sub_10041CF2C(a1 + 304, &__p);
}

void sub_100474EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_10026B834(va);
  sub_10026B684(va1);
  sub_100426184((v8 + 968));
  sub_10042A9CC(v12);
  sub_100474B64((v8 + 600));
  sub_100474BC4((v8 + 504));
  sub_10041CFB0(v8 + 304);
  std::mutex::~mutex(v11);
  sub_10047B080((v8 + 184));
  std::mutex::~mutex(v10);
  sub_10047B54C((v8 + 72));
  std::mutex::~mutex(v9);
  _Unwind_Resume(a1);
}

void sub_100474F68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  JUMPOUT(0x100474F10);
}

void sub_100474F7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  JUMPOUT(0x100474F18);
}

void sub_100474F90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100474F20);
}

uint64_t sub_100474FB4(uint64_t a1)
{
  *a1 = off_1009ACA88;
  sub_1004750A4(a1);
  sub_10026B834(a1 + 1128);
  sub_10026B684(a1 + 1096);
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  sub_100426184((a1 + 968));
  sub_10042A9CC(a1 + 752);
  v2 = *(a1 + 728);
  if (v2)
  {
    *(a1 + 736) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 704);
  if (v3)
  {
    *(a1 + 712) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 672);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::mutex::~mutex((a1 + 600));
  v5 = *(a1 + 576);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::mutex::~mutex((a1 + 504));
  sub_10041CFB0(a1 + 304);
  std::mutex::~mutex((a1 + 232));
  sub_10047B080((a1 + 184));
  std::mutex::~mutex((a1 + 120));
  sub_10047B54C((a1 + 72));
  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_1004750A4(uint64_t a1)
{
  sub_100468B94(a1 + 1040);
  sub_100429514(a1 + 752);
  v2 = *(a1 + 1192);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 1192) = 0;
  }

  *(a1 + 296) = 0;
}

void sub_1004750EC(uint64_t a1)
{
  sub_100474FB4(a1);

  operator delete();
}

uint64_t sub_100475124(uint64_t a1, char a2, char a3)
{
  if (*(a1 + 296))
  {
    return 1;
  }

  v8 = dispatch_queue_create("RoseQueue", 0);
  *(a1 + 1192) = v8;
  if (!v8)
  {
    v16 = "failed to create dispatch queue";
LABEL_12:
    sub_100428B48(v16, v9, v10, v11, v12, v13, v14, v15, v3);
    return 0;
  }

  if ((sub_100466E40(a1 + 1040, v8, a2, a3) & 1) == 0)
  {
    v16 = "Failed to connect to rose debug manager";
    goto LABEL_12;
  }

  if ((sub_100429114(a1 + 752, *(a1 + 1192), v10, v11, v12, v13, v14, v15) & 1) == 0)
  {
    v16 = "Failed to connect to rose service";
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
    sub_10042A70C(a1 + 752, v9, v10, v11, v12, v13, v14, v15);
  }

  result = 1;
  *(a1 + 296) = 1;
  return result;
}

int64x2_t sub_1004751E8(int64x2_t *a1, uint64_t *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_10047B6A8(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0xAA));
  v7 = *v6 + 24 * (v4 % 0xAA);
  if (a1[1].i64[0] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 4080;
  }

  *(v8 - 24) = 0;
  *(v8 - 16) = 0;
  v9 = v8 - 24;
  *(v9 + 16) = 0;
  sub_100009A48(v9, *a2, a2[1], a2[1] - *a2);
  result = vaddq_s64(a1[2], xmmword_100571410);
  a1[2] = result;
  return result;
}

uint64_t sub_10047528C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 170 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10047B8F8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xAA)) + 24 * (v8 % 0xAA));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  result = sub_100009A48(v9, *a2, a2[1], a2[1] - *a2);
  ++*(a1 + 40);
  return result;
}

void sub_100475340(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  std::mutex::lock((a1 + 120));
  v6 = *a2;
  v7 = *(a2 + 4);
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_100009A48(&__p, *a3, a3[1], a3[1] - *a3);
  sub_10047BACC(a1 + 184, &v6);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 120));
}

void sub_1004753D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v11 + 120));
  _Unwind_Resume(a1);
}

void sub_1004753FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_100426878(*(a1 + 1180), 5))
  {
    v51 = *(a2 + 2);
    sub_100005D28("got event packet with groupID 0x%02x, message ID 0x%02x", v6, v7, v8, v9, v10, v11, v12, *(a2 + 1));
  }

  v13 = *(a2 + 2);
  if (v13 == 515)
  {
    LOWORD(__dst) = 0;
    v53 = 0;
    sub_10046F95C((*a3 + 4), 2uLL, &__dst, 1);
    sub_10046F95C((*a3 + 6), 2uLL, &v53 + 2, 1);
    sub_10046F95C((*a3 + 8), 2uLL, &v53, 1);
    sub_100005D28("Range Complete Event: status (0x%04x), session (%d), reason (0x%04x)", v14, v15, v16, v17, v18, v19, v20, __dst);
    if (v53 <= 0x10u)
    {
      if (v53 == 15)
      {
        v28 = "Range Complete Event occurred for reason LOCAL_SESSION_REMOVAL_SUCCESS";
        goto LABEL_26;
      }

      if (v53 == 16)
      {
        v28 = "Range Complete Event occurred for reason LOCAL_SESSION_DISABLE_SUCCESS";
        goto LABEL_26;
      }
    }

    else
    {
      switch(v53)
      {
        case 0x11u:
          v28 = "Range Complete Event occurred for reason SESSION_COMPLETED";
          goto LABEL_26;
        case 0x12u:
          v28 = "Range Complete Event occurred for reason SESSION_ALREADY_ACTIVE";
          goto LABEL_26;
        case 0x13u:
          v28 = "Range Complete Event occurred for reason SESSION_ALREADY_DISABLED";
LABEL_26:
          sub_100005D28(v28, v21, v22, v23, v24, v25, v26, v27, v50);
          goto LABEL_34;
      }
    }

    sub_100428B48("Range Complete Event occurred for reason (0x%04x)", v21, v22, v23, v24, v25, v26, v27, v53);
    goto LABEL_34;
  }

  if (*(a2 + 1) == 2)
  {
    if (v13 == 144)
    {
      HIWORD(v53) = 0;
      __dst = 0;
      sub_10046F95C((*a3 + 4), 2uLL, &v53 + 2, 1);
      sub_10046F95C((*a3 + 6), 8uLL, &__dst, 1);
      if (HIWORD(v53) || __dst || !*(a1 + 1184))
      {
        sub_100428B48("Factory FDR Trust Evaluation Complete Event: status (0x%04x), trust evaluation error (0x%016llx)", v43, v44, v45, v46, v47, v48, v49, HIWORD(v53));
        goto LABEL_34;
      }

      sub_100005D28("Factory FDR Trust Evaluation Complete Event: status (0x%04x), trust evaluation error (0x%016llx)", v43, v44, v45, v46, v47, v48, v49, 0);
    }

    else
    {
      if (v13 != 128)
      {
        goto LABEL_34;
      }

      LOWORD(__dst) = 0;
      HIWORD(v53) = 0;
      sub_10046F95C((*a3 + 4), 2uLL, &__dst, 1);
      sub_10046F95C((*a3 + 6), 2uLL, &v53 + 2, 1);
      if (__dst || HIWORD(v53) != 32 || !*(a1 + 1184))
      {
        sub_100428B48("Factory Command Complete Event: status (0x%04x), completed command OID (0x%x)", v36, v37, v38, v39, v40, v41, v42, __dst);
        goto LABEL_34;
      }

      sub_100005D28("Factory Command Complete Event: status (0x%04x), completed command OID (0x%x)", v36, v37, v38, v39, v40, v41, v42, 0);
    }

LABEL_38:
    dispatch_semaphore_signal(*(a1 + 1184));
    return;
  }

  if (*(a2 + 1) || v13 != 525)
  {
    goto LABEL_34;
  }

  LOWORD(__dst) = 0;
  sub_10046F95C((*a3 + 4), 2uLL, &__dst, 1);
  if (!__dst && *(a1 + 1184))
  {
    sub_100005D28("UWB Init Done Event: status (0x%04x)", v29, v30, v31, v32, v33, v34, v35, 0);
    goto LABEL_38;
  }

  sub_100428B48("UWB Init Done Event: status (0x%04x)", v29, v30, v31, v32, v33, v34, v35, __dst);
LABEL_34:
  sub_10041E86C((a1 + 600), a2, a3, v8, v9, v10, v11, v12);
}

BOOL sub_1004756D4(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 120));
  v4 = *(a1 + 224);
  if (v4)
  {
    v5 = *(*(a1 + 192) + ((*(a1 + 216) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 216) & 0x7FLL);
    v6 = *v5;
    *(a2 + 4) = *(v5 + 4);
    *a2 = v6;
    if (v5 != a2)
    {
      sub_1000134D0((a2 + 8), *(v5 + 8), *(v5 + 16), *(v5 + 16) - *(v5 + 8));
    }

    sub_10047BD58((a1 + 184));
  }

  std::mutex::unlock((a1 + 120));
  return v4 != 0;
}

double sub_100475784@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v21 = 0;
  v20 = 0;
  __p[1] = 0;
  v23 = 0;
  __p[0] = 0;
  do
  {
    if (sub_1004756D4(a1, &v20))
    {
      if (HIWORD(v20) == a2 && BYTE1(v20) == a3)
      {
        *a5 = v20;
        *(a5 + 4) = v21;
        result = *__p;
        *(a5 + 8) = *__p;
        *(a5 + 24) = v23;
        *(a5 + 32) = 1;
        return result;
      }

      sub_100428B48("waitForResponse: unexpected response at front of responseQueue: expected groupID %02x messageID %02x, got groupID %02x messageID %02x", v10, v11, v12, v13, v14, v15, v16, a3);
    }

    if (a4 >= 10)
    {
      v18 = 10;
    }

    else
    {
      v18 = a4;
    }

    if (a4 < 1)
    {
      break;
    }

    __ns.__rep_ = (1000000 * v18);
    std::this_thread::sleep_for (&__ns);
    a4 -= v18;
  }

  while (a4 >= 0);
  sub_100428B48("Timed out waiting for response: groupID %02x messageId %02x", v10, v11, v12, v13, v14, v15, v16, a3);
  *a5 = 0;
  *(a5 + 32) = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return result;
}

void sub_1004758B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004758D4(uint64_t a1, void *a2)
{
  sub_100475974(a1, a2, 2000, v10);
  v8 = v12;
  if (v12 == 1)
  {
    sub_10046105C(a1 + 504, v10, __p, v3, v4, v5, v6, v7);
    if (v12)
    {
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return v8;
}

void sub_10047594C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100475974(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = a2[1];
    if (v7 > 0x1F)
    {
      goto LABEL_9;
    }

    __dst = 0u;
    v14 = 0u;
    a2 = *a2;
    if (v7)
    {
LABEL_4:
      memmove(&__dst, a2, v7);
    }
  }

  else
  {
    if (v7 >= 0x20)
    {
LABEL_9:
      *a4 = 0;
      a4[32] = 0;
      return;
    }

    __dst = 0u;
    v14 = 0u;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  if (sub_10047028C(&__dst, v12))
  {
    goto LABEL_9;
  }

  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v12, 0x24uLL, 0, v8, v9, v10, v11))
  {
    *a4 = 0;
    a4[32] = 0;
  }

  else
  {
    sub_100475784(a1, 0, 0, a3, a4);
  }

  std::mutex::unlock((a1 + 232));
}

void sub_100475AA0(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_100475974(a1, a2, 2000, v4);
  if (v6 == 1 && !sub_10042640C(v4))
  {
    if (v6)
    {
      sub_100461FC8(v5);
    }

    sub_1000195BC();
  }

  *a3 = 0;
  a3[112] = 0;
  if (v6 == 1)
  {
    if (v5[0])
    {
      v5[1] = v5[0];
      operator delete(v5[0]);
    }
  }
}

void sub_100475BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100019608(va);
  if (*(v2 - 24) == 1)
  {
    v4 = *(v2 - 48);
    if (v4)
    {
      *(v2 - 40) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100475C14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 296) & 1) == 0)
  {
    v18 = "connect to Rose before sending commands";
LABEL_15:
    sub_100428B48(v18, a2, a3, a4, a5, a6, a7, a8, v19);
    return 1;
  }

  if (!a2 || a3 - 49 <= 0xFFFFFFFFFFFFFFD2)
  {
    v19 = "sendRoseCommand";
    v18 = "%s: Invalid payload %zu";
    goto LABEL_15;
  }

  if (sub_100426878(*(a1 + 1180), 5))
  {
    sub_100193120(v24);
    v12 = sub_10000EA44(&v25, "===========", 11);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    v14 = sub_10000EA44(&v25, "TX Packet:", 10);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
    sub_100004A08(__p, "===========");
    sub_10046FF5C(&v22, a2, a3, 4u, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22.__locale_);
    }

    v25 = v16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  return sub_100429C44(a1 + 752, a2, a3, a4) ^ 1;
}

void sub_100475F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18.__locale_);
  }

  sub_100193C68(&a24);
  _Unwind_Resume(a1);
}

BOOL sub_100475FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("%s", a2, a3, a4, a5, a6, a7, a8, "sendRangeConfigCommand");
  *(v23 + 7) = 0;
  v23[0] = 0;
  v21 = 0;
  v22[0] = 0;
  *(v22 + 7) = 0;
  v15 = *a2;
  __p = 0;
  v18 = v15;
  v19 = *(a2 + 8);
  if (&v18 != a2)
  {
    sub_1001FBB44(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 1);
  }

  LODWORD(v23[0]) = *(a2 + 40);
  BYTE4(v23[0]) = *(a2 + 44);
  BYTE5(v23[0]) = *(a2 + 48);
  HIWORD(v23[0]) = *(a2 + 46);
  v16 = sub_1004760D0(a1, &v18, 2000, v10, v11, v12, v13, v14);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v16 == 0;
}

void sub_1004760B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004760D0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  sub_100005D28("%s", a2, a3, a4, a5, a6, a7, a8, "sendRangingConfigCommandPacket");
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v18 = *(sub_1000054A8() + 187);
  switch(v18)
  {
    case 0:
      sub_100428B48("RangingConfig unknown HSI version", v11, v12, v13, v14, v15, v16, v17, v45);
      goto LABEL_10;
    case 1:
      v19 = sub_100470364(a2, &v54, v12, v13, v14, v15, v16, v17);
      break;
    case 2:
      v19 = sub_100470574(a2, &v54, v12, v13, v14, v15, v16, v17);
      break;
    default:
LABEL_10:
      v27 = 1;
      goto LABEL_11;
  }

  v27 = v19;
  if (v19)
  {
    goto LABEL_11;
  }

  sub_100005D28("Sending RangingConfig command, session ID %hu", v20, v21, v22, v23, v24, v25, v26, *a2);
  v51[0] = 0;
  v53 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v54, (v55 - v54), 0, v28, v29, v30, v31))
  {
    sub_100428B48("RangingConfig response failed", v32, v33, v34, v35, v36, v37, v38, v46);
    std::mutex::unlock((a1 + 232));
    goto LABEL_10;
  }

  sub_100005D28("Ranging configured, session ID %hu", v32, v33, v34, v35, v36, v37, v38, *a2);
  sub_100475784(a1, 1, 0, v8, &v47);
  sub_10047B1C8(v51, &v47);
  if (v50 == 1 && __p)
  {
    v49 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v53 != 1)
  {
    goto LABEL_10;
  }

  sub_10046105C(a1 + 504, v51, v52, v40, v41, v42, v43, v44);
  if ((v53 & 1) != 0 && v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  v27 = 0;
LABEL_11:
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return v27;
}

void sub_100476280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if ((a19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004762D8(uint64_t a1, uint64_t a2)
{
  *v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  return sub_100476320(a1, v3, 2000) == 0;
}

uint64_t sub_100476320(uint64_t a1, char *a2, int a3)
{
  v13 = sub_1004707E8(a2, __dst);
  if (v13)
  {
    return v13;
  }

  sub_100005D28("Sending RangingEnable command, sessionID %hu", v6, v7, v8, v9, v10, v11, v12, *a2);
  v36[0] = 0;
  v38 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 0x16uLL, 0, v14, v15, v16, v17))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v13 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 2, 0, a3, &v32);
  sub_10047B1C8(v36, &v32);
  if (v35 == 1 && __p)
  {
    v34 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v38 != 1)
  {
    sub_100428B48("RangingEnable response failed", v18, v19, v20, v21, v22, v23, v24, v31);
    goto LABEL_10;
  }

  sub_100005D28("Ranging session enabled, sessionID %hu", v18, v19, v20, v21, v22, v23, v24, *a2);
  sub_10046105C(a1 + 504, v36, v37, v25, v26, v27, v28, v29);
  v13 = 0;
LABEL_11:
  if (v38 == 1 && v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  return v13;
}

void sub_100476494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_100020444(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004764E4(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return sub_100476524(a1, &v3, 2000) == 0;
}

uint64_t sub_100476524(uint64_t a1, char *a2, int a3)
{
  v13 = sub_1004708D4(a2, __dst);
  if (v13)
  {
    return v13;
  }

  sub_100005D28("Sending RangingDisable command, sessionID %hu", v6, v7, v8, v9, v10, v11, v12, *a2);
  v36[0] = 0;
  v38 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 7uLL, 0, v14, v15, v16, v17))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v13 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 3, 0, a3, &v32);
  sub_10047B1C8(v36, &v32);
  if (v35 == 1 && __p)
  {
    v34 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v38 != 1)
  {
    sub_100428B48("RangingDisable response failed", v18, v19, v20, v21, v22, v23, v24, v31);
    goto LABEL_10;
  }

  sub_100005D28("Ranging session disabled, sessionID %hu", v18, v19, v20, v21, v22, v23, v24, *a2);
  sub_10046105C(a1 + 504, v36, v37, v25, v26, v27, v28, v29);
  v13 = 0;
LABEL_11:
  if (v38 == 1 && v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  return v13;
}

BOOL sub_1004766A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("%s", a2, a3, a4, a5, a6, a7, a8, "sendTestNBAMMSRangeEnableCommand");
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 6);
  v15 = *(a2 + 10);
  v16 = *(a2 + 11);
  v20 = *(a2 + 13);
  v21 = *(a2 + 14);
  v22 = v21;
  v17 = *(a2 + 16);
  v23 = *(a2 + 22);
  v24 = *(a2 + 23);
  v18 = *(a2 + 18);
  v19 = *(a2 + 20);
  v25 = *(a2 + 25);
  v26 = *(a2 + 56);
  v27 = *(a2 + 32);
  v28 = *(a2 + 40);
  v29 = *(a2 + 44);
  v30 = *(a2 + 48);
  return sub_1004767CC(a1, &v11, 2000) == 0;
}

uint64_t sub_1004767CC(uint64_t a1, char *a2, uint64_t a3)
{
  v13 = sub_100470998(a2, __dst);
  if (v13)
  {
    return v13;
  }

  sub_100005D28("Sending test NMI range enable command, sessionID %hu", v6, v7, v8, v9, v10, v11, v12, *a2);
  v38[0] = 0;
  v40 = 0;
  std::mutex::lock((a1 + 232));
  v37 = 0;
  v13 = sub_100476A2C(a1, __dst, 0x56uLL, a3, &v37, v14, v15, v16);
  if (v13)
  {
    std::mutex::unlock((a1 + 232));
    goto LABEL_18;
  }

  v17 = v37;
  if (v37 >= 2)
  {
    do
    {
      sub_100475784(a1, 1, 4, a3, &v33);
      sub_10047B1C8(v38, &v33);
      if (v36 == 1 && __p)
      {
        v35 = __p;
        operator delete(__p);
      }
    }

    while (v17-- > 2);
    v37 = 1;
    goto LABEL_12;
  }

  if (v37 == 1)
  {
LABEL_12:
    sub_100475784(a1, 96, 0, a3, &v33);
    sub_10047B1C8(v38, &v33);
    if (v36 == 1 && __p)
    {
      v35 = __p;
      operator delete(__p);
    }
  }

  std::mutex::unlock((a1 + 232));
  if (v40 == 1)
  {
    sub_100005D28("Test NMI ranging session enabled, sessionID %hu", v19, v20, v21, v22, v23, v24, v25, *a2);
    sub_10046105C(a1 + 504, v38, v39, v26, v27, v28, v29, v30);
    v13 = 0;
  }

  else
  {
    sub_100428B48("TestNMIRangeEnable response failed", v19, v20, v21, v22, v23, v24, v25, v32);
    v13 = 1;
  }

LABEL_18:
  if (v40 == 1 && v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  return v13;
}

void sub_1004769BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100020444(exception_object);
}

uint64_t sub_100476A2C(uint64_t a1, const void *a2, size_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a5 = 0;
  if ((*(a1 + 296) & 1) == 0)
  {
    v34 = "connect to Rose before sending multi-part commands";
LABEL_29:
    sub_100428B48(v34, a2, a3, a4, a5, a6, a7, a8, v37);
    return 1;
  }

  if (!a2 || a3 - 137 <= 0xFFFFFFFFFFFFFFA7)
  {
    v37 = "sendRoseMultiPartCommand";
    v34 = "%s: Invalid payload %zu";
    goto LABEL_29;
  }

  v11 = a4;
  LOBYTE(v46[0]) = 0;
  sub_100025100(v54, a3);
  memmove(v54[0], a2, a3);
  sub_10046F9C0(v54, &v52);
  if (sub_100426878(*(a1 + 1180), 5))
  {
    sub_100193120(v46);
    v14 = sub_10000EA44(&v47, "==================", 18);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(&v44, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&v44);
    std::ostream::put();
    std::ostream::flush();
    v16 = sub_10000EA44(&v47, "TX Packet (orig):", 17);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v44, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v44);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
    sub_100004A08(__p, "==================");
    sub_10046FF5C(&v44, a2, a3, 4u, __p);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(v44.__locale_);
    }

    v47 = v18;
    if (v51 < 0)
    {
      operator delete(v50);
    }

    std::locale::~locale(v49);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  v19 = v52;
  v20 = v53;
  if (v52 == v53)
  {
    v33 = v52;
LABEL_32:
    v35 = 0;
    *a5 = -1431655765 * ((v33 - v19) >> 3);
  }

  else
  {
    v41 = (1000000 * v11);
    while (1)
    {
      if (sub_100426878(*(a1 + 1180), 5))
      {
        v25 = v13;
        v26 = v11;
        sub_100193120(v46);
        v27 = sub_10000EA44(&v47, "===================", 19);
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v28 = std::locale::use_facet(&v44, &std::ctype<char>::id);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(&v44);
        std::ostream::put();
        std::ostream::flush();
        v29 = sub_10000EA44(&v47, "TX Packet (split):", 18);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v44, &std::ctype<char>::id);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v44);
        std::ostream::put();
        std::ostream::flush();
        std::stringbuf::str();
        v31 = *v19;
        v32 = v19[1];
        sub_100004A08(__p, "===================");
        sub_10046FF5C(&v44, v31, (v32 - v31), 4u, __p);
        v11 = v26;
        v13 = v25;
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44.__locale_);
        }

        v46[0] = v40;
        *(v46 + *(v40 - 3)) = v39;
        v47 = v38;
        if (v51 < 0)
        {
          operator delete(v50);
        }

        std::locale::~locale(v49);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      if (sub_100475C14(a1, *v19, v19[1] - *v19, 0, v21, v22, v23, v24))
      {
        break;
      }

      if (v11)
      {
        v44.__locale_ = v41;
        std::this_thread::sleep_for (&v44);
      }

      v19 += 3;
      if (v19 == v20)
      {
        v19 = v52;
        v33 = v53;
        goto LABEL_32;
      }
    }

    v35 = 1;
  }

  v46[0] = &v52;
  sub_1001674A8(v46);
  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  return v35;
}

void sub_100477148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::locale a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25.__locale_);
  }

  sub_100193C68(&a31);
  a31 = v31 - 136;
  sub_1001674A8(&a31);
  v33 = *(v31 - 112);
  if (v33)
  {
    *(v31 - 104) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100477200(uint64_t a1, char **a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  if (&__p != a2)
  {
    sub_1000134D0(&__p, *a2, a2[1], a2[1] - *a2);
  }

  v3 = sub_100477298(a1, &__p, 2000);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3 == 0;
}

void sub_10047727C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100477298(uint64_t a1, _DWORD *a2, int a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = sub_100470C40(a2, &v23);
  if (!v5)
  {
    v20[0] = 0;
    v22 = 0;
    std::mutex::lock((a1 + 232));
    if (sub_100475C14(a1, v23, v24 - v23, 0, v6, v7, v8, v9))
    {
      std::mutex::unlock((a1 + 232));
LABEL_12:
      v5 = 1;
      goto LABEL_13;
    }

    sub_100475784(a1, 4, 0, a3, &v16);
    sub_10047B1C8(v20, &v16);
    if (v19 == 1 && __p)
    {
      v18 = __p;
      operator delete(__p);
    }

    std::mutex::unlock((a1 + 232));
    if (v22 != 1)
    {
      goto LABEL_12;
    }

    sub_10046105C(a1 + 504, v20, v21, v10, v11, v12, v13, v14);
    if ((v22 & 1) != 0 && v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }

    v5 = 0;
  }

LABEL_13:
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return v5;
}

void sub_1004773C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if ((a19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100477418(uint64_t a1@<X0>, char **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (&v22 != a2)
  {
    sub_1000134D0(&v22, *a2, a2[1], a2[1] - *a2);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  if (sub_100470C40(&v22, &__p))
  {
    goto LABEL_4;
  }

  v15[0] = 0;
  v18 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __p, v20 - __p, 0, v7, v8, v9, v10))
  {
    *a4 = 0;
    *(a4 + 24) = 0;
    std::mutex::unlock((a1 + 232));
  }

  else
  {
    sub_100475784(a1, 4, 0, a3, &v11);
    sub_10047B1C8(v15, &v11);
    if (v14 == 1 && v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    std::mutex::unlock((a1 + 232));
    if (v18 != 1)
    {
LABEL_4:
      *a4 = 0;
      *(a4 + 24) = 0;
      goto LABEL_7;
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sub_100009A48(a4, v16, v17, v17 - v16);
    *(a4 + 24) = 1;
    if ((v18 & 1) != 0 && v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

LABEL_7:
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_100477584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20)
{
  if ((a18 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004775F4(uint64_t a1, uint64_t *a2)
{
  memset(v2, 0, sizeof(v2));
  if (v2 != a2)
  {
    sub_10047BDD0(v2, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  sub_100477690();
}

void sub_100477674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100189A94(&a12);
  _Unwind_Resume(a1);
}

void sub_10047776C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026BCF8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100477780(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  if (v7 != a2)
  {
    sub_10047BDD0(v7, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  v5 = sub_10047782C(a1, v7, a3, 2000) == 0;
  v8 = v7;
  sub_100189A94(&v8);
  return v5;
}

void sub_100477810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100189A94(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10047782C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v7 = sub_100470D08(a2, &v21);
  if (!v7)
  {
    v18[0] = 0;
    v20 = 0;
    std::mutex::lock((a1 + 232));
    if (sub_100475C14(a1, v21, v22 - v21, 0, v8, v9, v10, v11))
    {
      std::mutex::unlock((a1 + 232));
LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

    sub_100475784(a1, 5, 0, a4, &v14);
    sub_10047B1C8(v18, &v14);
    if (v17 == 1 && __p)
    {
      v16 = __p;
      operator delete(__p);
    }

    std::mutex::unlock((a1 + 232));
    if (v20 != 1)
    {
      goto LABEL_12;
    }

    v12 = *(a3 + 24);
    if (!v12)
    {
      sub_100037B10();
    }

    v7 = (*(*v12 + 48))(v12, v18, v19);
    if ((v20 & 1) != 0 && v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }
  }

LABEL_13:
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v7;
}

void sub_100477984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if ((a19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    *(v19 - 48) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100477A04(uint64_t a1, char a2, int a3)
{
  v31 = a2;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __src = 17490;
  sub_100009838(&v28, 5uLL);
  v5 = sub_10046F95C(&__src, 4uLL, v28, 1);
  sub_10046F95C(&v31, 1uLL, v5, 1);
  v24[0] = 0;
  v26 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v28, v29 - v28, 0, v6, v7, v8, v9))
  {
    std::mutex::unlock((a1 + 232));
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  sub_100475784(a1, 82, 1, a3, &v20);
  sub_10047B1C8(v24, &v20);
  if (v23 == 1 && __p)
  {
    v22 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v26 != 1)
  {
    sub_100428B48("no response from Rose for log request", v10, v11, v12, v13, v14, v15, v16, v19);
    goto LABEL_9;
  }

  sub_10046105C(a1 + 504, v24, v25, v12, v13, v14, v15, v16);
  v17 = 0;
LABEL_10:
  if (v26 == 1 && v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v17;
}

void sub_100477B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if ((a19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 48);
  if (v21)
  {
    *(v19 - 40) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100477BF0(uint64_t a1, char *a2, int a3)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __src = 17492;
  sub_100009838(&v29, 6uLL);
  v6 = sub_10046F95C(&__src, 4uLL, v29, 1);
  v7 = sub_10046F95C(a2 + 1, 1uLL, v6, 1);
  sub_10046F95C(a2, 1uLL, v7, 1);
  v25[0] = 0;
  v27 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v29, v30 - v29, 0, v8, v9, v10, v11))
  {
    std::mutex::unlock((a1 + 232));
LABEL_9:
    v19 = 1;
    goto LABEL_10;
  }

  sub_100475784(a1, 84, 1, a3, &v21);
  sub_10047B1C8(v25, &v21);
  if (v24 == 1 && __p)
  {
    v23 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v27 != 1)
  {
    sub_100428B48("no response from Rose for log config", v12, v13, v14, v15, v16, v17, v18, v21);
    goto LABEL_9;
  }

  sub_10046105C(a1 + 504, v25, v26, v14, v15, v16, v17, v18);
  v19 = 0;
LABEL_10:
  if (v27 == 1 && v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v19;
}

void sub_100477D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if ((a18 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  v20 = *(v18 - 56);
  if (v20)
  {
    *(v18 - 48) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100477DC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = 0;
  valuePtr = 0;
  if ((*(a1 + 296) & 1) == 0)
  {
    sub_100428B48("connect to Rose before timesync", a2, a3, a4, a5, a6, a7, a8, v62);
    *a9 = 0;
    *(a9 + 16) = 0;
    return;
  }

  std::mutex::lock((a1 + 232));
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_100428B48("failed to create time dictionary", v11, v12, v13, v14, v15, v16, v17, v62);
LABEL_16:
    v61 = 0;
    *a9 = 0;
    goto LABEL_17;
  }

  if ((sub_100429F84(a1 + 752, Mutable, v12, v13, v14, v15, v16, v17) & 1) == 0)
  {
    sub_100428B48("timesync failed", v19, v20, v21, v22, v23, v24, v25, v62);
    CFRelease(Mutable);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(Mutable, @"rose_time");
  v34 = Value;
  if (!Value)
  {
    sub_100428B48("failed to get rose time entry", v27, v28, v29, v30, v31, v32, v33, v62);
    CFRelease(Mutable);
    goto LABEL_16;
  }

  v35 = CFGetTypeID(Value);
  if (v35 != CFNumberGetTypeID())
  {
    sub_100428B48("invalid type for rose time", v36, v37, v38, v39, v40, v41, v42, v62);
    CFRelease(Mutable);
    goto LABEL_16;
  }

  CFNumberGetValue(v34, kCFNumberLongLongType, &valuePtr);
  v43 = CFDictionaryGetValue(Mutable, @"continuous_time");
  v51 = v43;
  if (!v43)
  {
    sub_100428B48("unable to get continuous time entry", v44, v45, v46, v47, v48, v49, v50, v62);
    CFRelease(Mutable);
    goto LABEL_16;
  }

  v52 = CFGetTypeID(v43);
  if (v52 != CFNumberGetTypeID())
  {
    sub_100428B48("invalid type for mach time", v53, v54, v55, v56, v57, v58, v59, v62);
    CFRelease(Mutable);
    goto LABEL_16;
  }

  CFNumberGetValue(v51, kCFNumberLongLongType, &v62);
  CFRelease(Mutable);
  v60 = valuePtr;
  *a9 = v62;
  *(a9 + 8) = v60;
  v61 = 1;
LABEL_17:
  *(a9 + 16) = v61;
  std::mutex::unlock((a1 + 232));
}

const void **sub_100477FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v10 = sub_100429B7C(a1 + 752, a2, a3, a4, a5, a6, a7, a8);
  theData = v10;
  if (v10)
  {
    BytePtr = CFDataGetBytePtr(v10);
    if (BytePtr)
    {
      Length = CFDataGetLength(theData);
      if (Length)
      {
        v13 = 0;
        do
        {
          v14 = a9[2];
          if (v13 >= v14)
          {
            v15 = v13;
            v16 = (v13 + 1);
            if ((v13 + 1) < 0)
            {
              *a9 = 0;
              sub_100019B38();
            }

            if (2 * v14 > v16)
            {
              v16 = 2 * v14;
            }

            if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v17 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              operator new();
            }

            *v13++ = *BytePtr;
            memcpy(0, 0, v15);
            a9[1] = v15 + 1;
            a9[2] = 0;
          }

          else
          {
            *v13++ = *BytePtr;
          }

          a9[1] = v13;
          ++BytePtr;
          --Length;
        }

        while (Length);
      }

      *a9 = 0;
    }
  }

  return sub_10047B284(&theData);
}

void sub_100478100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10047B284(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100478144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if ((*(a1 + 296) & 1) == 0)
  {
    v50 = "perform connect before FW load";
LABEL_12:
    sub_100428B48(v50, a2, a3, a4, a5, a6, a7, a8, v78);
    return 0;
  }

  v9 = a2;
  v11 = dispatch_semaphore_create(0);
  *(a1 + 1184) = v11;
  if (!v11)
  {
    v50 = "failed to create event semaphore";
    goto LABEL_12;
  }

  if ((sub_1004783E0(v11, 0) & 1) == 0)
  {
    sub_100428B48("failed to set CalDataPushed property to false", v12, v13, v14, v15, v16, v17, v18, v78);
    *(a3 + 18) = 1;
    dispatch_release(*(a1 + 1184));
    v49 = 0;
    *(a1 + 1184) = 0;
    return v49;
  }

  if (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) <= 0x4614FF81FFLL)
  {
    v26 = 15000000000;
  }

  else
  {
    v26 = 5000000000;
  }

  sub_1004289F8("uwb init done timeout = %llu ns, cal event timeout = %llu ns, time since system boot = %llu s", v19, v20, v21, v22, v23, v24, v25, v26);
  if ((sub_100429988(a1 + 752, a3, v27, v28, v29, v30, v31, v32) & 1) == 0)
  {
    sub_100428B48("firmware download failed", v33, v34, v35, v36, v37, v38, v39, v79);
LABEL_16:
    v49 = 0;
    goto LABEL_17;
  }

  v40 = *(a1 + 1184);
  v41 = dispatch_time(0, v26);
  if (dispatch_semaphore_wait(v40, v41))
  {
    sub_100428B48("timeout on uwb init done event", v42, v43, v44, v45, v46, v47, v48, v79);
    v49 = 0;
    *(a3 + 17) = 1;
    goto LABEL_17;
  }

  if (v9)
  {
    v52 = sub_100429A64(a1 + 752, 4, &v81, 0, 0, a3, v47, v48);
    v60 = v52;
    if ((v52 & 1) == 0)
    {
      sub_100428B48("failed to load calibration", v53, v54, v55, v56, v57, v58, v59, v79);
    }

    if (v81)
    {
      for (i = 0; i < v81; ++i)
      {
        v62 = *(a1 + 1184);
        v63 = dispatch_time(0, v26);
        v52 = dispatch_semaphore_wait(v62, v63);
        if (v52)
        {
          sub_100428B48("timeout on calibration event", v64, v65, v66, v67, v68, v69, v70, v79);
          v60 = 0;
          *(a3 + 16) = 1;
        }
      }
    }

    if ((v60 & 1) == 0)
    {
      goto LABEL_16;
    }

    v49 = 1;
    if ((sub_1004783E0(v52, 1) & 1) == 0)
    {
      sub_100428B48("failed to set CalDataPushed property to true", v71, v72, v73, v74, v75, v76, v77, v79);
      *(a3 + 19) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v49 = 1;
  }

LABEL_17:
  if (*(a1 + 1184))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1004785DC;
    block[3] = &unk_1009ACB30;
    block[4] = a1;
    dispatch_async_and_wait(*(a1 + 1192), block);
  }

  return v49;
}

uint64_t sub_1004783E0(uint64_t a1, char a2)
{
  inputStruct = a2;
  connect = 0;
  input = 0;
  strcpy(cStr, "rose-supervisor");
  v9 = IOServiceMatching("AppleSPUInterface");
  if (!v9)
  {
    sub_100428B48("Failed to create a matching dictionary", v2, v3, v4, v5, v6, v7, v8, outputStruct);
    v19 = 0;
    goto LABEL_10;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v9);
  v11 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  v19 = v11;
  if (MutableCopy)
  {
    v20 = v11 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    sub_100428B48("Unable to create CF Objects", v12, v13, v14, v15, v16, v17, v18, outputStruct);
    if (!MutableCopy)
    {
LABEL_22:
      v21 = 0;
      goto LABEL_23;
    }

    CFRelease(MutableCopy);
LABEL_10:
    v21 = 0;
    LODWORD(MutableCopy) = 0;
    goto LABEL_23;
  }

  CFDictionarySetValue(MutableCopy, @"IONameMatch", v11);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, MutableCopy);
  LODWORD(MutableCopy) = MatchingService;
  if (!MatchingService)
  {
    v39 = "Can't find the rose-supervisor service";
LABEL_21:
    sub_100428B48(v39, v23, v24, v25, v26, v27, v28, v29, outputStruct);
    goto LABEL_22;
  }

  v37 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = connect == 0;
  }

  if (v38)
  {
    sub_100428B48("Unable to open rose-supervisor service: 0x%X", v30, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_22;
  }

  input = 213;
  v21 = 1;
  v40 = IOConnectCallMethod(connect, 1u, &input, 1u, &inputStruct, 1uLL, 0, 0, 0, 0);
  if (v40)
  {
    outputStruct = v40;
    v39 = "Error while trying to set the CalDataPushed property: 0x%X";
    goto LABEL_21;
  }

LABEL_23:
  if (connect)
  {
    IOServiceClose(connect);
  }

  if (MutableCopy)
  {
    IOObjectRelease(MutableCopy);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v21;
}

void sub_1004785DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_release(*(v1 + 1184));
  *(v1 + 1184) = 0;
}

uint64_t sub_100478608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 296))
  {
    v15 = sub_1004298D4(a1 + 752, a2, a3, a4, a5, a6, a7, a8);
    if (v15)
    {
      sub_100005D28("successfully gathered rose preflight info", v8, v9, v10, v11, v12, v13, v14, v17);
    }

    else
    {
      sub_100428B48("getting chip preflight info failed", v8, v9, v10, v11, v12, v13, v14, v17);
    }
  }

  else
  {
    sub_100428B48("connect to Rose before querying preflight info", a2, a3, a4, a5, a6, a7, a8, v17);
    return 0;
  }

  return v15;
}

uint64_t sub_100478670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 296) & 1) == 0)
  {
    v17 = "connect to Rose before querying chip info";
LABEL_8:
    sub_100428B48(v17, a2, a3, a4, a5, a6, a7, a8, v18);
    return 0;
  }

  if (a2)
  {
    if (sub_100429DC4(a1 + 752, a2, a3, a4, a5, a6, a7, a8))
    {
      v19 = *(a2 + 8);
      v21 = *a2;
      sub_100005D28("boardID: 0x%04hx chipID: 0x%04hx ECID: 0x%016llx", a2, a3, a4, a5, a6, a7, a8, *(a2 + 10));
      v22 = *(a2 + 17);
      v23 = *(a2 + 18);
      v20 = *(a2 + 16);
      sub_100005D28("bootMode: 0x%x prodMode: 0x%x secureMode: 0x%x securityDomain: 0x%x", v9, v10, v11, v12, v13, v14, v15, *(a2 + 12));
      return 1;
    }

    v17 = "getting chip info failed";
    goto LABEL_8;
  }

  sub_100428B48("%s: invalid parameter", 0, a3, a4, a5, a6, a7, a8, "getChipInfo");
  return 0;
}

uint64_t sub_100478734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 296) & 1) == 0)
  {
    sub_100428B48("connect to Rose before resetting chip", a2, a3, a4, a5, a6, a7, a8, v35);
    return 0;
  }

  v9 = sub_1000054A8();
  if (sub_100460A50(v9))
  {
    __ns.__rep_ = 200000000;
    std::this_thread::sleep_for (&__ns);
    v16 = 0;
    if (!sub_10042A7D0(a1 + 752, 0, v10, v11, v12, v13, v14, v15))
    {
      return v16;
    }

    __ns.__rep_ = 200000000;
    std::this_thread::sleep_for (&__ns);
  }

  v17 = sub_1000054A8();
  if (sub_1000149D4(v17))
  {
    if (sub_100478838(a1))
    {
      __ns.__rep_ = 70000000;
      std::this_thread::sleep_for (&__ns);
      v32 = "successfully applied reset glitch workaround, proceeding with reset";
    }

    else
    {
      v32 = "failed to apply reset glitch workaround, proceeding with reset anyway";
    }

    sub_100005D28(v32, v25, v26, v27, v28, v29, v30, v31, v35);
  }

  v33 = 5;
  do
  {
    v16 = sub_1004296C8(a1 + 752, v18, v19, v20, v21, v22, v23, v24);
    if (v16)
    {
      break;
    }

    __ns.__rep_ = 20000000;
    std::this_thread::sleep_for (&__ns);
    --v33;
  }

  while (v33);
  return v16;
}

BOOL sub_100478838(uint64_t a1)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  __src = 16496;
  sub_100009838(&v41, 4uLL);
  v2 = v41;
  sub_100005D28("send out GPIO power switch disable command", v3, v4, v5, v6, v7, v8, v9, v31);
  sub_10046F95C(&__src, 4uLL, v2, 1);
  v37[0] = 0;
  v39 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v41, v42 - v41, 0x100000096, v10, v11, v12, v13))
  {
    std::mutex::unlock((a1 + 232));
LABEL_9:
    v29 = 0;
    goto LABEL_10;
  }

  sub_100475784(a1, 112, 0, 150, &v33);
  sub_10047B1C8(v37, &v33);
  if (v36 == 1 && __p)
  {
    v35 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v39 != 1)
  {
    sub_100428B48("timed out waiting for GPIO power switch disable response", v14, v15, v16, v17, v18, v19, v20, v32);
    goto LABEL_9;
  }

  sub_10046105C(a1 + 504, v37, v38, v16, v17, v18, v19, v20);
  v21 = sub_100462840(v38);
  sub_100005D28("received GPIO power switch disable response with status 0x%04hx", v22, v23, v24, v25, v26, v27, v28, v21);
  v29 = v21 == 0;
LABEL_10:
  if (v39 == 1 && v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  return v29;
}

void sub_1004789AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1 && __p)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    *(v20 - 32) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef sub_100478A28(uint64_t a1)
{
  if (!*(sub_1000054A8() + 186))
  {
    v17 = "querying chip public key isn't supported for R1";
LABEL_7:
    sub_100428B48(v17, v2, v3, v4, v5, v6, v7, v8, v19);
    return 0;
  }

  if ((*(a1 + 296) & 1) == 0)
  {
    v17 = "connect to Rose before querying chip public key";
    goto LABEL_7;
  }

  v16 = sub_10042A8DC(a1 + 752, v2, v3, v4, v5, v6, v7, v8);
  if (v16)
  {
    sub_100005D28("successfully gathered rose chip public key", v9, v10, v11, v12, v13, v14, v15, v19);
  }

  else
  {
    sub_100428B48("getting chip public key failed", v9, v10, v11, v12, v13, v14, v15, v19);
  }

  return v16;
}

uint64_t sub_100478AAC(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v7 = *(sub_1000054A8() + 187);
  if (v7 != 1)
  {
    if (v7 != 2)
    {
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "HSI version error");
      }

      goto LABEL_87;
    }

    v9 = *a2;
    v10 = a2[1];
    if (v9 != v10)
    {
      v11 = v9 + 8;
      v12 = 1;
      do
      {
        v13 = *(v11 - 8);
        v90 = 0;
        v91 = 0;
        v92 = 0;
        sub_1000069DC(&v90, v13, v13 + 33, 33);
        if (a4)
        {
          v14 = v90;
          if (v91 - v90 != 33)
          {
            __assert_rtn("sendUwbTxPowerTable", "libRose.cpp", 1700, "r2PowerTableEntry.size() == sizeof(set_cfg_pwrtbl_entry_v3_t)");
          }

          if (*v90 != 3)
          {
            __assert_rtn("sendUwbTxPowerTable", "libRose.cpp", 1703, "ptEntry->pwr_tbl_ver == SET_CFG_PWRTBL_ENTRY_V3_VERSION");
          }

          sub_100004A08(v94, "UWB PwrTblMax before:\n");
          v16 = v90;
          v15 = v91;
          sub_100004A08(&__p, "==========");
          sub_10046FC20(v94, v16, v15 - v16, 0x10u, &__p);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v95) < 0)
          {
            operator delete(v94[0]);
          }

          if (SHIBYTE(v82) >= 0)
          {
            v24 = v81;
          }

          else
          {
            v24 = v81[0];
          }

          sub_1004289F8("%s", v17, v18, v19, v20, v21, v22, v23, v24);
          *(v14 + 19) = 0x50005000500050;
          sub_100004A08(&__p, "UWB PwrTblMax after:\n");
          v26 = v90;
          v25 = v91;
          sub_100004A08(&v84, "==========");
          sub_10046FC20(&__p, v26, v25 - v26, 0x10u, &v84);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(v81[0]);
          }

          *v81 = *v94;
          v82 = v95;
          HIBYTE(v95) = 0;
          LOBYTE(v94[0]) = 0;
          if (SHIBYTE(v86) < 0)
          {
            operator delete(v84);
          }

          if (SHIBYTE(v89) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v82) >= 0)
          {
            v34 = v81;
          }

          else
          {
            v34 = v81[0];
          }

          sub_1004289F8("%s", v27, v28, v29, v30, v31, v32, v33, v34);
          if (SHIBYTE(v82) < 0)
          {
            operator delete(v81[0]);
          }
        }

        LOBYTE(v81[0]) = 41;
        v82 = 0;
        v83 = 0;
        v81[1] = 0;
        sub_100009A48(&v81[1], v90, v91, v91 - v90);
        LOBYTE(v94[0]) = v81[0];
        v95 = 0;
        v96 = 0;
        v94[1] = 0;
        sub_100009A48(&v94[1], v81[1], v82, v82 - v81[1]);
        v84 = 0;
        v85 = 0;
        v86 = 0;
        sub_10026B8B4(&v84, v94, v97, 1uLL);
        __p = 0;
        v88 = 0;
        v89 = 0;
        sub_10026B35C(&__p, v84, v85, (v85 - v84) >> 5);
        v93 = &v84;
        sub_100189A94(&v93);
        if (v94[1])
        {
          v95 = v94[1];
          operator delete(v94[1]);
        }

        v42 = (*(*a1 + 64))(a1, &__p);
        if (v42)
        {
          if (a3)
          {
            LOBYTE(v93) = 41;
            v85 = 0;
            v86 = 0;
            v84 = 0;
            sub_1000069DC(&v84, &v93, &v93 + 1, 1);
            v94[0] = 0;
            v94[1] = 0;
            v95 = 0;
            sub_100009A48(v94, v84, v85, v85 - v84);
            if (v84)
            {
              v85 = v84;
              operator delete(v84);
            }

            (*(*a1 + 56))(a1, v94);
            if (v94[0])
            {
              v94[1] = v94[0];
              operator delete(v94[0]);
            }
          }
        }

        else
        {
          sub_100428B48("PRRose::setConfigParameters: failed to set power table", v35, v36, v37, v38, v39, v40, v41, v79);
          v12 = 0;
        }

        v94[0] = &__p;
        sub_100189A94(v94);
        if (v81[1])
        {
          v82 = v81[1];
          operator delete(v81[1]);
        }

        if (v90)
        {
          v91 = v90;
          operator delete(v90);
        }

        if (v11 == v10)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        v11 += 8;
      }

      while ((v43 & 1) != 0);
      return v12 & 1;
    }

LABEL_87:
    v12 = 1;
    return v12 & 1;
  }

  v44 = *a2;
  v45 = a2[1];
  if (v44 == v45)
  {
    goto LABEL_87;
  }

  v46 = v44 + 8;
  v12 = 1;
  do
  {
    v47 = *(v46 - 8);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    sub_1000069DC(&v90, v47, v47 + 23, 23);
    if (a4)
    {
      v48 = v90;
      if (v91 - v90 != 23)
      {
        __assert_rtn("sendUwbTxPowerTable", "libRose.cpp", 1667, "r1PowerTableEntry.size() == sizeof(set_cfg_pwrtbl_entry_v2_t)");
      }

      if (*v90 != 2)
      {
        __assert_rtn("sendUwbTxPowerTable", "libRose.cpp", 1669, "ptEntry->pwr_tbl_ver == SET_CFG_PWRTBL_ENTRY_V2_VERSION");
      }

      sub_100004A08(v94, "UWB PwrTblMax before:\n");
      v50 = v90;
      v49 = v91;
      sub_100004A08(&__p, "==========");
      sub_10046FC20(v94, v50, v49 - v50, 0x10u, &__p);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v95) < 0)
      {
        operator delete(v94[0]);
      }

      if (SHIBYTE(v82) >= 0)
      {
        v58 = v81;
      }

      else
      {
        v58 = v81[0];
      }

      sub_1004289F8("%s", v51, v52, v53, v54, v55, v56, v57, v58);
      *(v48 + 14) = 5242960;
      *(v48 + 9) = 80;
      sub_100004A08(&__p, "UWB PwrTblMax after:\n");
      v60 = v90;
      v59 = v91;
      sub_100004A08(&v84, "==========");
      sub_10046FC20(&__p, v60, v59 - v60, 0x10u, &v84);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
      }

      *v81 = *v94;
      v82 = v95;
      HIBYTE(v95) = 0;
      LOBYTE(v94[0]) = 0;
      if (SHIBYTE(v86) < 0)
      {
        operator delete(v84);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v82) >= 0)
      {
        v68 = v81;
      }

      else
      {
        v68 = v81[0];
      }

      sub_1004289F8("%s", v61, v62, v63, v64, v65, v66, v67, v68);
      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
      }
    }

    LOBYTE(v81[0]) = 31;
    v82 = 0;
    v83 = 0;
    v81[1] = 0;
    sub_100009A48(&v81[1], v90, v91, v91 - v90);
    LOBYTE(v94[0]) = v81[0];
    v95 = 0;
    v96 = 0;
    v94[1] = 0;
    sub_100009A48(&v94[1], v81[1], v82, v82 - v81[1]);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    sub_10026B8B4(&v84, v94, v97, 1uLL);
    __p = 0;
    v88 = 0;
    v89 = 0;
    sub_10026B35C(&__p, v84, v85, (v85 - v84) >> 5);
    v93 = &v84;
    sub_100189A94(&v93);
    if (v94[1])
    {
      v95 = v94[1];
      operator delete(v94[1]);
    }

    v76 = (*(*a1 + 64))(a1, &__p);
    if (v76)
    {
      if (a3)
      {
        LOBYTE(v93) = 31;
        v85 = 0;
        v86 = 0;
        v84 = 0;
        sub_1000069DC(&v84, &v93, &v93 + 1, 1);
        v94[0] = 0;
        v94[1] = 0;
        v95 = 0;
        sub_100009A48(v94, v84, v85, v85 - v84);
        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        (*(*a1 + 56))(a1, v94);
        if (v94[0])
        {
          v94[1] = v94[0];
          operator delete(v94[0]);
        }
      }
    }

    else
    {
      sub_100428B48("PRRose::setConfigParameters: failed to set power table", v69, v70, v71, v72, v73, v74, v75, v79);
      v12 = 0;
    }

    v94[0] = &__p;
    sub_100189A94(v94);
    if (v81[1])
    {
      v82 = v81[1];
      operator delete(v81[1]);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    if (v46 == v45)
    {
      v77 = 0;
    }

    else
    {
      v77 = v76;
    }

    v46 += 8;
  }

  while ((v77 & 1) != 0);
  return v12 & 1;
}

uint64_t sub_100479464(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v8 = a2[1];
  if (*a2 == v8)
  {
    sub_100428B48("libRose::sendNBTxPowerTable failure: NB power tables are empty", a2, a3, a4, a5, a6, a7, a8, v44);
    v46 = 0;
  }

  else
  {
    v9 = a4;
    v11 = *a2 + 8;
    v46 = 1;
    do
    {
      v12 = *(v11 - 8);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      sub_1000069DC(&v55, v12, v12 + 18, 18);
      if (v9)
      {
        v13 = v55;
        if (v56 - v55 != 18)
        {
          __assert_rtn("sendNBTxPowerTable", "libRose.cpp", 1750, "powerTableRow.size() == sizeof(set_cfg_nb_reg_tbl_entry_t)");
        }

        if (*v55 != 1)
        {
          __assert_rtn("sendNBTxPowerTable", "libRose.cpp", 1754, "ptEntry->ver_type == SET_CFG_NB_REG_TBL_ENTRY_VERSION");
        }

        sub_100004A08(&v59, "NB PwrTblMax before:\n");
        v15 = v55;
        v14 = v56;
        sub_100004A08(__p, "==========");
        sub_10046FC20(&v59, v15, v14 - v15, 0x10u, __p);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        if (SHIBYTE(v48) >= 0)
        {
          v23 = v47;
        }

        else
        {
          v23 = v47[0];
        }

        sub_1004289F8("%s", v16, v17, v18, v19, v20, v21, v22, v23);
        *(v13 + 6) = 26214800;
        *(v13 + 14) = 26214800;
        sub_100004A08(__p, "NB PwrTblMax after:\n");
        v25 = v55;
        v24 = v56;
        sub_100004A08(&v50, "==========");
        sub_10046FC20(__p, v25, v24 - v25, 0x10u, &v50);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        *v47 = v59;
        v48 = v60;
        HIBYTE(v60) = 0;
        LOBYTE(v59) = 0;
        if (SHIBYTE(v52) < 0)
        {
          operator delete(v50);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v48) >= 0)
        {
          v33 = v47;
        }

        else
        {
          v33 = v47[0];
        }

        sub_1004289F8("%s", v26, v27, v28, v29, v30, v31, v32, v33);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }
      }

      LOBYTE(v47[0]) = 46;
      v48 = 0;
      v49 = 0;
      v47[1] = 0;
      sub_100009A48(&v47[1], v55, v56, v56 - v55);
      LOBYTE(v59) = v47[0];
      v60 = 0;
      v61 = 0;
      *(&v59 + 1) = 0;
      sub_100009A48(&v59 + 8, v47[1], v48, v48 - v47[1]);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      sub_10026B8B4(&v50, &v59, &v62, 1uLL);
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      sub_10026B35C(__p, v50, v51, (v51 - v50) >> 5);
      v58 = &v50;
      sub_100189A94(&v58);
      if (*(&v59 + 1))
      {
        v60 = *(&v59 + 1);
        operator delete(*(&v59 + 1));
      }

      v41 = (*(*a1 + 64))(a1, __p);
      if (v41)
      {
        if (v45)
        {
          LOBYTE(v58) = 46;
          v51 = 0;
          v52 = 0;
          v50 = 0;
          sub_1000069DC(&v50, &v58, &v58 + 1, 1);
          v59 = 0uLL;
          v60 = 0;
          sub_100009A48(&v59, v50, v51, v51 - v50);
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          (*(*a1 + 56))(a1, &v59);
          if (v59)
          {
            *(&v59 + 1) = v59;
            operator delete(v59);
          }
        }
      }

      else
      {
        sub_100428B48("libRose::sendNBTxPowerTable: failed to set NB power table", v34, v35, v36, v37, v38, v39, v40, v44);
        v46 = 0;
      }

      *&v59 = __p;
      sub_100189A94(&v59);
      if (v47[1])
      {
        v48 = v47[1];
        operator delete(v47[1]);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v11 == v8)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      v11 += 8;
    }

    while ((v42 & 1) != 0);
  }

  return v46 & 1;
}

void sub_1004798A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 128);
  if (v34)
  {
    *(v32 - 120) = v34;
    operator delete(v34);
  }

  a17 = &a23;
  sub_100189A94(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004799D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v8 = a2[1];
  if (*a2 == v8)
  {
    sub_100428B48("libRose::sendNBSARTable: failure: NB SAR tables are empty", a2, a3, a4, a5, a6, a7, a8, v44);
    v46 = 0;
  }

  else
  {
    v9 = a4;
    v11 = *a2 + 8;
    v46 = 1;
    do
    {
      v12 = *(v11 - 8);
      v55 = 0;
      v56 = 0;
      v57 = 0;
      sub_1000069DC(&v55, v12, v12 + 38, 38);
      if (v9)
      {
        v13 = v55;
        if (v56 - v55 != 38)
        {
          __assert_rtn("sendNBSARTable", "libRose.cpp", 1798, "powerTableRow.size() == sizeof(set_cfg_nb_sar_tbl_entry_t)");
        }

        if (*v55 != 2)
        {
          __assert_rtn("sendNBSARTable", "libRose.cpp", 1802, "sarEntry->ver_type == SET_CFG_NB_SAR_TBL_ENTRY_VERSION");
        }

        sub_100004A08(&v59, "NB SARTbl before:\n");
        v15 = v55;
        v14 = v56;
        sub_100004A08(__p, "==========");
        sub_10046FC20(&v59, v15, v14 - v15, 0x10u, __p);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
        }

        if (SHIBYTE(v48) >= 0)
        {
          v23 = v47;
        }

        else
        {
          v23 = v47[0];
        }

        sub_1004289F8("%s", v16, v17, v18, v19, v20, v21, v22, v23);
        memset_pattern16(v13 + 6, &unk_1005685B0, 0x20uLL);
        sub_100004A08(__p, "NB SARTbl after:\n");
        v25 = v55;
        v24 = v56;
        sub_100004A08(&v50, "==========");
        sub_10046FC20(__p, v25, v24 - v25, 0x10u, &v50);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        *v47 = v59;
        v48 = v60;
        HIBYTE(v60) = 0;
        LOBYTE(v59) = 0;
        if (SHIBYTE(v52) < 0)
        {
          operator delete(v50);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v48) >= 0)
        {
          v33 = v47;
        }

        else
        {
          v33 = v47[0];
        }

        sub_1004289F8("%s", v26, v27, v28, v29, v30, v31, v32, v33);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }
      }

      LOBYTE(v47[0]) = 47;
      v48 = 0;
      v49 = 0;
      v47[1] = 0;
      sub_100009A48(&v47[1], v55, v56, v56 - v55);
      LOBYTE(v59) = v47[0];
      v60 = 0;
      v61 = 0;
      *(&v59 + 1) = 0;
      sub_100009A48(&v59 + 8, v47[1], v48, v48 - v47[1]);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      sub_10026B8B4(&v50, &v59, &v62, 1uLL);
      __p[0] = 0;
      __p[1] = 0;
      v54 = 0;
      sub_10026B35C(__p, v50, v51, (v51 - v50) >> 5);
      v58 = &v50;
      sub_100189A94(&v58);
      if (*(&v59 + 1))
      {
        v60 = *(&v59 + 1);
        operator delete(*(&v59 + 1));
      }

      v41 = (*(*a1 + 64))(a1, __p);
      if (v41)
      {
        if (v45)
        {
          LOBYTE(v58) = 47;
          v51 = 0;
          v52 = 0;
          v50 = 0;
          sub_1000069DC(&v50, &v58, &v58 + 1, 1);
          v59 = 0uLL;
          v60 = 0;
          sub_100009A48(&v59, v50, v51, v51 - v50);
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          (*(*a1 + 56))(a1, &v59);
          if (v59)
          {
            *(&v59 + 1) = v59;
            operator delete(v59);
          }
        }
      }

      else
      {
        sub_100428B48("libRose::sendNBSARTable: failed to set NB SAR table", v34, v35, v36, v37, v38, v39, v40, v44);
        v46 = 0;
      }

      *&v59 = __p;
      sub_100189A94(&v59);
      if (v47[1])
      {
        v48 = v47[1];
        operator delete(v47[1]);
      }

      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v11 == v8)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      v11 += 8;
    }

    while ((v42 & 1) != 0);
  }

  return v46 & 1;
}

void sub_100479E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 128);
  if (v34)
  {
    *(v32 - 120) = v34;
    operator delete(v34);
  }

  a17 = &a23;
  sub_100189A94(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100479F48(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  if (sub_100470F38(&v33, __dst))
  {
    return 1;
  }

  sub_100005D28("Updating NB SAR state: %u", v4, v5, v6, v7, v8, v9, v10, a2);
  v28[0] = 0;
  v31 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 5uLL, 0, v12, v13, v14, v15))
  {
    std::mutex::unlock((a1 + 232));
LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  sub_100475784(a1, 13, 0, 2000, &v24);
  sub_10047B1C8(v28, &v24);
  if (v27 == 1 && __p)
  {
    v26 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v31 != 1)
  {
    goto LABEL_12;
  }

  if (v30 - v29 != 8)
  {
    sub_100428B48("Size of response: %zu for SAR state command is different from the expected size: %zu", v16, v17, v18, v19, v20, v21, v22, v30 - v29);
    goto LABEL_12;
  }

  sub_10046105C(a1 + 504, v28, &v29, v18, v19, v20, v21, v22);
  v11 = 0;
LABEL_13:
  if (v31 == 1 && v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v11;
}

void sub_10047A08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (a21)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10047A0D8(uint64_t a1, uint64_t a2)
{
  *v3 = *a2;
  v4 = *(a2 + 2);
  return sub_10047A118(a1, v3, 2000) == 0;
}

uint64_t sub_10047A118(uint64_t a1, char *a2, int a3)
{
  v12 = sub_100470E60(a2, v42);
  if (v12)
  {
    return v12;
  }

  sub_100005D28("Sending SleepEnable command", v5, v6, v7, v8, v9, v10, v11, v32);
  v38[0] = 0;
  v41 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, v42, 0xAuLL, 0, v13, v14, v15, v16))
  {
    std::mutex::unlock((a1 + 232));
    goto LABEL_13;
  }

  sub_100475784(a1, 6, 0, a3, &__dst);
  sub_10047B1C8(v38, &__dst);
  if (v37 == 1 && __p)
  {
    v36 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v41 != 1)
  {
LABEL_12:
    sub_100428B48("Sleep Enable response failed", v17, v18, v19, v20, v21, v22, v23, v33);
    goto LABEL_13;
  }

  LOWORD(__dst) = 0;
  if (v40 - v39 != 6)
  {
    sub_100428B48("Size of response: %zu for sleep enable command is different from the expected size: %zu", v17, v18, v19, v20, v21, v22, v23, v40 - v39);
    goto LABEL_12;
  }

  sub_10046F95C(v39 + 4, 2uLL, &__dst, 1);
  if (!__dst)
  {
    sub_100005D28("Sleep enable command completed successfully.", v24, v25, v26, v27, v28, v29, v30, v33);
    v12 = 0;
    goto LABEL_14;
  }

  sub_100428B48("Error response for the sleep enable command: %d", v24, v25, v26, v27, v28, v29, v30, __dst);
LABEL_13:
  v12 = 1;
LABEL_14:
  if (v41 == 1 && v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v12;
}

void sub_10047A2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    v10 = sub_1000054A8();
    if (sub_100460A50(v10))
    {
      __ns.__rep_ = 200000000;
      std::this_thread::sleep_for (&__ns);
      v17 = 0;
      if (!sub_10042A7D0(a1 + 752, 0, v11, v12, v13, v14, v15, v16))
      {
        return v17;
      }

      __ns.__rep_ = 200000000;
      std::this_thread::sleep_for (&__ns);
    }

    v18 = sub_1000054A8();
    if (sub_1000149D4(v18))
    {
      if (sub_100478838(a1))
      {
        __ns.__rep_ = 70000000;
        std::this_thread::sleep_for (&__ns);
        v26 = "successfully applied reset glitch workaround, proceeding with power off";
      }

      else
      {
        v26 = "failed to apply reset glitch workaround, proceeding with power off anyway";
      }

      sub_100005D28(v26, v19, v20, v21, v22, v23, v24, v25, v29);
    }
  }

  v27 = 5;
  do
  {
    v17 = sub_10042A774(a1 + 752, a2, a3, a4, a5, a6, a7, a8);
    if (v17)
    {
      break;
    }

    __ns.__rep_ = 20000000;
    std::this_thread::sleep_for (&__ns);
    --v27;
  }

  while (v27);
  return v17;
}

uint64_t sub_10047A41C(uint64_t a1, BOOL *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v12 = Mutable;
    if (sub_10042A870(a1 + 752, Mutable, v6, v7, v8, v9, v10, v11))
    {
      value = 0;
      HIDWORD(v23) = 0;
      if (CFDictionaryGetValueIfPresent(v12, @"RosePowerState", &value))
      {
        if (CFNumberGetValue(value, kCFNumberIntType, &v23 + 4))
        {
          *a2 = HIDWORD(v23) != 0;
          v20 = 1;
LABEL_12:
          CFRelease(v12);
          return v20;
        }

        v21 = "Failed to read RosePowerState value from the dictionary";
      }

      else
      {
        v21 = "RosePowerState isn't present in the dictionary";
      }

      sub_100428B48(v21, v13, v14, v15, v16, v17, v18, v19, v23);
      v20 = 0;
      goto LABEL_12;
    }

    CFRelease(v12);
  }

  else
  {
    sub_100428B48("Failed to create a dictionary", v5, v6, v7, v8, v9, v10, v11, v23);
  }

  return 0;
}

uint64_t sub_10047A520(uint64_t a1, void *a2, void *a3, void *a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v16 = Mutable;
    if (sub_10042A870(a1 + 752, Mutable, v10, v11, v12, v13, v14, v15))
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v16, @"RosePowerState", &value) && (v24 = CFGetTypeID(value), v24 == CFNumberGetTypeID()))
      {
        if (CFNumberGetValue(value, kCFNumberIntType, a2))
        {
          v25 = 1;
LABEL_12:
          if (CFDictionaryGetValueIfPresent(v16, @"RoseServiceState", &value) && (v34 = CFGetTypeID(value), v34 == CFNumberGetTypeID()))
          {
            if (CFNumberGetValue(value, kCFNumberIntType, a3))
            {
LABEL_18:
              if (CFDictionaryGetValueIfPresent(v16, @"SecureROMStatus", &value) && (v43 = CFGetTypeID(value), v43 == CFNumberGetTypeID()))
              {
                if (CFNumberGetValue(value, kCFNumberIntType, a4))
                {
LABEL_24:
                  CFRelease(v16);
                  return v25;
                }

                v44 = "Failed to read SecureROMStatus value from the dictionary or isn't a CFNumbertype";
              }

              else
              {
                v44 = "SecureROMStatus isn't present in the dictionary";
              }

              sub_100428B48(v44, v36, v37, v38, v39, v40, v41, v42, v46);
              v25 = 0;
              goto LABEL_24;
            }

            v35 = "Failed to read RoseServiceState value from the dictionary";
          }

          else
          {
            v35 = "RoseServiceState isn't present in the dictionary or isn't a CFNumbertype";
          }

          sub_100428B48(v35, v27, v28, v29, v30, v31, v32, v33, v46);
          v25 = 0;
          goto LABEL_18;
        }

        v26 = "Failed to read RosePowerState value from the dictionary";
      }

      else
      {
        v26 = "RosePowerState isn't present in the dictionary or isn't a CFNumbertype";
      }

      sub_100428B48(v26, v17, v18, v19, v20, v21, v22, v23, v46);
      v25 = 0;
      goto LABEL_12;
    }

    CFRelease(v16);
  }

  else
  {
    sub_100428B48("Failed to create a dictionary", v9, v10, v11, v12, v13, v14, v15, v46);
  }

  return 0;
}

uint64_t sub_10047A744(uint64_t a1, int a2, int a3)
{
  v5 = sub_100470FE8(a2, __dst);
  if (v5)
  {
    return v5;
  }

  v23[0] = 0;
  v25 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 4uLL, 0, v6, v7, v8, v9))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 83, 0, a3, &v19);
  sub_10047B1C8(v23, &v19);
  if (v22 == 1 && __p)
  {
    v21 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v25 != 1)
  {
    sub_100428B48("Alisha Get Cap command failed", v10, v11, v12, v13, v14, v15, v16, v18);
    goto LABEL_10;
  }

  sub_10046105C(a1 + 504, v23, v24, v12, v13, v14, v15, v16);
  v5 = 0;
LABEL_11:
  if (v25 == 1 && v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  return v5;
}

void sub_10047A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10047A8A0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a2 + 34);
  v14 = *(a2 + 35);
  v11 = *(a2 + 32);
  v12 = *(a2 + 33);
  sub_100005D28("Sending Alisha Dbg Set Key command\n    UwbSesId = %u (0x%08x)\n    URSK     = 0x%02x%02x%02x%02x", a2, a3, a4, a5, a6, a7, a8, *a2);
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 5);
  return sub_10047A958(a1, &v15, 2000) == 0;
}

uint64_t sub_10047A958(uint64_t a1, char *a2, int a3)
{
  v5 = sub_100471078(a2, __dst);
  if (v5)
  {
    return v5;
  }

  v22[0] = 0;
  v24 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 0x28uLL, 0, v6, v7, v8, v9))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 82, 0, a3, &v18);
  sub_10047B1C8(v22, &v18);
  if (v21 == 1 && __p)
  {
    v20 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v24 != 1)
  {
    sub_100428B48("Alisha Dbg Set Key command failed", v10, v11, v12, v13, v14, v15, v16, v18);
    goto LABEL_10;
  }

  sub_10046105C(a1 + 504, v22, v23, v12, v13, v14, v15, v16);
  v5 = 0;
LABEL_11:
  if (v24 == 1 && v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  return v5;
}

void sub_10047AAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (a18)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10047AAF4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005D28("Sending Alisha Get Key command\n    UwbSesId = %u (0x%08x)", a2, a3, a4, a5, a6, a7, a8, *a2);
  v11 = *a2;
  return sub_10047AB54(a1, &v11, 2000) == 0;
}

uint64_t sub_10047AB54(uint64_t a1, char *a2, int a3)
{
  v5 = sub_100471140(a2, __dst);
  if (v5)
  {
    return v5;
  }

  v22[0] = 0;
  v24 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 8uLL, 0, v6, v7, v8, v9))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 81, 0, a3, &v18);
  sub_10047B1C8(v22, &v18);
  if (v21 == 1 && __p)
  {
    v20 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v24 != 1)
  {
    sub_100428B48("Alisha Get Key command failed", v10, v11, v12, v13, v14, v15, v16, v18);
    goto LABEL_10;
  }

  sub_10046105C(a1 + 504, v22, v23, v12, v13, v14, v15, v16);
  v5 = 0;
LABEL_11:
  if (v24 == 1 && v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  return v5;
}

void sub_10047ACA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (a18)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10047ACF0(uint64_t a1, unsigned __int16 *a2)
{
  v28 = 0;
  v27 = 0;
  v18 = *(a2 + 5);
  v17 = *(a2 + 7);
  v16 = *(a2 + 6);
  v14 = a2[8];
  v15 = *(a2 + 18);
  v12 = a2[6];
  v13 = a2[7];
  v11 = *(a2 + 2);
  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  sub_100005D28("Sending Alisha Range Enable command\n    SesId = %u\n    SesRole = %u\n    TxAntMask = %u\n    RxAntMask = %u\n    RxSyncSearchAntMask = %u\n    Channel = %u\n    Preamble = %u\n    UwbSesId = %u (0x%08x)\n    ResponderDevId = %u\n    SelProtocolVersion = %u\n    SelUwbCfgId = %u\n    RanMultiplier = %u\n    NchapsPerSlot = %u\n    NslotsPerRound = %u\n    Nresponders = %u\n    ResponderStsIndex0 = %u\n    ResponderHopKey = %u\n    ResponderIdx = %u\n    SelHopCfgBitmask = 0x%02x\n    SelPulseShapeCombo = %u\n    DebugFlags = %u\n    StartTime = %llu\n", *(a2 + 19), *(a2 + 20), *(a2 + 21), *(a2 + 32), *(a2 + 33), *(a2 + 34), a2[18], *a2);
  v19 = *a2;
  v20 = *(a2 + 1);
  v21 = a2[3];
  v22 = *(a2 + 2);
  v23 = a2[6];
  v24 = *(a2 + 7);
  v25 = *(a2 + 9);
  v26 = *(a2 + 3);
  LOWORD(v27) = a2[16];
  BYTE2(v27) = *(a2 + 34);
  v28 = a2[18];
  v29 = *(a2 + 5);
  return sub_10047AE4C(a1, &v19, 2000) == 0;
}

uint64_t sub_10047AE4C(uint64_t a1, char *a2, int a3)
{
  v5 = sub_1004711E8(a2, __dst);
  if (v5)
  {
    return v5;
  }

  v23[0] = 0;
  v25 = 0;
  std::mutex::lock((a1 + 232));
  if (sub_100475C14(a1, __dst, 0x30uLL, 0, v6, v7, v8, v9))
  {
    std::mutex::unlock((a1 + 232));
LABEL_10:
    v5 = 1;
    goto LABEL_11;
  }

  sub_100475784(a1, 80, 0, a3, &v19);
  sub_10047B1C8(v23, &v19);
  if (v22 == 1 && __p)
  {
    v21 = __p;
    operator delete(__p);
  }

  std::mutex::unlock((a1 + 232));
  if (v25 != 1)
  {
    sub_100428B48("Alisha Range Enable command failed", v10, v11, v12, v13, v14, v15, v16, v18);
    goto LABEL_10;
  }

  sub_10046105C(a1 + 504, v23, v24, v12, v13, v14, v15, v16);
  v5 = 0;
LABEL_11:
  if (v25 == 1 && v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  return v5;
}

void sub_10047AF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10047AFE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10047B080(void *a1)
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
    v6 = &v2[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          *(v8 + 16) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 128;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10004EE68(a1);
}

__n128 sub_10047B1C8(uint64_t a1, int *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v3 = *a2;
      *(a1 + 4) = *(a2 + 2);
      *a1 = v3;
      v4 = a1 + 8;
      v5 = (a2 + 2);

      result.n128_u64[0] = sub_10016D9A8(v4, v5).n128_u64[0];
    }
  }

  else if (*(a1 + 32))
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      *(a1 + 16) = v7;
      operator delete(v7);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 4) = *(a2 + 2);
    *a1 = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    result = *(a2 + 2);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

const void **sub_10047B284(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

__n128 sub_10047B334(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009ACB88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10047B36C(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, a2, *a3);
}

uint64_t sub_10047B3B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10047B480(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009ACC30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10047B4B8(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10047B500(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10047B54C(void *a1)
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
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10004EE68(a1);
}

const void **sub_10047B6A8(uint64_t a1)
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
    v4 = 170 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0xAA)
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

  *(a1 + 32) = v5 + 170;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10016ED78(a1, v11);
}

void sub_10047B8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10047B8F8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_10047BA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10047BACC(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10047BB84(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F);
  v10 = *a2;
  *(v9 + 4) = *(a2 + 2);
  *v9 = v10;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  result = *(a2 + 2);
  *(v9 + 8) = result;
  *(v9 + 24) = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  ++*(a1 + 40);
  return result;
}

void *sub_10047BB84(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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

void sub_10047BD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10047BD58(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v2 & 0x7F);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 16) = v4;
    operator delete(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return sub_1003EC368(a1, 1);
}

void sub_10047BDD0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_10045F810(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10026B3E4(a1, v11);
    }

    sub_100019B38();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    sub_10047BF14(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 24);
        if (v16)
        {
          *(v15 - 16) = v16;
          operator delete(v16);
        }

        v15 -= 32;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_10047BF14(&v17, a2, a2 + v12, v8);
    a1[1] = sub_10026B468(a1, a2 + v12, a3, a1[1]);
  }
}

uint64_t sub_10047BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (v5 != a4)
      {
        sub_1000134D0((a4 + 8), *(v5 + 8), *(v5 + 16), *(v5 + 16) - *(v5 + 8));
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 sub_10047C004(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009ACCF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10047C03C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10047C064(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10047C0B0(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 5) = sub_100014900(a2);
  v7 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  sub_10047E648(a1 + 240);
  sub_10047E648(a1 + 320);
  sub_10047E648(a1 + 400);
  v8 = *(a4 + 48);
  v11[2] = *(a4 + 32);
  v11[3] = v8;
  v12 = *(a4 + 64);
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  sub_10048CF04(v11);
  sub_10048CF8C(0.01, 0.000000961703842, 0.0000000194955149, 1.0);
  return a1;
}

void sub_10047C1C4(_Unwind_Exception *a1)
{
  sub_100188E54(v1 + 40);
  sub_100188E54(v2 + 27);
  sub_100188F00(v5);
  sub_100188F84(v4);
  sub_100021914(v3);
  sub_100188E54(v1 + 9);
  sub_100189188(v2);
  v7 = v1[2];
  if (v7)
  {
    sub_10000AD84(v7);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10047C238(uint64_t a1, double *a2)
{
  if (*(a1 + 5) != 1)
  {
    return 0;
  }

  if (!sub_10047C4F8(a1, a2))
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004D09DC();
    return 0;
  }

  __src = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 176);
  if (v4)
  {
    do
    {
      sub_1004824C0((v4 + 3));
      v6 = v5;
      if (v5 <= 0.0 || *a2 - v5 <= 3.0)
      {
        sub_1004802E8((v4 + 3), (a1 + 24));
      }

      else
      {
        v7 = v22;
        if (v22 >= v23)
        {
          v9 = __src;
          v10 = v22 - __src;
          v11 = (v22 - __src) >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            sub_100019B38();
          }

          v13 = v23 - __src;
          if ((v23 - __src) >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            sub_100012564(&__src, v14);
          }

          *(8 * v11) = v4[2];
          v8 = 8 * v11 + 8;
          memcpy(0, v9, v10);
          v15 = __src;
          __src = 0;
          v22 = v8;
          v23 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v22 = v4[2];
          v8 = (v7 + 8);
        }

        v22 = v8;
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v4[2];
          v18 = *a2;
          *buf = 134218496;
          *&buf[4] = v17;
          v25 = 2048;
          v26 = v6;
          v27 = 2048;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionManager: Timing out target with ID 0x%llx - Last received measurement time is %f s, last IMU data time is %f s", buf, 0x20u);
        }
      }

      v4 = *v4;
    }

    while (v4);
    v20 = __src;
    if (__src != v22)
    {
      do
      {
        *buf = *v20;
        sub_10047F078((a1 + 160), buf);
        sub_10047EFE0((a1 + 200), buf);
        v20 += 8;
      }

      while (v20 != v22);
    }
  }

  return 1;
}

uint64_t sub_10047C4F8(uint64_t a1, double *a2)
{
  if (!sub_100498BC8(a1 + 24))
  {
    v4 = *(a1 + 112) + *(a1 + 104) - 1;
    if (*a2 <= *(*(*(a1 + 80) + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF)))
    {
      return 0;
    }
  }

  if (sub_10047D5CC(a1, a2))
  {
    sub_10047D00C(a1);
  }

  sub_10047E4C4(v8, a2);
  sub_10047D7CC(a1, v8);
  sub_100498A5C((a1 + 24), v8);
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  if (sub_100498D5C(a1 + 24) >= 0x1F5)
  {
    sub_100498B60((a1 + 24));
  }

  if (sub_100498D5C(a1 + 24))
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v6 = sub_100498D5C(a1 + 24);
      sub_1004D0A10(a1, buf, v6, v5);
    }
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return 1;
}

BOOL sub_10047C6C0(unsigned int *a1, unint64_t **a2)
{
  if (*(a1 + 5) == 1)
  {
    v3 = *a2;
    v4 = a2[1];
    if (v4 == *a2)
    {
      result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1004D0B10();
    }

    else
    {
      v6 = *v3;
      v40 = *v3;
      v7 = v3;
      do
      {
        if (*v7 != v6)
        {
          result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          sub_1004D0AA8();
          return 0;
        }

        v7 += 19;
      }

      while (v7 != v4);
      if (*(v3 + 6) >= 0.0)
      {
        if (*(a1 + 4) == 1)
        {
          if (!sub_100009BCC(a1 + 20, &v40))
          {
            v10 = *a1;
            v11 = v40;
            v12 = *(a1 + 2);
            v38 = *(a1 + 1);
            v39 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_1004802E4(buf, v10, v11, &v38);
            v41 = &v40;
            v13 = sub_10047E9C8(a1 + 20, &v40);
            v15 = v45;
            v14 = v46;
            v16 = v44;
            *(v13 + 7) = v43;
            *(v13 + 9) = v16;
            v18 = v49;
            v17 = v50;
            v19 = v48;
            *(v13 + 15) = v47;
            *(v13 + 17) = v19;
            v20 = v54;
            v21 = v53;
            v22 = v51;
            *(v13 + 25) = v52;
            *(v13 + 23) = v22;
            *(v13 + 27) = v21;
            *(v13 + 232) = v20;
            *(v13 + 19) = v18;
            *(v13 + 21) = v17;
            *(v13 + 11) = v15;
            *(v13 + 13) = v14;
            v23 = *&buf[16];
            *(v13 + 3) = *buf;
            *(v13 + 5) = v23;
            sub_10047D860(v13 + 30);
            *(v13 + 15) = v55;
            v13[32] = v56;
            v56 = 0;
            v55 = 0uLL;
            v24 = v62;
            v26 = v60;
            v25 = v61;
            *(v13 + 37) = v59;
            *(v13 + 39) = v26;
            v28 = v57;
            v27 = v58;
            *(v13 + 41) = v25;
            *(v13 + 86) = v24;
            *(v13 + 33) = v28;
            *(v13 + 35) = v27;
            sub_10022457C(v13 + 44, v63);
            *(v13 + 100) = v64;
            *(v13 + 408) = v65;
            sub_10022457C(v13 + 52, v66);
            v13[58] = v66[6];
            sub_1003A8CFC((v13 + 59), &v67);
            v29 = v68;
            v68 = 0u;
            v30 = v13[74];
            *(v13 + 73) = v29;
            if (v30)
            {
              sub_10000AD84(v30);
              if (*(&v68 + 1))
              {
                sub_10000AD84(*(&v68 + 1));
              }
            }

            v67 = off_1009991A0;
            sub_100188E54(v66);
            sub_100188E54(v63);
            v41 = &v55;
            sub_10018907C(&v41);
            if (v39)
            {
              sub_10000AD84(v39);
            }
          }

          *buf = &v40;
          v31 = sub_10047E9C8(a1 + 20, &v40);
          sub_100480488((v31 + 3), a2, a1 + 3);
          v32 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v40;
            *buf = &v40;
            v34 = sub_10047E9C8(a1 + 20, &v40);
            v35 = sub_10048248C((v34 + 3));
            *buf = &v40;
            v36 = sub_10047E9C8(a1 + 20, &v40);
            sub_1004824C0((v36 + 3));
            *buf = 134218496;
            *&buf[4] = v33;
            *&buf[12] = 2048;
            *&buf[14] = v35;
            *&buf[22] = 2048;
            *&buf[24] = v37;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionManager::addRoseMeasurementsToTrackingTargetSet: TargetID 0x%llx, measurement update time ranges from %f to %f after consuming current rose measurements", buf, 0x20u);
          }

          return 1;
        }

        result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_1004D0ADC();
      }

      else
      {
        v8 = qword_1009F9820;
        result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#sf,RoseSensorFusionManager: negative range measurement, return", buf, 2u);
      }
    }
  }

  return 0;
}

void sub_10047CB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a11)
  {
    sub_10000AD84(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10047CB38(uint64_t a1, unint64_t **a2, unsigned __int16 a3)
{
  v21 = a3;
  v5 = sub_100498BC8(a1 + 24);
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = "#sf,RoseSensorFusionManager::addRoseMeasurementsToTrackingTargetSet: Empty IMU buffer";
    v9 = v6;
    v10 = 2;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = sub_100498D5C(a1 + 24);
    v12 = *(a1 + 80);
    v13 = *(*(v12 + ((*(a1 + 104) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 104) & 0x1FFLL));
    v14 = *(*(v12 + (((*(a1 + 104) + *(a1 + 112) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 104) + *(a1 + 112) - 1) & 0x1FF));
    *buf = 134218496;
    *&buf[4] = v11;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    v8 = "#sf,RoseSensorFusionManager::addRoseMeasurementsToTrackingTargetSet: IMU buffer size is %lu, time from %f to %f before measurement update";
    v9 = v6;
    v10 = 32;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:
  v15 = sub_10047C6C0(a1, a2);
  if (v15)
  {
    *buf = *a2;
    v16 = sub_10047ED28((a1 + 200), *buf);
    sub_10027D03C((v16 + 3), &v21);
  }

  else
  {
    v17 = sub_100498BC8(a1 + 24);
    v18 = qword_1009F9820;
    v19 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        sub_1004D0C20();
      }
    }

    else if (v19)
    {
      sub_1004D0B44(a1 + 24, a1, v18);
    }
  }

  return v15;
}

uint64_t sub_10047CD18(void *a1, unsigned __int16 a2)
{
  v13 = a2;
  sub_10047F0FC(v11, (a1 + 25));
  v3 = v12;
  if (!v12)
  {
    return sub_100188F00(v11);
  }

  do
  {
    v4 = v3[4];
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = v3 + 2;
    while (1)
    {
      v6 = *(v4 + 13);
      if (v13 >= v6)
      {
        break;
      }

LABEL_7:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    if (v6 < v13)
    {
      ++v4;
      goto LABEL_7;
    }

    *buf = v3 + 2;
    v7 = sub_10047ED28(a1 + 25, v3 + 2);
    sub_10027DF8C((v7 + 3), &v13);
    if (!v7[5])
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        v9 = *v5;
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#sf,RoseSensorFusionManager: Timing out target with ID 0x%llx since it has no attached service left", buf, 0xCu);
      }

      *buf = *v5;
      sub_10023DF54(a1 + 15, buf);
      sub_10047EFE0(a1 + 25, buf);
      *buf = *v5;
      sub_10047F078(a1 + 20, buf);
      sub_10047EFE0(a1 + 25, buf);
    }

LABEL_13:
    v3 = *v3;
  }

  while (v3);
  return sub_100188F00(v11);
}

uint64_t sub_10047CEE4(uint64_t *a1)
{
  v2 = a1[1];
  if (v2 >= a1[2])
  {
    result = sub_10047F67C(a1);
  }

  else
  {
    sub_100498E54(a1[1]);
    result = v2 + 144;
    a1[1] = v2 + 144;
  }

  a1[1] = result;
  return result;
}