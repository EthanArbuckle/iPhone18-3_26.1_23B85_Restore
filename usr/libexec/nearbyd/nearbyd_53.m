void sub_10040BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10040BF8C(__n128 **a1, __n128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v9 = (*a1)->n128_u64[0];
  v10 = (*a1)->n128_u16[4];
  v8 = (*a1)[1];
  v4 = (*a1)[2].n128_u64[0];
  v2[1].n128_u64[0] = 0;
  v2[1].n128_u64[1] = 0;
  v2[2].n128_u64[0] = 0;
  v5 = v3->n128_u64[0];
  v2->n128_u16[4] = v3->n128_u16[4];
  v2->n128_u64[0] = v5;
  sub_10016D9A8(&v2[1], v3 + 1);
  v3->n128_u64[0] = v9;
  v3->n128_u16[4] = v10;
  v6 = v3[1].n128_u64[0];
  if (v6)
  {
    v3[1].n128_u64[1] = v6;
    operator delete(v6);
  }

  result = v8;
  v3[1] = v8;
  v3[2].n128_u64[0] = v4;
  return result;
}

double sub_10040C024(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v95 = a2;
  v96 = a1;
  v93 = 0;
  v94 = a3;
  v89 = a2->n128_u64[0];
  v90 = a2->n128_u16[4];
  v91 = 0;
  v92 = 0;
  sub_100403D6C(&v91, a2[1].n128_i64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
  v84 = a1->n128_u64[0];
  v85 = a1->n128_u16[4];
  v87 = 0;
  v88 = 0;
  v86 = 0;
  sub_100403D6C(&v86, a1[1].n128_i64[0], a1[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1].n128_u64[1] - a1[1].n128_u64[0]) >> 4));
  v5 = v91;
  v4 = v92;
  v6 = v86;
  v7 = v87;
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  v8 = v4 - v5;
  v9 = v7 - v6;
  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v8 <= v9)
  {
    v16 = v94->n128_u64[0];
    v80 = v94->n128_u16[4];
    v79 = v16;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    sub_100403D6C(&v81, v94[1].n128_i64[0], v94[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v94[1].n128_u64[1] - v94[1].n128_u64[0]) >> 4));
    v17 = v95->n128_u16[4];
    v74 = v95->n128_u64[0];
    v75 = v17;
    v77 = 0;
    v78 = 0;
    v76 = 0;
    sub_100403D6C(&v76, v95[1].n128_i64[0], v95[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v95[1].n128_u64[1] - v95[1].n128_u64[0]) >> 4));
    v20 = v81;
    v19 = v82;
    v21 = v76;
    v22 = v77;
    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    v31 = v19 - v20;
    v32 = v22 - v21;
    if (v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    if (v31 > v32)
    {
      sub_10040BF8C(&v95, &v94);
      v33 = v95->n128_u16[4];
      v69 = v95->n128_u64[0];
      v70 = v33;
      v72 = 0;
      v73 = 0;
      v71 = 0;
      sub_100403D6C(&v71, v95[1].n128_i64[0], v95[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v95[1].n128_u64[1] - v95[1].n128_u64[0]) >> 4));
      v34 = v96->n128_u16[4];
      v64 = v96->n128_u64[0];
      v65 = v34;
      v67 = 0;
      v68 = 0;
      v66 = 0;
      sub_100403D6C(&v66, v96[1].n128_i64[0], v96[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v96[1].n128_u64[1] - v96[1].n128_u64[0]) >> 4));
      v36 = v71;
      v35 = v72;
      v37 = v66;
      v38 = v67;
      if (v66)
      {
        v67 = v66;
        operator delete(v66);
      }

      v42 = v35 - v36;
      v43 = v38 - v37;
      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      if (v42 > v43)
      {
        v25 = &v96;
        v41 = &v95;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v10 = v94->n128_u64[0];
    v60 = v94->n128_u16[4];
    v59 = v10;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    sub_100403D6C(&v61, v94[1].n128_i64[0], v94[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v94[1].n128_u64[1] - v94[1].n128_u64[0]) >> 4));
    v11 = v95->n128_u16[4];
    v54 = v95->n128_u64[0];
    v55 = v11;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    sub_100403D6C(&v56, v95[1].n128_i64[0], v95[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v95[1].n128_u64[1] - v95[1].n128_u64[0]) >> 4));
    v13 = v61;
    v12 = v62;
    v14 = v56;
    v15 = v57;
    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }

    v23 = v12 - v13;
    v24 = v15 - v14;
    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v23 > v24)
    {
      v25 = &v96;
LABEL_25:
      v41 = &v94;
LABEL_30:
      *&result = sub_10040BF8C(v25, v41).n128_u64[0];
      return result;
    }

    sub_10040BF8C(&v96, &v95);
    v26 = v94->n128_u16[4];
    v49 = v94->n128_u64[0];
    v50 = v26;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    sub_100403D6C(&v51, v94[1].n128_i64[0], v94[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v94[1].n128_u64[1] - v94[1].n128_u64[0]) >> 4));
    v44 = v95->n128_u64[0];
    v45 = v95->n128_u16[4];
    v47 = 0;
    v48 = 0;
    v46 = 0;
    sub_100403D6C(&v46, v95[1].n128_i64[0], v95[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v95[1].n128_u64[1] - v95[1].n128_u64[0]) >> 4));
    v28 = v51;
    v27 = v52;
    v29 = v46;
    v30 = v47;
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v39 = v27 - v28;
    v40 = v30 - v29;
    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }

    if (v39 > v40)
    {
      v25 = &v95;
      goto LABEL_25;
    }
  }

  return result;
}

void sub_10040C448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p)
{
  if (__p)
  {
    *v37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10040C4A8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v61 = a2;
  v62 = a1;
  v59 = a4;
  v60 = a3;
  sub_10040C024(a1, a2, a3);
  v54 = a4->n128_u64[0];
  v55 = a4->n128_u16[4];
  v57 = 0;
  v58 = 0;
  v56 = 0;
  sub_100403D6C(&v56, a4[1].n128_i64[0], a4[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1].n128_u64[1] - a4[1].n128_u64[0]) >> 4));
  v49 = a3->n128_u64[0];
  v50 = a3->n128_u16[4];
  v52 = 0;
  v53 = 0;
  v51 = 0;
  sub_100403D6C(&v51, a3[1].n128_i64[0], a3[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1].n128_u64[1] - a3[1].n128_u64[0]) >> 4));
  v10 = v56;
  v9 = v57;
  v11 = v51;
  v12 = v52;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v13 = v9 - v10;
  v14 = v12 - v11;
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v13 > v14)
  {
    sub_10040BF8C(&v60, &v59);
    v15 = v60->n128_u16[4];
    v44 = v60->n128_u64[0];
    v45 = v15;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    sub_100403D6C(&v46, v60[1].n128_i64[0], v60[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v60[1].n128_u64[1] - v60[1].n128_u64[0]) >> 4));
    v39 = a2->n128_u64[0];
    v40 = a2->n128_u16[4];
    v42 = 0;
    v43 = 0;
    v41 = 0;
    sub_100403D6C(&v41, a2[1].n128_i64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
    v17 = v46;
    v16 = v47;
    v18 = v41;
    v19 = v42;
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    v20 = v16 - v17;
    v21 = v19 - v18;
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v20 > v21)
    {
      sub_10040BF8C(&v61, &v60);
      v22 = v61->n128_u16[4];
      v34 = v61->n128_u64[0];
      v35 = v22;
      v37 = 0;
      v38 = 0;
      v36 = 0;
      sub_100403D6C(&v36, v61[1].n128_i64[0], v61[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v61[1].n128_u64[1] - v61[1].n128_u64[0]) >> 4));
      v29 = a1->n128_u64[0];
      v30 = a1->n128_u16[4];
      v32 = 0;
      v33 = 0;
      v31 = 0;
      sub_100403D6C(&v31, a1[1].n128_i64[0], a1[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1].n128_u64[1] - a1[1].n128_u64[0]) >> 4));
      v24 = v36;
      v23 = v37;
      v25 = v31;
      v26 = v32;
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      v27 = v23 - v24;
      v28 = v26 - v25;
      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v27 > v28)
      {
        *&result = sub_10040BF8C(&v62, &v61).n128_u64[0];
      }
    }
  }

  return result;
}

void sub_10040C74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    *v26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10040C78C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  v81 = a2;
  v82 = a1;
  v79 = a4;
  v80 = a3;
  v78 = a5;
  sub_10040C4A8(a1, a2, a3, a4);
  v73 = a5->n128_u64[0];
  v74 = a5->n128_u16[4];
  v76 = 0;
  v77 = 0;
  v75 = 0;
  sub_100403D6C(&v75, a5[1].n128_i64[0], a5[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1].n128_u64[1] - a5[1].n128_u64[0]) >> 4));
  v68 = a4->n128_u64[0];
  v69 = a4->n128_u16[4];
  v71 = 0;
  v72 = 0;
  v70 = 0;
  sub_100403D6C(&v70, a4[1].n128_i64[0], a4[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1].n128_u64[1] - a4[1].n128_u64[0]) >> 4));
  v12 = v75;
  v11 = v76;
  v13 = v70;
  v14 = v71;
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  v15 = v11 - v12;
  v16 = v14 - v13;
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v15 > v16)
  {
    sub_10040BF8C(&v79, &v78);
    v17 = v79->n128_u16[4];
    v63 = v79->n128_u64[0];
    v64 = v17;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    sub_100403D6C(&v65, v79[1].n128_i64[0], v79[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v79[1].n128_u64[1] - v79[1].n128_u64[0]) >> 4));
    v58 = a3->n128_u64[0];
    v59 = a3->n128_u16[4];
    v61 = 0;
    v62 = 0;
    v60 = 0;
    sub_100403D6C(&v60, a3[1].n128_i64[0], a3[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1].n128_u64[1] - a3[1].n128_u64[0]) >> 4));
    v19 = v65;
    v18 = v66;
    v20 = v60;
    v21 = v61;
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    v22 = v18 - v19;
    v23 = v21 - v20;
    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v22 > v23)
    {
      sub_10040BF8C(&v80, &v79);
      v24 = v80->n128_u16[4];
      v53 = v80->n128_u64[0];
      v54 = v24;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      sub_100403D6C(&v55, v80[1].n128_i64[0], v80[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v80[1].n128_u64[1] - v80[1].n128_u64[0]) >> 4));
      v48 = a2->n128_u64[0];
      v49 = a2->n128_u16[4];
      v51 = 0;
      v52 = 0;
      v50 = 0;
      sub_100403D6C(&v50, a2[1].n128_i64[0], a2[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1].n128_u64[1] - a2[1].n128_u64[0]) >> 4));
      v26 = v55;
      v25 = v56;
      v27 = v50;
      v28 = v51;
      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      v29 = v25 - v26;
      v30 = v28 - v27;
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      if (v29 > v30)
      {
        sub_10040BF8C(&v81, &v80);
        v31 = v81->n128_u16[4];
        v43 = v81->n128_u64[0];
        v44 = v31;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        sub_100403D6C(&v45, v81[1].n128_i64[0], v81[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v81[1].n128_u64[1] - v81[1].n128_u64[0]) >> 4));
        v38 = a1->n128_u64[0];
        v39 = a1->n128_u16[4];
        v41 = 0;
        v42 = 0;
        v40 = 0;
        sub_100403D6C(&v40, a1[1].n128_i64[0], a1[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1].n128_u64[1] - a1[1].n128_u64[0]) >> 4));
        v33 = v45;
        v32 = v46;
        v34 = v40;
        v35 = v41;
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        v36 = v32 - v33;
        v37 = v35 - v34;
        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v36 > v37)
        {
          *&result = sub_10040BF8C(&v82, &v81).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void sub_10040CB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (__p)
  {
    *v37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10040CB50(uint64_t *a1, __n128 *a2)
{
  v2 = a2;
  v75 = a2;
  v76 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10040C024(a1, (a1 + 5), (a2 - 40));
        return 1;
      case 4:
        sub_10040C4A8(a1, (a1 + 5), a1 + 5, (a2 - 40));
        return 1;
      case 5:
        sub_10040C78C(a1, (a1 + 5), a1 + 5, (a1 + 15), (a2 - 40));
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
      v5 = a2[-3].n128_u64[1];
      v74 = 0;
      v75 = (a2 - 40);
      v70 = v5;
      v71 = a2[-2].n128_u16[0];
      v72 = 0;
      v73 = 0;
      sub_100403D6C(&v72, a2[-2].n128_i64[1], a2[-1].n128_i64[0], 0xAAAAAAAAAAAAAAABLL * ((a2[-1].n128_u64[0] - a2[-2].n128_u64[1]) >> 4));
      v65 = *a1;
      v66 = *(a1 + 4);
      v68 = 0;
      v69 = 0;
      v67 = 0;
      sub_100403D6C(&v67, a1[2], a1[3], 0xAAAAAAAAAAAAAAABLL * ((a1[3] - a1[2]) >> 4));
      v7 = v72;
      v6 = v73;
      v8 = v67;
      v9 = v68;
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      v36 = v6 - v7;
      v37 = v9 - v8;
      if (v72)
      {
        v73 = v72;
        operator delete(v72);
      }

      if (v36 > v37)
      {
        sub_10040BF8C(&v76, &v75);
      }

      return 1;
    }
  }

  v10 = (a1 + 10);
  sub_10040C024(a1, (a1 + 5), a1 + 5);
  v11 = a1 + 15;
  if (a1 + 15 == v2)
  {
    return 1;
  }

  v39 = 0;
  v42 = (a1 + 7);
  while (2)
  {
    v60 = *v11;
    v61 = *(v11 + 4);
    v13 = v11 + 2;
    v12 = v11[2];
    v63 = 0;
    v64 = 0;
    __p = 0;
    v41 = v11;
    sub_100403D6C(&__p, v12, v11[3], 0xAAAAAAAAAAAAAAABLL * ((v11[3] - v12) >> 4));
    v14 = v10->n128_u64[0];
    v56 = v10->n128_u16[4];
    v55 = v14;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v15 = v10 + 1;
    sub_100403D6C(&v57, v10[1].n128_i64[0], v10[1].n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v10[1].n128_u64[1] - v10[1].n128_u64[0]) >> 4));
    v17 = __p;
    v16 = v63;
    v19 = v57;
    v18 = v58;
    if (!v57)
    {
      v20 = __p;
      if (!__p)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v58 = v57;
    operator delete(v57);
    v20 = __p;
    if (__p)
    {
LABEL_15:
      v63 = v20;
      operator delete(v20);
    }

LABEL_16:
    if (v16 - v17 <= (v18 - v19))
    {
      v21 = v41;
      goto LABEL_37;
    }

    v21 = v41;
    v53 = *v41;
    v54 = *(v41 + 4);
    v22 = v41[2];
    v40 = *(v41 + 3);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    *v41 = v10->n128_u64[0];
    *(v41 + 4) = v10->n128_u16[4];
    sub_10016D9A8(v13, v10 + 1);
    if (v10 == v76)
    {
      v32 = v10;
      goto LABEL_33;
    }

    v23 = v42;
    while (1)
    {
      v48 = v53;
      v49 = v54;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      sub_100403D6C(&v50, v22, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v22) >> 4));
      v43 = v23[-1].n128_u64[0];
      v44 = v23[-1].n128_u16[4];
      v46 = 0;
      v47 = 0;
      v45 = 0;
      sub_100403D6C(&v45, v23->n128_u64[0], v23->n128_i64[1], 0xAAAAAAAAAAAAAAABLL * ((v23->n128_u64[1] - v23->n128_u64[0]) >> 4));
      v24 = v50;
      v25 = v51;
      v26 = v45;
      v27 = v46;
      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      v28 = v25 - v24;
      v29 = v27 - v26;
      if (v50)
      {
        v51 = v50;
        operator delete(v50);
        if (v28 <= v29)
        {
          v32 = v10;
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v28 <= v29)
      {
        break;
      }

LABEL_25:
      v32 = (v10 - 40);
      v15 = (v10 - 24);
      v23[1].n128_u64[1] = v23[-1].n128_u64[0];
      v23[2].n128_u16[0] = v23[-1].n128_u16[4];
      sub_10016D9A8(&v23[2].n128_i64[1], v23);
      v30 = &v23[-3].n128_i8[8];
      v31 = v23 - 1;
      v23 = (v23 - 40);
      v10 = (v10 - 40);
      if (v31 == v76)
      {
        v15 = (v30 + 40);
        goto LABEL_32;
      }
    }

    v15 = (v23 + 40);
    v32 = (v23 + 24);
LABEL_32:
    v21 = v41;
LABEL_33:
    v33 = v40;
    v34 = v53;
    v32->n128_u16[4] = v54;
    v32->n128_u64[0] = v34;
    v35 = v15->n128_u64[0];
    if (v15->n128_u64[0])
    {
      v32[1].n128_u64[1] = v35;
      operator delete(v35);
      v33 = v40;
      v15->n128_u64[0] = 0;
      v15->n128_u64[1] = 0;
      v15[1].n128_u64[0] = 0;
    }

    v15->n128_u64[0] = v22;
    *(v32 + 24) = v33;
    if (v39 != 7)
    {
      ++v39;
      v2 = v75;
LABEL_37:
      v10 = v21;
      v42 = (v42 + 40);
      v11 = &v21[2].n128_i64[1];
      if (&v21[2].n128_i8[8] == v2)
      {
        return 1;
      }

      continue;
    }

    return &v21[2].n128_i8[8] == v75;
  }
}

void sub_10040CFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10040D054(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - __dst) >> 4)) >= a5)
      {
        v21 = 3 * a5;
        v22 = &__dst[48 * a5];
        v23 = &v8[-48 * a5];
        v24 = a1[1];
        while (v23 < v8)
        {
          v25 = *v23;
          v26 = *(v23 + 2);
          v24[1] = *(v23 + 1);
          v24[2] = v26;
          *v24 = v25;
          v24 += 3;
          v23 += 48;
        }

        a1[1] = v24;
        if (v8 != v22)
        {
          memmove(&__dst[48 * a5], __dst, v8 - v22);
        }

        v32 = 16 * v21;
        v33 = v5;
        v34 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          v19 = *v16;
          v20 = *(v16 + 2);
          *(v18 + 1) = *(v16 + 1);
          *(v18 + 2) = v20;
          *v18 = v19;
          v18 += 48;
          v16 += 48;
          v17 += 48;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v27 = &__dst[48 * a5];
        v28 = &v17[-48 * a5];
        v29 = v17;
        while (v28 < v8)
        {
          v30 = *v28;
          v31 = *(v28 + 2);
          *(v29 + 1) = *(v28 + 1);
          *(v29 + 2) = v31;
          *v29 = v30;
          v29 += 48;
          v28 += 48;
        }

        a1[1] = v29;
        if (v18 != v27)
        {
          memmove(&__dst[48 * a5], __dst, v17 - v27);
        }

        v33 = v5;
        v34 = v6;
        v32 = v15;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 4);
    if (v11 > 0x555555555555555)
    {
      sub_100019B38();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_100403898(a1, v14);
    }

    v35 = 16 * (v12 >> 4);
    v36 = (v35 + 48 * a5);
    v37 = 48 * a5;
    v38 = v35;
    do
    {
      v39 = *v6;
      v40 = v6[2];
      v38[1] = v6[1];
      v38[2] = v40;
      *v38 = v39;
      v38 += 3;
      v6 += 3;
      v37 -= 48;
    }

    while (v37);
    memcpy(v36, v5, a1[1] - v5);
    v41 = *a1;
    v42 = &v36[a1[1] - v5];
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v35 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  return v5;
}

uint64_t sub_10040D3DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0xF00000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AABB0;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 0x10)
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

void sub_10040D538(uint64_t a1)
{
  *(a1 + 24) = 0x100000650;
  *a1 = off_1009AABF8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_100571BC0;
  sub_10040D650();
}

void sub_10040D5A0(_Unwind_Exception *exception_object)
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

void sub_10040D5E8(void *a1)
{
  sub_10040D74C(a1);

  operator delete();
}

void *sub_10040D74C(void *a1)
{
  *a1 = off_1009AABF8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1009991A0;
  return a1;
}

uint64_t sub_10040D854(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0xF00000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009AAC88;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 0x10)
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

uint64_t sub_10040D9AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_1003FFC98(a1, a3);
  sub_10041087C(v22 + 32, a4);
  sub_1003FFD30(a1 + 64, a5);
  sub_10038D8EC(a1 + 96, a10);
  sub_10038D984(a1 + 128, a11);
  sub_10038DA1C(a1 + 160, a12);
  sub_10038DAB4(a1 + 192, a13);
  sub_10038DB4C(a1 + 224, a14);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 1065353216;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  sub_10038C990((a1 + 440), a6);
  memcpy((a1 + 464), (a6 + 24), 0x18CuLL);
  *(a1 + 864) = *(a6 + 424);
  sub_10029F1D8((a1 + 880), a6 + 440);
  v23 = *(a6 + 464);
  *(a1 + 916) = *(a6 + 476);
  *(a1 + 904) = v23;
  sub_10029F2B8(a1 + 936, (a6 + 496));
  v24 = *(a6 + 544);
  *(a1 + 968) = *(a6 + 528);
  *(a1 + 984) = v24;
  v25 = *(a6 + 560);
  v26 = *(a6 + 576);
  v27 = *(a6 + 608);
  *(a1 + 1032) = *(a6 + 592);
  *(a1 + 1048) = v27;
  *(a1 + 1000) = v25;
  *(a1 + 1016) = v26;
  v28 = *(a6 + 624);
  v29 = *(a6 + 640);
  v30 = *(a6 + 672);
  *(a1 + 1096) = *(a6 + 656);
  *(a1 + 1112) = v30;
  *(a1 + 1064) = v28;
  *(a1 + 1080) = v29;
  v31 = *(a6 + 688);
  v32 = *(a6 + 704);
  v33 = *(a6 + 720);
  *(a1 + 1176) = *(a6 + 736);
  *(a1 + 1144) = v32;
  *(a1 + 1160) = v33;
  *(a1 + 1128) = v31;
  *(a1 + 1184) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1232) = a9;
  v34 = *a8;
  v35 = a8[1];
  *(a1 + 1272) = *(a8 + 4);
  *(a1 + 1240) = v34;
  *(a1 + 1256) = v35;
  *(a1 + 1280) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1432) = 0;
  sub_10040DD48(a1, a2);
  sub_10029EED4((a1 + 1336), a7);
  sub_10029EED4((a1 + 1368), (a7 + 32));
  *(a1 + 1201) = 1;
  return a1;
}

void sub_10040DBB8(_Unwind_Exception *a1)
{
  if (*(v1 + 1432) == 1)
  {
    for (i = 0; i != -32; i -= 16)
    {
      v7 = *(v1 + 1424 + i);
      if (v7)
      {
        sub_10000AD84(v7);
      }
    }
  }

  v8 = (v1 + 1208);
  v9 = (v1 + 1392);
  v10 = -64;
  v11 = (v1 + 1392);
  while (1)
  {
    v12 = *v11;
    v11 -= 4;
    if (v12 == 1 && *(v9 - 1) < 0)
    {
      operator delete(*(v9 - 3));
    }

    v9 = v11;
    v10 += 32;
    if (!v10)
    {
      if (*(v1 + 1328) == 1 && *(v1 + 1303) < 0)
      {
        operator delete(*(v1 + 1280));
      }

      v13 = *v8;
      if (*v8)
      {
        *(v1 + 1216) = v13;
        operator delete(v13);
      }

      if (*(v1 + 1192) == 1)
      {
      }

      sub_1001BB564(v1 + 440);
      sub_100410BEC(v1 + 400);
      sub_100410BEC(v3);
      sub_100410B6C(v1 + 320);
      sub_100410974(v2);
      sub_100410914(v1 + 256, *v4);
      sub_10038CC70(v1 + 224);
      sub_10038CBF0(v1 + 192);
      sub_10038CB70(v1 + 160);
      sub_10038CAF0(v1 + 128);
      sub_10038CA70(v1 + 96);
      sub_10038DBE4(v1 + 64);
      sub_10038DC64(v1 + 32);
      sub_10038DCE4(v1);
      _Unwind_Resume(a1);
    }
  }
}

void sub_10040DD48(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Region vector is empty.");
  }

  v31 = (a1 + 264);
  do
  {
    v5 = *(v2 + 28);
    v32 = v5;
    for (i = v31; ; ++i)
    {
      do
      {
        i = *i;
        if (!i)
        {
          operator new();
        }

        v7 = *(i + 8);
      }

      while (v5 < v7);
      if (v7 >= v5)
      {
        break;
      }
    }

    v8 = sub_100011390(a1 + 256, &v32);
    v9 = sub_1000113E8(v8, &unk_100571CBC);
    sub_100410FD8(*v9, v2);
    if ((v10 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CE834(v2);
      }

      sub_100410914(a1 + 256, *(a1 + 264));
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 256) = v31;
      v28 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v28, "Region radii are not unique.");
    }

    if (*(v2 + 41) == 1)
    {
      v11 = sub_100011390(a1 + 256, &v32);
      LOBYTE(buf) = 1;
      v12 = sub_1000113E8(v11, &buf);
      sub_100410FD8(*v12, v2);
      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004CE834(v2);
        }

        sub_100410914(a1 + 256, *(a1 + 264));
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
        *(a1 + 256) = v31;
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Region radii are not unique.");
      }
    }

    if (v32 == 5 && *(v2 + 36) == 4)
    {
      sub_10001308C((a1 + 1280), v2);
    }

    v14 = qword_1009F9820;
    v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      v16 = v2;
      if (*(v2 + 23) < 0)
      {
        v16 = *v2;
      }

      v17 = *(v2 + 24);
      buf = 136315650;
      *buf_4 = v16;
      v35 = 2048;
      *v36 = v17;
      *&v36[8] = 1024;
      *&v36[10] = v32;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#regionmon #region-class adding region (%s: %.2f) to region category %d dictionary", &buf, 0x1Cu);
    }

    v2 += 48;
  }

  while (v2 != v3);
  v18 = *(a1 + 256);
  if (v18 != v31)
  {
    do
    {
      v19 = v18[5];
      if (v19 != v18 + 6)
      {
        do
        {
          sub_10040E504(v15, v19[5]);
          v20 = qword_1009F9820;
          v15 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            v21 = *(v19[5] + 16);
            v22 = *(v18 + 8);
            buf = 134218498;
            *buf_4 = v21;
            v35 = 1024;
            *v36 = v22;
            *&v36[4] = 2080;
            *&v36[6] = "YES";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#regionmon region-class %lu regions for region category %d valid: %s", &buf, 0x1Cu);
          }

          v23 = v19[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v19[2];
              v25 = *v24 == v19;
              v19 = v24;
            }

            while (!v25);
          }

          v19 = v24;
        }

        while (v24 != v18 + 6);
      }

      v26 = v18[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v18[2];
          v25 = *v27 == v18;
          v18 = v27;
        }

        while (!v25);
      }

      v18 = v27;
    }

    while (v27 != v31);
  }
}

uint64_t sub_10040E344(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#regionmon ~RegionMonitor", v9, 2u);
  }

  sub_100410C80(a1);
  if (*(a1 + 1432) == 1)
  {
    for (i = 0; i != -32; i -= 16)
    {
      v4 = *(a1 + 1424 + i);
      if (v4)
      {
        sub_10000AD84(v4);
      }
    }
  }

  for (j = 0; j != -64; j -= 32)
  {
    v6 = a1 + j;
    if (*(a1 + j + 1392) == 1 && *(v6 + 1391) < 0)
    {
      operator delete(*(v6 + 1368));
    }
  }

  if (*(a1 + 1328) == 1 && *(a1 + 1303) < 0)
  {
    operator delete(*(a1 + 1280));
  }

  v7 = *(a1 + 1208);
  if (v7)
  {
    *(a1 + 1216) = v7;
    operator delete(v7);
  }

  if (*(a1 + 1192) == 1)
  {
  }

  if (*(a1 + 960) == 1 && *(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  sub_10002074C(a1 + 880, *(a1 + 888));
  sub_10002074C(a1 + 440, *(a1 + 448));
  sub_100410BEC(a1 + 400);
  sub_100410BEC(a1 + 360);
  sub_100410B6C(a1 + 320);
  sub_100410974(a1 + 280);
  sub_100410914(a1 + 256, *(a1 + 264));
  sub_10038CC70(a1 + 224);
  sub_10038CBF0(a1 + 192);
  sub_10038CB70(a1 + 160);
  sub_10038CAF0(a1 + 128);
  sub_10038CA70(a1 + 96);
  sub_10038DBE4(a1 + 64);
  sub_10038DC64(a1 + 32);
  return sub_10038DCE4(a1);
}

uint64_t sub_10040E504(uint64_t a1, void *a2)
{
  if (a2[2] >= 2uLL)
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v4 = v3[1];
        v5 = v4;
        v6 = v3;
        if (v4)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        if (v7 != v2)
        {
          v9 = *(v3 + 15);
          while (v9 == *(v7 + 15))
          {
            v10 = *(v3 + 55);
            if (v10 >= 0)
            {
              v11 = *(v3 + 55);
            }

            else
            {
              v11 = v3[5];
            }

            v12 = *(v7 + 55);
            v13 = v12;
            if ((v12 & 0x80u) != 0)
            {
              v12 = v7[5];
            }

            if (v11 == v12)
            {
              v14 = v7 + 4;
              v15 = v10 >= 0 ? v3 + 4 : v3[4];
              v16 = *v14;
              v17 = v13 >= 0 ? v7 + 4 : *v14;
              if (!memcmp(v15, v17, v11))
              {
                v25 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
                {
                  sub_1004CE9AC(v3 + 55, v3 + 4, v25);
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Region names are not unique.");
                goto LABEL_49;
              }
            }

            v18 = *(v7 + 14);
            v19 = *(v3 + 14);
            if (v18 <= v19)
            {
              sub_1004CE980();
            }

            if ((v18 - v19) < 0.1)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004CE8EC();
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Regions are too close together.");
              goto LABEL_49;
            }

            v20 = v7[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v7[2];
                v8 = *v21 == v7;
                v7 = v21;
              }

              while (!v8);
            }

            v7 = v21;
            if (v21 == v2)
            {
              goto LABEL_32;
            }
          }

          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
          {
            sub_1004CE8B0();
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Region categories in set doesn't match");
LABEL_49:
        }

LABEL_32:
        if (v4)
        {
          do
          {
            v22 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v22 = v3[2];
            v8 = *v22 == v3;
            v3 = v22;
          }

          while (!v8);
        }

        v3 = v22;
      }

      while (v22 != v2);
    }
  }

  return 1;
}

uint64_t sub_10040E7A0(std::string::size_type a1, std::string::size_type a2, int a3, int a4, int a5, double a6)
{
  v8 = 0;
  v44 = a2;
  v42 = a4;
  v43 = a3;
  v41 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v41 = a5;
      v8 = a5;
      goto LABEL_15;
    }

    if (a3 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  switch(a3)
  {
    case 3:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEA68();
      }

      goto LABEL_22;
    case 4:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEA34();
      }

      goto LABEL_22;
    case 5:
LABEL_8:
      v9 = qword_1009F9820;
      v8 = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#regionmon Setting typePredictor as None since WifiToF/ObjectTracking based ranging does not use user intent score.", &buf, 2u);
        v8 = 0;
      }

      break;
  }

LABEL_15:
  sub_10041114C((a1 + 280), &v44);
  v39 = 0;
  v40 = 0;
  v10 = *(a1 + 264);
  if (!v10)
  {
LABEL_20:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CEB1C(&v42, &v44);
    }

LABEL_22:
    v12 = 0;
    return v12 & 1;
  }

  while (1)
  {
    v11 = *(v10 + 8);
    if (v42 >= v11)
    {
      break;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (v11 < v42)
  {
    ++v10;
    goto LABEL_19;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CEA9C(&v42, &v44);
  }

  v14 = sub_100011390(a1 + 256, &v42);
  v15 = sub_1000113E8(v14, &unk_100571CBC);
  v17 = *v15;
  v16 = v15[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v17;
  v40 = v16;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v20 = *v17;
  v18 = (v17 + 1);
  v19 = v20;
  if (v20 != v18)
  {
    do
    {
      sub_1003FFF40(&v36, v19 + 2);
      v21 = *(v19 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v19 + 2);
          v23 = *v22 == v19;
          v19 = v22;
        }

        while (!v23);
      }

      v19 = v22;
    }

    while (v22 != v18);
    v8 = v41;
  }

  v35 = 0;
  if ((v8 & 0xFFFFFFFD) == 1 && (*(a1 + 1432) != 1 || !*(a1 + 1400)))
  {
    memset(&buf, 0, sizeof(buf));
    v48 = 0x3FE8000000000000;
    v47 = *(a1 + 1248);
    if (*(a1 + 1360))
    {
      std::string::operator=(&buf, (a1 + 1336));
      if (*(a1 + 1432))
      {
        LODWORD(v45) = 0;
        sub_1004111E4();
      }

      LODWORD(v45) = 0;
      sub_1004111E4();
    }

    __assert_rtn("initStateForDevice", "NRBYRegionMonitor.mm", 266, "_pathToModelWeights[kIdxUwbSpatialGesturePredictor].has_value()");
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_57;
      }

      v27 = *(a1 + 1248);
      v35 = v27;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon Single antenna spatial gesture threshold set to %f for dev 0x%llx";
    }

    else
    {
      v28 = *(a1 + 1264);
      v35 = v28;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v28;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon No intent classifier threshold set to %f for dev 0x%llx";
    }

LABEL_56:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &buf, 0x16u);
    goto LABEL_57;
  }

  switch(v8)
  {
    case 2:
      v29 = *(a1 + 1240);
      v35 = v29;
      v25 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v29;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
      v26 = "#regionmon AoA intent threshold set to %f for dev 0x%llx";
      goto LABEL_56;
    case 3:
      v24 = *(a1 + 1256);
      v35 = v24;
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
        *(buf.__r_.__value_.__r.__words + 4) = v24;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
        v26 = "#regionmon Dual antenna spatial gesture threshold set to %f for dev 0x%llx";
        goto LABEL_56;
      }

      break;
    case 4:
      __assert_rtn("initStateForDevice", "NRBYRegionMonitor.mm", 298, "0");
  }

LABEL_57:
  v45 = &v44;
  buf.__r_.__value_.__r.__words[0] = &v44;
  buf.__r_.__value_.__l.__size_ = a1;
  buf.__r_.__value_.__r.__words[2] = a1 + 64;
  *&v47 = &v39;
  *(&v47 + 1) = a1 + 440;
  v48 = &v43;
  v49 = &v41;
  v50 = &v35;
  v51 = &v42;
  v52 = a1 + 1400;
  sub_100411350((a1 + 280), &v44);
  v12 = v30;
  if (v30)
  {
    v31 = v44;
    v32 = v42;
    memset(v33, 0, sizeof(v33));
    sub_10038D514(v33, v36, v37, 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 4));
    v34 = 1;
    sub_10040EF34(a1 + 32, 1, v31, v32, v33, v41, a6);
    if (v34 == 1)
    {
      buf.__r_.__value_.__r.__words[0] = v33;
      sub_10038C574(&buf);
    }
  }

  buf.__r_.__value_.__r.__words[0] = &v36;
  sub_10038C574(&buf);
  if (v40)
  {
    sub_10000AD84(v40);
  }

  return v12 & 1;
}

void sub_10040EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a14)
  {
    sub_10000AD84(a14);
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  a13 = &a19;
  sub_10038C574(&a13);
  if (a23)
  {
    sub_10000AD84(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10040EEA4(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  if (*(a1 + 32) == 1)
  {
    v4 = (a1 + 8);
    v5 = 2;
    do
    {
      v6 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
      v7 = *v4;
      *(v4 - 1) = v6;
      if (v7)
      {
        sub_10000AD84(v7);
      }

      ++v2;
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    *a1 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a1 + 16) = a2[1];
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t sub_10040EF34(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7)
{
  v13 = a2;
  v12 = a3;
  v11 = a7;
  v9 = a6;
  v10 = a4;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_100037B10();
  }

  return (*(*v7 + 48))(v7, &v13, &v12, &v11, &v10, a5, &v9);
}

uint64_t sub_10040EFAC(uint64_t a1, std::string::size_type a2, std::string::size_type a3, void *a4, int a5, char a6, int a7, double a8)
{
  v97 = a2;
  v96 = a3;
  v95 = a6;
  v94 = a7;
  if (sub_100009BCC((a1 + 320), &v97))
  {
    v12 = sub_100009978((a1 + 320), &v97);
    if (!v12)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_10041114C(v12 + 3, &v96);
  }

  v13 = sub_100011390(a1 + 256, &v94);
  v14 = sub_1000113E8(v13, &v95);
  v15 = v14[1];
  v92 = *v14;
  v93 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10038C990(v71, a1 + 440);
  memcpy(v72, (a1 + 464), sizeof(v72));
  v73 = *(a1 + 864);
  sub_10029F1D8(v74, a1 + 880);
  *(v75 + 12) = *(a1 + 916);
  v75[0] = *(a1 + 904);
  sub_10029F2B8(&v76, (a1 + 936));
  v91 = *(a1 + 1176);
  v16 = *(a1 + 1048);
  v82 = *(a1 + 1032);
  v83 = v16;
  v17 = *(a1 + 1016);
  v80 = *(a1 + 1000);
  v81 = v17;
  v18 = *(a1 + 1112);
  v86 = *(a1 + 1096);
  v87 = v18;
  v19 = *(a1 + 1080);
  v84 = *(a1 + 1064);
  v85 = v19;
  v20 = *(a1 + 1160);
  v89 = *(a1 + 1144);
  v90 = v20;
  v88 = *(a1 + 1128);
  v21 = *(a1 + 984);
  v78 = *(a1 + 968);
  v79 = v21;
  v22 = *a4;
  v73 = *(*a4 + 32);
  if (&v73 != (v22 + 32))
  {
    sub_10029EC60(v74, *(v22 + 48), (v22 + 56));
  }

  v23 = *(v22 + 72);
  *(v75 + 12) = *(v22 + 84);
  v75[0] = v23;
  sub_10029EED4(&v76, (v22 + 104));
  v24 = *(v22 + 152);
  v78 = *(v22 + 136);
  v79 = v24;
  v25 = *(v22 + 168);
  v26 = *(v22 + 184);
  v27 = *(v22 + 216);
  v82 = *(v22 + 200);
  v83 = v27;
  v80 = v25;
  v81 = v26;
  v28 = *(v22 + 232);
  v29 = *(v22 + 248);
  v30 = *(v22 + 280);
  v86 = *(v22 + 264);
  v87 = v30;
  v84 = v28;
  v85 = v29;
  v31 = *(v22 + 296);
  v32 = *(v22 + 312);
  v33 = *(v22 + 328);
  v91 = *(v22 + 344);
  v89 = v32;
  v90 = v33;
  v88 = v31;
  BYTE8(v78) = *(a1 + 976);
  HIDWORD(v78) = *(a1 + 980);
  LOBYTE(v79) = *(a1 + 984);
  memset(&v70, 0, sizeof(v70));
  v34 = *a4;
  if (*a4 != a4 + 1)
  {
    do
    {
      *&__val.__r_.__value_.__l.__data_ = *(v34 + 2);
      sub_10029F1D8(&__val.__r_.__value_.__r.__words[2], (v34 + 6));
      *&v106[16] = *(v34 + 9);
      *&v106[28] = *(v34 + 84);
      sub_10029F2B8(v107, (v34 + 13));
      v35 = *(v34 + 31);
      v116 = *(v34 + 29);
      v117 = v35;
      v36 = *(v34 + 23);
      v112 = *(v34 + 21);
      v113 = v36;
      v37 = *(v34 + 27);
      v114 = *(v34 + 25);
      v115 = v37;
      v38 = *(v34 + 19);
      v110 = *(v34 + 17);
      v111 = v38;
      v39 = *(v34 + 39);
      v120 = *(v34 + 37);
      v121 = v39;
      v122 = *(v34 + 41);
      v123 = v34[43];
      v40 = *(v34 + 35);
      v118 = *(v34 + 33);
      v119 = v40;
      sub_1003B30EC(v74, &__val.__r_.__value_.__l.__size_);
      std::to_string(&v99, *&__val.__r_.__value_.__l.__size_);
      v41 = std::string::append(&v99, " ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v102 = v41->__r_.__value_.__r.__words[2];
      *__p = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v102 >= 0)
      {
        v43 = __p;
      }

      else
      {
        v43 = __p[0];
      }

      if (v102 >= 0)
      {
        v44 = HIBYTE(v102);
      }

      else
      {
        v44 = __p[1];
      }

      std::string::append(&v70, v43, v44);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (v109 == 1 && v108 < 0)
      {
        operator delete(v107[0]);
      }

      sub_10002074C(&__val.__r_.__value_.__r.__words[2], *v106);
      v45 = v34[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v34[2];
          v47 = *v46 == v34;
          v34 = v46;
        }

        while (!v47);
      }

      v34 = v46;
    }

    while (v46 != a4 + 1);
  }

  v48 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(*a4 + 32);
    v49 = *(*a4 + 36);
    v51 = &v70;
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v70.__r_.__value_.__r.__words[0];
    }

    LODWORD(__val.__r_.__value_.__l.__data_) = 134219010;
    *(__val.__r_.__value_.__r.__words + 4) = v97;
    WORD2(__val.__r_.__value_.__r.__words[1]) = 2048;
    *(&__val.__r_.__value_.__r.__words[1] + 6) = v96;
    HIWORD(__val.__r_.__value_.__r.__words[2]) = 1024;
    *v106 = v50;
    *&v106[4] = 1024;
    *&v106[6] = v49;
    *&v106[10] = 2080;
    *&v106[12] = v51;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#regionmon setting threshold detector parameters for device-part:0x%llx-0x%llx -- sample size: %d, filter type: %d, rssi thresholds: %s", &__val, 0x2Cu);
  }

  v52 = sub_100009BCC((a1 + 320), &v97);
  if (!v52)
  {
    v104 = 1065353216;
    *&__val.__r_.__value_.__l.__data_ = v97;
    v103 = 0;
    v102 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v106[8] = 0;
    __val.__r_.__value_.__r.__words[2] = 0;
    *v106 = 0;
    *&v106[16] = 1065353216;
    sub_100411834((a1 + 320), &__val);
    sub_100410974(&__val.__r_.__value_.__l.__size_);
    sub_100410974(__p);
  }

  v69 = *(a1 + 1264);
  sub_10040FAB4(a1, v95, __p);
  if (a5 <= 3)
  {
    if ((a5 - 1) >= 2)
    {
      if (a5 == 3)
      {
        v53 = sub_100009978((a1 + 320), &v97);
        if (!v53)
        {
          sub_10017C290("unordered_map::at: key not found");
        }

        LODWORD(v98) = 3;
        v68 = 0;
        v99.__r_.__value_.__r.__words[0] = &v96;
        __val.__r_.__value_.__r.__words[0] = &v97;
        __val.__r_.__value_.__l.__size_ = __p;
        __val.__r_.__value_.__r.__words[2] = a1 + 64;
        *v106 = &v92;
        *&v106[8] = v71;
        *&v106[16] = &v98;
        *&v106[24] = &v68;
        *&v106[32] = &v69;
        *&v106[40] = &v94;
        v107[0] = &unk_100571CBD;
        sub_100411AE4(v53 + 3, &v96);
      }

      goto LABEL_51;
    }

LABEL_41:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CEB9C();
    }

    goto LABEL_52;
  }

  if (a5 != 5)
  {
    if (a5 != 4)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

  if (*(a1 + 1432) != 1 || !*(a1 + 1416))
  {
    memset(&__val, 0, sizeof(__val));
    *v106 = vdupq_n_s64(0x3FEB333333333333uLL);
    *&v106[16] = *(a1 + 1272);
    if (*(a1 + 1392))
    {
      std::string::operator=(&__val, (a1 + 1368));
      v69 = *(a1 + 1272);
      if (*(a1 + 1432))
      {
        LODWORD(v98) = 1;
        sub_1004111E4();
      }

      *&v99.__r_.__value_.__l.__data_ = 0uLL;
      LODWORD(v98) = 1;
      sub_1004111E4();
    }

    __assert_rtn("initStateForBluetoothDevice", "NRBYRegionMonitor.mm", 371, "_pathToModelWeights[kIdxMotionBasedSpatialGesturePredictor].has_value()");
  }

  v100 = 0;
  v54 = sub_100009978((a1 + 320), &v97);
  if (!v54)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  v67 = 4;
  v68 = 3;
  v98 = &v96;
  __val.__r_.__value_.__r.__words[0] = &v97;
  __val.__r_.__value_.__l.__size_ = __p;
  __val.__r_.__value_.__r.__words[2] = a1 + 64;
  *v106 = &v92;
  *&v106[8] = v71;
  *&v106[16] = &v68;
  *&v106[24] = &v67;
  *&v106[32] = &v69;
  *&v106[40] = &v94;
  v107[0] = (a1 + 1400);
  v107[1] = &v99;
  sub_100411F80(v54 + 3, &v96);
  sub_1003FFE60(&v99);
LABEL_51:
  if (v52)
  {
LABEL_52:
    v55 = 0;
    goto LABEL_53;
  }

  memset(&__val, 0, sizeof(__val));
  v57 = (v92 + 1);
  v58 = *v92;
  if (*v92 == v92 + 1)
  {
    size = 0;
    v61 = 0;
  }

  else
  {
    do
    {
      sub_1003FFF40(&__val, v58 + 2);
      v59 = *(v58 + 1);
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = *(v58 + 2);
          v47 = *v60 == v58;
          v58 = v60;
        }

        while (!v47);
      }

      v58 = v60;
    }

    while (v60 != v57);
    size = __val.__r_.__value_.__l.__size_;
    v61 = __val.__r_.__value_.__r.__words[0];
  }

  v63 = v97;
  v64 = v94;
  memset(v65, 0, sizeof(v65));
  sub_10038D514(v65, v61, size, 0xAAAAAAAAAAAAAAABLL * ((size - v61) >> 4));
  v66 = 1;
  sub_10040EF34(a1 + 32, 1, v63, v64, v65, 0, a8);
  if (v66 == 1)
  {
    v99.__r_.__value_.__r.__words[0] = v65;
    sub_10038C574(&v99);
  }

  v99.__r_.__value_.__r.__words[0] = &__val;
  sub_10038C574(&v99);
  v55 = 1;
LABEL_53:
  sub_10038DCE4(__p);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v77 == 1 && SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  sub_10002074C(v74, v74[1]);
  sub_10002074C(v71, v71[1]);
  if (v93)
  {
    sub_10000AD84(v93);
  }

  return v55;
}

void sub_10040F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, ...)
{
  va_start(va, a13);
  if (STACK[0x368])
  {
    sub_10000AD84(STACK[0x368]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  sub_10038DCE4(&STACK[0x380]);
  if (a13 < 0)
  {
    operator delete(a8);
  }

  sub_1001BB564(va);
  if (STACK[0x338])
  {
    sub_10000AD84(STACK[0x338]);
  }

  _Unwind_Resume(a1);
}

void *sub_10040FAB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = v7;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v5 = sub_10041076C;
  }

  else
  {
    v4 = v8;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v5 = sub_100410600;
  }

  v4[2] = v5;
  v4[3] = &unk_1009AADB8;
  v4[4] = a1;
  a3[3] = 0;
  *a3 = off_1009AAE88;
  result = objc_retainBlock(v4);
  a3[1] = result;
  a3[3] = a3;
  return result;
}

void sub_10040FB98(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v12 = a2;
  if (sub_100009BCC((a1 + 280), &v12))
  {
    v7 = sub_100009978((a1 + 280), &v12);
    if (!v7)
    {
      goto LABEL_11;
    }

    sub_1003FF54C((v7 + 3), a4);
  }

  if (!sub_100009BCC((a1 + 320), &v12))
  {
    goto LABEL_8;
  }

  v8 = sub_100009978((a1 + 320), &v12);
  if (!v8)
  {
LABEL_11:
    sub_10017C290("unordered_map::at: key not found");
  }

  for (i = v8[5]; i; i = *i)
  {
    sub_1003FF54C((i + 3), a4);
  }

LABEL_8:
  sub_10041114C((a1 + 280), &v12);
  sub_1004124AC((a1 + 320), &v12);
  v10[0] = 0;
  v11 = 0;
  sub_10040EF34(a1 + 32, 0, v12, a3, v10, 0, a4);
  if (v11 == 1)
  {
    v13 = v10;
    sub_10038C574(&v13);
  }
}

void sub_10040FCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t *a14)
{
  if (a12 == 1)
  {
    a14 = &a9;
    sub_10038C574(&a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10040FCD4(std::string::size_type a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 264);
  if (!v6)
  {
    goto LABEL_7;
  }

  v9 = *(a2 + 120);
  while (1)
  {
    v10 = *(v6 + 8);
    if (v9 >= v10)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v10 < v9)
  {
    ++v6;
    goto LABEL_6;
  }

  v18 = sub_100011390(a1 + 256, (a2 + 120))[1];
  if (!v18)
  {
    goto LABEL_7;
  }

  while (*(v18 + 32))
  {
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v19 = sub_100011390(a1 + 256, (a2 + 120));
  if (!*(*sub_1000113E8(v19, &unk_100571CBC) + 16))
  {
    goto LABEL_7;
  }

  v24 = *a2;
  if (!sub_100009BCC((a1 + 280), &v24))
  {
    if (sub_10040E7A0(a1, v24, *(a2 + 20), *(a2 + 120), *(a2 + 124), *(a2 + 8)))
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v20 = sub_100009978((a1 + 280), &v24);
  if (!v20)
  {
    goto LABEL_24;
  }

  if (!sub_1003FF538((v20 + 3), a2))
  {
    v21 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a2 + 20);
      *buf = 134218240;
      v26 = v24;
      v27 = 1024;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#regionmon updating technology for device monitor: %llu, new tech: %d", buf, 0x12u);
    }

    sub_10040FB98(a1, v24, 0, *(a2 + 8));
    if (!sub_10040E7A0(a1, v24, *(a2 + 20), *(a2 + 120), *(a2 + 124), *(a2 + 8)))
    {
LABEL_7:
      v11 = *(a2 + 208);
      *(a4 + 192) = *(a2 + 192);
      *(a4 + 208) = v11;
      *(a4 + 224) = *(a2 + 224);
      v12 = *(a2 + 144);
      *(a4 + 128) = *(a2 + 128);
      *(a4 + 144) = v12;
      v13 = *(a2 + 176);
      *(a4 + 160) = *(a2 + 160);
      *(a4 + 176) = v13;
      v14 = *(a2 + 80);
      *(a4 + 64) = *(a2 + 64);
      *(a4 + 80) = v14;
      v15 = *(a2 + 112);
      *(a4 + 96) = *(a2 + 96);
      *(a4 + 112) = v15;
      v16 = *(a2 + 16);
      *a4 = *a2;
      *(a4 + 16) = v16;
      v17 = *(a2 + 48);
      *(a4 + 32) = *(a2 + 32);
      *(a4 + 48) = v17;
      *(a4 + 232) = 1;
      return;
    }
  }

LABEL_21:
  if (!sub_100009978((a1 + 280), &v24))
  {
    goto LABEL_7;
  }

  v23 = sub_100009978((a1 + 280), &v24);
  if (!v23)
  {
LABEL_24:
    sub_10017C290("unordered_map::at: key not found");
  }

  sub_1003FE77C((v23 + 3), a2, a3, a4);
}

void sub_10040FF34(void *a1, double *a2, char a3)
{
  for (i = a1[37]; i; i = *i)
  {
    if (sub_1003FF300((i + 3)))
    {
      sub_1003FF368(i + 3, a2);
    }
  }

  for (j = a1[42]; j; j = *j)
  {
    v8 = a1[151];
    v9 = a1[152];
    if (v8 != v9)
    {
      while (*v8 != j[2])
      {
        if (++v8 == v9)
        {
          v8 = a1[152];
          break;
        }
      }
    }

    if ((a3 & 1) != 0 || v8 != v9)
    {
      for (k = j[5]; k; k = *k)
      {
        if (sub_1003FF300((k + 3)))
        {
          sub_1003FF368(k + 3, a2);
        }
      }
    }
  }
}

void sub_100410008(uint64_t a1, double a2)
{
  for (i = *(a1 + 296); i; i = *i)
  {
    sub_1003FF954((i + 3), a2);
  }

  for (j = *(a1 + 336); j; j = *j)
  {
    for (k = j[5]; k; k = *k)
    {
      sub_1003FF954((k + 3), a2);
    }
  }
}

uint64_t sub_10041007C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  v9 = a5;
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    sub_100037B10();
  }

  return (*(*v6 + 48))(v6, v11, &v10, &v9, &v8);
}

uint64_t sub_1004100E8(uint64_t result, int a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 120))
  {
    *(result + 1200) = a2;
    if (!a2 || (v4 = *(result + 1216), v5 = *(result + 1208), v4 == v5))
    {
      v7 = result + 96;

      return sub_10041007C(v7, 0, 0, 0, 0, 0);
    }

    else
    {
      do
      {
        v6 = *v5++;
        result = sub_10041007C(v3 + 96, v6, 1, 1, 1, *(v3 + 1201));
      }

      while (v5 != v4);
    }
  }

  else
  {
    for (i = *(result + 336); i; i = *i)
    {
      for (j = i[5]; j; j = *j)
      {
        result = sub_1003FF348((j + 3));
        if (result)
        {
          result = sub_1003FF358((j + 3), v2);
        }
      }
    }
  }

  return result;
}

void sub_1004101CC(void *a1, unint64_t a2, double a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, char a8, int a9)
{
  v36 = a2;
  if ((sub_100410394(a1, a2) & 1) != 0 || a9)
  {
    v16 = sub_100009978(a1 + 45, &v36);
    if (!v16)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_100012FB4(__dst, (v16 + 3));
    v17 = sub_100009978(a1 + 50, &v36);
    if (!v17)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_100012FB4(v30, (v17 + 3));
    v18 = a6[13];
    v29[12] = a6[12];
    v29[13] = v18;
    v29[14] = a6[14];
    v19 = a6[9];
    v29[8] = a6[8];
    v29[9] = v19;
    v20 = a6[11];
    v29[10] = a6[10];
    v29[11] = v20;
    v21 = a6[5];
    v29[4] = a6[4];
    v29[5] = v21;
    v22 = a6[7];
    v29[6] = a6[6];
    v29[7] = v22;
    v23 = a6[1];
    v29[0] = *a6;
    v29[1] = v23;
    *&v24 = *&a7;
    v25 = v24;
    v27 = a6[2];
    v26 = a6[3];
    if (a8)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v29[2] = a6[2];
    v29[3] = v26;
    sub_1003FF284(a1, a2, __dst, v30, v29, v28 & 0xFFFFFFFEFFFFFFFFLL | ((a8 & 1) << 32), a9, a3);
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100410348(_Unwind_Exception *exception_object)
{
  if (*(v1 - 152) == 1 && *(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  if (*(v1 - 96) == 1 && *(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100410394(void *a1, unint64_t a2)
{
  v17 = a2;
  __dst[0].__r_.__value_.__s.__data_[0] = 0;
  v16 = 0;
  v12.__r_.__value_.__s.__data_[0] = 0;
  v14 = 0;
  if (sub_100009BCC(a1 + 45, &v17))
  {
    v3 = sub_100009978(a1 + 45, &v17);
    if (!v3)
    {
      sub_10017C290("unordered_map::at: key not found");
    }

    sub_1003FFAA0(__dst, v3 + 1);
  }

  v4 = sub_100009978(a1 + 40, &v17);
  if (!v4)
  {
    sub_10017C290("unordered_map::at: key not found");
  }

  for (i = v4[5]; i; i = *i)
  {
    sub_100012FB4(&__p, (i + 35));
    v6 = v11;
    if (v11 == 1)
    {
      if (v14 == 1 && v10 >= v13)
      {
LABEL_11:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        continue;
      }

      sub_1003FFAA0(&v12, &__p);
      v6 = v11;
    }

    if (v6)
    {
      goto LABEL_11;
    }
  }

  if (v16 != v14 || !v16)
  {
    if (v16 != v14)
    {
      goto LABEL_19;
    }

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if (sub_100013120(__dst, &v12))
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_1004105AC(a1 + 45, &v17, &v12);
  sub_1004105AC(a1 + 50, &v17, __dst);
  v7 = 1;
LABEL_22:
  if (v14 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v16 == 1 && SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_10041053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a28 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 32) == 1 && *(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1004105AC(void *a1, unint64_t *a2, std::string *a3)
{
  v4 = sub_1004124F8(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    sub_1003FFAA0(v4 + 24, a3);
  }

  return v5;
}

void sub_100410600(uint64_t a1, unint64_t a2, __int128 *a3, __int128 *a4, _OWORD *a5, uint64_t a6, int a7, double a8)
{
  v14 = *(a1 + 32);
  sub_100012FB4(&__dst, a3);
  sub_100012FB4(&v25, a4);
  v15 = a5[13];
  v24[12] = a5[12];
  v24[13] = v15;
  v24[14] = a5[14];
  v16 = a5[9];
  v24[8] = a5[8];
  v24[9] = v16;
  v17 = a5[11];
  v24[10] = a5[10];
  v24[11] = v17;
  v18 = a5[5];
  v24[4] = a5[4];
  v24[5] = v18;
  v19 = a5[7];
  v24[6] = a5[6];
  v24[7] = v19;
  v20 = a5[1];
  v24[0] = *a5;
  v24[1] = v20;
  v21 = a5[3];
  v24[2] = a5[2];
  v24[3] = v21;
  sub_1004101CC(v14, a2, a8, v22, v23, v24, COERCE_UNSIGNED_INT64(*&a6) & (a6 << 31 >> 63), BYTE4(a6) & 1, a7);
  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(__dst);
  }
}

void sub_100410720(_Unwind_Exception *exception_object)
{
  if (*(v1 - 144) == 1 && *(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 88) == 1 && *(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(exception_object);
}

void sub_10041076C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  sub_100012FB4(&__dst, a3);
  sub_100012FB4(&__p, a4);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1004107E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a25 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041080C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_10041087C(uint64_t a1, uint64_t a2)
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

void sub_100410914(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100410914(a1, *a2);
    sub_100410914(a1, a2[1]);
    sub_10027D480((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t sub_100410974(uint64_t a1)
{
  sub_1004109B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1004109B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004109F4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1004109F4(uint64_t a1)
{
  for (i = 1224; i != 1208; i -= 8)
  {
    v3 = *(a1 + i);
    *(a1 + i) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 960) == 1 && *(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  sub_10002074C(a1 + 880, *(a1 + 888));
  sub_10002074C(a1 + 440, *(a1 + 448));
  if (*(a1 + 416) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 304) == 1 && *(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v5)
  {
    sub_1000197C8(v5 + 8);
    operator delete();
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 112);
  if (v7)
  {
    sub_10000AD84(v7);
  }

  sub_1003FFE60(a1 + 72);
  sub_10038DBE4(a1 + 40);
  sub_10038DCE4(a1 + 8);
  return a1;
}

uint64_t sub_100410B6C(uint64_t a1)
{
  sub_100410BA8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100410BA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100410974((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100410BEC(uint64_t a1)
{
  sub_100410C28(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100410C28(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 72) == 1 && *(v3 + 47) < 0)
      {
        operator delete(v3[3]);
      }

      operator delete(v3);
    }

    while (v2);
  }
}

uint64_t sub_100410C80(uint64_t a1)
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

void sub_100410D24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009AADE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100410D88(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_100410E44();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

uint64_t *sub_100410EE8(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *sub_100410FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10041108C();
  }

  v3 = *(a2 + 24);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 14);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100411130(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10022FCD8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10041114C(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100411198(v4);
    return 1;
  }

  return result;
}

uint64_t sub_100411198(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004109F4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100411258(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1009AAE38;
  sub_1003C2284(a1 + 3);
  return a1;
}

void sub_1004112D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009AAE38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100411350(void *a1, unint64_t *a2)
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
    v9 = *a2;
    sub_100411584();
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

void sub_100411570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100411638(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = (a1 + 1);
  v6 = **a3;
  sub_1003FFC98(v28, *(a3 + 8));
  sub_1003FFD30(v27, *(a3 + 16));
  v7 = *(a3 + 24);
  v9 = *v7;
  v8 = v7[1];
  v23 = v9;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 32);
  v11 = **(a3 + 40);
  v12 = **(a3 + 48);
  v13 = **(a3 + 56);
  v14 = *(a3 + 72);
  v15 = **(a3 + 64);
  v21[0] = 0;
  v22 = 0;
  if (*(v14 + 32) == 1)
  {
    for (i = 0; i != 32; i += 16)
    {
      v17 = *(v14 + i);
      *&v21[i] = v17;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    v22 = 1;
  }

  v26 = 0;
  sub_1003FE768(v5, v6, v28, v27, &v23, v10, v11, v12, v15, v21, v25);
  sub_1003FFE60(v25);
  if (v22 == 1)
  {
    for (j = 24; j != -8; j -= 16)
    {
      v19 = *&v21[j];
      if (v19)
      {
        sub_10000AD84(v19);
      }
    }
  }

  if (v24)
  {
    sub_10000AD84(v24);
  }

  sub_10038DBE4(v27);
  sub_10038DCE4(v28);
  return a1;
}

void sub_1004117C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  sub_1003FFE60(va1);
  if (v14 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v8 = *(va + i);
      if (v8)
      {
        sub_10000AD84(v8);
      }
    }
  }

  if (v16)
  {
    sub_10000AD84(v16);
  }

  sub_10038DBE4(v5 - 104);
  sub_10038DCE4(v5 - 72);
  _Unwind_Resume(a1);
}

void *sub_100411834(void *a1, unint64_t *a2)
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

void sub_100411A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100411A98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100411A98(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100410974(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100411AE4(void *a1, unint64_t *a2)
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
    v9 = *a2;
    sub_100411D18();
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

void sub_100411D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100411DCC(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = **a3;
  sub_1003FFC98(v24, *(a3 + 8));
  sub_1003FFD30(v23, *(a3 + 16));
  v6 = *(a3 + 24);
  v8 = *v6;
  v7 = v6[1];
  v19 = v8;
  v20 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 32);
  v10 = **(a3 + 40);
  v11 = **(a3 + 48);
  v12 = **(a3 + 56);
  v13 = **(a3 + 64);
  v17[0] = 0;
  v18 = 0;
  v22 = 0;
  sub_1003FE768((a1 + 1), v5, v24, v23, &v19, v9, v10, v11, v13, v17, v21);
  sub_1003FFE60(v21);
  if (v18 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v15 = *&v17[i];
      if (v15)
      {
        sub_10000AD84(v15);
      }
    }
  }

  if (v20)
  {
    sub_10000AD84(v20);
  }

  sub_10038DBE4(v23);
  sub_10038DCE4(v24);
  return a1;
}

void sub_100411F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  sub_1003FFE60(va1);
  if (v14 == 1)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v8 = *(va + i);
      if (v8)
      {
        sub_10000AD84(v8);
      }
    }
  }

  if (v16)
  {
    sub_10000AD84(v16);
  }

  sub_10038DBE4(v5 - 104);
  sub_10038DCE4(v5 - 72);
  _Unwind_Resume(a1);
}

void *sub_100411F80(void *a1, unint64_t *a2)
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
    v9 = *a2;
    sub_1004121B4();
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

void sub_1004121A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100411198(va);
  _Unwind_Resume(a1);
}

void *sub_100412270(void *a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v5 = (a1 + 1);
  v6 = **a3;
  sub_1003FFC98(v27, *(a3 + 8));
  sub_1003FFD30(v26, *(a3 + 16));
  v7 = *(a3 + 24);
  v9 = *v7;
  v8 = v7[1];
  v23 = v9;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 32);
  v11 = **(a3 + 40);
  v12 = **(a3 + 48);
  v13 = **(a3 + 56);
  v14 = *(a3 + 72);
  v15 = **(a3 + 64);
  v21[0] = 0;
  v22 = 0;
  if (*(v14 + 32) == 1)
  {
    for (i = 0; i != 32; i += 16)
    {
      v17 = *(v14 + i);
      *&v21[i] = v17;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    v22 = 1;
  }

  sub_1003FFDC8(v25, *(a3 + 80));
  sub_1003FE768(v5, v6, v27, v26, &v23, v10, v11, v12, v15, v21, v25);
  sub_1003FFE60(v25);
  if (v22 == 1)
  {
    for (j = 24; j != -8; j -= 16)
    {
      v19 = *&v21[j];
      if (v19)
      {
        sub_10000AD84(v19);
      }
    }
  }

  if (v24)
  {
    sub_10000AD84(v24);
  }

  sub_10038DBE4(v26);
  sub_10038DCE4(v27);
  return a1;
}

void sub_100412438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_1003FFE60(va1);
  if (v14)
  {
    for (i = 24; i != -8; i -= 16)
    {
      v8 = *(va + i);
      if (v8)
      {
        sub_10000AD84(v8);
      }
    }
  }

  if (v16)
  {
    sub_10000AD84(v16);
  }

  sub_10038DBE4(va2);
  sub_10038DCE4(v5 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_1004124AC(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_100021AE0(a1, result, v4);
    sub_100411A98(v4);
    return 1;
  }

  return result;
}

void *sub_1004124F8(void *a1, unint64_t *a2)
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
    sub_100412724();
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

void sub_100412700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1004127D4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004127B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004127D4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004127D4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 72) == 1 && *(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100412870(uint64_t a1)
{

  operator delete();
}

id sub_1004128C4(uint64_t a1, void *a2)
{
  *a2 = off_1009AAE88;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10041290C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t sub_100412924(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009AAEE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100412970(uint64_t *a1, unint64_t *a2, uint64_t *a3, __int128 *a4, __int128 *a5, _OWORD *a6, void *a7, unsigned __int8 *a8, __n128 a9)
{
  v9 = *a1;
  a9.n128_u64[0] = *a2;
  v10 = *a3;
  LOBYTE(v24) = 0;
  v28 = 0;
  if (*(a4 + 48) == 1)
  {
    v24 = *a4;
    v25 = *(a4 + 2);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *a4 = 0;
    v26 = *(a4 + 24);
    v27 = *(a4 + 20);
    v28 = 1;
  }

  LOBYTE(v19) = 0;
  v23 = 0;
  if (*(a5 + 48) == 1)
  {
    v19 = *a5;
    v20 = *(a5 + 2);
    *(a5 + 1) = 0;
    *(a5 + 2) = 0;
    *a5 = 0;
    v21 = *(a5 + 24);
    v22 = *(a5 + 20);
    v23 = 1;
  }

  v11 = a6[5];
  v18[4] = a6[4];
  v18[5] = v11;
  v12 = a6[3];
  v18[2] = a6[2];
  v18[3] = v12;
  v13 = a6[9];
  v18[8] = a6[8];
  v18[9] = v13;
  v14 = a6[7];
  v18[6] = a6[6];
  v18[7] = v14;
  v15 = a6[14];
  v18[13] = a6[13];
  v18[14] = v15;
  v16 = a6[12];
  v18[11] = a6[11];
  v18[12] = v16;
  v18[10] = a6[10];
  v17 = a6[1];
  v18[0] = *a6;
  v18[1] = v17;
  (*(v9 + 16))(v9, v10, &v24, &v19, v18, *a7, *a8, a9);
  if (v23 == 1 && SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (v28 == 1 && SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }
}

void sub_100412AD0(_Unwind_Exception *a1)
{
  if (*(v2 - 112) == 1 && *(v2 - 137) < 0)
  {
    operator delete(*(v2 - 160));
  }

  sub_1004CEBD0((v1 + 48), v2 - 96);
  _Unwind_Resume(a1);
}

void sub_100412B04()
{
  v0 = objc_autoreleasePoolPush();
  v8[0] = xmmword_100571C9C;
  v8[1] = unk_100571CAC;
  sub_1001BD0B0(qword_1009F8E70, v8, 4);
  xmmword_1009F8E88 = xmmword_100563BD0;
  unk_1009F8E98 = xmmword_100563BE0;
  qword_1009F8EB0 = 0;
  unk_1009F8EB8 = 0;
  qword_1009F8EA8 = 0x3FD999999999999ALL;
  unk_1009F8EC0 = xmmword_100563BF0;
  dword_1009F8ED0 = 5;
  qword_1009F8ED8 = 0x4000000000000000;
  dword_1009F8EE0 = 5;
  byte_1009F8EE8 = 0;
  unk_1009F8EEC = 0x30000000ALL;
  xmmword_1009F8EF8 = xmmword_100563C00;
  unk_1009F8F08 = xmmword_100563C10;
  xmmword_1009F8F18 = xmmword_100563C20;
  qword_1009F8F28 = 0x3FE3333333333333;
  dword_1009F8F30 = 3;
  xmmword_1009F8F38 = xmmword_100563C30;
  unk_1009F8F48 = xmmword_100563C10;
  xmmword_1009F8F58 = xmmword_100563C00;
  qword_1009F8F68 = 0x3FE3333333333333;
  byte_1009F8F70 = 0;
  xmmword_1009F8F78 = xmmword_100563C40;
  unk_1009F8F88 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v6 = _Q0;
  xmmword_1009F8F98 = _Q0;
  qword_1009F8FA8 = 0xBFD3333333333333;
  xmmword_1009F8FB0 = xmmword_100563C60;
  qword_1009F8FC0 = 0x3E99999A40000000;
  xmmword_1009F8FC8 = xmmword_100563BE0;
  qword_1009F8FE0 = 0;
  unk_1009F8FE8 = 0;
  qword_1009F8FD8 = 0x3FD999999999999ALL;
  xmmword_1009F8FF0 = xmmword_100563BF0;
  dword_1009F9000 = 5;
  qword_1009F9008 = 0x4000000000000000;
  dword_1009F9010 = 4;
  qword_1009F9018 = 0x300000008;
  qword_1009F9020 = 0xC04E800000000000;
  v7 = 0xC04E800000000000;
  sub_1001BD370(algn_1009F9028, &v7, 1);
  xmmword_1009F9040 = xmmword_100563C70;
  qword_1009F9050 = 0x4024000000000000;
  dword_1009F9058 = 45;
  byte_1009F9060 = 0;
  byte_1009F9078 = 0;
  qword_1009F9080 = 0;
  byte_1009F9088 = 0;
  dword_1009F908C = 1;
  byte_1009F9090 = 1;
  xmmword_1009F9098 = xmmword_100563C80;
  xmmword_1009F90A8 = xmmword_100563C90;
  xmmword_1009F90B8 = v6;
  qword_1009F90C8 = 0xC059000000000000;
  xmmword_1009F90D0 = xmmword_100563CA0;
  qword_1009F90E0 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F90E8 = xmmword_100563BE0;
  qword_1009F90F8 = 0x3FD999999999999ALL;
  xmmword_1009F9100 = 0u;
  unk_1009F9110 = xmmword_100563BF0;
  dword_1009F9120 = 5;
  qword_1009F9128 = 0x4000000000000000;
  dword_1009F9130 = 10;
  qword_1009F9138 = 0x4034000000000000;
  dword_1009F9140 = 3;
  xmmword_1009F9148 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F8E70, &_mh_execute_header);
  __cxa_atexit(nullsub_73, off_1009EC348, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC350, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

double sub_100412E44(double *a1)
{
  v1 = (*a1 + 1.57079633) * 6378137.0;
  v2 = round(v1 * 0.0009765625) * 1024.0;
  v3 = v1 - v2;
  v4 = (a1[1] + 3.14159265) * (cos(v2 / 6378137.0 + -1.57079633) * 6378137.0);
  return v3;
}

double sub_100412EF0(double *a1, double *a2)
{
  v4 = round(((*a1 + 1.57079633) * 6378137.0 - *a2) * 0.0009765625) * 1024.0;
  v5 = (*a2 + v4) / 6378137.0 + -1.57079633 + 1.57079633;
  v6 = fmod(v5, 3.14159265);
  if (v5 >= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 3.14159265;
  }

  v8 = v6 + v7 + -1.57079633;
  v9 = cos(v4 / 6378137.0 + -1.57079633);
  fmod((a2[1] + round(((a1[1] + 3.14159265) * (v9 * 6378137.0) - a2[1]) * 0.0009765625) * 1024.0) / (v9 * 6378137.0) + -3.14159265 + 3.14159265, 6.28318531);
  return v8;
}

uint64_t sub_100413024(double a1)
{
  v1 = llround(log(a1 * 0.5) * 15.0 / 4.60517019);
  if (v1 >= 15)
  {
    v1 = 15;
  }

  return v1 & ~(v1 >> 31);
}

long double sub_10041306C(unsigned int a1)
{
  v1 = exp(a1 / 15.0 * 4.60517019);
  result = v1 + v1;
  if (result < 2.0)
  {
    result = 2.0;
  }

  if (result > 200.0)
  {
    return 200.0;
  }

  return result;
}

void sub_1004130BC(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = off_1009AAF08;
  *(a1 + 48) = 0;
  *(a1 + 280) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 408) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 345) = 0u;
  v5 = [[CMAPrecisionFindingManagerAdapter alloc] initWithFindingManager:a1];
  v6 = *(a1 + 304);
  *(a1 + 304) = v5;

  if (v4)
  {
    objc_storeStrong((a1 + 288), a2);
    v7 = [[CMAPrecisionFindingManager alloc] initWithDelegate:*(a1 + 304) dispatchQueue:*(a1 + 288) findeeType:1];
    v8 = *(a1 + 296);
    *(a1 + 296) = v7;

    [*(a1 + 296) startDeviceFindingUpdates];
    operator new();
  }

  __assert_rtn("DeviceFinderAlgorithms", "DeviceFinderAlgorithms.mm", 31, "externalQueue");
}

void sub_100413300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  dispatch_assert_queue_V2(*(a1 + 288));
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
  *(a2 + 412) = 0;
  *(a2 + 416) = 0;
  *(a2 + 420) = 0;
  *(a2 + 424) = 0;
  *(a2 + 428) = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (*(a1 + 280) == 1)
  {
    v5 = *(a1 + 48);
  }

  v6 = *(a1 + 320);
  if (!v6 || ([v6 doubleValue], !*(a1 + 312)))
  {
    if (*(a1 + 32))
    {
      v10 = *(a1 + 8);
      *(a2 + 8) = v5;
      *(a2 + 16) = v10;
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
      *(a2 + 412) = 0;
      *(a2 + 416) = 1;
      *(a2 + 420) = sub_1004136F8(a1);
      *(a2 + 424) = 1;
      goto LABEL_11;
    }

LABEL_15:
    sub_1000195BC();
  }

  *(a2 + 412) = 7;
  *(a2 + 416) = 1;
  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (*(a2 + 240) == 1)
  {
    *(a2 + 240) = 0;
  }

  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 28) = 1;
  *(a2 + 56) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 121) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  sub_100413598(a1, a2, LODWORD(v8) | &_mh_execute_header);
LABEL_11:
  objc_autoreleasePoolPop(v4);
  v14 = [*(a1 + 352) mutableCopy];
  if ((*(a2 + 240) & 1) == 0)
  {
    sub_1000195BC();
  }

  v11 = [NSNumber numberWithDouble:*(a2 + 24)];
  [v14 setObject:v11 forKey:@"DISPLAYED_DISTANCE"];

  v12 = [v14 copy];
  v13 = *(a1 + 352);
  *(a1 + 352) = v12;
}

id sub_100413598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 312) convergenceStatus];
  v7 = *(a1 + 328);
  v8 = 0;
  if (v7)
  {
    [v7 doubleValue];
    v10 = v9;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a1 + 336);
  if (v12)
  {
    [v12 doubleValue];
    v8 = v13;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v6 == 2;
  if (v6 == 2)
  {
    if (*(a2 + 272) == BYTE4(a3))
    {
      if (*(a2 + 272))
      {
        *(a2 + 264) = *&a3;
      }
    }

    else if (*(a2 + 272))
    {
      *(a2 + 272) = 0;
    }

    else
    {
      *(a2 + 264) = *&a3;
      *(a2 + 272) = 1;
    }

    *(a2 + 248) = v10;
    *(a2 + 256) = v11;
    *(a2 + 368) = v8;
    *(a2 + 376) = v14;
    *(a2 + 412) = 6;
    *(a2 + 416) = 1;
  }

  if ([*(a1 + 312) revokeReason])
  {
    if ([*(a1 + 312) revokeReason] == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = sub_1004136F8(a1);
  }

  *(a2 + 420) = v15;
  *(a2 + 424) = 1;
  result = [*(a1 + 312) verticalState];
  if (result)
  {
    result = [*(a1 + 312) verticalState];
    v17 = 4 * (result == 2);
    if (result == 1)
    {
      v17 = 1;
    }

    *(a2 + 280) = v17;
  }

  return result;
}

void *sub_1004136F8(uint64_t a1)
{
  result = *(a1 + 344);
  if (result)
  {
    v3 = [result motionState];
    if (v3 < 8 && ((0x8Bu >> v3) & 1) != 0)
    {
      return dword_100571FDC[v3];
    }

    else
    {
      v4 = qword_1009F9820;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1004CEC04(v5, [*(a1 + 344) motionState], v4);
      }

      return 0;
    }
  }

  return result;
}

void sub_1004137D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 181) != 1 || *(a2 + 180) > 2u)
  {

    sub_1004138FC(a1, a2);
  }

  else
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a2 + 181) & 1) == 0)
      {
        sub_1000195BC();
      }

      v6 = *(a2 + 180);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,mmsValStatus %d does not pass check, rejecting range result event", v7, 8u);
    }
  }
}

void sub_1004138FC(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  sub_100224EF8();
  sub_100413AC0(a1, a2, *(a1 + 360));
  sub_100224EF8();
  v5 = *(a1 + 280);
  v7 = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 48) = *a2;
  *(a1 + 64) = v7;
  *(a1 + 80) = v6;
  v8 = *(a2 + 96);
  v10 = *(a2 + 48);
  v9 = *(a2 + 64);
  *(a1 + 128) = *(a2 + 80);
  *(a1 + 144) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v13 = *(a2 + 112);
  v12 = *(a2 + 128);
  *(a1 + 192) = *(a2 + 144);
  *(a1 + 208) = v11;
  *(a1 + 160) = v13;
  *(a1 + 176) = v12;
  v15 = *(a2 + 192);
  v14 = *(a2 + 208);
  v16 = *(a2 + 176);
  *(a1 + 272) = *(a2 + 224);
  *(a1 + 240) = v15;
  *(a1 + 256) = v14;
  *(a1 + 224) = v16;
  if ((v5 & 1) == 0)
  {
    *(a1 + 280) = 1;
  }

  v17 = objc_opt_new();
  [v17 setTimestamp:*(a2 + 8)];
  [v17 setRange:*(a2 + 16)];
  [v17 setRangeError:*(a2 + 40)];
  if (*(a2 + 72))
  {
    [v17 setRssi:*(a2 + 64)];
  }

  if ((*(a2 + 176) & 0x10000) != 0)
  {
    [v17 setCycleIndex:*(a2 + 176)];
  }

  if (*(a1 + 296))
  {
    sub_100224EF8();
    [*(a1 + 296) updateRanging:v17];
    sub_100224EF8();
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413AC0(uint64_t a1, uint64_t a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v6 = *(a2 + 8);
  if (*(a1 + 408) == 1 && v6 <= *(a1 + 400))
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 408) & 1) == 0)
      {
        sub_1000195BC();
      }

      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      v13 = *(a1 + 400);
      *buf = 134218496;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,Not passing range measurement to range filter, range: %0.2f m, timestamp: %f s, range filter time: %f s", buf, 0x20u);
    }
  }

  else
  {
    v7 = *(a2 + 16);
    *buf = *(a2 + 8);
    *&buf[8] = v7;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v16) = 0;
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 134218240;
      *&v14[4] = v7;
      *&v14[12] = 2048;
      *&v14[14] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#findalgs-devicefinder,Passing range measurement to range filter, range: %0.2f m, timestamp: %f s", v14, 0x16u);
    }

    sub_1003C9B88(*(a1 + 368), buf, a3, 1, v14);
    if (*(a1 + 408) == 1)
    {
      *(a1 + 408) = 0;
    }

    v9 = *&v14[16];
    *(a1 + 376) = *v14;
    *(a1 + 392) = v9;
    *(a1 + 408) = 1;
  }
}

void sub_100413CB4(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setTimestamp:*a2];
  [v5 setQuaternion:{a2[8], a2[9], a2[10], a2[7]}];
  [v5 setRotationRate:{a2[4], a2[5], a2[6]}];
  [v5 setAcceleration:{a2[1], a2[2], a2[3]}];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateDeviceMotion:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413D74(uint64_t a1, _BYTE *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = v5;
  if (*a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setCrown:v7];
  if (a2[1])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setWrist:v8];
  v9 = *(a1 + 296);
  if (v9)
  {
    [v9 updateWatchOrientation:v6];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413E2C(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  if (*(a2 + 16) == 1)
  {
    v5 = *(a2 + 8);
    *(a1 + 360) = v5 != 0;
    if (v5 == 2)
    {
      v6 = 3;
    }

    else if (v5 == 1)
    {
      v6 = 7;
    }

    else
    {
      v6 = v5 == 0;
    }

    [*(a1 + 344) setMotionState:v6];
  }

  else
  {
    [*(a1 + 344) setMotionState:0];
    *(a1 + 360) = 1;
  }

  v11 = 0.0;
  if (*(a2 + 128) == 1)
  {
    sub_1003FD084(a1, &v11, *(a2 + 120));
    if (v7)
    {
      [*(a1 + 344) setTimestamp:v11];
      v8 = *(a1 + 296);
      if (v8)
      {
        [v8 updatePeerState:*(a1 + 344)];
      }

      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CEC90(v9);
      }
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CEC4C(v10);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100413F78(uint64_t a1, double *a2)
{
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 setMachAbsoluteTimestamp:*a2];
  [v5 setRelativeAltitude:a2[1]];
  [v5 setPressure:a2[2]];
  v6 = *(a1 + 296);
  if (v6)
  {
    [v6 updateAltimeterData:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10041401C(uint64_t a1)
{
  [*(a1 + 304) invalidate];
  [*(a1 + 296) stopDeviceFindingUpdates];
  v2 = *(a1 + 296);
  *(a1 + 296) = 0;

  v3 = *(a1 + 352);
  *(a1 + 352) = 0;
}

void sub_100414070(uint64_t a1, void *a2)
{
  v15 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  objc_storeStrong((a1 + 312), a2);
  if (*(a1 + 312))
  {
    v4 = [*(a1 + 352) mutableCopy];
    v5 = [*(a1 + 312) horizontalDistanceNumber];
    v6 = *(a1 + 320);
    *(a1 + 320) = v5;

    v7 = [*(a1 + 312) horizontalAngleNumber];
    v8 = *(a1 + 328);
    *(a1 + 328) = v7;

    v9 = [*(a1 + 312) horizontalAngleAccuracyNumber];
    v10 = *(a1 + 336);
    *(a1 + 336) = v9;

    v11 = *(a1 + 320);
    if (v11)
    {
      [v4 setObject:v11 forKey:@"CMA_DISTANCE"];
    }

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 312) revokeReason]);
    [v4 setObject:v12 forKey:@"REVOKE_REASON"];

    v13 = [v4 copy];
    v14 = *(a1 + 352);
    *(a1 + 352) = v13;
  }
}

void sub_1004141CC(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 288));
  v4 = [*(a1 + 352) mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v5 objectForKeyedSubscript:{v9, v13}];
        [v4 setObject:v10 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v4 copy];
  v12 = *(a1 + 352);
  *(a1 + 352) = v11;
}

void sub_1004143B8(uint64_t a1)
{
  sub_1004143F0(a1);

  operator delete();
}

uint64_t sub_1004143F0(uint64_t a1)
{
  *a1 = off_1009AAF08;
  sub_1003AFB60((a1 + 368), 0);

  return a1;
}

void sub_100414484()
{
  v0 = objc_autoreleasePoolPush();
  v1 = xmmword_100571F50;
  v2[0] = unk_100571F60;
  v2[1] = xmmword_100571F70;
  v2[2] = unk_100571F80;
  qword_1009F9160 = 0;
  unk_1009F9168 = 0;
  qword_1009F9158 = 0;
  sub_10004EEB8(&qword_1009F9158, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9158, &_mh_execute_header);
  v1 = xmmword_100571F90;
  qword_1009F9178 = 0;
  unk_1009F9180 = 0;
  qword_1009F9170 = 0;
  sub_10004EEB8(&qword_1009F9170, &v1, v2, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9170, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

double *sub_1004145A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0x100000003;
  v13 = off_1009A8F78;
  v14 = xmmword_10056EDA0;
  v16 = &v17;
  sub_1003A920C(a1, a2, &v13);
  v30 = 0x100000003;
  v28 = off_1009A8F78;
  v29 = xmmword_10056EDA0;
  v31 = &v32;
  v25 = 0x100000134;
  v23 = off_1009A9168;
  v24 = xmmword_10056EEA0;
  v26 = &v27;
  v20 = 0x100000003;
  v18 = off_1009A8F78;
  v19 = xmmword_10056EDA0;
  v21 = &v22;
  sub_1003AFEC0(&v13, &v28, &v23, &v18, "2");
  v7 = v6;
  *sub_1003AFDBC(a3, 0) = v6;
  if (v7 == 0.0)
  {
    *sub_1003A8DB0(a4, 0, 0) = 0;
    *sub_1003A8DB0(a4, 0, 1) = 0;
    result = sub_1003A8DB0(a4, 0, 2);
    *result = 0.0;
  }

  else
  {
    v8 = sub_1002EB67C(&v13, 0);
    v9 = 1.0 / v7;
    *sub_1003A8DB0(a4, 0, 0) = 1.0 / v7 * v8;
    v10 = sub_1002EB67C(&v13, 1u);
    *sub_1003A8DB0(a4, 0, 1) = v9 * v10;
    v11 = sub_1002EB67C(&v13, 2u);
    result = sub_1003A8DB0(a4, 0, 2);
    *result = v9 * v11;
  }

  return result;
}

void sub_1004147CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = 0x100000003;
  v25 = off_1009A8F78;
  v26 = xmmword_10056EDA0;
  v28 = &v29;
  sub_1003A920C(a1, a2, &v25);
  v22 = 0x100000003;
  v20 = off_1009A8F78;
  v21 = xmmword_10056EDA0;
  v23 = &v24;
  sub_1003A90A8(a3, &v25, &v20);
  v42 = 0x100000003;
  v40 = off_1009A8F78;
  v41 = xmmword_10056EDA0;
  v43 = &v44;
  v37 = 0x100000134;
  v36 = xmmword_10056EEA0;
  v35 = off_1009A9168;
  v38 = v39;
  v32 = 0x100000003;
  v31 = xmmword_10056EDA0;
  v30 = off_1009A8F78;
  v33 = &v34;
  sub_1003AFEC0(&v20, &v40, &v35, &v30, "2");
  v9 = v8;
  v10 = sub_1002EB67C(&v20, 0);
  v11 = sub_1002EB67C(&v20, 1u);
  v12 = sub_1002EB67C(&v20, 2u);
  if (v9 != 0.0)
  {
    v13 = v12;
    v14 = sub_1003AFDBC(a4, 0);
    *v14 = atan2(v13, v11);
    v15 = sub_1003AFDBC(a4, 1u);
    *v15 = asin(v10 / v9);
    v16 = v13 * v13 + v11 * v11;
    v17 = 1.0 / (v9 * v9);
    *sub_1003A8DB0(a5, 0, 0) = 0;
    v18 = sqrt(v16);
    *sub_1003A8DB0(a5, 1, 0) = v17 * v18;
    v19 = sub_1003A8DB0(a5, 0, 1);
    if (v16 == 0.0)
    {
      *v19 = 0.0;
      *sub_1003A8DB0(a5, 0, 2) = 0;
      *sub_1003A8DB0(a5, 1, 1) = 0;
      *sub_1003A8DB0(a5, 1, 2) = 0;
    }

    else
    {
      *v19 = -v13 / v16;
      *sub_1003A8DB0(a5, 0, 2) = v11 / v16;
      *sub_1003A8DB0(a5, 1, 1) = v17 * (-(v10 * v11) / v18);
      *sub_1003A8DB0(a5, 1, 2) = v17 * (-(v10 * v13) / v18);
    }
  }

  v37 = 0x300000002;
  v36 = xmmword_10056FAE0;
  v35 = off_1009A9E98;
  v38 = v39;
  sub_1003A90A8(a5, a3, &v35);
  sub_1003A8CFC(a5, &v35);
}

void sub_100414B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0x300000001;
  v13 = off_1009A9E50;
  v14 = xmmword_10056FAD0;
  v16 = &v17;
  sub_1004145A0(a3, a4, a5, &v13);
  v10 = 0x300000001;
  v8 = off_1009A9E50;
  v9 = xmmword_10056FAD0;
  v11 = &v12;
  sub_1003A90A8(&v13, a2, &v8);
  sub_1003A8CFC(a6, &v8);
}

void sub_100414C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0x300000002;
  v14 = off_1009A9E98;
  v15 = xmmword_10056FAE0;
  v17 = &v18;
  sub_1004147CC(a3, a4, a5, a6, &v14);
  v11 = 0x300000002;
  v9 = off_1009A9E98;
  v10 = xmmword_10056FAE0;
  v12 = &v13;
  sub_1003A90A8(&v14, a2, &v9);
  sub_1003A8CFC(a7, &v9);
}

double *sub_100414D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002EB67C(a1, 0);
  v7 = sub_1002EB67C(a1, 1u);
  v8 = sub_1002EB67C(a1, 2u);
  v9 = __sincos_stret(v8);
  v10 = __sincos_stret(v7);
  v11 = v6 * v9.__cosval;
  *sub_1003AFDBC(a2, 0) = v10.__sinval * (v6 * v9.__cosval);
  *sub_1003AFDBC(a2, 1u) = v6 * v9.__sinval;
  v12 = v10.__cosval * (v6 * v9.__cosval);
  *sub_1003AFDBC(a2, 2u) = v12;
  *sub_1003A8DB0(a3, 0, 0) = v10.__sinval * v9.__cosval;
  *sub_1003A8DB0(a3, 1, 0) = v9.__sinval;
  *sub_1003A8DB0(a3, 2, 0) = v10.__cosval * v9.__cosval;
  *sub_1003A8DB0(a3, 0, 1) = v12;
  *sub_1003A8DB0(a3, 1, 1) = 0;
  *sub_1003A8DB0(a3, 2, 1) = v10.__sinval * -(v6 * v9.__cosval);
  v13 = -(v6 * v9.__sinval);
  *sub_1003A8DB0(a3, 0, 2) = v10.__sinval * v13;
  *sub_1003A8DB0(a3, 1, 2) = v11;
  result = sub_1003A8DB0(a3, 2, 2);
  *result = v10.__cosval * v13;
  return result;
}

void sub_100414EB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1002EB67C(a1, 0);
  v5 = sub_1002EB67C(a1, 1u);
  v6 = sub_1002EB67C(a1, 2u);
  *(a2 + 24) = 0x100000003;
  *a2 = off_1009A8F78;
  *(a2 + 8) = xmmword_10056EDA0;
  *(a2 + 32) = a2 + 40;
  *sub_1003AFDBC(a2, 0) = sqrt(v5 * v5 + v4 * v4 + v6 * v6);
  if (*sub_1003AFDBC(a2, 0) <= 0.0)
  {
    *sub_1003AFDBC(a2, 1u) = 0;
    *sub_1003AFDBC(a2, 2u) = 0;
  }

  else
  {
    v7 = sub_1003AFDBC(a2, 1u);
    *v7 = atan2(v4, v6);
    v8 = *sub_1003AFDBC(a2, 0);
    v9 = sub_1003AFDBC(a2, 2u);
    *v9 = asin(v5 / v8);
  }
}

long double sub_100415018@<D0>(uint64_t a1@<X8>, double a2@<D0>, long double a3@<D1>, long double a4@<D2>)
{
  *(a1 + 24) = 0x100000003;
  *a1 = off_1009A8F78;
  *(a1 + 8) = xmmword_10056EDA0;
  *(a1 + 32) = a1 + 40;
  v8 = sub_1003AFDBC(a1, 0);
  *v8 = sin(a3) * a2;
  v9 = sub_1003AFDBC(a1, 1u);
  v10 = cos(a3) * a2;
  *v9 = v10 * cos(a4);
  v11 = sub_1003AFDBC(a1, 2u);
  result = v10 * sin(a4);
  *v11 = result;
  return result;
}

double sub_10041511C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  *sub_1003A8DB0(a2, 1, 0) = v4 * v5 + v6 * v7 + v4 * v5 + v6 * v7;
  v8 = v4 * v6;
  v9 = v5 * v7;
  *sub_1003A8DB0(a2, 2, 0) = v4 * v6 - v5 * v7 + v4 * v6 - v5 * v7;
  *sub_1003A8DB0(a2, 0, 1) = v4 * v5 - v6 * v7 + v4 * v5 - v6 * v7;
  *sub_1003A8DB0(a2, 1, 1) = v5 * v5 - v4 * v4 - v6 * v6 + v7 * v7;
  v10 = v4 * v7;
  v11 = v5 * v6;
  *sub_1003A8DB0(a2, 2, 1) = v11 + v10 + v11 + v10;
  *sub_1003A8DB0(a2, 0, 2) = v8 + v9 + v8 + v9;
  *sub_1003A8DB0(a2, 1, 2) = v11 - v10 + v11 - v10;
  v12 = sub_1003A8DB0(a2, 2, 2);
  result = -v15 - v14 + v6 * v6 + v7 * v7;
  *v12 = result;
  return result;
}

double sub_10041537C(double a1)
{
  v1 = 1.0;
  if (a1 <= 1.0)
  {
    return v1;
  }

  v1 = 5.0;
  if (a1 >= 10.0)
  {
    return v1;
  }

  else
  {
    return (a1 + -1.0) * 0.444444444 + 1.0;
  }
}

void sub_1004153BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0x100000003;
  v27 = xmmword_10056EDA0;
  v26 = off_1009A8F78;
  v29 = &v30;
  v6 = sub_1002EB67C(a1, 0);
  *sub_1003AFDBC(&v26, 0) = v6;
  v7 = sub_1002EB67C(a1, 1u);
  *sub_1003AFDBC(&v26, 1u) = v7;
  v8 = sub_1002EB67C(a1, 2u);
  *sub_1003AFDBC(&v26, 2u) = v8;
  v9 = sub_1002EB67C(a1, 3u);
  v10 = __sincos_stret(v9);
  v23 = 0x300000003;
  v22 = xmmword_10056EDB0;
  v21 = off_1009A8FC0;
  v24 = &v25;
  *sub_1003A8DB0(&v21, 0, 0) = v10.__cosval;
  *sub_1003A8DB0(&v21, 1, 0) = 0;
  *sub_1003A8DB0(&v21, 2, 0) = -v10.__sinval;
  *sub_1003A8DB0(&v21, 0, 1) = 0;
  *sub_1003A8DB0(&v21, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(&v21, 2, 1) = 0;
  *sub_1003A8DB0(&v21, 0, 2) = v10.__sinval;
  *sub_1003A8DB0(&v21, 1, 2) = 0;
  *sub_1003A8DB0(&v21, 2, 2) = v10.__cosval;
  v13 = 0x100000003;
  v11 = off_1009A8F78;
  v12 = xmmword_10056EDA0;
  v14 = &v15;
  sub_1003A90A8(&v21, a2, &v11);
  v18 = 0x100000003;
  v16 = off_1009A8F78;
  v17 = xmmword_10056EDA0;
  v19 = &v20;
  sub_1003A8EBC(&v11, &v26, &v16);
  sub_1003A8CFC(a3, &v16);
}

double sub_100415650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = 0x100000003;
  v35 = xmmword_10056EDA0;
  v34 = off_1009A8F78;
  v37 = &v38;
  v8 = sub_1002EB67C(a1, 0);
  *sub_1003AFDBC(&v34, 0) = v8;
  v9 = sub_1002EB67C(a1, 1u);
  *sub_1003AFDBC(&v34, 1u) = v9;
  v10 = sub_1002EB67C(a1, 2u);
  *sub_1003AFDBC(&v34, 2u) = v10;
  v11 = sub_1002EB67C(a1, 3u);
  v12 = __sincos_stret(v11);
  v31 = 0x300000003;
  v30 = xmmword_10056EDB0;
  v29 = off_1009A8FC0;
  v32 = &v33;
  *sub_1003A8DB0(&v29, 0, 0) = v12.__cosval;
  *sub_1003A8DB0(&v29, 1, 0) = 0;
  *sub_1003A8DB0(&v29, 2, 0) = -v12.__sinval;
  *sub_1003A8DB0(&v29, 0, 1) = 0;
  *sub_1003A8DB0(&v29, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(&v29, 2, 1) = 0;
  *sub_1003A8DB0(&v29, 0, 2) = v12.__sinval;
  *sub_1003A8DB0(&v29, 1, 2) = 0;
  *sub_1003A8DB0(&v29, 2, 2) = v12.__cosval;
  v26 = 0x100000003;
  v25 = xmmword_10056EDA0;
  v24 = off_1009A8F78;
  v27 = &v28;
  sub_1003A90A8(&v29, a2, &v24);
  v21 = 0x100000003;
  v19 = off_1009A8F78;
  v20 = xmmword_10056EDA0;
  v22 = v23;
  sub_1003A8EBC(&v24, &v34, &v19);
  sub_1003A8CFC(a3, &v19);
  v21 = 0x400000003;
  v19 = off_1009A9008;
  v20 = xmmword_10056EDC0;
  v22 = v23;
  sub_1003A8C00(&v19, 3, 4);
  sub_1003A8C50(&v19, 0.0);
  sub_1003A8CFC(a4, &v19);
  *sub_1003A8DB0(a4, 0, 0) = 0x3FF0000000000000;
  *sub_1003A8DB0(a4, 1, 1) = 0x3FF0000000000000;
  *sub_1003A8DB0(a4, 2, 2) = 0x3FF0000000000000;
  v13 = sub_1002EB67C(a2, 0);
  v14 = sub_1002EB67C(a2, 2u);
  *sub_1003A8DB0(a4, 0, 3) = v12.__cosval * v14 + -v12.__sinval * v13;
  v15 = sub_1002EB67C(a2, 0);
  v16 = sub_1002EB67C(a2, 2u);
  v17 = sub_1003A8DB0(a4, 2, 3);
  result = v16 * -v12.__sinval - v12.__cosval * v15;
  *v17 = result;
  return result;
}

double *sub_100415A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002EB67C(a1, 3u);
  v32 = 0x100000003;
  v30 = off_1009A8F78;
  v31 = xmmword_10056EDA0;
  v33 = &v34;
  sub_1004153BC(a1, a3, &v30);
  v27 = 0x100000003;
  v25 = off_1009A8F78;
  v26 = xmmword_10056EDA0;
  v28 = &v29;
  sub_1003A920C(&v30, a2, &v25);
  v47 = 0x100000003;
  v45 = off_1009A8F78;
  v46 = xmmword_10056EDA0;
  v48 = &v49;
  v42 = 0x100000134;
  v41 = xmmword_10056EEA0;
  v40 = off_1009A9168;
  v43 = &v44;
  v37 = 0x100000003;
  v36 = xmmword_10056EDA0;
  v35 = off_1009A8F78;
  v38 = &v39;
  sub_1003AFEC0(&v25, &v45, &v40, &v35, "2");
  v12 = v11;
  *sub_1003AFDBC(a4, 0) = v11;
  if (v12 == 0.0)
  {
    *sub_1003A8DB0(a5, 0, 0) = 0;
    *sub_1003A8DB0(a5, 0, 1) = 0;
    *sub_1003A8DB0(a5, 0, 2) = 0;
    result = sub_1003A8DB0(a5, 0, 3);
    *result = 0.0;
  }

  else
  {
    v13 = __sincos_stret(v10);
    v14 = 1.0 / v12;
    v15 = sub_1002EB67C(&v25, 0);
    *sub_1003A8DB0(a5, 0, 0) = v14 * v15;
    v16 = sub_1002EB67C(&v25, 1u);
    *sub_1003A8DB0(a5, 0, 1) = v14 * v16;
    v17 = sub_1002EB67C(&v25, 2u);
    *sub_1003A8DB0(a5, 0, 2) = v14 * v17;
    v18 = sub_1002EB67C(a3, 0);
    v19 = v13.__cosval * sub_1002EB67C(a3, 2u) - v13.__sinval * v18;
    v20 = sub_1002EB67C(a3, 0);
    v21 = -(v13.__sinval * sub_1002EB67C(a3, 2u)) - v13.__cosval * v20;
    v22 = sub_1002EB67C(&v25, 0);
    v23 = sub_1002EB67C(&v25, 2u);
    result = sub_1003A8DB0(a5, 0, 3);
    *result = v14 * (v21 * v23 + v19 * v22);
  }

  return result;
}

void sub_100415D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002EB67C(a1, 0);
  v7 = sub_1002EB67C(a1, 1u);
  v8 = sub_1002EB67C(a1, 2u);
  v9 = sqrt(v7 * v7 + v6 * v6 + v8 * v8);
  *sub_1003AFDBC(a2, 0) = v9;
  if (v9 <= 0.0)
  {
    *sub_1003AFDBC(a2, 1u) = 0;
    *sub_1003AFDBC(a2, 2u) = 0;
    v20 = 0x300000003;
    v18 = off_1009A8FC0;
    v19 = xmmword_10056EDB0;
    v21 = &v22;
    sub_1003A8C00(&v18, 3, 3);
    sub_1003A8C50(&v18, 0.0);
    sub_1003A8CFC(a3, &v18);
  }

  else
  {
    v10 = atan2(v6, v8);
    *sub_1003AFDBC(a2, 1u) = v10;
    v11 = asin(v7 / v9);
    *sub_1003AFDBC(a2, 2u) = v11;
    v12 = sub_1002EB67C(a1, 0) / v9;
    *sub_1003A8DB0(a3, 0, 0) = v12;
    v13 = sub_1002EB67C(a1, 1u) / v9;
    *sub_1003A8DB0(a3, 0, 1) = v13;
    v14 = sub_1002EB67C(a1, 2u) / v9;
    *sub_1003A8DB0(a3, 0, 2) = v14;
    v15 = v8 * v8 + v6 * v6;
    v16 = 1.0 / (v9 * v9);
    *sub_1003A8DB0(a3, 1, 1) = 0;
    v17 = sqrt(v15);
    *sub_1003A8DB0(a3, 2, 1) = v17 * v16;
    if (v15 <= 0.0)
    {
      *sub_1003A8DB0(a3, 1, 0) = 0;
      *sub_1003A8DB0(a3, 1, 2) = 0;
      *sub_1003A8DB0(a3, 2, 0) = 0;
      *sub_1003A8DB0(a3, 2, 2) = 0;
    }

    else
    {
      *sub_1003A8DB0(a3, 1, 0) = v8 / v15;
      *sub_1003A8DB0(a3, 1, 2) = -v6 / v15;
      *sub_1003A8DB0(a3, 2, 0) = -(v7 * v6) / v17 * v16;
      *sub_1003A8DB0(a3, 2, 2) = -(v7 * v8) / v17 * v16;
    }
  }
}

uint64_t sub_100416060()
{
  v1 = xmmword_100572008;
  v2[0] = unk_100572018;
  v2[1] = xmmword_100572028;
  v2[2] = unk_100572038;
  qword_1009F9190 = 0;
  unk_1009F9198 = 0;
  qword_1009F9188 = 0;
  sub_10004EEB8(&qword_1009F9188, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F9188, &_mh_execute_header);
  v1 = xmmword_100572048;
  qword_1009F91A8 = 0;
  unk_1009F91B0 = 0;
  qword_1009F91A0 = 0;
  sub_10004EEB8(&qword_1009F91A0, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F91A0, &_mh_execute_header);
}

void sub_100416164(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 360) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 536) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 488) = 0u;
  operator new();
}

void sub_100416304(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 456);
  if (!v4 || *a2 > *(*(*(a1 + 424) + (((v4 + *(a1 + 448) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v4 + *(a1 + 448) - 1) & 0x1F) << 7)))
  {
    v5 = *(a1 + 464);
    *(a1 + 464) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 480) = *(a2 + 96);
    *(a1 + 472) = v6;
    v7 = *a2;
    if (*(a1 + 24) != 1 || *(a1 + 16) < v7)
    {
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
    }

    v8 = *(a2 + 80);
    if (v5 == v8)
    {
      goto LABEL_19;
    }

    if (v8 == 2)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v13 = *a2;
      *buf = 134217984;
      *&buf[4] = v13;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Normal at %f s";
    }

    else if (v8 == 1)
    {
      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v12 = *a2;
      *buf = 134217984;
      *&buf[4] = v12;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Limited at %f s";
    }

    else
    {
      if (v8)
      {
        goto LABEL_19;
      }

      v9 = qword_1009F9820;
      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = *a2;
      *buf = 134217984;
      *&buf[4] = v10;
      v11 = "#sa_algo_moving_findee,VIO Tracking State changed to Not Available at %f s";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_19:
    sub_100416808(a1, a2);
    v14 = *(a2 + 80);
    if (v5 == 2 && v14 != 2)
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO Tracking not normal anymore - resetting", buf, 2u);
      }

      if (*(a1 + 360) == 1)
      {
        v16 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO Tracking not normal before the cached measurement can be interpolated - passing the cached measurement to the range filter without VIO", buf, 2u);
        }
      }

      sub_100416C44(a1);
      v14 = *(a2 + 80);
    }

    if (v14 == 2)
    {
      if (*(a2 + 84) == 1)
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a2;
          if (*(a2 + 85))
          {
            v19 = "YES";
          }

          else
          {
            v19 = "NO";
          }

          *buf = 134218498;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "YES";
          *&buf[22] = 2080;
          *&buf[24] = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO reported relocalization event at %f s, MAJOR: %s, MINOR: %s - resetting", buf, 0x20u);
        }

        sub_100416C44(a1);
      }

      else
      {
        if (*(a2 + 85) == 1)
        {
          v20 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *a2;
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,VIO reported MINOR relocalization event at %f s", buf, 0xCu);
          }
        }

        v22 = 0;
        v23 = *(a2 + 16);
        v24 = *(a2 + 32);
        v25 = *(a2 + 48);
        v26 = *(a2 + 64);
        v33 = xmmword_10056EE60;
        *__p = xmmword_10056EE70;
        v35 = xmmword_10056EE80;
        v36 = xmmword_10056EE90;
        do
        {
          *&buf[v22 * 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*&__p[v22 - 2])), v24, __p[v22 - 2], 1), v25, *&__p[v22 - 2], 2), v26, *&__p[v22 - 2], 3);
          v22 += 2;
        }

        while (v22 != 8);
        v27 = *buf;
        v28 = *&buf[16];
        v29 = v38;
        v30 = v39;
        v31 = *(a2 + 80);
        v32 = *(a2 + 84);
        *buf = *a2;
        *&buf[16] = v27;
        v38 = v28;
        v39 = v29;
        v40 = v30;
        v41 = v31;
        v42 = v32;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        sub_1003AAEB4(a1 + 416, buf);
        sub_1003B65E0(*(a1 + 64), &v33, *buf, *&v40, *(&v40 + 1), *(&v40 + 2));
        sub_1003AAF5C(a1 + 72, &v33);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    sub_100416CFC(a1);
    sub_1004173AC(a1);
    sub_100417A34(a1);
    return;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CECD4();
  }
}

void sub_1004167E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100416808(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*(result + 40) != 1 || v3 - *(result + 32) >= 0.2)
  {
    *(result + 32) = v3;
    *(result + 40) = 1;
    sub_10026B0D4(&v21);
    sub_10000EA44(&v21, "tracking state: ", 16);
    v4 = *(a2 + 80);
    if (v4 < 3)
    {
      sub_10000EA44(&v21, (&off_1009AB0C0)[v4], qword_1005720B8[v4]);
    }

    sub_10000EA44(&v21, ", light intensity ", 18);
    if (*(a2 + 96) == 1)
    {
      v5 = v21;
      *(&v21 + *(v21 - 3) + 8) = *(&v21 + *(v21 - 3) + 8) & 0xFFFFFEFB | 4;
      *(&v23[0].__locale_ + *(v5 - 3)) = 2;
      v6 = *(a2 + 88);
      std::ostream::operator<<();
    }

    else
    {
      sub_10000EA44(&v21, "-", 1);
    }

    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      std::stringbuf::str();
      v9 = v20 >= 0 ? &__p : __p;
      v10 = *(a2 + 32);
      v11 = COERCE_FLOAT(*(a2 + 16));
      v12 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v13 = COERCE_FLOAT(*(a2 + 24));
      v14 = COERCE_FLOAT(HIDWORD(*(a2 + 16)));
      v15 = *(a2 + 48);
      v16 = *(a2 + 64);
      v17 = COERCE_FLOAT(HIDWORD(*(a2 + 32)));
      v18 = COERCE_FLOAT(*(a2 + 40));
      *buf = 134222338;
      v26 = v8;
      v27 = 2080;
      v28 = v9;
      v29 = 2048;
      v30 = v11;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = v14;
      v37 = 2048;
      v38 = *&v10;
      v39 = 2048;
      v40 = v17;
      v41 = 2048;
      v42 = v18;
      v43 = 2048;
      v44 = *(&v10 + 3);
      v45 = 2048;
      v46 = *&v15;
      v47 = 2048;
      v48 = *(&v15 + 1);
      v49 = 2048;
      v50 = *(&v15 + 2);
      v51 = 2048;
      v52 = *(&v15 + 3);
      v53 = 2048;
      v54 = *&v16;
      v55 = 2048;
      v56 = *(&v16 + 1);
      v57 = 2048;
      v58 = *(&v16 + 2);
      v59 = 2048;
      v60 = *(&v16 + 3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose timestamp: %f, %s, pose [%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ...\n\t%3.2f, %3.2f, %3.2f, %3.2f, ... \n\t%3.2f, %3.2f, %3.2f, %3.2f]", buf, 0xB6u);
      if (v20 < 0)
      {
        operator delete(__p);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    std::locale::~locale(v23);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_100416C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038B85C(va);
  _Unwind_Resume(a1);
}

void sub_100416C44(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    *(a1 + 360) = 0;
  }

  v2 = *(a1 + 424);
  v3 = *(a1 + 432);
  *(a1 + 456) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 432);
      v2 = (*(a1 + 424) + 8);
      *(a1 + 424) = v2;
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
      goto LABEL_10;
    }

    v6 = 32;
  }

  *(a1 + 448) = v6;
LABEL_10:
  if (*(a1 + 120) == 1)
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      *(a1 + 96) = v7;
      operator delete(v7);
    }

    *(a1 + 120) = 0;
  }

  sub_1003B83F8(*(a1 + 64));
  *(a1 + 536) = 0;
}

void sub_100416CFC(uint64_t a1)
{
  if (*(a1 + 360) != 1)
  {
    return;
  }

  v2 = *(a1 + 456);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 136);
  v4 = *(a1 + 448);
  v6 = *(a1 + 424);
  v5 = *(a1 + 432);
  if (v5 == v6)
  {
    v22 = (v6 + 8 * (v4 >> 5));
    goto LABEL_16;
  }

  v7 = (v4 >> 2) & 0x3FFFFFFFFFFFFFF8;
  v8 = (v6 + v7);
  v9 = *(v6 + v7) + ((*(a1 + 448) & 0x1FLL) << 7);
  v10 = v4 + v2;
  v11 = ((v4 + v2) >> 2) & 0x3FFFFFFFFFFFFFF8;
  v12 = *(a1 + 144);
  v13 = *(v6 + v11) + ((v10 & 0x1F) << 7);
  *buf = v6 + v7;
  *&buf[8] = v9;
  if (v13 != v9)
  {
    v14 = ((v13 - *(v6 + v11)) >> 7) + 4 * (v11 - v7);
    v15 = v9 - *(v6 + v7);
    v16 = v14 - (v15 >> 7);
    if (v14 != v15 >> 7)
    {
      do
      {
        v17 = v16 >> 1;
        v18 = sub_1003B0628(buf, v16 >> 1);
        if (v3 >= *v19)
        {
          v20 = v19 + 16;
          if ((v19 - *v18 + 128) == 4096)
          {
            v21 = v18[1];
            ++v18;
            v20 = v21;
          }

          *buf = v18;
          *&buf[8] = v20;
          v17 = v16 + ~v17;
        }

        v16 = v17;
      }

      while (v17);
      v8 = *buf;
      v9 = *&buf[8];
      v4 = *(a1 + 448);
      v6 = *(a1 + 424);
      v5 = *(a1 + 432);
    }
  }

  v22 = (v6 + 8 * (v4 >> 5));
  if (v5 == v6)
  {
    if (v9)
    {
      v24 = 0;
      v23 = *(a1 + 456);
      goto LABEL_20;
    }

LABEL_16:
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v26 = *(*v22 + ((v4 & 0x1F) << 7));
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#sa_algo_moving_findee,Measurement at %f s earlier than the first pose in history at %f s - skipping interpolation and removing range measurement", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (*v22 + ((v4 & 0x1F) << 7) == v9)
  {
    goto LABEL_16;
  }

  v23 = *(a1 + 456);
  v24 = *(v6 + (((v23 + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v23 + v4) & 0x1F) << 7);
LABEL_20:
  if (v24 != v9)
  {
    v27 = (v9 - *v8) >> 7;
    if (v27 < 2)
    {
      v34 = 32 - v27;
      v29 = &v8[-(v34 >> 5)];
      v30 = *v29;
      v31 = ~v34 & 0x1FLL;
    }

    else
    {
      v28 = v27 - 1;
      v29 = &v8[v28 >> 5];
      v30 = *v29;
      v31 = v28 & 0x1F;
    }

    v35 = v30 + (v31 << 7);
    v36 = (v3 - *v35) / (*v9 - *v35);
    v87 = v36;
    v83 = *(v35 + 64);
    *v37.i64 = sub_1003ADBF0(*(v35 + 16), *(v35 + 32), *(v35 + 48));
    v85 = v37;
    v82 = *(v9 + 64);
    *v38.i64 = sub_1003ADBF0(*(v9 + 16), *(v9 + 32), *(v9 + 48));
    v39 = vmulq_f32(v85, v38);
    v40 = vextq_s8(v39, v39, 8uLL);
    *v39.f32 = vadd_f32(*v39.f32, *v40.f32);
    v39.f32[0] = vaddv_f32(*v39.f32);
    v40.i64[0] = 0;
    v41 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v39, v40)), 0), vnegq_f32(v38), v38);
    v42 = 1.0;
    v43 = 1.0 - v87;
    v44 = vsubq_f32(v85, v41);
    v45 = vmulq_f32(v44, v44);
    v81 = v41;
    v46 = vaddq_f32(v85, v41);
    v47 = vmulq_f32(v46, v46);
    v48 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)))));
    v49 = v48 + v48;
    v50 = (v48 + v48) == 0.0;
    v51 = 1.0;
    if (!v50)
    {
      v51 = sinf(v49) / v49;
    }

    v52 = v51;
    v53 = vrecpe_f32(LODWORD(v51));
    v54 = vmul_f32(v53, vrecps_f32(LODWORD(v52), v53));
    LODWORD(v55) = vmul_f32(v54, vrecps_f32(LODWORD(v52), v54)).u32[0];
    if ((v43 * v49) != 0.0)
    {
      v79 = v55;
      v54.f32[0] = sinf(v43 * v49);
      v55 = v79;
      v42 = v54.f32[0] / (v43 * v49);
    }

    v54.f32[0] = v43 * (v55 * v42);
    v56 = vdupq_lane_s32(v54, 0);
    v57 = v87;
    v58 = v49 * v87;
    v59 = 1.0;
    if (v58 != 0.0)
    {
      v78 = v56;
      v80 = v55;
      v60 = sinf(v58);
      v56 = v78;
      v55 = v80;
      v57 = v87;
      v59 = v60 / v58;
    }

    v61 = vmlaq_f32(vmulq_n_f32(v81, (v55 * v59) * v57), v85, v56);
    v62 = vmulq_f32(v61, v61);
    v63 = vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
    if (vaddv_f32(v63) == 0.0)
    {
      v64 = xmmword_10056EE90;
    }

    else
    {
      v65 = vadd_f32(v63, vdup_lane_s32(v63, 1)).u32[0];
      v66 = vrsqrte_f32(v65);
      v67 = vmul_f32(v66, vrsqrts_f32(v65, vmul_f32(v66, v66)));
      v64 = vmulq_n_f32(v61, vmul_f32(v67, vrsqrts_f32(v65, vmul_f32(v67, v67))).f32[0]);
    }

    v68 = vmlaq_n_f32(v83, vsubq_f32(v82, v83), v57);
    v68.i32[3] = v64.i32[0];
    v86 = vcvtq_f64_f32(*v68.f32);
    v88 = vcvt_hight_f64_f32(v68);
    v84 = vcvtq_f64_f32(*&vextq_s8(v64, v64, 4uLL));
    v69 = *&v64.i32[3];
    v70 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134220032;
      *&buf[4] = v12;
      *&buf[12] = 2048;
      *&buf[14] = v3;
      *&buf[22] = 2048;
      v94 = v86.f64[0];
      v95 = 2048;
      v96 = v86.f64[1];
      v97 = 2048;
      v98 = v88.f64[0];
      v99 = 2048;
      v100 = v88.f64[1];
      v101 = 2048;
      v102 = v84.f64[0];
      v103 = 2048;
      v104 = v84.f64[1];
      v105 = 2048;
      v106 = v69;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Interpolated self pose for range measurement, range: %0.2f m, timestamp: %f s, device position:[%0.2f,%0.2f,%0.2f], device quat:[%0.2f,%0.2f,%0.2f,%0.2f]", buf, 0x5Cu);
    }

    *buf = v3;
    *&buf[8] = v12;
    *&buf[16] = 0x3FB999999999999ALL;
    LODWORD(v94) = 0;
    LOBYTE(v95) = 0;
    BYTE4(v106) = 0;
    v107 = v86;
    v108 = v88;
    v109 = v84;
    v110 = v69;
    sub_100419C1C(a1 + 368, buf);
    v71 = *(a1 + 424);
    v72 = (v71 + 8 * (*(a1 + 448) >> 5));
    if (*(a1 + 432) == v71)
    {
      v73 = 0;
    }

    else
    {
      v73 = *v72 + ((*(a1 + 448) & 0x1FLL) << 7);
    }

    sub_1003AF1E0((a1 + 416), v72, v73, v29, v35);
    v74 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 424);
      v76 = *(*(v75 + ((*(a1 + 448) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 448) & 0x1FLL) << 7));
      v77 = *(*(v75 + (((*(a1 + 448) + *(a1 + 456) - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((*(a1 + 448) + *(a1 + 456) - 1) & 0x1F) << 7));
      *v89 = 134218240;
      v90 = v76;
      v91 = 2048;
      v92 = v77;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Pose history now between %f s and %f s", v89, 0x16u);
    }

LABEL_42:
    if (*(a1 + 360) == 1)
    {
      *(a1 + 360) = 0;
    }

    return;
  }

  v32 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(*(v6 + (((v4 + v23 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v4 + v23 - 1) & 0x1F) << 7));
    *buf = 134218240;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v33;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Measurement at %f s later than the last pose in history at %f s - skipping interpolation", buf, 0x16u);
  }
}

void sub_1004173AC(int64x2_t *a1)
{
  if (a1[25].i64[1] && a1[33].i64[0])
  {
    v2 = a1[25].u64[0];
    v3 = 0x4EC4EC4EC4EC4EC5;
    v4 = a1[23].i64[1];
    v5 = a1[24].i64[0];
    v6 = (v4 + 8 * (v2 / 0x1A));
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v6 + 152 * (v2 % 0x1A);
    }

    while (1)
    {
      if (v5 == v4)
      {
        v10 = 0;
      }

      else
      {
        v8 = a1[25].i64[1] + a1[25].i64[0];
        v9 = ((v8 * v3) >> 64) >> 3;
        v10 = *(v4 + 8 * v9) + 152 * (v8 - 26 * v9);
      }

      if (v7 == v10)
      {
        return;
      }

      v11 = *v7;
      v12 = *(v7 + 24);
      v13 = *(v7 + 28);
      v14 = *(v7 + 44);
      v15 = *(v7 + 60);
      v16 = *(v7 + 92);
      v86 = *(v7 + 76);
      v87[0] = v16;
      *(v87 + 12) = *(v7 + 104);
      v84 = v14;
      v85 = v15;
      v17 = *(v7 + 120);
      v82 = *(v7 + 136);
      v83 = v13;
      v81 = v17;
      v18 = a1[31].i64[0];
      v19 = a1[32].u64[1];
      v20 = (v18 + 8 * (v19 >> 7));
      v21 = *v20;
      v22 = *v20 + 32 * (v19 & 0x7F);
      v23 = *v22;
      if (*v22 - *&v11 > 0.21)
      {
        break;
      }

      v26 = a1[33].i64[0];
      v27 = *(*(v18 + (((v19 + v26 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v19 + v26 - 1) & 0x7F));
      if (*&v11 - v27 <= 0.21)
      {
        v30 = v3;
        if (a1[31].i64[1] != v18)
        {
          v31 = *(v18 + (((v26 + v19) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v26 + v19) & 0x7F);
          if (v22 != v31)
          {
            v67 = v11;
            while (1)
            {
              v32 = *v22;
              v33 = qword_1009F9820;
              if (vabdd_f64(*v22, *&v11) <= 0.21)
              {
                break;
              }

              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                *&buf[4] = v32;
                *&buf[12] = 2048;
                *&buf[14] = v67;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Peer VIO position at %f s NOT matching with cached range measurement at %f s", buf, 0x16u);
                v21 = *v20;
              }

              v22 += 32;
              if (v22 - v21 == 4096)
              {
                v34 = v20[1];
                ++v20;
                v21 = v34;
                v22 = v34;
              }

              *&v11 = v67;
              if (v22 == v31)
              {
                goto LABEL_28;
              }
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v32;
              *&buf[12] = 2048;
              *&buf[14] = v67;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Peer VIO position at %f s matching with cached range measurement at %f s", buf, 0x16u);
            }

            v36 = a1[32].u64[1];
            v37 = (v36 >> 4) & 0xFFFFFFFFFFFFFF8;
            v38 = a1[31].i64[0];
            v39 = (v38 + v37);
            v3 = v30;
            if (a1[31].i64[1] == v38)
            {
              v44 = 0;
              v40 = 0;
              v45 = (v38 + v37);
            }

            else
            {
              v40 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
              v41 = a1[33].i64[0] + v36;
              v42 = (v41 >> 4) & 0xFFFFFFFFFFFFFF8;
              if (*(v38 + v42) + 32 * (v41 & 0x7F) == v40 || (v43 = (v41 & 0x7F | (16 * (v42 - v37))) - (a1[32].i64[1] & 0x7F)) == 0)
              {
                v45 = v39;
                v44 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
              }

              else
              {
                v44 = *v39 + 32 * (a1[32].i64[1] & 0x7F);
                v45 = v39;
                do
                {
                  v46 = v43 >> 1;
                  if (v43 == 1)
                  {
                    v47 = v44;
                    v48 = v45;
                  }

                  else
                  {
                    v49 = v46 + ((v44 - *v45) >> 5);
                    if (v49 < 1)
                    {
                      v50 = 127 - v49;
                      LOBYTE(v49) = ~(127 - v49);
                      v48 = &v45[-8 * (v50 >> 7)];
                    }

                    else
                    {
                      v48 = &v45[8 * (v49 >> 7)];
                    }

                    v47 = (*v48 + 32 * (v49 & 0x7F));
                  }

                  if (*v47 < *v22)
                  {
                    v44 = (v47 + 4);
                    if ((v47 - *v48 + 32) == 4096)
                    {
                      v51 = *(v48 + 1);
                      v48 += 8;
                      v44 = v51;
                    }

                    v46 = v43 + ~v46;
                    v45 = v48;
                  }

                  v43 = v46;
                }

                while (v46);
              }
            }

            sub_100419FB0(&a1[30].i64[1], v39, v40, v45, v44);
            v52 = a1[33].i64[0];
            v53 = qword_1009F9820;
            if (!v52)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
              {
                sub_1004CED4C(v53, v58, v59, v60, v61, v62, v63, v64);
              }

              return;
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              v55 = a1[31].i64[0];
              v56 = *(*(v55 + ((a1[32].i64[1] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[32].i64[1] & 0x7F));
              v57 = *(*(v55 + (((v52 + a1[32].i64[1] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v52 + a1[32].i64[1] - 1) & 0x7F));
              *buf = 134218240;
              *&buf[4] = v56;
              *&buf[12] = 2048;
              *&buf[14] = v57;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Peer VIO history from %f s to %f s after pruning", buf, 0x16u);
            }

            *buf = v67;
            v75 = *(v87 + 4);
            v77 = v81;
            *&buf[16] = 0x3FB999999999999ALL;
            v72 = v12;
            v73 = 0;
            v74 = 0;
            v76 = *(&v87[1] + 4);
            v78 = v82;
            v54 = *(v22 + 24);
            v79 = *(v22 + 8);
            v80 = v54;
            sub_1003B76B8(a1[4].i64[0], buf, v68);
            sub_1003AAF5C(&a1[4].i64[1], v68);
            if (__p)
            {
              v70 = __p;
              operator delete(__p);
            }

            goto LABEL_13;
          }
        }

LABEL_28:
        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v35 = v6[1];
          ++v6;
          v7 = v35;
        }

        v3 = v30;
      }

      else
      {
        v66 = v11;
        v28 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = v66;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,Cached range measurement at %f s can't be matched with peer pose yet, last peer pose at %f", buf, 0x16u);
        }

        v7 += 152;
        if (v7 - *v6 == 3952)
        {
          v29 = v6[1];
          ++v6;
          v7 = v29;
        }
      }

LABEL_31:
      v4 = a1[23].i64[1];
      v5 = a1[24].i64[0];
    }

    v65 = v11;
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v65;
      *&buf[12] = 2048;
      *&buf[14] = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Cached range measurement at %f s can't be matched with peer pose (removed), first peer pose at %f", buf, 0x16u);
    }

LABEL_13:
    v6 = sub_100419CF4(a1 + 23, v6, v7);
    v7 = v25;
    goto LABEL_31;
  }
}

void sub_100417A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100417A34(void *a1)
{
  v1 = a1[57];
  if (v1)
  {
    v3 = a1[56];
    v4 = a1[53];
    v5 = *(*(v4 + (((v1 + v3 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v1 + v3 - 1) & 0x1F) << 7)) - *(*(v4 + ((v3 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v3 & 0x1F) << 7));
    if (v5 > 5.0)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 134217984;
        *&v30[4] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose history spans %f s - pruning down past poses from history", v30, 0xCu);
        v3 = a1[56];
        v1 = a1[57];
        v4 = a1[53];
      }

      v7 = (v3 >> 2) & 0x3FFFFFFFFFFFFFF8;
      v8 = (v4 + v7);
      v9 = a1[54];
      if (v9 == v4)
      {
        v13 = 0;
        v25 = 0;
        v24 = (v4 + 8 * (v3 >> 5));
      }

      else
      {
        v10 = *(*(v4 + (((v3 + v1 - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((v3 + v1 - 1) & 0x1F) << 7));
        v11 = v3 & 0x1F;
        v12 = ((v3 + v1) >> 2) & 0x3FFFFFFFFFFFFFF8;
        v13 = *v8 + (v11 << 7);
        v14 = (v3 + v1) & 0x1F;
        v15 = *(v4 + v12) + (v14 << 7);
        *v30 = v4 + v7;
        *&v30[8] = v13;
        if (v15 != v13)
        {
          v16 = v14 | (4 * (v12 - v7));
          v17 = v16 - v11;
          if (v16 != v11)
          {
            v18 = v10 + -2.0;
            do
            {
              v19 = v17 >> 1;
              v20 = sub_1003B0628(v30, v17 >> 1);
              if (v18 >= *v21)
              {
                v22 = v21 + 16;
                if ((v21 - *v20 + 128) == 4096)
                {
                  v23 = v20[1];
                  ++v20;
                  v22 = v23;
                }

                *v30 = v20;
                *&v30[8] = v22;
                v19 = v17 + ~v19;
              }

              v17 = v19;
            }

            while (v19);
            v8 = *v30;
            v13 = *&v30[8];
            v3 = a1[56];
            v4 = a1[53];
            v9 = a1[54];
          }
        }

        v24 = (v4 + 8 * (v3 >> 5));
        if (v9 == v4)
        {
          v25 = 0;
        }

        else
        {
          v25 = *v24 + ((v3 & 0x1F) << 7);
        }
      }

      sub_1003AF1E0(a1 + 52, v24, v25, v8, v13);
      v26 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[53];
        v28 = *(*(v27 + ((a1[56] >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((a1[56] & 0x1FLL) << 7));
        v29 = *(*(v27 + (((a1[56] + a1[57] - 1) >> 2) & 0x3FFFFFFFFFFFFFF8)) + (((a1[56] + a1[57] - 1) & 0x1F) << 7));
        *v30 = 134218240;
        *&v30[4] = v28;
        *&v30[12] = 2048;
        *&v30[14] = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Pose history now between %f s and %f s", v30, 0x16u);
      }
    }
  }
}

void sub_100417CF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 528);
  if (v4 && *a2 <= *(*(*(a1 + 496) + (((v4 + *(a1 + 520) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v4 + *(a1 + 520) - 1) & 0x7F)))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CED84();
    }
  }

  else
  {
    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = 134218752;
      v12 = v6;
      v13 = 2048;
      *__p = v7;
      *&__p[8] = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Received peer pose at %f s, peer position:[%0.2f,%0.2f,%0.2f] m", &v11, 0x2Au);
    }

    v10 = *a2;
    if (*(a1 + 24) != 1 || *(a1 + 16) < v10)
    {
      *(a1 + 16) = v10;
      *(a1 + 24) = 1;
      v10 = *a2;
    }

    sub_1003B75E8(*(a1 + 64), &v11, v10, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    sub_1003AAF5C(a1 + 72, &v11);
    if (*&__p[2])
    {
      v15 = *&__p[2];
      operator delete(*&__p[2]);
    }

    sub_100417ED0(a1 + 488, a2);
    sub_1004173AC(a1);
  }
}

void sub_100417EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100417ED0(uint64_t a1, uint64_t a2)
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
    sub_10041A310(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
  result = *a2;
  v11 = *(a2 + 16);
  *v9 = *a2;
  v9[1] = v11;
  ++*(a1 + 40);
  return result;
}

void sub_100417F60(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 36);
  v5 = qword_1009F9820;
  v6 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(a2 + 1);
    v8 = *(a2 + 4);
    v9 = *(a2 + 6);
    v10 = *(a2 + 7);
    v32 = 134218752;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v11 = "#sa_algo_moving_findee,Received range result at %f s, distance: %0.2f m, az: %3.2f rad, el: %3.2f rad";
    v12 = v5;
    v13 = 42;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 1);
    v15 = *(a2 + 4);
    v32 = 134218240;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v11 = "#sa_algo_moving_findee,Received range result at %f s, distance: %0.2f m";
    v12 = v5;
    v13 = 22;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v32, v13);
LABEL_7:
  if ((*(a1 + 8) & 1) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = 1;
  }

  if (*(a1 + 464) != 2)
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,VIO Tracking is not normal";
      goto LABEL_18;
    }

LABEL_23:
    v30 = *(a2 + 1);
    if (*(a1 + 24) != 1 || *(a1 + 16) < v30)
    {
      *(a1 + 16) = v30;
      *(a1 + 24) = 1;
    }

    return;
  }

  if (!*(a1 + 456))
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,Pose history is empty";
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v16 = *(a2 + 1);
  if (v16 < *(*(*(a1 + 424) + ((*(a1 + 448) >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((*(a1 + 448) & 0x1FLL) << 7)))
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      v18 = "#sa_algo_moving_findee,Measurement earlier than the first pose in history";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v32, 2u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(a1 + 360) != 1)
  {
LABEL_22:
    v19 = *a2;
    v20 = a2[2];
    *(a1 + 144) = a2[1];
    *(a1 + 160) = v20;
    *(a1 + 128) = v19;
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[6];
    *(a1 + 208) = a2[5];
    *(a1 + 224) = v23;
    *(a1 + 176) = v21;
    *(a1 + 192) = v22;
    v24 = a2[7];
    v25 = a2[8];
    v26 = a2[10];
    *(a1 + 272) = a2[9];
    *(a1 + 288) = v26;
    *(a1 + 240) = v24;
    *(a1 + 256) = v25;
    v27 = a2[11];
    v28 = a2[12];
    v29 = a2[13];
    *(a1 + 352) = *(a2 + 28);
    *(a1 + 320) = v28;
    *(a1 + 336) = v29;
    *(a1 + 304) = v27;
    *(a1 + 360) = 1;
    sub_100416CFC(a1);
    goto LABEL_23;
  }

  if (v16 > *(a1 + 136))
  {
    *(a1 + 360) = 0;
    goto LABEL_22;
  }

  v31 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,Measurement earlier than the cached measurement - rejecting range measurement", &v32, 2u);
  }
}

void sub_100418274(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if ((*(a1 + 120) & 1) == 0)
  {
    *a2 = 0;
LABEL_7:
    sub_10041894C(a1, a2);
    return;
  }

  v4 = *(a1 + 77);
  *v52 = *(a1 + 72);
  *(&v52[1] + 1) = v4;
  __p = 0;
  v54 = 0;
  v55 = 0;
  v5 = sub_1003BB9A8(&__p, *(a1 + 88), *(a1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 6));
  v56 = *(a1 + 112);
  if (v52[0] > 3)
  {
    if (v52[0] == 4)
    {
      *a2 = 0;
      goto LABEL_33;
    }

    if (v52[0] == 6)
    {
      goto LABEL_31;
    }

    if (v52[0] != 5)
    {
      goto LABEL_33;
    }

    v7 = *(a1 + 528);
    if (v7)
    {
      v8 = *(a1 + 456);
      if (v8)
      {
        v9 = v8 + *(a1 + 448) - 1;
        v10 = *(a1 + 424);
        v11 = v9 >> 5;
        v12 = v9 & 0x1F;
        v13 = *(*(v10 + 8 * (v9 >> 5)) + (v12 << 7));
        v14 = *(*(*(a1 + 496) + (((v7 + *(a1 + 520) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v7 + *(a1 + 520) - 1) & 0x7F));
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218496;
          *&buf[4] = v13 - v14;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v59 = v14;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#sa_algo_moving_findee,#stalePeerVIO Peer VIO is stale by %f s, last self pose time %f s, last peer pose time %f s", buf, 0x20u);
          v10 = *(a1 + 424);
          v48 = *(a1 + 456) + *(a1 + 448) - 1;
          v11 = v48 >> 5;
          v12 = v48 & 0x1F;
        }

        v16 = *(__p + 2);
        *buf = *__p;
        *&buf[16] = v16;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        sub_1003AD82C(buf, (*(v10 + 8 * v11) + (v12 << 7)), &v49);
        if (v13 - v14 < 2.0)
        {
LABEL_16:
          sub_1004199A8(a1, 0);
          v18 = qword_1009F9820;
          v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            if ((*(a1 + 24) & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_1004CEEFC(a1, &v49, v57, v18);
          }

          if (*(a1 + 8) != 1 || (*(a1 + 24) & 1) == 0)
          {
            sub_1000195BC();
          }

          v19 = *a1;
          v20 = *&v50;
          *(a2 + 24) = v49;
          *(a2 + 96) = 0u;
          *(a2 + 112) = 0u;
          *(a2 + 121) = 0u;
          *(a2 + 168) = 0u;
          *(a2 + 184) = 0u;
          *(a2 + 200) = 0u;
          *(a2 + 216) = 0u;
          v21 = *(a1 + 16);
          *(a2 + 8) = v19;
          *(a2 + 16) = v21;
          *(a2 + 28) = 1;
          *(a2 + 56) = 0;
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 60) = 0;
          *(a2 + 64) = 0;
          *(a2 + 68) = 0;
          *(a2 + 72) = 0;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          *(a2 + 160) = 0;
          *(a2 + 232) = 0;
          *(a2 + 240) = 1;
          if ((*(a2 + 272) & 1) == 0)
          {
            *(a2 + 272) = 1;
          }

          *(a2 + 264) = v20;
          if (v51 == 1)
          {
            *(a2 + 248) = *(&v49 + 1) * 180.0 / 3.14159265;
            *(a2 + 256) = 1;
            *(a2 + 412) = 1;
            *(a2 + 416) = 1;
            v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
            if (v5)
            {
              sub_1004CEF60();
            }
          }

          if ((*(a1 + 120) & 1) == 0)
          {
            sub_1000195BC();
          }

          v22 = *(a1 + 80);
          if (v22 == 2)
          {
            *a2 = 1;
            v44 = *(&v50 + 1);
            if ((*(a2 + 296) & 1) == 0)
            {
              *(a2 + 296) = 1;
            }

            *(a2 + 288) = v44;
            v5 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
            if (v5)
            {
              sub_1004CEFD8(buf);
            }

            *&v46 = vcvt_f32_f64(*buf);
            *&v45 = *&buf[16];
            *(&v46 + 1) = __PAIR64__(*&buf[12], v45);
            if ((*(a2 + 352) & 1) == 0)
            {
              *(a2 + 352) = 1;
            }

            *(a2 + 336) = v46;
            if (*(&v50 + 1) >= 2.5)
            {
              v47 = 2;
            }

            else if (*(&v50 + 1) <= -2.5)
            {
              v47 = 3;
            }

            else
            {
              v47 = 1;
            }

            *(a2 + 280) = v47;
            goto LABEL_33;
          }

          if (v22 == 1)
          {
            if (fabsf(*(&v50 + 1)) < 2.5)
            {
              v43 = 1;
            }

            else
            {
              v43 = 4;
            }

            *(a2 + 280) = v43;
            *a2 = 0;
          }

          else
          {
            if (v22)
            {
              goto LABEL_33;
            }

            *a2 = 0;
            *(a2 + 280) = 0;
          }

          *(a2 + 6) = 1;
          goto LABEL_33;
        }

        v41 = sub_100419924(v13 - v14, v17, &v49);
        v42 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
        if (v41 < 22.5)
        {
          if (v42)
          {
            sub_1004CEE84();
          }

          goto LABEL_16;
        }

        if (v42)
        {
          sub_1004CEDFC();
        }

        sub_1004199A8(a1, 1);
        *(a2 + 414) = 0u;
        *(a2 + 384) = 0u;
        *(a2 + 400) = 0u;
        *(a2 + 352) = 0u;
        *(a2 + 368) = 0u;
        *(a2 + 320) = 0u;
        *(a2 + 336) = 0u;
        *(a2 + 288) = 0u;
        *(a2 + 304) = 0u;
        *(a2 + 256) = 0u;
        *(a2 + 272) = 0u;
        *(a2 + 224) = 0u;
        *(a2 + 240) = 0u;
        *(a2 + 192) = 0u;
        *(a2 + 208) = 0u;
        *(a2 + 160) = 0u;
        *(a2 + 176) = 0u;
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
        sub_10041894C(a1, a2);
LABEL_51:
        v24 = 0;
        goto LABEL_35;
      }

      v33 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CF068(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    else
    {
      v25 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004CF0A0(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
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
    *(a2 + 414) = 0u;
    sub_10041894C(a1, a2);
    goto LABEL_51;
  }

  if (v52[0] < 2u)
  {
LABEL_31:
    *a2 = 0;
    v6 = 1;
    goto LABEL_32;
  }

  if ((v52[0] - 2) < 2)
  {
    *a2 = 0;
    v6 = 256;
LABEL_32:
    *(a2 + 4) = v6;
  }

LABEL_33:
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000195BC();
  }

  v23 = *(a1 + 16);
  sub_100419AE8(v5, (a2 + 280));
  v24 = 1;
LABEL_35:
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    if ((*(a2 + 240) & 1) != 0 && !*a2 && *(a1 + 464) != 2 && *(a1 + 480) == 1 && *(a1 + 472) < 500.0)
    {
      *(a2 + 7) = 1;
    }

    goto LABEL_7;
  }
}

void sub_100418918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041894C(uint64_t result, uint64_t a2)
{
  if (*(result + 24) != 1)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 16);
  if (*(result + 56) == 1 && v4 - *(result + 48) < 0.2)
  {
    return result;
  }

  *(result + 48) = v4;
  *(result + 56) = 1;
  sub_10026B0D4(&v108);
  sub_10026B0D4(&v104);
  sub_10026B0D4(&v100);
  sub_10026B0D4(&v96);
  sub_10026B0D4(&v92);
  sub_10026B0D4(&v88);
  sub_10026B0D4(&v84);
  sub_10026B0D4(&v80);
  v5 = v104;
  *(&v104 + *(v104 - 3) + 8) = *(&v104 + *(v104 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v106[0].__locale_ + *(v5 - 3)) = 2;
  v6 = v100;
  *(&v100 + *(v100 - 3) + 8) = *(&v100 + *(v100 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v102[0].__locale_ + *(v6 - 3)) = 1;
  v7 = v96;
  *(&v96 + *(v96 - 3) + 8) = *(&v96 + *(v96 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v98[0].__locale_ + *(v7 - 3)) = 2;
  v8 = v88;
  *(&v88 + *(v88 - 3) + 8) = *(&v88 + *(v88 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v90[0].__locale_ + *(v8 - 3)) = 2;
  v9 = v84;
  *(&v84 + *(v84 - 3) + 8) = *(&v84 + *(v84 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v86[0].__locale_ + *(v9 - 3)) = 2;
  v10 = v80;
  *(&v80 + *(v80 - 3) + 8) = *(&v80 + *(v80 - 3) + 8) & 0xFFFFFEFB | 4;
  *(&v82[0].__locale_ + *(v10 - 3)) = 2;
  if (*(a2 + 240) == 1)
  {
    v11 = *(a2 + 8);
    std::ostream::operator<<();
    if (*(a2 + 240) != 1)
    {
      goto LABEL_102;
    }

    v12 = *(a2 + 24);
    v13 = std::ostream::operator<<();
    v14 = " m";
    v15 = 2;
  }

  else
  {
    v14 = "-";
    v15 = 1;
    sub_10000EA44(&v108, "-", 1);
    v13 = &v104;
  }

  sub_10000EA44(v13, v14, v15);
  if (*(a2 + 256) == 1)
  {
    v16 = *(a2 + 248);
    v17 = std::ostream::operator<<();
    v18 = " deg";
    v19 = 4;
  }

  else
  {
    v18 = "-";
    v17 = &v100;
    v19 = 1;
  }

  sub_10000EA44(v17, v18, v19);
  if (*(a2 + 272) == 1)
  {
    v20 = *(a2 + 264);
    v21 = std::ostream::operator<<();
    v22 = " m";
    v23 = 2;
  }

  else
  {
    v22 = "-";
    v21 = &v96;
    v23 = 1;
  }

  sub_10000EA44(v21, v22, v23);
  if (*(a2 + 296) == 1)
  {
    v24 = *(a2 + 288);
    v25 = std::ostream::operator<<();
    v26 = " m";
    v27 = 2;
  }

  else
  {
    v26 = "-";
    v25 = &v88;
    v27 = 1;
  }

  sub_10000EA44(v25, v26, v27);
  v28 = *(a2 + 280);
  if (v28 <= 4)
  {
    sub_10000EA44(&v92, (&off_1009AB0D8)[v28], qword_1005720D0[v28]);
  }

  if (*(a2 + 320) == 1)
  {
    sub_10000EA44(&v84, "[", 1);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v29 = *(a2 + 304);
    v30 = std::ostream::operator<<();
    sub_10000EA44(v30, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v31 = *(a2 + 308);
    v32 = std::ostream::operator<<();
    sub_10000EA44(v32, ", ", 2);
    if (*(a2 + 320) != 1)
    {
      goto LABEL_102;
    }

    v33 = *(a2 + 312);
    v34 = std::ostream::operator<<();
    v35 = "]";
  }

  else
  {
    v35 = "-";
    v34 = &v84;
  }

  sub_10000EA44(v34, v35, 1);
  if (*(a2 + 352) != 1)
  {
    v42 = "-";
    v41 = &v80;
    v43 = 1;
    goto LABEL_31;
  }

  sub_10000EA44(&v80, "[", 1);
  if (*(a2 + 352) != 1 || (v36 = *(a2 + 336), v37 = std::ostream::operator<<(), sub_10000EA44(v37, ", ", 2), *(a2 + 352) != 1) || (v38 = *(a2 + 340), v39 = std::ostream::operator<<(), sub_10000EA44(v39, ", ", 2), (*(a2 + 352) & 1) == 0))
  {
LABEL_102:
    sub_1000195BC();
  }

  v40 = *(a2 + 344);
  v41 = std::ostream::operator<<();
  v42 = "] m";
  v43 = 3;
LABEL_31:
  sub_10000EA44(v41, v42, v43);
  v44 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    if (v79 >= 0)
    {
      v45 = &v78;
    }

    else
    {
      v45 = v78;
    }

    if ((*(v3 + 24) & 1) == 0)
    {
      sub_1000195BC();
    }

    v46 = *(v3 + 16);
    if (*a2 == 1)
    {
      v47 = "YES";
    }

    else
    {
      v47 = "NO";
    }

    if (*(a2 + 4))
    {
      v48 = "YES";
    }

    else
    {
      v48 = "NO";
    }

    if (*(a2 + 5))
    {
      v49 = "YES";
    }

    else
    {
      v49 = "NO";
    }

    if (*(a2 + 6))
    {
      v50 = "YES";
    }

    else
    {
      v50 = "NO";
    }

    if (*(a2 + 7))
    {
      v51 = "YES";
    }

    else
    {
      v51 = "NO";
    }

    std::stringbuf::str();
    if (v77 >= 0)
    {
      v52 = &v76;
    }

    else
    {
      v52 = v76;
    }

    std::stringbuf::str();
    if (v75 >= 0)
    {
      v53 = &v74;
    }

    else
    {
      v53 = v74;
    }

    v63 = v53;
    std::stringbuf::str();
    if (v73 >= 0)
    {
      v54 = &v72;
    }

    else
    {
      v54 = v72;
    }

    v62 = v54;
    v55 = &v70;
    std::stringbuf::str();
    v61 = v50;
    if (v71 < 0)
    {
      v55 = v70;
    }

    v56 = &v68;
    std::stringbuf::str();
    if (v69 < 0)
    {
      v56 = v68;
    }

    std::stringbuf::str();
    std::stringbuf::str();
    v57 = &v66;
    if (v67 < 0)
    {
      v57 = v66;
    }

    p_p = &__p;
    if (v65 < 0)
    {
      p_p = __p;
    }

    *buf = 136318466;
    v113 = v45;
    v114 = 2048;
    v115 = v46;
    v116 = 2080;
    v117 = v47;
    v118 = 2080;
    v119 = v48;
    v120 = 2080;
    v121 = v49;
    v122 = 2080;
    v123 = v61;
    v124 = 2080;
    v125 = v51;
    v126 = 2080;
    v127 = v52;
    v128 = 2080;
    v129 = v63;
    v130 = 2080;
    v131 = v62;
    v132 = 2080;
    v133 = v55;
    v134 = 2080;
    v135 = v56;
    v136 = 2080;
    v137 = v57;
    v138 = 2080;
    v139 = p_p;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,DeviceID: %s\n\tTimestamp: %f\n\tSolution convergence: %s, insufficientDisplacement: %s, insufficientHorizontalPositionDiversity: %s, insufficientVerticalPositionDiversity: %s, insufficientLighting: %s\n\tRange: %s, Horizontal angle: %s, Horizontal distance: %s, Vertical distance: %s, Vertical state: %s, Direction: %s, World Position: %s", buf, 0x8Eu);
    if (v65 < 0)
    {
      operator delete(__p);
    }

    if (v67 < 0)
    {
      operator delete(v66);
    }

    if (v69 < 0)
    {
      operator delete(v68);
    }

    if (v71 < 0)
    {
      operator delete(v70);
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (v77 < 0)
    {
      operator delete(v76);
    }

    if (v79 < 0)
    {
      operator delete(v78);
    }
  }

  if (v83 < 0)
  {
    operator delete(v82[7].__locale_);
  }

  std::locale::~locale(v82);
  std::ostream::~ostream();
  std::ios::~ios();
  v84 = v59;
  *(&v84 + *(v59 - 3)) = v60;
  if (v87 < 0)
  {
    operator delete(v86[7].__locale_);
  }

  std::locale::~locale(v86);
  std::ostream::~ostream();
  std::ios::~ios();
  v88 = v59;
  *(&v88 + *(v59 - 3)) = v60;
  if (v91 < 0)
  {
    operator delete(v90[7].__locale_);
  }

  std::locale::~locale(v90);
  std::ostream::~ostream();
  std::ios::~ios();
  v92 = v59;
  *(&v92 + *(v59 - 3)) = v60;
  if (v95 < 0)
  {
    operator delete(v94[7].__locale_);
  }

  std::locale::~locale(v94);
  std::ostream::~ostream();
  std::ios::~ios();
  v96 = v59;
  *(&v96 + *(v59 - 3)) = v60;
  if (v99 < 0)
  {
    operator delete(v98[7].__locale_);
  }

  std::locale::~locale(v98);
  std::ostream::~ostream();
  std::ios::~ios();
  v100 = v59;
  *(&v100 + *(v59 - 3)) = v60;
  if (v103 < 0)
  {
    operator delete(v102[7].__locale_);
  }

  std::locale::~locale(v102);
  std::ostream::~ostream();
  std::ios::~ios();
  v104 = v59;
  *(&v104 + *(v59 - 3)) = v60;
  if (v107 < 0)
  {
    operator delete(v106[7].__locale_);
  }

  std::locale::~locale(v106);
  std::ostream::~ostream();
  std::ios::~ios();
  v108 = v59;
  *(&v108 + *(v59 - 3)) = v60;
  if (v111 < 0)
  {
    operator delete(v110[7].__locale_);
  }

  std::locale::~locale(v110);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004197E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10038B85C(&a60);
  sub_10038B85C(&a72);
  sub_10038B85C(&STACK[0x300]);
  sub_10038B85C(&STACK[0x408]);
  sub_10038B85C(&STACK[0x510]);
  sub_10038B85C(&STACK[0x618]);
  sub_10038B85C(&STACK[0x720]);
  sub_10038B85C(&STACK[0x828]);
  _Unwind_Resume(a1);
}

long double sub_100419924(double a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF0D8(a3);
  }

  return atan(a1 / *(a3 + 8)) * 180.0 / 3.14159265;
}

void sub_1004199A8(uint64_t a1, int a2)
{
  if (*(a1 + 536) != a2)
  {
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NO";
      v6 = *(a1 + 456) + *(a1 + 448) - 1;
      v7 = *(*(*(a1 + 424) + ((v6 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v6 & 0x1F) << 7));
      v8 = *(a1 + 528) + *(a1 + 520) - 1;
      v9 = *(*(*(a1 + 496) + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
      if (a2)
      {
        v5 = "YES";
      }

      v10 = 136315650;
      v11 = v5;
      v12 = 2048;
      v13 = v7;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#sa_algo_moving_findee,#stalePeerVIO Peer pose history stale status changed to %s, last self pose at %f s, last peer pose at %f s ", &v10, 0x20u);
    }

    *(a1 + 536) = a2;
  }
}

void sub_100419AE8(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CF2B0();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF324();
    }
  }

  else if (v2 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF23C();
    }
  }

  else if (v2 == 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CF1C8();
    }
  }

  else if (v2 == 4 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF154();
  }
}

__n128 sub_100419C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 26 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10041A4E4(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x1A)) + 152 * (v8 % 0x1A);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 80) = v13;
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  result = *(a2 + 96);
  v15 = *(a2 + 112);
  v16 = *(a2 + 128);
  *(v9 + 144) = *(a2 + 144);
  *(v9 + 112) = v15;
  *(v9 + 128) = v16;
  *(v9 + 96) = result;
  ++*(a1 + 40);
  return result;
}

unint64_t sub_100419CF4(int64x2_t *a1, void *a2, char *a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v6)[152 * (v4 % 0x1A)];
  }

  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 26 * (a2 - v6) - 0x79435E50D79435E5 * (&a3[-*a2] >> 3) + 0x79435E50D79435E5 * ((v7 - *v6) >> 3);
  }

  v31[0].n128_u64[0] = v5 + 8 * (v4 / 0x1A);
  v31[0].n128_u64[1] = v7;
  sub_10041A790(v31, v8);
  v9 = a1[2].i64[1];
  v10 = v31[0].n128_u64[1] - *v31[0].n128_u64[0];
  v11 = 0x86BCA1AF286BCA1BLL * (v10 >> 3);
  if (v8 <= (v9 - 1) >> 1)
  {
    if (v10 < -151)
    {
      v24 = 24 - v11;
      v25 = (24 - v11) / 0x1A;
      v17 = (v31[0].n128_u64[0] - 8 * v25);
      v18 = (*v17 + 152 * (26 * v25 - v24) + 3800);
    }

    else
    {
      v15 = v11 + 1;
      v16 = (v11 + 1) / 0x1A;
      v17 = (v31[0].n128_u64[0] + 8 * v16);
      v18 = (*v17 + 152 * (v15 - 26 * v16));
    }

    sub_10041A844(v6, v7, v31[0].n128_u64[0], v31[0].n128_u64[1], v17, v18, v31);
    a1[2] = vaddq_s64(a1[2], xmmword_100561EC0);
    sub_10041A6B8(a1, 1);
  }

  else
  {
    if (v10 < -151)
    {
      v19 = 24 - v11;
      v13 = (v31[0].n128_u64[0] - 8 * (v19 / 0x1A));
      v14 = &(*v13)[152 * (26 * (v19 / 0x1A) - v19) + 3800];
    }

    else
    {
      v12 = v11 + 1;
      v13 = (v31[0].n128_u64[0] + 8 * (v12 / 0x1A));
      v14 = &(*v13)[152 * (v12 % 0x1A)];
    }

    v20 = a1[2].i64[0] + v9;
    v21 = a1->i64[1];
    v22 = (v21 + 8 * (v20 / 0x1A));
    if (a1[1].i64[0] == v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = &(*v22)[152 * (v20 % 0x1A)];
    }

    sub_10041A9F8(v13, v14, v22, v23, v31);
    --a1[2].i64[1];
    sub_10041A718(a1, 1);
  }

  v26 = a1[2].u64[0];
  v27 = a1->i64[1];
  v28 = (v27 + 8 * (v26 / 0x1A));
  if (a1[1].i64[0] == v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28 + 152 * (v26 % 0x1A);
  }

  v31[0].n128_u64[0] = v28;
  v31[0].n128_u64[1] = v29;
  sub_10041A790(v31, v8);
  return v31[0].n128_u64[0];
}

uint64_t *sub_100419FB0(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 5) + 16 * (a4 - a2) - ((a3 - *a2) >> 5);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 7));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 32 * (a1[4] & 0x7FLL);
  }

  v33 = (v7 + 8 * (a1[4] >> 7));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 5) + 16 * (a2 - v8) - ((v9 - *v8) >> 5);
  }

  v11 = sub_10041ABA4(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_10041ABA4(&v32, v6);
      sub_10041AC08(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 32;
          v34 = v25;
          if (v25 - *v26 == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_10041ABA4(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 7));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = &(*v17)[32 * (v15 & 0x7F)];
      }

      v35 = v32;
      sub_10041AD94(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 7)) + 32 * (a1[4] & 0x7FLL);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 7);
  v35.n128_u64[1] = v30;
  return sub_10041ABA4(&v35, v10);
}

uint64_t *sub_10041A1E8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 496) = off_1009991A0;
    *(v2 + 424) = off_1009991A0;
    v5 = (v2 + 360);
    sub_1003BC38C(&v5);
    *(v2 + 240) = off_1009991A0;
    *(v2 + 160) = off_1009991A0;
    *(v2 + 96) = off_1009991A0;
    v5 = (v2 + 72);
    sub_1003BC338(&v5);
    v3 = *(v2 + 40);
    if (v3)
    {
      *(v2 + 48) = v3;
      operator delete(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void *sub_10041A310(void *a1)
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

void sub_10041A498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10041A4E4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
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

void sub_10041A66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041A6B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1A)
  {
    a2 = 1;
  }

  if (v2 < 0x34)
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
    *(a1 + 32) -= 26;
  }

  return v4 ^ 1u;
}

uint64_t sub_10041A718(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
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

void *sub_10041A790(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_10041A844@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_10041A914(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 3952;
    }

    v12 = *v17 + 3952;
    v11 = a2;
  }

  sub_10041A914(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10041A914@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      v12 = 0x86BCA1AF286BCA1BLL * (&a4[-v10] >> 3);
      if ((0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3);
      }

      v11 -= 152 * v12;
      a4 -= 152 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 152 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 3952);
    }

    if ((*v6 + 3952) == a4)
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

double sub_10041A9F8(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
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
    sub_10041AABC(__src, *(a5 + 8), *a1 + 3952, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10041AABC(v13, *(a5 + 8), v13 + 3952, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_10041AABC(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_10041AABC@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x86BCA1AF286BCA1BLL * ((v10 - __dst + 3952) >> 3);
      if ((0x86BCA1AF286BCA1BLL * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0x86BCA1AF286BCA1BLL * ((a3 - v9) >> 3);
      }

      v12 = 152 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 152 * v11);
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
    if (*(v6 - 1) + 3952 == __dst)
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

uint64_t *sub_10041ABA4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 5);
    if (v4 < 1)
    {
      result -= (127 - v4) >> 7;
      v6 = *result;
    }

    else
    {
      result += v4 >> 7;
      v5 = *result;
    }
  }

  return result;
}

__n128 sub_10041AC08@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_10041ACD8(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  sub_10041ACD8(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10041ACD8@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      v12 = &a4[-v10];
      if ((v11 - a1) >> 5 >= v12 >> 5)
      {
        v13 = v12 >> 5;
      }

      else
      {
        v13 = (v11 - a1) >> 5;
      }

      v11 -= 32 * v13;
      a4 -= 32 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 32 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_10041AD94(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
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
    sub_10041AE58(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10041AE58(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_10041AE58(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_10041AE58@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
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

uint64_t sub_10041AF38()
{
  v1 = xmmword_100572068;
  v2[0] = unk_100572078;
  v2[1] = xmmword_100572088;
  v2[2] = unk_100572098;
  qword_1009F91C0 = 0;
  unk_1009F91C8 = 0;
  qword_1009F91B8 = 0;
  sub_10004EEB8(&qword_1009F91B8, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F91B8, &_mh_execute_header);
  v1 = xmmword_1005720A8;
  qword_1009F91D8 = 0;
  unk_1009F91E0 = 0;
  qword_1009F91D0 = 0;
  sub_10004EEB8(&qword_1009F91D0, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F91D0, &_mh_execute_header);
}

uint64_t sub_10041B03C(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v3)
  {
    __assert_rtn("RoseSupervisorInterface", "RoseSupervisorInterface.mm", 45, "fDispatchQueue");
  }

  v4 = v3;
  v5 = *(a1 + 16);
  *(a1 + 16) = &stru_1009AB120;

  return a1;
}

void sub_10041B0DC(id a1, const void *a2)
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 2) - *(a2 + 1);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received HID event, but no handler defined. Data len: %zu", &v5, 0xCu);
  }
}

uint64_t sub_10041B18C(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~RoseSupervisorInterface()", v5, 2u);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    IOServiceClose(v3);
  }

  return a1;
}

BOOL sub_10041B228(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 8))
  {
    return 1;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF398();
  }

  v3 = IOServiceNameMatching("rose-supervisor");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    v6 = IOServiceOpen(MatchingService, mach_task_self_, 0, v1);
    IOObjectRelease(v5);
    v7 = qword_1009F9820;
    if (!v6)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[RoseSupervisorInterface] Successfully connected to RoseSupervisor", v9, 2u);
      }

      return 1;
    }

    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10041B3BC(v6, v9);
      sub_1004CF3CC(v9, buf, v8);
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004CF440();
  }

  return 0;
}

_BYTE *sub_10041B3BC@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case -536870212:
      v2 = "kIOReturnError";
      break;
    case -536870211:
      v2 = "kIOReturnNoMemory";
      break;
    case -536870210:
      v2 = "kIOReturnNoResources";
      break;
    case -536870209:
      v2 = "kIOReturnIPCError";
      break;
    case -536870208:
      v2 = "kIOReturnNoDevice";
      break;
    case -536870207:
      v2 = "kIOReturnNotPrivileged";
      break;
    case -536870206:
      v2 = "kIOReturnBadArgument";
      break;
    case -536870205:
      v2 = "kIOReturnLockedRead";
      break;
    case -536870204:
      v2 = "kIOReturnLockedWrite";
      break;
    case -536870203:
      v2 = "kIOReturnExclusiveAccess";
      break;
    case -536870202:
      v2 = "kIOReturnBadMessageID";
      break;
    case -536870201:
      v2 = "kIOReturnUnsupported";
      break;
    case -536870200:
      v2 = "kIOReturnVMError";
      break;
    case -536870199:
      v2 = "kIOReturnInternalError";
      break;
    case -536870198:
      v2 = "kIOReturnIOError";
      break;
    case -536870197:
    case -536870180:
      goto LABEL_7;
    case -536870196:
      v2 = "kIOReturnCannotLock";
      break;
    case -536870195:
      v2 = "kIOReturnNotOpen";
      break;
    case -536870194:
      v2 = "kIOReturnNotReadable";
      break;
    case -536870193:
      v2 = "kIOReturnNotWritable";
      break;
    case -536870192:
      v2 = "kIOReturnNotAligned";
      break;
    case -536870191:
      v2 = "kIOReturnBadMedia";
      break;
    case -536870190:
      v2 = "kIOReturnStillOpen";
      break;
    case -536870189:
      v2 = "kIOReturnRLDError";
      break;
    case -536870188:
      v2 = "kIOReturnDMAError";
      break;
    case -536870187:
      v2 = "kIOReturnBusy";
      break;
    case -536870186:
      v2 = "kIOReturnTimeout";
      break;
    case -536870185:
      v2 = "kIOReturnOffline";
      break;
    case -536870184:
      v2 = "kIOReturnNotReady";
      break;
    case -536870183:
      v2 = "kIOReturnNotAttached";
      break;
    case -536870182:
      v2 = "kIOReturnNoChannels";
      break;
    case -536870181:
      v2 = "kIOReturnNoSpace";
      break;
    case -536870179:
      v2 = "kIOReturnPortExists";
      break;
    case -536870178:
      v2 = "kIOReturnCannotWire";
      break;
    case -536870177:
      v2 = "kIOReturnNoInterrupt";
      break;
    case -536870176:
      v2 = "kIOReturnNoFrames";
      break;
    case -536870175:
      v2 = "kIOReturnMessageTooLarge";
      break;
    case -536870174:
      v2 = "kIOReturnNotPermitted";
      break;
    case -536870173:
      v2 = "kIOReturnNoPower";
      break;
    case -536870172:
      v2 = "kIOReturnNoMedia";
      break;
    case -536870171:
      v2 = "kIOReturnUnformattedMedia";
      break;
    case -536870170:
      v2 = "kIOReturnUnsupportedMode";
      break;
    case -536870169:
      v2 = "kIOReturnUnderrun";
      break;
    case -536870168:
      v2 = "kIOReturnOverrun";
      break;
    case -536870167:
      v2 = "kIOReturnDeviceError";
      break;
    case -536870166:
      v2 = "kIOReturnNoCompletion";
      break;
    case -536870165:
      v2 = "kIOReturnAborted";
      break;
    case -536870164:
      v2 = "kIOReturnNoBandwidth";
      break;
    case -536870163:
      v2 = "kIOReturnNotResponding";
      break;
    case -536870162:
      v2 = "kIOReturnIsoTooOld";
      break;
    case -536870161:
      v2 = "kIOReturnIsoTooNew";
      break;
    case -536870160:
      v2 = "kIOReturnNotFound";
      break;
    default:
      if (a1 == -536870911)
      {
        v2 = "kIOReturnInvalid";
      }

      else if (a1)
      {
LABEL_7:
        v2 = "<Unknown IOReturn Value>";
      }

      else
      {
        v2 = "kIOReturnSuccess";
      }

      break;
  }

  return sub_100004A08(a2, v2);
}

void sub_10041B690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF480();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1004CF4B4();
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
}

BOOL sub_10041B708(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF4E0();
  }

  input = a2;
  bzero(__src, 0x400uLL);
  __n = 1024;
  v8 = IOConnectCallMethod(*(a1 + 8), 3u, &input, 1u, *a3, *(a3 + 8) - *a3, 0, 0, __src, &__n);
  v9 = __n;
  if (__n >= 0x401)
  {
    sub_1004CF514();
  }

  v10 = v8;
  v11 = *(a4 + 8) - *a4;
  if (__n <= v11)
  {
    if (__n < v11)
    {
      *(a4 + 8) = *a4 + __n;
    }
  }

  else
  {
    sub_100009838(a4, __n - v11);
    v9 = __n;
  }

  if (v9)
  {
    memcpy(*a4, __src, v9);
  }

  if (v10)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10041B998;
    v25 = &unk_1009A0700;
    v26 = a2;
    v27 = v10;
    AnalyticsSendEventLazy();
    v12 = qword_1009F9820;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(a2, v20);
      v14 = v21;
      v15 = v20[0];
      sub_10041B3BC(v10, __p);
      v16 = v20;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136315394;
      v30 = v16;
      v31 = 2080;
      v32 = v17;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to send command packet type: %s, return: %s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }
  }

  return v10 == 0;
}

void sub_10041B968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041B998(uint64_t a1)
{
  v6[0] = @"CommandType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

_BYTE *sub_10041BA9C@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x3E)
  {
    v2 = "<Unknown Command Type>";
  }

  else
  {
    v2 = off_1009AB1A0[a1];
  }

  return sub_100004A08(a2, v2);
}

BOOL sub_10041BAC8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF540();
  }

  input = a2;
  v6 = IOConnectCallMethod(*(a1 + 8), 1u, &input, 1u, *a3, *(a3 + 8) - *a3, 0, 0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10041BCE0;
    v21 = &unk_1009A0700;
    v22 = a2;
    v23 = v6;
    AnalyticsSendEventLazy();
    v8 = qword_1009F9820;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10041BDE4(a2, v16);
      v10 = v17;
      v11 = v16[0];
      sub_10041B3BC(v7, __p);
      v12 = v16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315394;
      v25 = v12;
      v26 = 2080;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set property type: %s, return: %s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }
  }

  return v7 == 0;
}

void sub_10041BCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041BCE0(uint64_t a1)
{
  v6[0] = @"PropertyType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

_BYTE *sub_10041BDE4@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 208) > 0xB)
  {
    v2 = "<Unknown Property Type>";
  }

  else
  {
    v2 = off_1009AB398[a1 - 208];
  }

  return sub_100004A08(a2, v2);
}

BOOL sub_10041BE14(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CF574();
  }

  input = a2;
  v27 = 1024;
  LOBYTE(v19[0]) = 0;
  outputStruct = *a3;
  v7 = *(a3 + 8) - *a3;
  if (v7 > 0x3FF)
  {
    if (v7 != 1024)
    {
      *(a3 + 8) = outputStruct + 1024;
    }
  }

  else
  {
    sub_100250E48(a3, 1024 - v7, v19);
    outputStruct = *a3;
  }

  v8 = IOConnectCallMethod(*(a1 + 8), 2u, &input, 1u, 0, 0, 0, 0, outputStruct, &v27);
  if (v27 >= 0x401)
  {
    sub_1004CF5A8();
  }

  v9 = v8;
  v10 = *(a3 + 8) - *a3;
  if (v27 <= v10)
  {
    if (v27 < v10)
    {
      *(a3 + 8) = *a3 + v27;
    }
  }

  else
  {
    sub_100009838(a3, v27 - v10);
  }

  if (v9)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10041C0B4;
    v24 = &unk_1009A0700;
    v25 = a2;
    v26 = v9;
    AnalyticsSendEventLazy();
    v11 = qword_1009F9820;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10041BDE4(a2, v19);
      v13 = v20;
      v14 = v19[0];
      sub_10041B3BC(v9, __p);
      v15 = v19;
      if (v13 < 0)
      {
        v15 = v14;
      }

      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315394;
      v29 = v15;
      v30 = 2080;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get property type: %s, return: %s", buf, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }
  }

  return v9 == 0;
}

void sub_10041C084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10041C0B4(uint64_t a1)
{
  v6[0] = @"PropertyType";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v6[1] = @"ErrorCode";
  v7[0] = v2;
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_10041C1B8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface::startReceivingHIDEvents()", buf, 2u);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = [[HIDEventSystemClient alloc] initWithType:1];
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    [*(a1 + 24) setDispatchQueue:*a1];
    [*(a1 + 24) setMatching:&off_1009C4400];
    v6 = *(a1 + 24);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006830;
    v8[3] = &unk_1009AB140;
    v8[4] = a1;
    [v6 setEventHandler:v8];
    [*(a1 + 24) setResetHandler:&stru_1009AB160];
    [*(a1 + 24) setCancelHandler:&stru_1009AB180];
    v3 = *(a1 + 24);
  }

  return [v3 activate];
}

void sub_10041C2E4(id a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface Reset handler", v2, 2u);
  }
}

void sub_10041C34C(id a1)
{
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RoseSupervisorInterface Cancel handler", v2, 2u);
  }
}

uint64_t sub_10041C3F4()
{
  sub_100193120(v2);
  std::ostream::operator<<();
  std::stringbuf::str();
  v2[2] = v0;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  std::locale::~locale(v4);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10041C580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100193C68(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041C594(int a1)
{
  v1 = 0;
  if (a1 <= 99)
  {
    v3 = 0;
    v5 = a1 - 23;
    if (a1 >= 0x17)
    {
      if (a1 == 27)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      if (v5 >= 4)
      {
        LOBYTE(v1) = v6;
      }

      else
      {
        LOBYTE(v1) = 1;
      }

      if (v5 >= 4)
      {
        v4 = v6;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_19;
    }
  }

  else if (a1 > 199)
  {
    if ((a1 - 200) < 3 || a1 == 997)
    {
      v3 = 0;
      return v1 | (v3 << 8);
    }

    v4 = 0;
    v3 = 0;
    if (a1 != 999)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((a1 - 100) > 0x1A)
    {
      v4 = 0;
LABEL_19:
      v1 = sub_100427978(v4, v1);
      v3 = 1;
      return v1 | (v3 << 8);
    }

    v2 = 1 << (a1 - 100);
    v3 = 0;
    if ((v2 & 0x3FFFFF) == 0)
    {
      if ((v2 & 0x6400000) != 0)
      {
        LOBYTE(v1) = 5;
      }

      else
      {
        LOBYTE(v1) = 0;
      }

      v4 = 4;
      goto LABEL_19;
    }
  }

  return v1 | (v3 << 8);
}

uint64_t sub_10041C678(int a1)
{
  result = 1;
  if (a1 > 199)
  {
    if ((a1 - 200) >= 3 && a1 != 999 && a1 != 997)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 100) < 0x1B || (a1 - 7) < 0x15)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10041C6C8(int a1)
{
  result = 1;
  if (a1 <= 99)
  {
    if (a1 >= 0x1C)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 199)
  {
    if ((a1 - 100) >= 0xD)
    {
      return result;
    }

    return 0;
  }

  if ((a1 - 200) < 3 || a1 == 999 || a1 == 997)
  {
    return 0;
  }

  return result;
}