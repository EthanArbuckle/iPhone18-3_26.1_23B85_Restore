void sub_10007D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10007D83C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a2 == 0;
  v6 = *(a1 + 48);
  if (v6 == 3)
  {
    sub_1001460D4(v10, a2 == 0, a1 + 56, *(a1 + 88));
    sub_100146188(a3);
    *(a3 + 144) = 2;
    sub_100146248(v10);
  }

  else if (v6 == 2)
  {
    sub_100145D00(v10, a2 == 0, a1 + 56, a1 + 72, *(a1 + 88));
    sub_100145E3C(a3);
    *(a3 + 144) = 1;
    v10[0] = off_10021B3A0;
    sub_100030D98(&v13);
    v10[0] = off_1001F8FA0;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100146500(&v9, a1 + 72);
    sub_100145774(v10, v5, a1 + 56, &v9, *(a1 + 88));
    sub_1001458C8(a3);
    *(a3 + 144) = 0;
    v10[0] = off_10021B378;
    sub_100030CF8(v14);
    v7 = v13;
    v13 = 0;
    if (v7)
    {
      operator delete[]();
    }

    v10[0] = off_1001F8FA0;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
      operator delete[]();
    }
  }
}

void sub_10007DA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100030C64(va);
  if (a2)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10007DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_10016919C(a1 + 56);
  if (!v9)
  {
    return -35;
  }

  v11 = v9;
  __p = 0;
  v67 = 0;
  v68 = 0;
  v12 = (*(*a1 + 24))(a1, v10);
  v13 = v12;
  v14 = *(a3 + 104) != 1 || *(a3 + 48) == 0;
  v43 = a2;
  v42 = v12;
  if (!v14)
  {
    sub_1000302E0(v69, a3);
    v35 = *(a4 + 208) - *(a3 + 208);
    sub_10002E6D0(v69, v35 & ~(v35 >> 63));
    sub_10007D83C(a3, 1, &v97);
    sub_100030DC4(v108, &v97);
    v109 = v13;
    sub_100192AE0(&v83);
    v83 = off_1001FC8A8;
    v85 = -1;
    v87 = 0;
    v86 = 0;
    sub_1000850B0(v75, v108, &v83, a3, a4, 1, 0);
  }

  sub_1000302E0(v55, a3);
  sub_1000302E0(v44, a4);
  sub_100030464(&v97, v55);
  v99 = v57;
  v100 = v58;
  v101 = v59;
  v102 = v60;
  v103 = v61;
  v15 = v62;
  v62 = 0uLL;
  v104 = v15;
  v105 = v63;
  v107 = v65;
  v106 = v64;
  sub_100030464(&v83, v44);
  v16 = 0;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  v91 = v49;
  v92 = v50;
  v17 = v51;
  v51 = 0uLL;
  v93 = v17;
  v94 = v52;
  v18 = v53;
  v96 = v54;
  v95 = v53;
  v75[0] = 0;
  v82 = 0;
  while (!sub_10002DE0C(&v97, &v83))
  {
    if (v106 >= v18 || v16 == -1)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v72 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:370:34)]";
      *(&v72 + 1) = 104;
      LODWORD(v73) = 2;
      sub_1000339C8(v69, &v72);
      sub_100001FE8(v71, "sg: ", 4);
      sub_100192838(v71, &v97);
      std::ostream::~ostream();
      sub_100033C40(v69);
      std::ios::~ios();
    }

    v69[0] = 0;
    v69[1] = v18;
    v70 = 2;
    sub_100093990(&v97, v69, &v72);
    v20 = v73;
    v21 = v67;
    if (v67 >= v68)
    {
      v23 = (v67 - __p) >> 4;
      v24 = v23 + 1;
      if ((v23 + 1) >> 60)
      {
        sub_100015B70();
      }

      v25 = v68 - __p;
      if ((v68 - __p) >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        sub_100083D14(&__p, v26);
      }

      v27 = (16 * v23);
      *v27 = v72;
      v27[1] = v20;
      v22 = 16 * v23 + 16;
      v28 = (16 * v23 - (v67 - __p));
      memcpy(v28, __p, v67 - __p);
      v29 = __p;
      __p = v28;
      v67 = v22;
      v68 = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v67 = v72;
      *(v21 + 1) = v20;
      v22 = (v21 + 16);
    }

    v67 = v22;
    if (v73 >= 0)
    {
      v30 = v73;
    }

    else
    {
      v30 = v73;
    }

    v31 = v30 >= 0 || v30 == 0;
    v32 = v31;
    if (v31)
    {
      v33 = v74;
      if (sub_10002F220(&v97, &v83, v74, v30))
      {
        sub_1000302E0(v108, &v97);
        sub_10002F174(v108, &v83, v33, v30, 0xFFFFFFFFFFFFFFFFLL, v69);
        sub_100033B34(v75, v69);
        sub_10002F23C(v69);
        sub_10000FF88(v108);
        sub_10002E310(v75, v69);
        sub_100030B94(&v97, v69);
        sub_10000FF88(v69);
        sub_10002DF68(v75, v69);
        sub_100030B94(&v83, v69);
        sub_10000FF88(v69);
      }

      sub_10002E6D0(&v97, v30);
      v16 += v30;
    }

    else if (v73 < 0)
    {
      v4 = v73;
    }

    else
    {
      v4 = -v73;
    }

    if (*(&v72 + 1))
    {
      sub_10000E984(*(&v72 + 1));
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v4 = v16;
LABEL_50:
  if (v82 == 1)
  {
    if (v81)
    {
      sub_10000E984(v81);
    }

    if (v80)
    {
      sub_10000E984(v80);
    }

    if (v79)
    {
      sub_10000E984(v79);
    }

    if (v78)
    {
      sub_10000E984(v78);
    }

    if (v77)
    {
      sub_10000E984(v77);
    }

    if (v76)
    {
      sub_10000E984(v76);
    }
  }

  if (*(&v93 + 1))
  {
    sub_10000E984(*(&v93 + 1));
  }

  if (v84)
  {
    sub_10000E984(v84);
  }

  if (*(&v104 + 1))
  {
    sub_10000E984(*(&v104 + 1));
  }

  if (v98)
  {
    sub_10000E984(v98);
  }

  if (*(&v51 + 1))
  {
    sub_10000E984(*(&v51 + 1));
  }

  if (v45)
  {
    sub_10000E984(v45);
  }

  if (*(&v62 + 1))
  {
    sub_10000E984(*(&v62 + 1));
  }

  if (v56)
  {
    sub_10000E984(v56);
  }

  v36 = __p;
  v37 = *(a3 + 208) / v42;
  *v11 = 4;
  *(v11 + 24) = v36;
  *(v11 + 32) = v37;
  *(v11 + 40) = 0;
  *(v11 + 48) = v4 / v42;
  v38 = sub_10007D0AC(a1, v11, v43);
  v39 = -5;
  if (v38 < 0)
  {
    v39 = v38;
  }

  if (v38 == (v4 / v42))
  {
    v34 = v42 * v38;
  }

  else
  {
    v34 = v39;
  }

  v40 = *(a3 + 208);
  if (__p)
  {
    v67 = __p;
    operator delete(__p);
  }

  return v34;
}

void sub_10007E1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x200]);
  if (STACK[0x4D8])
  {
    sub_10000E984(STACK[0x4D8]);
  }

  sub_10002F2A8(&STACK[0x540]);
  sub_10000FF88(&STACK[0x8D0]);
  sub_10000FF88(&STACK[0x9B0]);
  sub_10000FF88(&a14);
  sub_10000FF88(&a42);
  if (__p)
  {
    a71 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10007E308(uint64_t a1, uint64_t a2, int a3)
{
  sub_10016919C(a1 + 56);
  if (!v6)
  {
    return 4294967261;
  }

  *v6 = 5;
  *(v6 + 24) = a3 + 1;

  return sub_10007D0AC(a1, v6, a2);
}

uint64_t sub_10007E384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  for (i = (a3 + 8); ; i += 2)
  {
    sub_10016919C(a1 + 56);
    if (!v8)
    {
      break;
    }

    v9 = *(i - 1);
    v10 = *i;
    *v8 = 6;
    *(v8 + 24) = v9;
    *(v8 + 32) = v10;
    result = sub_10007D0AC(a1, v8, a2);
    if (result)
    {
      return result;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return 4294967261;
}

void sub_10007E41C(uint64_t a1)
{
  sub_100169208(a1 + 56, &v4);
  if (v6)
  {
    v2 = v4;
    v3 = v5;
    do
    {
      *v2 = v3;
      sub_1001504BC((v2 + 8));
      sub_100169208(a1 + 56, &v4);
      v2 = v4;
      v3 = v5;
    }

    while ((v6 & 1) != 0);
  }
}

unint64_t sub_10007E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__src = 0u;
  memset(v92, 0, 24);
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  sub_1000302E0(v74, a3);
  sub_1000302E0(v63, a4);
  sub_100030464(&v104, v74);
  v59 = a3;
  v60 = a1;
  v61 = a2;
  v106 = v76;
  v107 = v77;
  v108 = v78;
  v109 = v79;
  v110 = v80;
  v8 = v81;
  v81 = 0uLL;
  v111 = v8;
  v112 = v82;
  v114 = v84;
  v113 = v83;
  sub_100030464(v93, v63);
  v9 = 0;
  v10 = 0;
  v95 = v65;
  v96 = v66;
  v97 = v67;
  v98 = v68;
  v99 = v69;
  v11 = v70;
  v70 = 0uLL;
  v100 = v11;
  v101 = v71;
  v12 = v72;
  v103 = v73;
  v102 = v72;
  LOBYTE(v125[0]) = 0;
  v132 = 0;
  while (!sub_10002DE0C(&v104, v93))
  {
    if (v113 >= v12 || v10 == -1)
    {
      break;
    }

    if (sub_1000E9608())
    {
      *&v122 = "details::for_each_sg_in_vec_internal(Fn &&, sg_vec_ref::iterator, sg_vec::iterator, size_t, BOOL) [Fn = (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/disk_images/formats/plugin_async_di.cpp:450:45)]";
      *(&v122 + 1) = 104;
      LODWORD(v123) = 2;
      sub_1000339C8(&v116, &v122);
      sub_100001FE8(v121, "sg: ", 4);
      sub_100192838(v121, &v104);
      std::ostream::~ostream();
      sub_100033C40(&v116);
      std::ios::~ios();
    }

    v116 = 0;
    v117 = v12;
    LOBYTE(v118) = 2;
    sub_100093990(&v104, &v116, &v122);
    v14 = __src[1];
    if (__src[1] >= *&v92[0])
    {
      v18 = (__src[1] - __src[0]) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        sub_100015B70();
      }

      v20 = *&v92[0] - __src[0];
      if ((*&v92[0] - __src[0]) >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v120 = __src;
      if (v21)
      {
        sub_100085E2C(__src, v21);
      }

      v22 = 16 * v18;
      v23 = *(&v122 + 1);
      *(16 * v18) = v122;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = (v22 + 16);
      v24 = (v22 - (__src[1] - __src[0]));
      memcpy(v24, __src[0], __src[1] - __src[0]);
      v25 = __src[0];
      v26 = *&v92[0];
      __src[0] = v24;
      __src[1] = v17;
      *&v92[0] = 0;
      v118 = v25;
      v119 = v26;
      v117 = v25;
      v116 = v25;
      sub_10007AB30(&v116);
      v15 = v122;
    }

    else
    {
      v15 = v122;
      *__src[1] = v122;
      v16 = *(&v122 + 1);
      v14[1] = *(&v122 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v14 + 2;
    }

    __src[1] = v17;
    v27 = v123;
    v28 = *&v90[2];
    if (*&v90[2] >= *(&v90[2] + 1))
    {
      v30 = (*&v90[2] - *(&v90[1] + 1)) >> 4;
      v31 = v30 + 1;
      if ((v30 + 1) >> 60)
      {
        sub_100015B70();
      }

      v32 = *(&v90[2] + 1) - *(&v90[1] + 1);
      if ((*(&v90[2] + 1) - *(&v90[1] + 1)) >> 3 > v31)
      {
        v31 = v32 >> 3;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        sub_100083D14(&v90[1] + 8, v33);
      }

      v34 = (16 * v30);
      *v34 = v15;
      v34[1] = v27;
      v29 = 16 * v30 + 16;
      v35 = (16 * v30 - (*&v90[2] - *(&v90[1] + 1)));
      memcpy(v35, *(&v90[1] + 1), *&v90[2] - *(&v90[1] + 1));
      v36 = *(&v90[1] + 1);
      *(&v90[1] + 1) = v35;
      v90[2] = v29;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      **&v90[2] = v15;
      *(v28 + 8) = v27;
      v29 = v28 + 16;
    }

    *&v90[2] = v29;
    v37 = v123;
    if (v123 >= 0)
    {
      v38 = v123;
    }

    else
    {
      v38 = v123;
    }

    v39 = v38 >= 0 || v38 == 0;
    v40 = v39;
    if (v39)
    {
      v41 = v124;
      if ((v9 & 1) == 0)
      {
        v9 = 1;
      }

      if (sub_10002F220(&v104, v93, v124, v38))
      {
        sub_1000302E0(v115, &v104);
        sub_10002F174(v115, v93, v41, v38, 0xFFFFFFFFFFFFFFFFLL, &v116);
        sub_100033B34(v125, &v116);
        sub_10002F23C(&v116);
        sub_10000FF88(v115);
        sub_10002E310(v125, &v116);
        sub_100030B94(&v104, &v116);
        sub_10000FF88(&v116);
        sub_10002DF68(v125, &v116);
        sub_100030B94(v93, &v116);
        sub_10000FF88(&v116);
      }

      sub_10002E6D0(&v104, v38);
      v10 += v38;
    }

    else
    {
      if (v123 >= 0)
      {
        v37 = -v123;
      }

      v62 = v37;
    }

    if (*(&v122 + 1))
    {
      sub_10000E984(*(&v122 + 1));
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v62 = v10;
LABEL_60:
  if (v132 == 1)
  {
    if (v131)
    {
      sub_10000E984(v131);
    }

    if (v130)
    {
      sub_10000E984(v130);
    }

    if (v129)
    {
      sub_10000E984(v129);
    }

    if (v128)
    {
      sub_10000E984(v128);
    }

    if (v127)
    {
      sub_10000E984(v127);
    }

    if (v126)
    {
      sub_10000E984(v126);
    }
  }

  if (*(&v100 + 1))
  {
    sub_10000E984(*(&v100 + 1));
  }

  if (v94)
  {
    sub_10000E984(v94);
  }

  if (*(&v111 + 1))
  {
    sub_10000E984(*(&v111 + 1));
  }

  if (v105)
  {
    sub_10000E984(v105);
  }

  if (*(&v70 + 1))
  {
    sub_10000E984(*(&v70 + 1));
  }

  if (v64)
  {
    sub_10000E984(v64);
  }

  if (*(&v81 + 1))
  {
    sub_10000E984(*(&v81 + 1));
  }

  if (v75)
  {
    sub_10000E984(v75);
  }

  v42 = (v59 + 48);
  if (*(v59 + 104) == 1 && *(v59 + 48))
  {
    if (*(a2 + 96) == 1)
    {
      v43 = *v42;
      v44 = *(v59 + 64);
      v45 = *(v59 + 80);
      *(a2 + 88) = *(v59 + 96);
      *(a2 + 72) = v45;
      *(a2 + 56) = v44;
      *(a2 + 40) = v43;
    }

    else
    {
      sub_10009386C(a2 + 40, v42);
      *(a2 + 96) = 1;
    }
  }

  v46 = *(&v90[1] + 1);
  v47 = *(v59 + 208);
  v48 = (*(*v60 + 24))(v60);
  v49 = (*(*v60 + 24))(v60);
  LOBYTE(v85) = 2;
  *(&v86 + 1) = v46;
  v87 = v47 / v48;
  v50 = v62;
  LODWORD(v88) = v62 / v49;
  v51 = v61[3];
  if (v51 >= v61[4])
  {
    v56 = sub_100083D5C(v61 + 2, &v85);
    v57 = *&v92[1];
    v61[3] = v56;
    v50 = v62;
    if (v57)
    {
      sub_10000E984(v57);
    }
  }

  else
  {
    v52 = v86;
    *v51 = v85;
    *(v51 + 16) = v52;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    *(v51 + 80) = *&v90[0];
    *(v51 + 48) = v54;
    *(v51 + 64) = v55;
    *(v51 + 32) = v53;
    *(v51 + 88) = *(v90 + 8);
    *&v90[1] = 0;
    *(&v90[0] + 1) = 0;
    *(v51 + 104) = 0;
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 104) = *(&v90[1] + 8);
    *(v51 + 120) = *(&v90[2] + 1);
    memset(&v90[1] + 8, 0, 24);
    *(v51 + 136) = 0;
    *(v51 + 144) = 0;
    *(v51 + 128) = *__src;
    *(v51 + 144) = *&v92[0];
    __src[0] = 0;
    __src[1] = 0;
    *&v92[0] = 0;
    *(v51 + 152) = *(v92 + 8);
    *&v92[1] = 0;
    *(&v92[0] + 1) = 0;
    v61[3] = v51 + 168;
  }

  v125[0] = __src;
  sub_100015CD4(v125);
  if (*(&v90[1] + 1))
  {
    *&v90[2] = *(&v90[1] + 1);
    operator delete(*(&v90[1] + 1));
  }

  if (*&v90[1])
  {
    sub_10000E984(*&v90[1]);
  }

  return v50;
}

void sub_10007EBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&STACK[0x530]);
  if (STACK[0x808])
  {
    sub_10000E984(STACK[0x808]);
  }

  sub_10002F2A8(&STACK[0x878]);
  sub_10000FF88(&STACK[0x290]);
  sub_10000FF88(&STACK[0x370]);
  sub_10000FF88(&a13);
  sub_10000FF88(&a41);
  sub_1000841BC(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_10007ECBC(uint64_t a1)
{
  *a1 = off_1002015F0;
  if (*(a1 + 256) == 1)
  {
    sub_100169198(a1 + 56);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_10007ED2C(uint64_t a1)
{
  *a1 = off_1002015F0;
  if (*(a1 + 256) == 1)
  {
    sub_100169198(a1 + 56);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_10000E984(v2);
  }

  operator delete();
}

double sub_10007EDE8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5();
    v4 = *(a1 + 16);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v4 + 40);
  if (v8 && (v9 = v8()) != 0 || (v9 = v6) != 0)
  {
    if (v6 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    *a2 = v10;
    a2[1] = v6 != 0;
    a2[2] = v9 + v9 * ((v6 - 1 + v9) / v9);
    a2[3] = 0;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_10007EE84(uint64_t a1)
{
  (*(*a1 + 80))(v4);
  if (v4[0])
  {
    v1 = 0;
  }

  else
  {
    v1 = v4[1] == 0;
  }

  return !v1 || v4[2] != 0 || v4[3] != 0;
}

uint64_t sub_10007EF60(uint64_t a1)
{
  if (qword_1002353E0 != -1)
  {
    sub_1001984F8();
  }

  v2 = off_1002353D8;
  if (!off_1002353D8)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t sub_10007EFC8(uint64_t a1)
{
  if (qword_1002353F0 != -1)
  {
    sub_10019850C();
  }

  v2 = off_1002353E8;
  if (!off_1002353E8)
  {
    return 0;
  }

  return v2(a1);
}

void sub_10007F05C(id a1)
{
  v1 = dlopen("/AppleInternal/System/Library/libtest_plugin_shared_object.dylib", 5);
  if (v1)
  {
    off_1002353D8 = dlsym(v1, "ramTestPluginCreate");
    if (off_1002353D8)
    {
      return;
    }

    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    sub_10007F184(v4, &v2);
    sub_100001FE8(v5, "Cannot find rawTestPluginCreate in libtest_plugin_shared_object.dylib ", 70);
    std::ostream::~ostream();
    sub_10007F3B8(v4);
  }

  else
  {
    *&v2 = "*JulioTestPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 22;
    v3 = 16;
    sub_10004C5C0(v4, &v2);
    sub_100001FE8(v5, "Cannot load libTestPlugin", 25);
    std::ostream::~ostream();
    sub_10004D5A0(v4);
  }

  std::ios::~ios();
}

void sub_10007F160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007F2AC(va);
  _Unwind_Resume(a1);
}

void *sub_10007F184(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007F2F0(a1, a2);
  *a1 = off_100201748;
  a1[45] = &off_100201848;
  a1[46] = &off_100201870;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201748;
  a1[45] = off_1002017D0;
  a1[46] = off_1002017F8;
  return a1;
}

void sub_10007F288(_Unwind_Exception *a1)
{
  sub_10007F3B8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007F2AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10007F3B8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10007F2F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002018E0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10007F3A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10007F3B8(uint64_t a1)
{
  *a1 = off_1002018E0;
  sub_10007F7F8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10007F524(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10007F3B8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007F58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10007F5C8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10007F634(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10007F3B8(v1);

  return std::ios::~ios();
}

void sub_10007F680(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10007F3B8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007F6E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10007F3B8(v1);

  return std::ios::~ios();
}

void sub_10007F744(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10007F3B8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10007F7C0(uint64_t a1)
{
  sub_10007F3B8(a1);

  operator delete();
}

uint64_t sub_10007F7F8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10007F96C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10007F944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10007F96C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 77;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 77;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10007FB50(id a1)
{
  v1 = dlopen("/usr/lib/libAmber.dylib", 5);
  if (v1)
  {
    off_1002353E8 = dlsym(v1, "AmberDiskImagePluginCreate");
    if (off_1002353E8)
    {
      return;
    }

    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    sub_10007FDE4(v4, &v2);
    sub_100001FE8(v5, "Cannot find AmberDiskImagePluginCreate in libAmber", 50);
    std::ostream::~ostream();
    sub_100080878(v4);
  }

  else
  {
    *&v2 = "*amberPluginCreate(uint64_t)_block_invoke";
    *(&v2 + 1) = 18;
    v3 = 16;
    sub_10007FC78(v4, &v2);
    sub_100001FE8(v5, "Cannot load libAmber", 20);
    std::ostream::~ostream();
    sub_100080018(v4);
  }

  std::ios::~ios();
}

void sub_10007FC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007FF0C(va);
  _Unwind_Resume(a1);
}

void *sub_10007FC78(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10007FF50(a1, a2);
  *a1 = off_1002019A8;
  a1[45] = &off_100201AA8;
  a1[46] = &off_100201AD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002019A8;
  a1[45] = off_100201A30;
  a1[46] = off_100201A58;
  return a1;
}

void sub_10007FD7C(_Unwind_Exception *a1)
{
  sub_100080018(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007FDA0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100080018(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007FDE4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000807B0(a1, a2);
  *a1 = off_100201BC8;
  a1[45] = &off_100201CC8;
  a1[46] = &off_100201CF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201BC8;
  a1[45] = off_100201C50;
  a1[46] = off_100201C78;
  return a1;
}

void sub_10007FEE8(_Unwind_Exception *a1)
{
  sub_100080878(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007FF0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100080878(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10007FF50(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100201B40;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100080000(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100080018(uint64_t a1)
{
  *a1 = off_100201B40;
  sub_100080458(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100080184(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100080018(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000801EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100080228(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100080294(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100080018(v1);

  return std::ios::~ios();
}

void sub_1000802E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100080018(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100080344(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100080018(v1);

  return std::ios::~ios();
}

void sub_1000803A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100080018(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100080420(uint64_t a1)
{
  sub_100080018(a1);

  operator delete();
}

uint64_t sub_100080458(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000805CC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000805A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000805CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 52;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 52;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000807B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100201D60;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100080860(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100080878(uint64_t a1)
{
  *a1 = off_100201D60;
  sub_100080CB8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000809E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100080878(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100080A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100080A88(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_100080AF4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100080878(v1);

  return std::ios::~ios();
}

void sub_100080B40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100080878(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100080BA4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100080878(v1);

  return std::ios::~ios();
}

void sub_100080C04(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100080878(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100080C80(uint64_t a1)
{
  sub_100080878(a1);

  operator delete();
}

uint64_t sub_100080CB8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100080E2C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100080E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100080E2C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 58;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 58;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100081010(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_100081094(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void *sub_100081094(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100081118(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000812AC();
  }

  return result;
}

void **sub_100081118(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_1000813EC(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_1000813EC(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_1000813EC((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((sub_1000813EC(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_100081364(a1, a3, a5);
}

void sub_100081348(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100081484(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100081364(uint64_t a1, void *a2, void **a3)
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
        if ((sub_1000813EC(a3, (v4 + 32)) & 0x80) == 0)
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

      if ((sub_1000813EC(v7 + 4, a3) & 0x80) == 0)
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

uint64_t sub_1000813EC(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_100081424(a1, v2, v5, v6);
}

uint64_t sub_100081424(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_100081484(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1000814E8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000814E8(a1, *a2);
    sub_1000814E8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_10008154C(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1000813EC((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_1000813EC(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1000815CC(uint64_t a1, void **a2)
{
  result = *sub_100081364(a1, &v3, a2);
  if (!result)
  {
    sub_100081664();
  }

  return result;
}

void sub_100081700(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100081484(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10008171C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000819B4(v1);

  return std::ios::~ios();
}

uint64_t sub_100081768(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000819B4(v1);

  return std::ios::~ios();
}

void sub_1000817C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000819B4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008186C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000818D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000819B4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008193C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000819B4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000819B4(uint64_t a1)
{
  *a1 = off_100201F80;
  sub_100081B20(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100081B20(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100081CD0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100081C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100081C98(uint64_t a1)
{
  sub_1000819B4(a1);

  operator delete();
}

int *sub_100081CD0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 167;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 167;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100081EB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008214C(v1);

  return std::ios::~ios();
}

uint64_t sub_100081F00(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008214C(v1);

  return std::ios::~ios();
}

void sub_100081F60(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008214C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100081FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100082004(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100082070(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008214C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000820D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008214C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008214C(uint64_t a1)
{
  *a1 = off_1002021A0;
  sub_1000822B8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000822B8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100082468((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100082404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100082430(uint64_t a1)
{
  sub_10008214C(a1);

  operator delete();
}

int *sub_100082468(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 172;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 172;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008264C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000828E4(v1);

  return std::ios::~ios();
}

uint64_t sub_100082698(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000828E4(v1);

  return std::ios::~ios();
}

void sub_1000826F8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000828E4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100082760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008279C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100082808(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000828E4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008286C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000828E4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000828E4(uint64_t a1)
{
  *a1 = off_1002023C0;
  sub_100082A50(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100082A50(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100082C00((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100082B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100082BC8(uint64_t a1)
{
  sub_1000828E4(a1);

  operator delete();
}

int *sub_100082C00(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 177;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 177;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100082DE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008307C(v1);

  return std::ios::~ios();
}

uint64_t sub_100082E30(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008307C(v1);

  return std::ios::~ios();
}

void sub_100082E90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008307C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100082EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100082F34(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100082FA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008307C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100083004(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008307C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008307C(uint64_t a1)
{
  *a1 = off_1002025E0;
  sub_1000831E8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_1000831E8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100083398((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100083334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083360(uint64_t a1)
{
  sub_10008307C(a1);

  operator delete();
}

int *sub_100083398(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 183;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 183;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008357C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083814(v1);

  return std::ios::~ios();
}

uint64_t sub_1000835C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083814(v1);

  return std::ios::~ios();
}

void sub_100083628(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083814(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000836CC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100083738(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100083814(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008379C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100083814(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100083814(uint64_t a1)
{
  *a1 = off_100202800;
  sub_100083980(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100083980(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100083B30((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100083ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100083AF8(uint64_t a1)
{
  sub_100083814(a1);

  operator delete();
}

int *sub_100083B30(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 282;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 282;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_100083D14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100083D5C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_100015B70();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100083F24(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100083EA8(a1, 168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_100083F80(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10008413C(&v13);
  return v12;
}

void sub_100083E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10008413C(va);
  _Unwind_Resume(a1);
}

__n128 sub_100083EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  *(a2 + 80) = *(a3 + 80);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 120) = *(a3 + 120);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  result = *(a3 + 152);
  *(a2 + 152) = result;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  return result;
}

void sub_100083F24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100083F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_100083EA8(a1, a4, v7);
      v7 += 168;
      a4 = v12 + 168;
      v12 += 168;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_100084050(a1, v5);
      v5 += 168;
    }
  }

  return sub_1000840B0(v9);
}

void sub_100084050(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (v3)
  {
    sub_10000E984(v3);
  }

  v6 = (a2 + 128);
  sub_100015CD4(&v6);
  v4 = *(a2 + 104);
  if (v4)
  {
    *(a2 + 112) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    sub_10000E984(v5);
  }
}

uint64_t sub_1000840B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000840E8(a1);
  }

  return a1;
}

void sub_1000840E8(uint64_t *a1)
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
      v3 -= 168;
      sub_100084050(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10008413C(uint64_t a1)
{
  sub_100084174(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100084174(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_100084050(v5, v4 - 168);
  }
}

uint64_t sub_1000841BC(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v6 = (a1 + 128);
  sub_100015CD4(&v6);
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1;
}

uint64_t sub_100084220(uint64_t a1, uint64_t a2)
{
  *a1 = off_100202880;
  *(a1 + 8) = a2;
  sub_100150484((a1 + 24), 0);
  sub_10007CF5C(a2);
  return a1;
}

uint64_t sub_100084288(uint64_t a1)
{
  *a1 = off_100202880;
  sub_10014FD8C((a1 + 24));
  return a1;
}

void sub_1000842CC(uint64_t a1)
{
  *a1 = off_100202880;
  sub_10014FD8C((a1 + 24));

  operator delete();
}

uint64_t sub_100084348(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100201F80;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000843F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100084410(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002021A0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000844C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000844D8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002023C0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100084588(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000845A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002025E0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100084650(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100084668(uint64_t a1, void **a2)
{
  v2 = *sub_100081364(a1, &v4, a2);
  if (!v2)
  {
    sub_100084710();
  }

  return v2;
}

uint64_t sub_1000847B0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1000847FC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1000847FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_100084850(uint64_t a1, uint64_t a2)
{
  *&v9 = "PluginsManager::register_plugin(const string &, di_plugin_t *)::(anonymous class)::operator()(di_plugin_t *) const";
  *(&v9 + 1) = 93;
  v10 = 0;
  sub_10005F900(v11, &v9);
  sub_100001FE8(v12, "Unregistering plugin ", 21);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_100001FE8(v12, v5, v6);
  std::ostream::~ostream();
  sub_100060AE8(v11);
  result = std::ios::~ios();
  v8 = *(a2 + 32);
  if (v8)
  {
    return v8(a2);
  }

  return result;
}

void sub_100084910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10005FA28(va);
  _Unwind_Resume(a1);
}

void sub_100084924(std::__shared_weak_count *this)
{
  this->__vftable = off_1002028D8;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_100084984(std::__shared_weak_count *this)
{
  this->__vftable = off_1002028D8;
  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__shared_owners_);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete();
}

void sub_1000849F8(uint64_t a1)
{
  sub_100084850(a1 + 32, *(a1 + 24));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_100084A50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100084B1C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = *(*a2 + 72);
  if (v3)
  {
    return v3();
  }

  return result;
}

uint64_t sub_100084B30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100084B7C(uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t sub_100084BFC(uint64_t a1, uint64_t a2)
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

void sub_100084D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    sub_100084FA0(v9);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100084DAC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100084E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002029C8;
  sub_100084B7C(&a1[1].__shared_owners_);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

void sub_100084E80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002029C8;
  sub_100084B7C(&a1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100084EE8(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_10001583C();
  }

  (*(*v2 + 48))(v2, &v4);
  return sub_100084B7C(a1 + 32);
}

uint64_t sub_100084F5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100084FA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100084FE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100202800;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100085098(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10008511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_100148204(a6, v24);
  v16 = sub_100085600(a4, a5, v14, v15, v24);
  sub_100147DC0(a1, v16);
  sub_1000320D4(v24);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  sub_1000302E0(v21, a4);
  sub_1000302E0(v18, a5);
  v17 = sub_100085868(v21, v18);
  if (v20)
  {
    sub_10000E984(v20);
  }

  if (v19)
  {
    sub_10000E984(v19);
  }

  if (v23)
  {
    sub_10000E984(v23);
  }

  if (v22)
  {
    sub_10000E984(v22);
  }

  *(a1 + 96) = v17;
  is_mul_ok(3 * v17, 0x18uLL);
  operator new[]();
}

void sub_100085520(_Unwind_Exception *a1)
{
  sub_100032234(v2 + 32);
  sub_1000320D4(v3 - 208);
  sub_1000323C4(v1 + 25);
  sub_100032FF4(v1 + 22);
  sub_100031E48(v1 + 19);
  sub_1000330A8(v1 + 16);
  sub_100031E9C(v1 + 13);
  sub_100015888(v1, 0);
  sub_10001590C((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_100085600(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (sub_10002DE0C(a1, a2))
  {
    return 0;
  }

  sub_100030254(v37, a1);
  v11 = v39;
  sub_100085A90(v31, a1, a2);
  sub_1000302E0(v28, v31);
  sub_1000302E0(v25, &v34);
  v10 = 0;
  v12 = v11 / a3 * a3;
  while (!sub_10002DE0C(v28, v25))
  {
    sub_100030254(&v21, v28);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10001583C();
    }

    if ((*(*v13 + 48))(v13, &v21))
    {
      v14 = v24 - v12 + v23;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v12 += v16;
    }

    else
    {
      v17 = a3;
      if (v24 % a4)
      {
        goto LABEL_14;
      }

      if (v23 % a4)
      {
        v17 = 0;
LABEL_14:
        v18 = v17 + v10;
        if ((v23 + v24) % a4)
        {
          v19 = a3;
        }

        else
        {
          v19 = 0;
        }

        v10 = v18 + v19;
        v12 = (a4 - 1 + v23 + v24) / a4 * a4;
        goto LABEL_18;
      }

      v12 = v23 + v24;
    }

LABEL_18:
    if (v22)
    {
      sub_10000E984(v22);
    }

    sub_10002E834(v28);
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  if (v30)
  {
    sub_10000E984(v30);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  if (v36)
  {
    sub_10000E984(v36);
  }

  if (v35)
  {
    sub_10000E984(v35);
  }

  if (v33)
  {
    sub_10000E984(v33);
  }

  if (v32)
  {
    sub_10000E984(v32);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  return v10;
}

void sub_10008581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  sub_10000FF88(&a23);
  sub_10000FF88(&a51);
  sub_100076574(&STACK[0x230]);
  v53 = *(v51 - 168);
  if (v53)
  {
    sub_10000E984(v53);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100085868(uint64_t a1, uint64_t a2)
{
  sub_1000302E0(v8, a1);
  sub_1000302E0(&v5, a2);
  for (i = 0; !sub_10002DE0C(v8, &v5); ++i)
  {
    sub_10002E834(v8);
  }

  if (v7)
  {
    sub_10000E984(v7);
  }

  if (v6)
  {
    sub_10000E984(v6);
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  return i;
}

void sub_10008590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_10000FF88(&a9);
  sub_10000FF88(&a37);
  _Unwind_Resume(a1);
}

void sub_100085934(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100085A90(v14, a2, a3);
  sub_1000302E0(v11, v14);
  sub_1000302E0(v8, &v17);
  while (!sub_10002DE0C(v11, v8))
  {
    sub_100030254(&v5, v11);
    v4 = sub_100147EF8(a1, &v5, 0);
    if (v4 != v7)
    {
      sub_100148248(a1, &v5, v4, 0);
    }

    if (v6)
    {
      sub_10000E984(v6);
    }

    sub_10002E834(v11);
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v9)
  {
    sub_10000E984(v9);
  }

  if (v13)
  {
    sub_10000E984(v13);
  }

  if (v12)
  {
    sub_10000E984(v12);
  }

  if (v19)
  {
    sub_10000E984(v19);
  }

  if (v18)
  {
    sub_10000E984(v18);
  }

  if (v16)
  {
    sub_10000E984(v16);
  }

  if (v15)
  {
    sub_10000E984(v15);
  }
}

void sub_100085A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_10000FF88(&a23);
  sub_10000FF88(&a51);
  sub_100076574(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t sub_100085A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000302E0(a1, a2);
  sub_1000302E0(a1 + 224, a3);
  return a1;
}

uint64_t sub_100085B54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_100085B60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100085C34(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100085C70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100085CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = a2;
  v9 = a1 + 232;
  sub_1000302E0(a1 + 8, a3);
  sub_1000302E0(v9, a4);
  sub_1000302E0(a1 + 456, a3);
  *(a1 + 680) = a5;
  return a1;
}

void sub_100085D2C(_Unwind_Exception *a1)
{
  sub_10000FF88(v2);
  sub_10000FF88(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100085D50(void *a1)
{
  sub_100147730(a1);
  sub_100085D94(a1 + 28);

  return sub_10003172C(a1);
}

void *sub_100085D94(void *a1)
{
  (*(**a1 + 152))(*a1);
  v2 = a1[80];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[58];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[52];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[30];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[24];
  if (v6)
  {
    sub_10000E984(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    sub_10000E984(v7);
  }

  return a1;
}

void sub_100085E2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100085E74(std::string *a1)
{
  v16 = a1;
  sub_100092720(&v15, &v16);
  sub_100010B0C(&__ec, "Info.bckup");
  *&v17.__pn_.__r_.__value_.__l.__data_ = __ec;
  v17.__pn_.__r_.__value_.__r.__words[2] = v11;
  __ec.__cat_ = 0;
  v11 = 0;
  *&__ec.__val_ = 0;
  sub_100010B0C(__p, "Info.plist");
  v18 = *__p;
  v19[0] = v9;
  __p[1] = 0;
  v9 = 0;
  __p[0] = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_10008A1CC(&v12, &v17, &v20, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v19[i]) < 0)
    {
      operator delete(*(&v17 + i * 8 + 24));
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(*&__ec.__val_);
  }

  v2 = v12;
  v3 = v13;
  if (v12 == v13)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_23;
  }

  v4 = std::system_category();
  while (1)
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v4;
    sub_100086128(v2, &v15, &v17);
    std::__fs::filesystem::__status(&v17, &__ec);
    if (LOBYTE(__p[0]))
    {
      break;
    }

    v5 = __ec.__val_ == 0;
LABEL_15:
    if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__pn_.__r_.__value_.__l.__data_);
    }

    if (!v5)
    {
      goto LABEL_22;
    }

    if (++v2 == v3)
    {
      goto LABEL_19;
    }
  }

  __ec.__val_ = 0;
  __ec.__cat_ = v4;
  if (LOBYTE(__p[0]) == 255)
  {
    v5 = 1;
    goto LABEL_15;
  }

  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_22:
  v6 = 1;
LABEL_23:
  v17.__pn_.__r_.__value_.__r.__words[0] = &v12;
  sub_10008A438(&v17);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_10008605C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = (v30 + 47);
  v33 = -48;
  v34 = v32;
  while (1)
  {
    v35 = *v34;
    v34 -= 24;
    if (v35 < 0)
    {
      operator delete(*(v32 - 23));
    }

    v32 = v34;
    v33 += 24;
    if (!v33)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

std::__fs::filesystem::path *sub_100086128@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100050108(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return sub_10008A4DC(a3, this);
}

void sub_100086180(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008619C(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, _OWORD *a5)
{
  v9 = sub_100086368(a2, a3);
  sub_100086578(a1, v9, (a3 & 3) != 0);
  *(a1 + 96) = 0;
  *a1 = off_100202B88;
  *(a1 + 24) = off_100202C70;
  *(a1 + 72) = off_100202C98;
  *(a1 + 80) = off_100202CD0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 160) = *a5;
  if ((a3 & 0x200) != 0)
  {
    sub_100086610(a1, a4);
    sub_100086710(a1);
  }

  v10 = *(a1 + 36) == 1 && faccessat(*(a1 + 32), "mapped", 0, 0) != 0;
  if (!*(a1 + 136))
  {
    sub_100086988(a1);
  }

  if (v10)
  {
    sub_100086C88(a1, (a3 & 0x200) != 0);
  }

  return a1;
}

void sub_100086330(_Unwind_Exception *a1)
{
  v6 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v6)
  {
    sub_1001985B8(v6);
  }

  sub_100198540(v1, v3, v2, v4);
  sub_100086F38(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100086368(uint64_t a1, __int16 a2)
{
  v2 = a1;
  if ((a2 & 0x200) != 0)
  {
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    if (mkdir(a1, 0x1FFu) != -1)
    {
      return sub_100150D40(v2, 0);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *__error();
    v8 = "Failed creating sparsebundle folder";
LABEL_16:
    v9 = sub_100001940(exception, v8, v7);
  }

  if ((a2 & 3) == 0 || geteuid())
  {
    return sub_100150D40(v2, 0);
  }

  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  if (stat(v3, &v11))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = *__error();
    v8 = "stat failed";
    goto LABEL_16;
  }

  if (!v11.st_uid)
  {
    return sub_100150D40(v2, 0);
  }

  sub_10008ADA4(v10, v11.st_uid);
  v4 = sub_100150D40(v2, 0);
  sub_10008B8C8(v10);
  return v4;
}

void *sub_100086578(void *a1, int a2, char a3)
{
  v6 = sub_100192AE0(a1);
  sub_100151940((v6 + 3), a2, a3);
  *a1 = off_100202D70;
  a1[3] = &off_100202E40;
  return a1;
}

void sub_1000865F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100086610(uint64_t result, unint64_t a2)
{
  if (a2 < 0x100000 || a2 > 0x200000000 || (a2 & 0xFFF) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v3);
    sub_100001FE8(v3, "Invalid band size (", 19);
    std::ostream::operator<<();
    sub_100001FE8(v3, " bytes)", 7);
    sub_10000EBDC(exception, v3, 0x16u);
  }

  *(result + 152) = a2;
  return result;
}

void sub_1000866DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void sub_100086710(uint64_t a1)
{
  if (mkdirat(*(a1 + 32), "bands", 0x1FFu) != -1)
  {
    sub_100087538(a1);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v3 = __error();
  v4 = sub_100001940(exception, "Failed creating bands folder", *v3);
}

void sub_100086A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, int a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v64 = __cxa_begin_catch(exception_object);
    *&a11 = "SparseBundleBackend::read_info()";
    *(&a11 + 1) = 30;
    a12 = 16;
    sub_1000880BC(&__p, &a11);
    sub_100001FE8(&a61, "Failed to read ", 15);
    sub_100001FE8(&a61, "Info.plist", 10);
    sub_100001FE8(&a61, ", ", 2);
    v65 = (*(*v64 + 16))(v64);
    v66 = strlen(v65);
    sub_100001FE8(&a61, v65, v66);
    sub_100001FE8(&a61, " (errno ", 8);
    v67 = v64[2];
    std::ostream::operator<<();
    sub_100001FE8(&a61, "), reading from backup", 22);
    sub_1000881E4(&__p);
    __cxa_end_catch();
    sub_100010B0C(&__p, "Info.bckup");
    sub_100087710(v61);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100086C88(uint64_t a1, char a2)
{
  result = mkdirat(*(a1 + 32), "mapped", 0x1FFu);
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v12);
    sub_100001FE8(v12, "Failed creating ", 16);
    sub_100001FE8(v12, "mapped", 6);
    sub_100001FE8(v12, " folder", 7);
    v6 = __error();
    sub_10000EBDC(exception, v12, *v6);
  }

  if ((a2 & 1) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    sub_100151D40(a1 + 24, &v11);
    if (fchmodat(*(a1 + 32), "mapped", v11.st_mode & 0x1FF, 0) == -1)
    {
      v7 = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(v12);
      sub_100001FE8(v12, "fchmodat failed for ", 20);
      sub_100001FE8(v12, "mapped", 6);
      sub_100001FE8(v12, " folder", 7);
      v8 = __error();
      sub_10000EBDC(v7, v12, *v8);
    }

    result = geteuid();
    if (!result && v11.st_uid)
    {
      result = fchownat(*(a1 + 32), "mapped", v11.st_uid, 0xFFFFFFFF, 0);
      if (result == -1)
      {
        v9 = __cxa_allocate_exception(0x40uLL);
        sub_100001DC0(v12);
        sub_100001FE8(v12, "fchownat failed for ", 20);
        sub_100001FE8(v12, "mapped", 6);
        sub_100001FE8(v12, " folder", 7);
        v10 = __error();
        sub_10000EBDC(v9, v12, *v10);
      }
    }
  }

  return result;
}

uint64_t sub_100086F38(uint64_t a1)
{
  sub_1001516AC(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100086F74(void *a1, int a2, char a3, void *a4, void *a5)
{
  v8 = sub_100086578(a1, a2, a3);
  v8[9] = &off_100202E68;
  v8[10] = off_100202EA0;
  v8[11] = *a5;
  v9 = a5[1];
  v8[12] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = off_100202B88;
  a1[3] = off_100202C70;
  a1[9] = off_100202C98;
  a1[10] = off_100202CD0;
  a1[13] = *a4;
  v10 = a4[1];
  a1[14] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  sub_100086988(a1);
}

void sub_1000871D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100087384(va);
  v7 = v4[17];
  v4[17] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v4[16];
  if (v8)
  {
    sub_10000E984(v8);
  }

  v9 = v4[14];
  if (v9)
  {
    sub_10000E984(v9);
  }

  v4[10] = v5;
  v10 = v4[12];
  if (v10)
  {
    sub_10000E984(v10);
  }

  sub_100086F38(v4);
  _Unwind_Resume(a1);
}

void *sub_10008725C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092780(a1, a2);
  *a1 = off_100202EC8;
  a1[45] = &off_100202FC8;
  a1[46] = &off_100202FF0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202EC8;
  a1[45] = off_100202F50;
  a1[46] = off_100202F78;
  return a1;
}

void sub_100087360(_Unwind_Exception *a1)
{
  sub_10008A8A4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100087384(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008A8A4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000873CC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092848(a1, a2);
  *a1 = off_100203528;
  a1[45] = &off_100203628;
  a1[46] = &off_100203650;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203528;
  a1[45] = off_1002035B0;
  a1[46] = off_1002035D8;
  return a1;
}

void sub_1000874D0(_Unwind_Exception *a1)
{
  sub_10008C5EC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000874F4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008C5EC(a1);
  std::ios::~ios();
  return a1;
}

void sub_100087538(uint64_t a1)
{
  *&__p = "SparseBundleBackend::write_info_plists()";
  *(&__p + 1) = 38;
  v6 = 0;
  sub_100088AA0(v7, &__p);
  sub_100001FE8(v8, "Updating ", 9);
  sub_100001FE8(v8, "Info.bckup", 10);
  sub_100001FE8(v8, ", disk size: ", 13);
  v2 = *(a1 + 144);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10008ECD8(v7);
  std::ios::~ios();
  v3 = *(a1 + 32);
  sub_100010B0C(&__p, "Info.bckup");
  v4 = sub_100151228(v3, &__p, 9730);
  sub_100056CC8(v7, v4, 1);
}

void sub_100087DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10000C8C8(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(a1);
}

void *sub_100087F50(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092910(a1, a2);
  *a1 = off_100203748;
  a1[45] = &off_100203848;
  a1[46] = &off_100203870;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203748;
  a1[45] = off_1002037D0;
  a1[46] = off_1002037F8;
  return a1;
}

void sub_100088054(_Unwind_Exception *a1)
{
  sub_10008CD84(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100088078(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008CD84(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000880BC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092CE0(a1, a2);
  *a1 = off_100203968;
  a1[45] = &off_100203A68;
  a1[46] = &off_100203A90;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203968;
  a1[45] = off_1002039F0;
  a1[46] = off_100203A18;
  return a1;
}

void sub_1000881C0(_Unwind_Exception *a1)
{
  sub_10008D590(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000881E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008D590(a1);
  std::ios::~ios();
  return a1;
}

void sub_100088228(uint64_t a1)
{
  *&v8 = "SparseBundleBackend::write_primary_info_plist()";
  *(&v8 + 1) = 45;
  v9 = 0;
  sub_100088934(__p, &v8);
  sub_100001FE8(v11, "Updating ", 9);
  sub_100001FE8(v11, "Info.plist", 10);
  std::ostream::~ostream();
  sub_10008E540(__p);
  std::ios::~ios();
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = (*(*v2 + 56))(v2, 0);
    if (v3)
    {
      v4 = v3;
      exception = __cxa_allocate_exception(0x40uLL);
      v6 = sub_100001940(exception, "Failed truncating plist", v4);
    }

    v7 = *(a1 + 136);
    sub_100088588(a1);
  }

  sub_100010B0C(__p, "Info.plist");
  operator new();
}

void sub_1000883D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10008841C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092DA8(a1, a2);
  *a1 = off_100203B88;
  a1[45] = &off_100203C88;
  a1[46] = &off_100203CB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203B88;
  a1[45] = off_100203C10;
  a1[46] = off_100203C38;
  return a1;
}

void sub_100088520(_Unwind_Exception *a1)
{
  sub_10008DD28(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100088544(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008DD28(a1);
  std::ios::~ios();
  return a1;
}

void sub_100088588(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"diskimage-bundle-type", @"com.apple.diskimage.sparsebundle");
  CFDictionarySetValue(Mutable, kCFBundleInfoDictionaryVersionKey, @"6.0");
  sub_100144CE4(Mutable, @"bundle-backingstore-version", 2);
  sub_100144CE4(Mutable, @"size", *(a1 + 144));
  sub_100144CE4(Mutable, @"band-size", *(a1 + 152));
  operator new();
}

void sub_10008888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_10000C8C8(&__p);
  sub_1000929D8((v14 - 72));
  sub_100092E70((v14 - 64));
  sub_100028D2C((v14 - 56));
  _Unwind_Resume(a1);
}

void *sub_100088934(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092EA4(a1, a2);
  *a1 = off_100203DA8;
  a1[45] = &off_100203EA8;
  a1[46] = &off_100203ED0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203DA8;
  a1[45] = off_100203E30;
  a1[46] = off_100203E58;
  return a1;
}

void sub_100088A38(_Unwind_Exception *a1)
{
  sub_10008E540(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100088A5C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008E540(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100088AA0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100092F6C(a1, a2);
  *a1 = off_100203FC8;
  a1[45] = &off_1002040C8;
  a1[46] = &off_1002040F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203FC8;
  a1[45] = off_100204050;
  a1[46] = off_100204078;
  return a1;
}

void sub_100088BA4(_Unwind_Exception *a1)
{
  sub_10008ECD8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100088BC8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008ECD8(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100088D58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100093034(a1, a2);
  *a1 = off_1002041E8;
  a1[45] = &off_1002042E8;
  a1[46] = &off_100204310;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002041E8;
  a1[45] = off_100204270;
  a1[46] = off_100204298;
  return a1;
}

void sub_100088E5C(_Unwind_Exception *a1)
{
  sub_10008F470(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100088E80(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008F470(a1);
  std::ios::~ios();
  return a1;
}

void sub_100088EC4(uint64_t a1)
{
  if ((*(*a1 + 48))(a1))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  sub_100010B0C(&__p, "token");
  sub_1000930FC();
}

void sub_100088F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100088F78(uint64_t a1)
{
  if (((*(*a1 + 208))(a1) & 1) == 0)
  {
    if ((*(*a1 + 48))(a1))
    {
      v2 = 550;
    }

    else
    {
      v2 = 20;
    }

    v5 = v2;
    sub_100010B0C(&__p, "lock");
    sub_1000930FC();
  }

  return 0;
}

void sub_100089130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a2 == 1)
  {
    v60 = __cxa_begin_catch(exception_object);
    v61 = v60[2];
    if (v61 < 0)
    {
      v61 = -v61;
    }

    v62 = v61 == 45 || v61 == 2;
    *&a9 = "int SparseBundleBackend::lock()";
    *(&a9 + 1) = 29;
    if (v62)
    {
      a10 = 0;
      sub_10005D2C8(&__p, &a9);
      sub_100001FE8(&a60, "Cannot lock bundle, ignoring: ", 30);
      sub_100195A20(&a60, v60);
      sub_10005D3F0(&__p);
    }

    else
    {
      a10 = 16;
      sub_1000893DC(&__p, &a9);
      sub_100195A20(&a60, v60);
      sub_100089504(&__p);
      v63 = v60[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x100089118);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100089270(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100093220(a1, a2);
  *a1 = off_100204408;
  a1[45] = &off_100204508;
  a1[46] = &off_100204530;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100204408;
  a1[45] = off_100204490;
  a1[46] = off_1002044B8;
  return a1;
}

void sub_100089374(_Unwind_Exception *a1)
{
  sub_10008FC08(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100089398(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008FC08(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1000893DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000932E8(a1, a2);
  *a1 = off_100204628;
  a1[45] = &off_100204728;
  a1[46] = &off_100204750;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100204628;
  a1[45] = off_1002046B0;
  a1[46] = off_1002046D8;
  return a1;
}

void sub_1000894E0(_Unwind_Exception *a1)
{
  sub_1000903A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100089504(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000903A0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100089550(void *a1)
{
  if ((*(*a1 + 208))(a1))
  {
    v2 = a1[14];
    a1[13] = 0;
    a1[14] = 0;
    if (v2)
    {
      sub_10000E984(v2);
    }

    *&v4 = "int SparseBundleBackend::unlock_all()";
    *(&v4 + 1) = 35;
    v5 = 0;
    sub_100089620(v6, &v4);
    sub_100001FE8(v7, "Bundle's lock file is closed", 28);
    std::ostream::~ostream();
    sub_100090B38(v6);
    std::ios::~ios();
  }

  return 0;
}

void sub_10008960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100089748(va);
  _Unwind_Resume(a1);
}

void *sub_100089620(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000933B0(a1, a2);
  *a1 = off_100204848;
  a1[45] = &off_100204948;
  a1[46] = &off_100204970;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100204848;
  a1[45] = off_1002048D0;
  a1[46] = off_1002048F8;
  return a1;
}

void sub_100089724(_Unwind_Exception *a1)
{
  sub_100090B38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100089748(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090B38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008998C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_100010B0C(__p, "bands");
  v4 = sub_100151228(v3, __p, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100091038(&v8, v4);
  while (1)
  {
    v5 = readdir(v8);
    if (!v5)
    {
      break;
    }

    *__error() = 0;
    v6 = strtoll(v5->d_name, 0, 16);
    if (!*__error())
    {
      sub_100010B0C(__p, v5->d_name);
      sub_100089AC4(a2, __p, v6);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return closedir(v8);
}

void sub_100089A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, DIR *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100089AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_100089CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v14 = *(v12 - 104);
  *(v12 - 104) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100089D84(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100093478(a1, a2);
  *a1 = off_100204B40;
  a1[45] = &off_100204C40;
  a1[46] = &off_100204C68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100204B40;
  a1[45] = off_100204BC8;
  a1[46] = off_100204BF0;
  return a1;
}

void sub_100089E88(_Unwind_Exception *a1)
{
  sub_10009195C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100089EAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009195C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100089EF0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100093770(a1, a2);
  *a1 = off_100204D60;
  a1[45] = &off_100204E60;
  a1[46] = &off_100204E88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100204D60;
  a1[45] = off_100204DE8;
  a1[46] = off_100204E10;
  return a1;
}

void sub_100089FF4(_Unwind_Exception *a1)
{
  sub_1000920F4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008A018(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000920F4(a1);
  std::ios::~ios();
  return a1;
}

void sub_10008A060(void *a1)
{
  sub_1000925F4(a1);

  operator delete();
}

void sub_10008A108(uint64_t a1)
{
  sub_1000925F4((a1 - 24));

  operator delete();
}

void sub_10008A14C(uint64_t a1)
{
  sub_1000925F4((a1 - 72));

  operator delete();
}

void sub_10008A190(uint64_t a1)
{
  sub_1000925F4((a1 - 80));

  operator delete();
}

uint64_t sub_10008A1CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008A254(result, a4);
  }

  return result;
}

void sub_10008A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10008A438(&a9);
  _Unwind_Resume(a1);
}

void sub_10008A254(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10008A2A0(a1, a2);
  }

  sub_100015B70();
}

void sub_10008A2A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_10000ED20();
}

char *sub_10008A2F8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100050108(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_10008A3B8(v9);
  return v4;
}

uint64_t sub_10008A3B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10008A3F0(a1);
  }

  return a1;
}

void sub_10008A3F0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_10008A438(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10008A48C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10008A48C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::__fs::filesystem::path *sub_10008A4DC(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void *sub_10008A554(void *a1)
{
  *a1 = off_100202EA0;
  v2 = a1[2];
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

void sub_10008A5A0(void *a1)
{
  *a1 = off_100202EA0;
  v1 = a1[2];
  if (v1)
  {
    sub_10000E984(v1);
  }

  operator delete();
}

uint64_t sub_10008A60C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008A8A4(v1);

  return std::ios::~ios();
}

uint64_t sub_10008A658(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008A8A4(v1);

  return std::ios::~ios();
}

void sub_10008A6B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008A8A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008A720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008A75C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008A7C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008A8A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008A82C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008A8A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008A8A4(uint64_t a1)
{
  *a1 = off_100203060;
  sub_10008AA10(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008AA10(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008ABC0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008AB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008AB88(uint64_t a1)
{
  sub_10008A8A4(a1);

  operator delete();
}

int *sub_10008ABC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 111;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 111;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008ADA4(uint64_t a1, uid_t a2)
{
  if (seteuid(a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v7);
    sub_100001FE8(v7, "failed to set euid to ", 22);
    std::ostream::operator<<();
    sub_10000EBDC(exception, v7, 1u);
  }

  *&v5 = "set_euid_wrapper::set_euid_wrapper(uid_t)";
  *(&v5 + 1) = 34;
  v6 = 0;
  sub_10008AEFC(v7, &v5);
  sub_100001FE8(v8, "uid temporarily set to ", 23);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10008B130(v7);
  std::ios::~ios();
  return a1;
}

void sub_10008AEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void *sub_10008AEFC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10008B068(a1, a2);
  *a1 = off_1002030E8;
  a1[45] = &off_1002031E8;
  a1[46] = &off_100203210;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002030E8;
  a1[45] = off_100203170;
  a1[46] = off_100203198;
  return a1;
}

void sub_10008B000(_Unwind_Exception *a1)
{
  sub_10008B130(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008B024(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008B130(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008B068(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100203280;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10008B118(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B130(uint64_t a1)
{
  *a1 = off_100203280;
  sub_10008B570(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10008B29C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008B130(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008B304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008B340(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10008B3AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008B130(v1);

  return std::ios::~ios();
}

void sub_10008B3F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008B130(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008B45C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008B130(v1);

  return std::ios::~ios();
}

void sub_10008B4BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008B130(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008B538(uint64_t a1)
{
  sub_10008B130(a1);

  operator delete();
}

uint64_t sub_10008B570(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008B6E4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008B6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10008B6E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 146;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 146;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008B8C8(uint64_t a1)
{
  seteuid(0);
  *&v3 = "set_euid_wrapper::~set_euid_wrapper()";
  *(&v3 + 1) = 35;
  v4 = 0;
  sub_10008B988(v5, &v3);
  sub_100001FE8(v6, "uid restored to 0 (res=", 23);
  std::ostream::operator<<();
  sub_100001FE8(v6, ")", 1);
  std::ostream::~ostream();
  sub_10008BBBC(v5);
  std::ios::~ios();
  return a1;
}

void *sub_10008B988(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10008BAF4(a1, a2);
  *a1 = off_100203308;
  a1[45] = &off_100203408;
  a1[46] = &off_100203430;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100203308;
  a1[45] = off_100203390;
  a1[46] = off_1002033B8;
  return a1;
}

void sub_10008BA8C(_Unwind_Exception *a1)
{
  sub_10008BBBC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10008BAB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008BBBC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10008BAF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002034A0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10008BBA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10008BBBC(uint64_t a1)
{
  *a1 = off_1002034A0;
  sub_10008BFFC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10008BD28(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008BBBC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008BD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008BDCC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

uint64_t sub_10008BE38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008BBBC(v1);

  return std::ios::~ios();
}

void sub_10008BE84(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008BBBC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008BEE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008BBBC(v1);

  return std::ios::~ios();
}

void sub_10008BF48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008BBBC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008BFC4(uint64_t a1)
{
  sub_10008BBBC(a1);

  operator delete();
}

uint64_t sub_10008BFFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008C170((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008C148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10008C170(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 151;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 151;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008C354(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008C5EC(v1);

  return std::ios::~ios();
}

uint64_t sub_10008C3A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008C5EC(v1);

  return std::ios::~ios();
}

void sub_10008C400(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008C5EC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008C468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008C4A4(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008C510(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008C5EC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008C574(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008C5EC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008C5EC(uint64_t a1)
{
  *a1 = off_1002036C0;
  sub_10008C758(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008C758(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008C908((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008C8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008C8D0(uint64_t a1)
{
  sub_10008C5EC(a1);

  operator delete();
}

int *sub_10008C908(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 179;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 179;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008CAEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008CD84(v1);

  return std::ios::~ios();
}

uint64_t sub_10008CB38(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008CD84(v1);

  return std::ios::~ios();
}

void sub_10008CB98(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008CD84(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008CC3C(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008CCA8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008CD84(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008CD0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008CD84(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008CD84(uint64_t a1)
{
  *a1 = off_1002038E0;
  sub_10008CEF0(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008CEF0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008D0A0((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008D03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008D068(uint64_t a1)
{
  sub_10008CD84(a1);

  operator delete();
}

int *sub_10008D0A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 225;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 225;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10008D284(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100040450(result, a2);
  }

  return result;
}

void sub_10008D2DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008D2F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008D590(v1);

  return std::ios::~ios();
}

uint64_t sub_10008D344(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008D590(v1);

  return std::ios::~ios();
}

void sub_10008D3A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008D590(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008D40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008D448(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008D4B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008D590(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008D518(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008D590(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008D590(uint64_t a1)
{
  *a1 = off_100203B00;
  sub_10008D6FC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008D6FC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008D8AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008D848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008D874(uint64_t a1)
{
  sub_10008D590(a1);

  operator delete();
}

int *sub_10008D8AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 281;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 281;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008DA90(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008DD28(v1);

  return std::ios::~ios();
}

uint64_t sub_10008DADC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008DD28(v1);

  return std::ios::~ios();
}

void sub_10008DB3C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008DD28(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008DBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008DBE0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008DC4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008DD28(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008DCB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008DD28(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008DD28(uint64_t a1)
{
  *a1 = off_100203D20;
  sub_10008DE94(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008DE94(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008E044((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008DFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008E00C(uint64_t a1)
{
  sub_10008DD28(a1);

  operator delete();
}

int *sub_10008E044(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 286;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 286;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_BYTE *sub_10008E228(uint64_t a1, _BYTE *a2)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = a2;
    if (*(a1 + i) >= 0xA0u)
    {
      v4 = (*(a1 + i) >> 4) + 87;
    }

    else
    {
      v4 = (*(a1 + i) >> 4) | 0x30;
    }

    *a2 = v4;
    a2 += 2;
    v5 = *(a1 + i) & 0xF;
    v6 = v5 + 87;
    if (v5 < 0xA)
    {
      v6 = *(a1 + i) & 0xF | 0x30;
    }

    v3[1] = v6;
    if (i <= 9 && ((1 << i) & 0x2A8) != 0)
    {
      a2 = v3 + 3;
      v3[2] = 45;
    }
  }

  return a2;
}

uint64_t sub_10008E2A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008E540(v1);

  return std::ios::~ios();
}

uint64_t sub_10008E2F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008E540(v1);

  return std::ios::~ios();
}

void sub_10008E354(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008E540(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008E3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008E3F8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008E464(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008E540(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008E4C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008E540(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008E540(uint64_t a1)
{
  *a1 = off_100203F40;
  sub_10008E6AC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008E6AC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008E85C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008E7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008E824(uint64_t a1)
{
  sub_10008E540(a1);

  operator delete();
}

int *sub_10008E85C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 319;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 319;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008EA40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008ECD8(v1);

  return std::ios::~ios();
}

uint64_t sub_10008EA8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008ECD8(v1);

  return std::ios::~ios();
}

void sub_10008EAEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008ECD8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008EB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008EB90(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008EBFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008ECD8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008EC60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008ECD8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008ECD8(uint64_t a1)
{
  *a1 = off_100204160;
  sub_10008EE44(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008EE44(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008EFF4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008EF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008EFBC(uint64_t a1)
{
  sub_10008ECD8(a1);

  operator delete();
}

int *sub_10008EFF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 337;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 337;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008F1D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008F470(v1);

  return std::ios::~ios();
}

uint64_t sub_10008F224(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008F470(v1);

  return std::ios::~ios();
}

void sub_10008F284(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008F470(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008F2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008F328(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008F394(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008F470(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008F3F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008F470(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008F470(uint64_t a1)
{
  *a1 = off_100204380;
  sub_10008F5DC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008F5DC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008F78C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008F728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F754(uint64_t a1)
{
  sub_10008F470(a1);

  operator delete();
}

int *sub_10008F78C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 355;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 355;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10008F970(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008FC08(v1);

  return std::ios::~ios();
}

uint64_t sub_10008F9BC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008FC08(v1);

  return std::ios::~ios();
}

void sub_10008FA1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008FC08(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008FA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10008FAC0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10008FB2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10008FC08(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10008FB90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10008FC08(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10008FC08(uint64_t a1)
{
  *a1 = off_1002045A0;
  sub_10008FD74(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10008FD74(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10008FF24((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10008FEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008FEEC(uint64_t a1)
{
  sub_10008FC08(a1);

  operator delete();
}

int *sub_10008FF24(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 376;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 376;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100090108(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000903A0(v1);

  return std::ios::~ios();
}

uint64_t sub_100090154(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000903A0(v1);

  return std::ios::~ios();
}

void sub_1000901B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000903A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100090258(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1000902C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000903A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100090328(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000903A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000903A0(uint64_t a1)
{
  *a1 = off_1002047C0;
  sub_10009050C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10009050C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1000906BC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100090658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090684(uint64_t a1)
{
  sub_1000903A0(a1);

  operator delete();
}

int *sub_1000906BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 385;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 385;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000908A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090B38(v1);

  return std::ios::~ios();
}

uint64_t sub_1000908EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090B38(v1);

  return std::ios::~ios();
}

void sub_10009094C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100090B38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000909B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000909F0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100090A5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100090B38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100090AC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100090B38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100090B38(uint64_t a1)
{
  *a1 = off_1002049E0;
  sub_100090CA4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100090CA4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100090E54((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100090DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100090E1C(uint64_t a1)
{
  sub_100090B38(a1);

  operator delete();
}

int *sub_100090E54(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 394;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 394;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

DIR **sub_100091038(DIR **a1, int a2)
{
  v3 = fdopendir(a2);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "Failed opening folder for entries reading", 0x13u);
  }

  return a1;
}

void *sub_1000910A0(void *a1, uint64_t a2, char a3)
{
  a1[2] = a2;
  *a1 = off_100204A60;
  v5 = ((a2 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8;
  sub_1000911F4(a1 + 3, v5);
  v6 = a1[3];
  a1[8] = v6;
  a1[9] = v5;
  if ((a3 & 1) == 0 && v5)
  {
    bzero(v6, 8 * v5);
  }

  a1[1] = v6;
  return a1;
}

void *sub_100091124(void *a1)
{
  *a1 = off_100204A60;
  v2 = (a1 + 4);
  sub_1000914B8(a1 + 3, 0);
  sub_100091644(v2);
  return a1;
}

void sub_10009117C(void *a1)
{
  *a1 = off_100204A60;
  v1 = (a1 + 4);
  sub_1000914B8(a1 + 3, 0);
  sub_100091644(v1);

  operator delete();
}

uint64_t *sub_1000911F4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(8 * a2, 0x100004000313F17uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  v7[0] = off_100204AA8;
  v7[3] = v7;
  v8 = v3;
  sub_100091438(v9, v7);
  sub_100091318(a1, &v8);
  sub_1000914B8(&v8, 0);
  sub_100091644(v9);
  sub_100091644(v7);
  return a1;
}

void sub_1000912F8(_Unwind_Exception *a1)
{
  sub_1000914B8(v1, 0);
  sub_100091644((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *sub_100091318(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_1000914B8(a1, v4);
  sub_10009153C((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_1000913EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100091438(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1000914B8(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_1000914E8((result + 1), v3);
  }

  return result;
}

uint64_t sub_1000914E8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10009153C(uint64_t a1, uint64_t a2)
{
  sub_1000915C0(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1000915C0(uint64_t a1)
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

uint64_t sub_100091644(uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t sub_1000916C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009195C(v1);

  return std::ios::~ios();
}

uint64_t sub_100091710(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009195C(v1);

  return std::ios::~ios();
}

void sub_100091770(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10009195C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000917D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091814(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100091880(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10009195C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000918E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10009195C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10009195C(uint64_t a1)
{
  *a1 = off_100204CD8;
  sub_100091AC8(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100091AC8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100091C78((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100091C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100091C40(uint64_t a1)
{
  sub_10009195C(a1);

  operator delete();
}

int *sub_100091C78(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 452;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 452;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100091E5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000920F4(v1);

  return std::ios::~ios();
}

uint64_t sub_100091EA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000920F4(v1);

  return std::ios::~ios();
}

void sub_100091F08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000920F4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100091F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100091FAC(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100092018(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000920F4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10009207C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000920F4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000920F4(uint64_t a1)
{
  *a1 = off_100204EF8;
  sub_100092260(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100092260(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100092410((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1000923AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000923D8(uint64_t a1)
{
  sub_1000920F4(a1);

  operator delete();
}

int *sub_100092410(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 461;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 461;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000925F4(void *a1)
{
  *a1 = off_100202B88;
  v2 = (a1 + 3);
  a1[3] = off_100202C70;
  a1[9] = off_100202C98;
  a1[10] = off_100202CD0;
  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    sub_10000E984(v5);
  }

  a1[10] = off_100202EA0;
  v6 = a1[12];
  if (v6)
  {
    sub_10000E984(v6);
  }

  sub_1001516AC(v2);
  v7 = a1[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

std::string *sub_100092720(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_100075328(this, v3, v4);
  return this;
}

void sub_100092764(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100092780(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100203060;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100092830(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092848(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002036C0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000928F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100092910(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002038E0;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_1000929C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_1000929D8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100092A0C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    goto LABEL_31;
  }

  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 == 123)
  {
    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v5 = (a2 + 2);
    v7 = a2[1];
  }

  else
  {
    v7 = *a2;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    do
    {
      if (v8 == 4)
      {
        if (v7 != 45)
        {
          v9 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v12 = v8 == 6 || (v8 & 0x7FFFFFFD) == 8;
        if ((v12 & v9) != 1)
        {
          goto LABEL_23;
        }

        if (v7 != 45)
        {
          goto LABEL_31;
        }
      }

      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v13 = *v5++;
      v7 = v13;
      v9 = 1;
LABEL_23:
      v14 = sub_100092C0C(a1, v7);
      *(&v18 + v8) = v14;
      if (v5 == a3)
      {
        goto LABEL_31;
      }

      v15 = *v5++;
      v7 = v15;
      *(&v18 + v8++) = sub_100092C0C(a1, v15) | (16 * v14);
    }

    while (!v8);
    if (v8 == 16)
    {
      break;
    }

    if (v5 == a3)
    {
      goto LABEL_31;
    }

    v10 = *v5++;
    v7 = v10;
  }

  if (v6 == 123 && (v5 == a3 || (v16 = *v5, ++v5, v16 != 125)) || v5 != a3)
  {
LABEL_31:
    sub_100092BA4();
  }

  return v18;
}