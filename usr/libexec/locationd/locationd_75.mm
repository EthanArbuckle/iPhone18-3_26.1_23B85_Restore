void sub_100529D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v49 - 137) < 0)
  {
    operator delete(*(v49 - 160));
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 73) < 0)
  {
    operator delete(*(v49 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_100529E78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    JUMPOUT(0x100529E4CLL);
  }

  JUMPOUT(0x100529E50);
}

void sub_100529EAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 137) < 0)
  {
    JUMPOUT(0x100529E5CLL);
  }

  JUMPOUT(0x100529E60);
}

void sub_100529EE0()
{
  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x100529E6CLL);
  }

  JUMPOUT(0x100529E70);
}

uint64_t sub_100529F0C@<X0>(uint64_t result@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0xBFF0000000000000;
  *(a6 + 24) = 0;
  v7 = a2[5];
  if (v7)
  {
    v8 = result;
    v9 = *(result + 56);
    if (v9 == 1)
    {
      v19 = *(*(a2[1] + 8 * ((v7 + a2[4] - 1) / 0x38uLL)) + 72 * ((v7 + a2[4] - 1) % 0x38uLL));
      v20 = *(result + 8);
      v21 = a5[1];
      v27 = *a5;
      v28 = v21;
      v29 = a5[2];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, v30, 1uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_13:
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v22 = v24;
        while (v22[1] == -1.0)
        {
          v22 += 6;
          if (v22 == v25)
          {
            goto LABEL_13;
          }
        }

        v23 = *v22;
        v19 = *(v22 + 1);
      }

      *a6 = v20;
      *(a6 + 8) = v23;
      *(a6 + 16) = v19;
      *(a6 + 24) = 0;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v10 = *(*(a2[1] + 8 * ((v7 + a2[4] - 1) / 0x38uLL)) + 72 * ((v7 + a2[4] - 1) % 0x38uLL));
      v11 = *(result + 8);
      v12 = a4[1];
      v27 = *a4;
      v28 = v12;
      v13 = *a3;
      v14 = a3[1];
      v29 = a4[2];
      v30[0] = v13;
      v15 = a3[2];
      v30[1] = v14;
      v30[2] = v15;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, &v31, 2uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_8:
        v11 = 0;
        v18 = 0;
      }

      else
      {
        v17 = v24;
        while (v17[1] == -1.0)
        {
          v17 += 6;
          if (v17 == v25)
          {
            goto LABEL_8;
          }
        }

        v18 = *v17;
        v10 = *(v17 + 1);
      }

      *a6 = v11;
      *(a6 + 8) = v18;
      *(a6 + 16) = v10;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v25 = v16;
    operator delete(v16);
LABEL_17:
    result = (*(*v8 + 16))(v8);
    *(a6 + 24) = result;
  }

  return result;
}

uint64_t sub_10052A174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45[0] = off_10245C6A0;
  v45[3] = v45;
  sub_10052972C((a1 + 72), &unk_101C7D558, v45, v26);
  sub_10052CC9C(v45);
  v44[0] = off_10245C6A0;
  v44[3] = v44;
  sub_10052972C((a1 + 72), &unk_101C7D570, v44, v25);
  sub_10052CC9C(v44);
  v43[0] = off_10245C6A0;
  v43[3] = v43;
  sub_10052972C((a1 + 72), &unk_101C7D540, v43, v24);
  sub_10052CC9C(v43);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 16);
      sub_10000EC00(&v23, "WalkingTentative");
      sub_1005297E0(&v23.__r_.__value_.__l.__data_, v26 + 8, &v27);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v27;
      }

      else
      {
        v7 = v27.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v21, "WalkingConfident");
      sub_1005297E0(&v21.__r_.__value_.__l.__data_, v25 + 8, &v22);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v22;
      }

      else
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v19, "WalkingRetraction");
      sub_1005297E0(&v19.__r_.__value_.__l.__data_, v24 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v34 = v5;
      v35 = 2048;
      v36 = v6;
      v37 = 2080;
      v38 = v7;
      v39 = 2080;
      v40 = v8;
      v41 = 2080;
      v42 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v12 = *(a1 + 16);
      sub_10000EC00(&v22, "WalkingTentative");
      v13 = &v23;
      sub_1005297E0(&v22.__r_.__value_.__l.__data_, v26 + 8, &v23);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v23.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&__p, "WalkingConfident");
      v14 = &v21;
      sub_1005297E0(&__p.__r_.__value_.__l.__data_, v25 + 8, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(v17, "WalkingRetraction");
      sub_1005297E0(v17, v24 + 8, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v19;
      }

      else
      {
        v15 = v19.__r_.__value_.__r.__words[0];
      }

      LODWORD(v27.__r_.__value_.__l.__data_) = 136316162;
      *(v27.__r_.__value_.__r.__words + 4) = v11;
      WORD2(v27.__r_.__value_.__r.__words[1]) = 2048;
      *(&v27.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(v27.__r_.__value_.__r.__words[2]) = 2080;
      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v16 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::WalkModel::run() const", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  return sub_100529F0C(a1, (a1 + 72), v26, v25, v24, a2);
}

void sub_10052A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

void sub_10052A7C4(uint64_t a1, uint64_t a2)
{
  *buf = 3;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &v27, 1uLL);
  v35 = 0;
  *v34 = xmmword_101C78400;
  memset(&v34[2], 0, 135);
  v36 = xmmword_101C78400;
  v37 = 0;
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0u;
  v44 = xmmword_101C78400;
  v45 = 0;
  v46 = 0;
  v47 = 0xFFEFFFFFFFFFFFFFLL;
  v58 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  v59 = 0u;
  v60 = 0xFFEFFFFFFFFFFFFFLL;
  v61 = 0;
  v62 = 0;
  v67 = 0;
  v68 = 0;
  v73 = 0;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v63 = 0u;
  v64 = 0u;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  memset(v72, 0, sizeof(v72));
  v74 = 0xFFEFFFFFFFFFFFFFLL;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0xFFEFFFFFFFFFFFFFLL;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0xFFEFFFFFFFFFFFFFLL;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0xFFEFFFFFFFFFFFFFLL;
  v106 = 0u;
  v107 = 0x80000000800000;
  v108 = 0u;
  v109 = xmmword_101C78410;
  v110 = 0x80000000800000;
  v111 = 0u;
  v112 = 0u;
  v113 = 0;
  v114 = 0xFFEFFFFFFFFFFFFFLL;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0;
  v122 = 0xFFEFFFFFFFFFFFFFLL;
  v123 = 0;
  v124 = 0;
  v125 = 0xFFEFFFFFFFFFFFFFLL;
  v126 = 7;
  v127 = 0xFFEFFFFFFFFFFFFFLL;
  v128 = 0;
  v130 = 0;
  v129 = 0u;
  if (sub_1000C2B7C(a2, &__p, v34))
  {
    if (*(&v44 + 1) <= *(a1 + 24))
    {
      goto LABEL_19;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315906;
      v27 = v5;
      v28 = 2048;
      v29 = *(&v44 + 1);
      v30 = 2048;
      v31 = *(&v41 + 1);
      v32 = 2048;
      v33 = v42;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model %s, adding hr entry,startTime,%f,bpm,%f,confidence,%f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v13 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v13 = *v13;
      }

      v18 = 136315906;
      v19 = v13;
      v20 = 2048;
      v21 = *(&v44 + 1);
      v22 = 2048;
      v23 = *(&v41 + 1);
      v24 = 2048;
      v25 = v42;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLWorkoutResumeReminders::HRModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    sub_10052AD68((a1 + 72), &v41);
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      v27 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[resume reminders] model %s, failed to get hr source", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v18 = 136315138;
      v19 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLWorkoutResumeReminders::HRModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v8 = *(a2 + 328);
  v9 = *(a2 + 344);
  v10 = *(a2 + 360);
  *(a1 + 164) = *(a2 + 372);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
LABEL_19:
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_10052AD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052AD68(void *a1, uint64_t a2)
{
  sub_10052CF28(a1, a2);
  v3 = a1[5];
  if (v3 >= 0x78)
  {
    ++a1[4];
    a1[5] = v3 - 1;

    sub_1000AACB0(a1, 1);
  }
}

uint64_t sub_10052ADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = off_10245C720;
  v27[1] = a1;
  v27[3] = v27;
  sub_10052B180((a1 + 72), &unk_101C7D588, v27, v17);
  sub_10052D4E4(v27);
  v26[0] = off_10245C720;
  v26[1] = a1;
  v26[3] = v26;
  sub_10052B180((a1 + 72), &unk_101C7D540, v26, v16);
  sub_10052D4E4(v26);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 8);
      sub_10000EC00(&v15, "HRConfident");
      sub_1005297E0(&v15.__r_.__value_.__l.__data_, v17 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v21 = v5;
      v22 = 2048;
      v23 = v6;
      v24 = 2080;
      v25 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v9 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v9 = *v9;
      }

      v10 = *(a1 + 8);
      sub_10000EC00(v13, "HRConfident");
      sub_1005297E0(v13, v17 + 8, &v15);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v15;
      }

      else
      {
        v11 = v15.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
      *(__p.__r_.__value_.__r.__words + 4) = v9;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v10;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
      v19 = v11;
      v12 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::HRModel::run() const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return sub_10052B234(a1, (a1 + 72), v17, v17, v16, a2);
}

void sub_10052B12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052B180@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = *(a2 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_10052D304(v9, a3);
  sub_10052D194(a1, v6, v7, v9, (a4 + 2));
  return sub_10052D4E4(v9);
}

void sub_10052B218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10052D4E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10052B234@<X0>(uint64_t result@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0xBFF0000000000000;
  *(a6 + 24) = 0;
  v7 = a2[5];
  if (v7)
  {
    v8 = result;
    v9 = *(result + 56);
    if (v9 == 1)
    {
      v19 = *(*(a2[1] + (((v7 + a2[4] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v7 + a2[4] - 1) & 0x3F) << 6) + 40);
      v20 = *(result + 8);
      v21 = a5[1];
      v27 = *a5;
      v28 = v21;
      v29 = a5[2];
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, v30, 1uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_13:
        v23 = 0;
        v20 = 0;
      }

      else
      {
        v22 = v24;
        while (v22[1] == -1.0)
        {
          v22 += 6;
          if (v22 == v25)
          {
            goto LABEL_13;
          }
        }

        v23 = *v22;
        v19 = *(v22 + 1);
      }

      *a6 = v20;
      *(a6 + 8) = v23;
      *(a6 + 16) = v19;
      *(a6 + 24) = 0;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v10 = *(*(a2[1] + (((v7 + a2[4] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((v7 + a2[4] - 1) & 0x3F) << 6) + 40);
      v11 = *(result + 8);
      v12 = a4[1];
      v27 = *a4;
      v28 = v12;
      v13 = *a3;
      v14 = a3[1];
      v29 = a4[2];
      v30[0] = v13;
      v15 = a3[2];
      v30[1] = v14;
      v30[2] = v15;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      sub_10052CD1C(&v24, &v27, &v31, 2uLL);
      v16 = v24;
      if (v24 == v25)
      {
LABEL_8:
        v11 = 0;
        v18 = 0;
      }

      else
      {
        v17 = v24;
        while (v17[1] == -1.0)
        {
          v17 += 6;
          if (v17 == v25)
          {
            goto LABEL_8;
          }
        }

        v18 = *v17;
        v10 = *(v17 + 1);
      }

      *a6 = v11;
      *(a6 + 8) = v18;
      *(a6 + 16) = v10;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v25 = v16;
    operator delete(v16);
LABEL_17:
    result = (*(*v8 + 16))(v8);
    *(a6 + 24) = result;
  }

  return result;
}

void *sub_10052B46C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 96;
  a1[5] = 0x7FEFFFFFFFFFFFFFLL;
  sub_10052B4CC(a1, a3, a4);
  return a1;
}

void sub_10052B4B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10052C310(va);
  _Unwind_Resume(a1);
}

void sub_10052B4CC(void *a1, uint64_t a2, double a3)
{
  if (a1[4] == a2)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4B94();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[resume reminders] already selected workout %ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4BA8(a2);
    }

    return;
  }

  a1[4] = a2;
  sub_10052BFD8(a1);
  if ((a2 - 27) < 0x45)
  {
LABEL_9:
    *buf = a2;
    *&buf[8] = 0;
    v7 = a3;
    sub_10000EC00(__p, "HRModel");
    v9 = 0;
    operator new();
  }

  if (a2 <= 9)
  {
    if (a2 > 4)
    {
      if ((a2 - 5) < 4)
      {
        goto LABEL_9;
      }

      if (a2 == 9)
      {
        *buf = vdupq_n_s64(9uLL);
        v7 = a3;
        sub_10000EC00(__p, "DefaultActivityModel");
        v9 = 0;
        sub_10052C044();
      }

      return;
    }

    if ((a2 - 1) >= 2)
    {
      if ((a2 - 3) < 2)
      {
        *buf = a2;
        *&buf[8] = 4;
        v7 = a3;
        sub_10000EC00(__p, "DefaultActivityModel");
        v9 = 0;
        sub_10052C044();
      }

      return;
    }

LABEL_23:
    *buf = a2;
    *&buf[8] = 1;
    v7 = a3;
    sub_10000EC00(__p, "WalkModel");
    v9 = 0;
    operator new();
  }

  if (a2 <= 0x18)
  {
    if (((1 << a2) & 0xF06000) != 0)
    {
      goto LABEL_9;
    }

    if (((1 << a2) & 0x1078000) != 0)
    {
      goto LABEL_23;
    }

    if (a2 == 19)
    {
      *buf = vdupq_n_s64(0x13uLL);
      v7 = a3;
      sub_10000EC00(__p, "DefaultActivityModel");
      v9 = 0;
      sub_10052C044();
    }
  }

  if ((a2 - 10) < 2)
  {
    goto LABEL_9;
  }

  if (a2 == 12)
  {
    *buf = vdupq_n_s64(0xCuLL);
    v7 = a3;
    sub_10000EC00(__p, "DefaultActivityModel");
    v9 = 0;
    sub_10052C044();
  }
}

void sub_10052BB7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  v25 = a11;
  a11 = 0;
  if (v25)
  {
    sub_1018B4B60();
  }

  sub_1018B4B10(&a10);
  v26 = exception_object;
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(v26);
}

uint64_t **sub_10052BD24(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v2 != v3)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 32))(v4);
    }

    ++v2;
  }

  v6 = a1;
  sub_10052C310(&v6);
  return a1;
}

double *sub_10052BDAC@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xBFF0000000000000;
  *(a2 + 24) = 0;
  v3 = *result;
  v4 = *(result + 1);
  if (*result != v4)
  {
    v5 = result;
    v6 = 0;
    do
    {
      (***v3)(*v3, *(v5 + 3));
      result = (*(**v3 + 8))(v9);
      if (*&v9[8] >= v6)
      {
        *a2 = *v9;
        *(a2 + 12) = *&v9[12];
        v6 = *(a2 + 8);
      }

      if ((v6 - 1) <= 1)
      {
        v7 = *(a2 + 16);
        if (v7 >= v5[5])
        {
          v7 = v5[5];
        }

        v5[5] = v7;
      }

      ++v3;
    }

    while (v3 != v4);
    if (v6)
    {
      v8 = v5[5];
    }

    else
    {
      v5[5] = 1.79769313e308;
      v8 = 1.79769313e308;
    }

    if (v8 == 1.79769313e308)
    {
      v8 = *(a2 + 16);
    }

    *(a2 + 16) = v8;
  }

  return result;
}

void sub_10052BEE0(uint64_t **a1, int a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_1018B4B94();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[resume reminders] setting detection mode to %d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B4CBC(a2);
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = *v5++;
    *(v7 + 56) = a2;
  }
}

void *sub_10052BFD8(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 32))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_10052C0E0(uint64_t a1)
{
  *a1 = off_10245C4F0;
  sub_10052C514((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10052C150(uint64_t a1)
{
  *a1 = off_10245C4F0;
  sub_10052C514((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

uint64_t sub_10052C1E0(uint64_t a1)
{
  *a1 = off_10245C560;
  sub_10052C5C0((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_10052C250(uint64_t a1)
{
  *a1 = off_10245C560;
  sub_10052C5C0((a1 + 72));
  *a1 = &off_10245C4B8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

void sub_10052C310(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10052BFD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10052C364(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = *a1;
    v9 = v5 - *a1;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_10028C64C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v19[4] = a1;
    if (v13)
    {
      sub_10045E858(a1, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *a1;
    *a1 = 0;
    a1[1] = v7;
    v17 = a1[2];
    a1[2] = 0;
    v19[2] = v16;
    v19[3] = v17;
    v19[0] = v16;
    v19[1] = v16;
    sub_10052C468(v19);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return v7 - 1;
}

uint64_t sub_10052C468(uint64_t a1)
{
  sub_10052C4A0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10052C4A0(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 32))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_10052C514(void *a1)
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

  return sub_1003EE22C(a1);
}

uint64_t sub_10052C5C0(void *a1)
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
    v5 = 32;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 64;
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

__n128 sub_10052C66C(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 56 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10052C734(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x38)) + 72 * (v7 % 0x38);
  *v8 = *a2;
  result = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  *(v8 + 16) = result;
  ++a1[5];
  return result;
}

void *sub_10052C734(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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

void sub_10052C8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052C908(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x38)
  {
    a2 = 1;
  }

  if (v2 < 0x70)
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
    *(a1 + 32) -= 56;
  }

  return v4 ^ 1u;
}

double sub_10052C968@<D0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0xBFF0000000000000;
  *(a5 + 8) = 0;
  v10 = a1[4];
  v9 = a1[5];
  *(a5 + 32) = v9 >= a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v11 = v10 + v9;
  v12 = (v10 + v9) / 0x38;
  v13 = a1[1];
  v14 = a1[2];
  v15 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + 72 * (v11 - 56 * v12);
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  for (i = v17 - 1; ; --i)
  {
    v19 = v14 == v13 ? 0 : *(v13 + 8 * (a1[4] / 0x38uLL)) + 72 * (a1[4] % 0x38uLL);
    if (v19 == v16)
    {
      break;
    }

    v20 = v16;
    if (v16 == *v15)
    {
      v20 = *(v15 - 1) + 4032;
    }

    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_1000CF05C();
    }

    v22 = *(a5 + 8) + (*(*v21 + 48))(v21, v20 - 72);
    *(a5 + 8) = v22;
    if (a2 <= v22)
    {
      if (v16 == *v15)
      {
        v16 = *(v15 - 1) + 4032;
      }

      result = *(v16 - 72);
      *a5 = result;
      return result;
    }

    if (!i)
    {
      return result;
    }

    if (v16 == *v15)
    {
      v24 = *--v15;
      v16 = v24 + 4032;
    }

    v16 -= 72;
    v13 = a1[1];
    v14 = a1[2];
  }

  return result;
}

uint64_t sub_10052CB04(uint64_t a1, uint64_t a2)
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

uint64_t sub_10052CC0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245C610;
  a2[1] = v2;
  return result;
}

uint64_t sub_10052CC50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052CC9C(uint64_t a1)
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

uint64_t sub_10052CD1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10052CD9C(result, a4);
  }

  return result;
}

void sub_10052CD80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052CD9C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10052CDE8(a1, a2);
  }

  sub_10028C64C();
}

void sub_10052CDE8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10052CEDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10052CF28(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 8 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10052CFC0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v7 & 0x3F) << 6);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void *sub_10052CFC0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
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

void sub_10052D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_10052D194@<D0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0xBFF0000000000000;
  *(a5 + 8) = 0;
  v10 = a1[4];
  v9 = a1[5];
  *(a5 + 32) = v9 >= a3;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  v11 = v10 + v9;
  v12 = (v10 + v9) >> 6;
  v13 = a1[1];
  v14 = a1[2];
  v15 = (v13 + 8 * v12);
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15 + ((v11 & 0x3F) << 6);
  }

  if (a3 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3;
  }

  for (i = v17 - 1; ; --i)
  {
    v19 = v14 == v13 ? 0 : *(v13 + ((a1[4] >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((a1[4] & 0x3FLL) << 6);
    if (v19 == v16)
    {
      break;
    }

    v20 = v16;
    if (v16 == *v15)
    {
      v20 = *(v15 - 1) + 4096;
    }

    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_1000CF05C();
    }

    v22 = *(a5 + 8) + (*(*v21 + 48))(v21, v20 - 64);
    *(a5 + 8) = v22;
    if (a2 <= v22)
    {
      if (v16 == *v15)
      {
        v16 = *(v15 - 1) + 4096;
      }

      result = *(v16 - 24);
      *a5 = result;
      return result;
    }

    if (!i)
    {
      return result;
    }

    if (v16 == *v15)
    {
      v24 = *--v15;
      v16 = v24 + 4096;
    }

    v16 -= 64;
    v13 = a1[1];
    v14 = a1[2];
  }

  return result;
}

uint64_t sub_10052D304(uint64_t a1, uint64_t a2)
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

uint64_t sub_10052D40C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245C720;
  a2[1] = v2;
  return result;
}

BOOL sub_10052D438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (v2[37] - *(a2 + 8)) / (v2[37] - v2[36]);
  return (sub_100161F00(v3, v2[35]) * v2[34]) > 4.4021;
}

uint64_t sub_10052D498(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052D4E4(uint64_t a1)
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

void sub_10052D6C4(uint64_t a1)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v2 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,invalidation handler", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5120();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {

    v3 = *(a1 + 32);
  }

  *(v3 + 40) = 0;
}

void sub_10052D774(uint64_t a1)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v2 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGLS,GNSSLocationService,interruption handler", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B51FC();
  }

  *(*(a1 + 32) + 9) = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    [v4 invalidate];

    v3 = *(a1 + 32);
  }

  *(v3 + 40) = 0;
}

void sub_10052D938(uint64_t a1, _BYTE *a2)
{
  if (qword_1025D4680 != -1)
  {
    sub_1018B510C();
  }

  v4 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGLS,reconfigureRavenIfNeeded,completed,success,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B5490(a2);
  }

  *(*(a1 + 32) + 9) = 0;
}

void sub_10052DA20(id a1, NSError *a2)
{
  if (a2)
  {
    if (qword_1025D4680 != -1)
    {
      sub_1018B510C();
    }

    v3 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = [(NSError *)a2 localizedDescription];
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "CLGLS,getSynchronousRemoteObjectProxy error %{public}@", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B55A0(a2);
    }
  }
}

uint64_t sub_10052DCE0(uint64_t a1)
{
  [*(a1 + 32) reset];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10052E3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052E500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_10245C858;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_10061F1A0();
}

void sub_10052E8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v18 = v15[5];
  v15[5] = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v15[4];
  v15[4] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = v15[3];
  v15[3] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = v15[2];
  v15[2] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *v16;
  *v16 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10052EA18(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DAB30(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EBF4(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DAE4C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EDD0(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB2A4(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052EFAC(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB620(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10052F188(uint64_t a1, int *a2, void **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B6070();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onTelephonyNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B6084();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onTelephonyNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DB688(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_10052F364(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 56) "vendor")];

  return [v1 syncgetReachability];
}

id sub_10052F3D4(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 56) "vendor")];
  if (byte_102656C97 >= 0)
  {
    v2 = &qword_102656C80;
  }

  else
  {
    v2 = qword_102656C80;
  }

  v3 = [NSString stringWithUTF8String:v2];

  return [v1 resetNotificationConsumedForIdentifier:v3];
}

void *sub_10052F444(void *a1)
{
  *a1 = off_10245C858;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_10052F574(void *a1)
{
  *a1 = off_10245C858;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  operator delete();
}

void sub_10052F77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 4096;
  if (*(a3 + 6432) == 1)
  {
    v5 = *(a3 + 6456) <= 0 && *(a3 + 6460) <= 0;
    v6 = v5 && *(a3 + 6464) < 1;
    if (!v6 && *(a3 + 818) == 1)
    {
      v7 = (a3 + 5064);
      if (sub_100072814(a3 + 5064))
      {
        v8 = *(a3 + 5112);
        v41 = *(a3 + 5096);
        v42[0] = v8;
        *(v42 + 12) = *(a3 + 5124);
        v9 = *(a3 + 5080);
        v39 = *v7;
        v40 = v9;
        v10 = *(a3 + 5196);
        v36 = *(a3 + 5180);
        v37 = v10;
        v38 = *(a3 + 5212);
        v11 = *(a3 + 5164);
        v34 = *(a3 + 5148);
        v35 = v11;
        v12 = *(a3 + 6440);
        sub_1001EAAC8(a3 + 5064, __src);
        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v13 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(v3 + 1044);
          *buf = 134349312;
          *&buf[4] = v12;
          *&buf[12] = 2050;
          *&buf[14] = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@WifiFlow, reissue, time, %{public}.1f, last, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v20 = *(v3 + 1044);
          v43 = 134349312;
          v44 = v12;
          v45 = 2050;
          v46 = v20;
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Client::UpdateTimer &, EventInputOutput &) const", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v48 = v41;
        *v49 = v42[0];
        *&v49[12] = *(v42 + 12);
        *buf = v39;
        *&buf[16] = v40;
        v50 = v12;
        v52 = v35;
        v53 = v36;
        v54 = v37;
        v55 = v38;
        v51 = v34;
        memcpy(v56, __src, sizeof(v56));
        v57 = v26;
        v58 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v63 = v32;
        v64[0] = v33[0];
        *(v64 + 9) = *(v33 + 9);
        v59 = v28;
        v60 = v29;
        v61 = v30;
        v62 = v31;
        sub_1001E40AC(a3 + 2088, buf);
        if (v58)
        {
          sub_100008080(v58);
        }

        ++*(*(a3 + 6480) + 244);
        *(a3 + 6512) = sub_1001E8388(a3 + 6500);
        *(v3 + 2424) = v15;
        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v16 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v17 = sub_100189408(*(a3 + 6512));
          v18 = sub_100189408(*(a3 + 6500));
          *buf = 136446466;
          *&buf[4] = v17;
          *&buf[12] = 2082;
          *&buf[14] = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@WifiFlow, inter-locreq state update per update timer event, staging, %{public}s, current, %{public}s", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v22 = sub_100189408(*(a3 + 6512));
          v23 = sub_100189408(*(a3 + 6500));
          v43 = 136446466;
          v44 = v22;
          v45 = 2082;
          v46 = v23;
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Client::UpdateTimer &, EventInputOutput &) const", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        if (v27)
        {
          sub_100008080(v27);
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_1018B60AC();
        }

        v19 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiFlow, reissue, invalid location, #CloneMe", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B60C0();
        }
      }
    }
  }
}

void sub_10052FC70(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

void sub_10052FCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 6432) == 1)
  {
    v4 = *(a3 + 6456) <= 0 && *(a3 + 6460) <= 0;
    v5 = v4 && *(a3 + 6464) < 1;
    if (!v5 && *(a3 + 816) == 1)
    {
      sub_10052FE90(a3, 1);
      (*(**a1 + 24))(&v16);
      v8 = v16;
      if (!v19)
      {
        v8 = 0;
      }

      sub_1002D95F8(*(a2 + 48), v8 | (v19 << 8), v14);
      v9 = *(a2 + 24);
      v10 = *(a3 + 6480);
      if (v9)
      {
        if (SHIBYTE(v15) < 0)
        {
          sub_100007244(__p, v14[0], v14[1]);
        }

        else
        {
          *__p = *v14;
          v13 = v15;
        }

        sub_1002F43F8(v10, __p, *(a3 + 1572));
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v20 = v14;
        v11 = sub_1002DDE28(v10 + 176, v14);
        ++*(v11 + 56);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (v19 == 1)
      {
        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }
      }
    }
  }
}

void sub_10052FE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1)
  {
    if (a23)
    {
      operator delete(a23);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052FE90(uint64_t a1, int a2)
{
  if (*(a1 + 1572) && *(a1 + 1436) > 0.0)
  {
    v3 = *(a1 + 1528);
    v35 = *(a1 + 1512);
    v36 = v3;
    v37[0] = *(a1 + 1544);
    *(v37 + 12) = *(a1 + 1556);
    v4 = *(a1 + 1464);
    v31 = *(a1 + 1448);
    v32 = v4;
    v5 = *(a1 + 1496);
    v33 = *(a1 + 1480);
    v34 = v5;
    v6 = *(a1 + 1432);
    v29 = *(a1 + 1416);
    v30 = v6;
    sub_1001EAAC8(a1 + 1416, __src);
    v47 = v35;
    v48 = v36;
    v49[0] = v37[0];
    *(v49 + 12) = *(v37 + 12);
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    *buf = v29;
    *&buf[16] = v30;
    memcpy(v50, __src, sizeof(v50));
    v51 = v21;
    v52 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = v27;
    v58[0] = v28[0];
    *(v58 + 9) = *(v28 + 9);
    v53 = v23;
    v54 = v24;
    v55 = v25;
    v56 = v26;
    sub_1001E40AC(a1 + 2088, buf);
    if (v52)
    {
      sub_100008080(v52);
    }

    ++*(*(a1 + 6480) + 244);
    *(a1 + 6512) = sub_1001E8388(a1 + 6500);
    *(a1 + 6520) = v7;
    if (qword_1025D4630 != -1)
    {
      sub_1018B61C4();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v9 = sub_100189408(*(a1 + 6512));
      v10 = sub_100189408(*(a1 + 6500));
      *buf = 136446466;
      *&buf[4] = v9;
      *&buf[12] = 2082;
      *&buf[14] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@WifiFlow, inter-locreq state update, staging, %{public}s, current, %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B61EC(buf);
      v17 = sub_100189408(*(a1 + 6512));
      v18 = sub_100189408(*(a1 + 6500));
      v38 = 136446466;
      v39 = v17;
      v40 = 2082;
      v41 = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CL::Wifi1::Policies::NotifyClients::HandleEvent::processLocationComputation(EventInputOutput &, BOOL)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    if (v22)
    {
      sub_100008080(v22);
    }
  }

  else if (a2)
  {
    ++*(*(a1 + 6480) + 248);
    if (*(a1 + 1624) == 1)
    {
      if (*(a1 + 1623) < 0)
      {
        sub_100007244(buf, *(a1 + 1600), *(a1 + 1608));
      }

      else
      {
        *buf = *(a1 + 1600);
        *&buf[16] = *(a1 + 1616);
      }

      v11 = (a1 + 2056);
      if (*(a1 + 2080) == 1)
      {
        if (*(a1 + 2079) < 0)
        {
          operator delete(*v11);
        }

        *v11 = *buf;
        *(a1 + 2072) = *&buf[16];
      }

      else
      {
        *v11 = *buf;
        *(a1 + 2072) = *&buf[16];
        *(a1 + 2080) = 1;
      }

      if ((*(a1 + 1624) & 1) == 0)
      {
        sub_100173BA0();
      }

      v12 = *(a1 + 6480);
      *buf = a1 + 1600;
      v13 = sub_1002DDE28(v12 + 264, (a1 + 1600));
      ++*(v13 + 56);
    }

    else
    {
      sub_10000EC00(__src, "NA");
      if ((__src[23] & 0x80000000) != 0)
      {
        sub_100007244(buf, *__src, *&__src[8]);
      }

      else
      {
        *buf = *__src;
        *&buf[16] = *&__src[16];
      }

      v14 = (a1 + 2056);
      if (*(a1 + 2080) == 1)
      {
        if (*(a1 + 2079) < 0)
        {
          operator delete(*v14);
        }

        *v14 = *buf;
        *(a1 + 2072) = *&buf[16];
        buf[23] = 0;
        buf[0] = 0;
      }

      else
      {
        *v14 = *buf;
        *(a1 + 2072) = *&buf[16];
        memset(buf, 0, 24);
        *(a1 + 2080) = 1;
      }

      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
      }

      if (qword_1025D4630 != -1)
      {
        sub_1018B61C4();
      }

      v15 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "WifiCalc, did we forget to set failureReason?", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B6230();
      }
    }
  }

  result = sub_100071CA0();
  if (result)
  {
    sub_10004FD18(buf);
    *__src = sub_100187E48((a1 + 6096));
    sub_10004345C(buf, "wifiLocType", __src);
    sub_1001E8460(buf, "apsInSolution", (a1 + 1572));
    sub_100116D68(buf, "hAcc", (a1 + 1436));
    sub_100071CAC(buf, "locationd");
    return sub_100005DA4(buf);
  }

  return result;
}

void sub_1005303F8(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100530468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 6432) == 1 && (*(a3 + 6456) > 0 || *(a3 + 6460) > 0 || *(a3 + 6464) >= 1))
  {
    return sub_10052FE90(a3, 1);
  }

  return result;
}

void sub_1005304A4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 6432) == 1 && *(a4 + 6468) >= 1)
  {
    __src = 0;
    v54 = 0uLL;
    v6 = *(a4 + 1640);
    v7 = *(a4 + 1648);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = 0x6F96F96F96F96F97;
      do
      {
        a1.n128_u64[0] = *(v6 + 20);
        if (a1.n128_f64[0] >= 0.0)
        {
          if (v8 >= *(&v54 + 1))
          {
            v16 = __src;
            v17 = v8 - __src;
            v18 = ((v8 - __src) >> 2) * v9;
            v19 = v18 + 1;
            if ((v18 + 1) > 0x1A41A41A41A41A4)
            {
              sub_10028C64C();
            }

            v20 = v9;
            v21 = ((*(&v54 + 1) - __src) >> 2) * v9;
            if (2 * v21 > v19)
            {
              v19 = 2 * v21;
            }

            if (v21 >= 0xD20D20D20D20D2)
            {
              v22 = 0x1A41A41A41A41A4;
            }

            else
            {
              v22 = v19;
            }

            if (v22)
            {
              sub_100238948(&__src, v22);
            }

            v23 = 156 * v18;
            v24 = *(v6 + 16);
            *v23 = *v6;
            *(v23 + 16) = v24;
            v25 = *(v6 + 32);
            v26 = *(v6 + 48);
            v27 = *(v6 + 80);
            *(v23 + 64) = *(v6 + 64);
            *(v23 + 80) = v27;
            *(v23 + 32) = v25;
            *(v23 + 48) = v26;
            v28 = *(v6 + 96);
            v29 = *(v6 + 112);
            v30 = *(v6 + 128);
            *(v23 + 140) = *(v6 + 140);
            *(v23 + 112) = v29;
            *(v23 + 128) = v30;
            *(v23 + 96) = v28;
            v8 = 156 * v18 + 156;
            v31 = (v23 - v17);
            memcpy((v23 - v17), v16, v17);
            v32 = __src;
            __src = v31;
            v54 = v8;
            if (v32)
            {
              operator delete(v32);
            }

            v9 = v20;
          }

          else
          {
            v10 = *(v6 + 16);
            *v8 = *v6;
            *(v8 + 16) = v10;
            v11 = *(v6 + 32);
            v12 = *(v6 + 48);
            v13 = *(v6 + 80);
            *(v8 + 64) = *(v6 + 64);
            *(v8 + 80) = v13;
            *(v8 + 32) = v11;
            *(v8 + 48) = v12;
            a1 = *(v6 + 96);
            v14 = *(v6 + 112);
            v15 = *(v6 + 128);
            *(v8 + 140) = *(v6 + 140);
            *(v8 + 112) = v14;
            *(v8 + 128) = v15;
            *(v8 + 96) = a1;
            v8 += 156;
          }

          *&v54 = v8;
        }

        v6 += 184;
      }

      while (v6 != v7);
      v33 = __src;
      if (__src != v8)
      {
        sub_1005317F8(__src, v8, 126 - 2 * __clz(((v8 - __src) >> 2) * v9), 1, a1);
        v34 = __src;
        if (__src != v54)
        {
          v35 = *(__src + 76);
          do
          {
            v36 = v35;
            if (!sub_100020608(*(v34 + 4), *(v34 + 12)))
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018B61C4();
              }

              v37 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
              {
                v38 = LocationLogEncryptionDataSize();
                v39 = LocationLogEncryptionEncryptData();
                *buf = 68289538;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 1040;
                *&buf[20] = v38;
                *&buf[24] = 2098;
                *&buf[26] = v39;
                _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid batched location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
                if (qword_1025D4630 != -1)
                {
                  sub_1018B61C4();
                }
              }

              v40 = qword_1025D4638;
              if (os_signpost_enabled(qword_1025D4638))
              {
                v41 = LocationLogEncryptionDataSize();
                v42 = LocationLogEncryptionEncryptData();
                *buf = 68289538;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 1040;
                *&buf[20] = v41;
                *&buf[24] = 2098;
                *&buf[26] = v42;
                _os_signpost_emit_with_name_impl(dword_100000000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid batched location", "{msg%{public}.0s:Invalid batched location, location:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
              }
            }

            v35 = *(v34 + 76);
            if (v36 > v35)
            {
              if (qword_1025D4630 != -1)
              {
                sub_1018B61C4();
              }

              v43 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2049;
                *&buf[20] = v36;
                *&buf[28] = 2049;
                *&buf[30] = v35;
                _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Batched locations are supposed to be ordered from oldest to more recent, t0:%{private}f, t1:%{private}f}", buf, 0x26u);
                if (qword_1025D4630 != -1)
                {
                  sub_1018B61C4();
                }
              }

              v44 = qword_1025D4638;
              if (os_signpost_enabled(qword_1025D4638))
              {
                *buf = 68289539;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2049;
                *&buf[20] = v36;
                *&buf[28] = 2049;
                *&buf[30] = v35;
                _os_signpost_emit_with_name_impl(dword_100000000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Batched locations are supposed to be ordered from oldest to more recent", "{msg%{public}.0s:Batched locations are supposed to be ordered from oldest to more recent, t0:%{private}f, t1:%{private}f}", buf, 0x26u);
              }
            }

            v34 += 156;
          }

          while (v34 != v54);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018B61C4();
        }

        v45 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          v46 = 0xD37A6F4DE9BD37A7 * ((*(a4 + 1648) - *(a4 + 1640)) >> 3);
          *buf = 134349312;
          *&buf[4] = 0x6F96F96F96F96F97 * ((v54 - __src) >> 2);
          *&buf[12] = 2050;
          *&buf[14] = v46;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "WsbCalc, filter, live, %{public}lu, groups, %{public}lu", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B61EC(buf);
          v51 = 0xD37A6F4DE9BD37A7 * ((*(a4 + 1648) - *(a4 + 1640)) >> 3);
          v55 = 134349312;
          v56 = 0x6F96F96F96F96F97 * ((v54 - __src) >> 2);
          v57 = 2050;
          v58 = v51;
          v52 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::Wifi::Wsb &, EventInputOutput &) const", "%s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        v47 = *(a4 + 6480);
        v48 = __src;
        v49 = *(v47 + 252);
        *&buf[8] = v54;
        v50.i32[0] = 1;
        v50.i32[1] = -1762037865 * ((v54 - __src) >> 2);
        *(v47 + 252) = vadd_s32(v49, v50);
        v54 = 0uLL;
        __src = 0;
        *buf = v48;
        sub_100530BE8(a4 + 2904, buf);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        v33 = __src;
      }

      if (v33)
      {
        *&v54 = v33;
        operator delete(v33);
      }
    }
  }
}

void sub_100530B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100530BE8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_10007057C(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100530C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[205];
  v4 = a3[206];
  if (v3 != v4)
  {
    v6 = 0;
    __src = 0;
    v39 = 0uLL;
    do
    {
      if (*(v3 + 20) >= 0.0)
      {
        if (v6 >= *(&v39 + 1))
        {
          v14 = __src;
          v15 = v6 - __src;
          v16 = 0x6F96F96F96F96F97 * ((v6 - __src) >> 2);
          v17 = v16 + 1;
          if ((v16 + 1) > 0x1A41A41A41A41A4)
          {
            sub_10028C64C();
          }

          if (0xDF2DF2DF2DF2DF2ELL * ((*(&v39 + 1) - __src) >> 2) > v17)
          {
            v17 = 0xDF2DF2DF2DF2DF2ELL * ((*(&v39 + 1) - __src) >> 2);
          }

          if ((0x6F96F96F96F96F97 * ((*(&v39 + 1) - __src) >> 2)) >= 0xD20D20D20D20D2)
          {
            v18 = 0x1A41A41A41A41A4;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_100238948(&__src, v18);
          }

          v19 = (4 * ((v6 - __src) >> 2));
          v20 = *(v3 + 16);
          *v19 = *v3;
          v19[1] = v20;
          v21 = *(v3 + 32);
          v22 = *(v3 + 48);
          v23 = *(v3 + 80);
          v19[4] = *(v3 + 64);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v24 = *(v3 + 96);
          v25 = *(v3 + 112);
          v26 = *(v3 + 128);
          *(v19 + 140) = *(v3 + 140);
          v19[7] = v25;
          v19[8] = v26;
          v19[6] = v24;
          v6 = (156 * v16 + 156);
          v27 = (156 * v16 - v15);
          memcpy(v19 - v15, v14, v15);
          v28 = __src;
          __src = v27;
          v39 = v6;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          v7 = *(v3 + 16);
          *v6 = *v3;
          v6[1] = v7;
          v8 = *(v3 + 32);
          v9 = *(v3 + 48);
          v10 = *(v3 + 80);
          v6[4] = *(v3 + 64);
          v6[5] = v10;
          v6[2] = v8;
          v6[3] = v9;
          v11 = *(v3 + 96);
          v12 = *(v3 + 112);
          v13 = *(v3 + 128);
          *(v6 + 140) = *(v3 + 140);
          v6[7] = v12;
          v6[8] = v13;
          v6[6] = v11;
          v6 = (v6 + 156);
        }

        *&v39 = v6;
      }

      v3 += 184;
    }

    while (v3 != v4);
    v29 = __src;
    if (__src != v6)
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018B61C4();
      }

      v30 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0xD37A6F4DE9BD37A7 * ((a3[206] - a3[205]) >> 3);
        *buf = 134349312;
        *&buf[4] = 0x6F96F96F96F96F97 * ((v39 - __src) >> 2);
        *&buf[12] = 2050;
        *&buf[14] = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WsbCalc, filter, reproc, %{public}lu, groups, %{public}lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B61EC(buf);
        v36 = 0xD37A6F4DE9BD37A7 * ((a3[206] - a3[205]) >> 3);
        v40 = 134349312;
        v41 = 0x6F96F96F96F96F97 * ((v39 - __src) >> 2);
        v42 = 2050;
        v43 = v36;
        v37 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::NotifyClients::HandleEvent::operator()(const Events::ReprocessWifiScanBuffer &, EventInputOutput &) const", "%s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      v32 = a3[810];
      v33 = __src;
      v34 = *(v32 + 252);
      *&buf[8] = v39;
      v35.i32[0] = 1;
      v35.i32[1] = -1762037865 * ((v39 - __src) >> 2);
      *(v32 + 252) = vadd_s32(v34, v35);
      v39 = 0uLL;
      __src = 0;
      *buf = v33;
      sub_100530BE8((a3 + 363), buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v29 = __src;
    }

    if (v29)
    {
      *&v39 = v29;
      operator delete(v29);
    }
  }
}

void sub_100531044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10053108C(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018B60AC();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, alsreply, aps, error, tag, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6334(a2);
  }

  if ((*(a3 + 6456) > 0 || *(a3 + 6460) > 0 || *(a3 + 6464) >= 1) && sub_1000B9750((a3 + 6096)))
  {
    sub_10000EC00(__p, "alsError");
    if (SHIBYTE(v11) < 0)
    {
      sub_100007244(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v13 = v11;
    }

    v7 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v7);
      }

      *v7 = *buf;
      *(a3 + 2072) = v13;
      HIBYTE(v13) = 0;
      buf[0] = 0;
    }

    else
    {
      *v7 = *buf;
      *(a3 + 2072) = v13;
      v13 = 0;
      memset(buf, 0, sizeof(buf));
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(a3 + 6480);
    ++*(v8 + 248);
    sub_10000EC00(buf, "alsError");
    __p[0] = buf;
    v9 = sub_10018576C(v8 + 264, buf);
    ++*(v9 + 56);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1005312A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005312E0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 6456) >= 1 && *a2 != 0)
  {
    sub_10000EC00(__p, "wifiPoweredOff");
    if (SHIBYTE(v9) < 0)
    {
      sub_100007244(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      v11 = v9;
    }

    v5 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v5);
      }

      *v5 = *__dst;
      *(a3 + 2072) = v11;
      HIBYTE(v11) = 0;
      LOBYTE(__dst[0]) = 0;
    }

    else
    {
      *v5 = *__dst;
      *(a3 + 2072) = v11;
      __dst[1] = 0;
      v11 = 0;
      __dst[0] = 0;
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(a3 + 6480);
    ++*(v6 + 248);
    sub_10000EC00(__dst, "wifiPoweredOff");
    __p[0] = __dst;
    v7 = sub_10018576C(v6 + 264, __dst);
    ++*(v7 + 56);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100531420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100531450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 6435) & 1) == 0)
  {
    sub_10000EC00(__p, "wifiPoweredOff");
    if (SHIBYTE(v8) < 0)
    {
      sub_100007244(__dst, __p[0], __p[1]);
    }

    else
    {
      *__dst = *__p;
      v10 = v8;
    }

    v4 = (a3 + 2056);
    if (*(a3 + 2080) == 1)
    {
      if (*(a3 + 2079) < 0)
      {
        operator delete(*v4);
      }

      *v4 = *__dst;
      *(a3 + 2072) = v10;
      HIBYTE(v10) = 0;
      LOBYTE(__dst[0]) = 0;
    }

    else
    {
      *v4 = *__dst;
      *(a3 + 2072) = v10;
      __dst[1] = 0;
      v10 = 0;
      __dst[0] = 0;
      *(a3 + 2080) = 1;
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(a3 + 6480);
    ++*(v5 + 248);
    sub_10000EC00(__dst, "wifiPoweredOff");
    __p[0] = __dst;
    v6 = sub_10018576C(v5 + 264, __dst);
    ++*(v6 + 56);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_100531588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005315B8(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v5 = *a2;
  v4 = (a2 + 8);
  switch(v5 ^ (v5 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
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
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x1A:
    case 0x1C:
      v6 = a1[1];
      if (!v6)
      {
        return;
      }

      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_36;
    case 4:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1005312E0(a1, v4, a2);
      goto LABEL_34;
    case 7:
      v11 = 0;
      v8 = *a1;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v9;
      }

      v10 = v8;
      sub_10052FCB8(&v10, v4, a2);
      if (v9)
      {
        sub_100008080(v9);
      }

      return;
    case 8:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1005304A4(a3, a1, v4, a2);
      goto LABEL_34;
    case 0x13:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10053108C(a1, v4, a2);
      goto LABEL_34;
    case 0x14:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100530468(a1, v4, a2);
      goto LABEL_34;
    case 0x18:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a2 + 6432) == 1 && *(a2 + 817) == 1)
      {
        sub_10052FE90(a2, *(a2 + 1665));
      }

      goto LABEL_34;
    case 0x19:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100531450(a1, v4, a2);
      goto LABEL_34;
    case 0x1B:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10052F77C(a1, v4, a2);
      goto LABEL_34;
    case 0x1D:
      v7 = a1[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100530C4C(a1, v4, a2);
LABEL_34:
      if (!v7)
      {
        return;
      }

      v6 = v7;
LABEL_36:

      sub_100008080(v6);
      return;
    default:
      sub_10053508C();
  }
}

void sub_10053178C(_Unwind_Exception *exception_object)
{
  v2 = v1;
  if (v2)
  {
    sub_100008080(v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1005317F8(uint64_t a1, __int128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v8 = (a2 - 156);
  v9 = (a2 - 312);
  v10 = (a2 - 468);
  v357 = a2 - 49;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x6F96F96F96F96F97 * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = *(a2 - 10);
        if (result.n128_f64[0] < *(v11 + 76))
        {
          v424 = *v11;
          v456 = *(v11 + 16);
          v552 = *(v11 + 64);
          v581 = *(v11 + 80);
          v488 = *(v11 + 32);
          v520 = *(v11 + 48);
          *&v668[12] = *(v11 + 140);
          v639 = *(v11 + 112);
          *v668 = *(v11 + 128);
          v610 = *(v11 + 96);
          v250 = *(a2 - 140);
          *v11 = *(a2 - 156);
          *(v11 + 16) = v250;
          v251 = *(a2 - 124);
          v252 = *(a2 - 108);
          v253 = *(a2 - 76);
          *(v11 + 64) = *(a2 - 92);
          *(v11 + 80) = v253;
          *(v11 + 32) = v251;
          *(v11 + 48) = v252;
          v254 = *(a2 - 60);
          v255 = *(a2 - 44);
          v256 = *(a2 - 28);
          *(v11 + 140) = *(a2 - 1);
          *(v11 + 112) = v255;
          *(v11 + 128) = v256;
          *(v11 + 96) = v254;
          *(a2 - 140) = v456;
          *(a2 - 156) = v424;
          *(a2 - 76) = v581;
          *(a2 - 92) = v552;
          *(a2 - 108) = v520;
          *(a2 - 124) = v488;
          result = v610;
          *(a2 - 1) = *&v668[12];
          *(a2 - 28) = *v668;
          *(a2 - 44) = v639;
          *(a2 - 60) = v610;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_f64[0] = sub_100533730(v11, (v11 + 156), (v11 + 312), (a2 - 156));
      return result;
    }

    if (v13 == 5)
    {

      result.n128_f64[0] = sub_100533C0C(v11, (v11 + 156), (v11 + 312), (v11 + 468), (a2 - 156));
      return result;
    }

LABEL_9:
    if (v12 <= 3743)
    {
      v266 = (v11 + 156);
      v268 = v11 == a2 || v266 == a2;
      if (a4)
      {
        if (!v268)
        {
          v269 = 0;
          v270 = v11;
          do
          {
            v271 = v266;
            result.n128_u64[0] = *(v270 + 232);
            if (result.n128_f64[0] < *(v270 + 76))
            {
              v426 = *v266;
              *&v522[12] = *(v266 + 60);
              v490 = v266[2];
              *v522 = v266[3];
              v458 = v266[1];
              v388 = *(v270 + 272);
              v394 = *(v270 + 288);
              v398 = *(v270 + 304);
              v376 = *(v270 + 240);
              v382 = *(v270 + 256);
              v272 = v269;
              while (1)
              {
                v273 = v11 + v272;
                v274 = (v11 + v272 + 156);
                v275 = *(v11 + v272 + 112);
                *(v273 + 252) = *(v11 + v272 + 96);
                v276 = *(v11 + v272 + 128);
                v274[7] = v275;
                v274[8] = v276;
                *(v274 + 140) = *(v11 + v272 + 140);
                v277 = *(v11 + v272 + 48);
                *(v273 + 188) = *(v11 + v272 + 32);
                *(v273 + 204) = v277;
                v278 = *(v11 + v272 + 80);
                *(v273 + 220) = *(v11 + v272 + 64);
                *(v273 + 236) = v278;
                v279 = *(v11 + v272 + 16);
                *(v273 + 156) = *(v11 + v272);
                *(v273 + 172) = v279;
                if (!v272)
                {
                  break;
                }

                v272 -= 156;
                if (result.n128_f64[0] >= *(v273 - 80))
                {
                  v280 = v11 + v272 + 156;
                  goto LABEL_129;
                }
              }

              v280 = v11;
LABEL_129:
              *v280 = v426;
              *(v280 + 60) = *&v522[12];
              *(v280 + 32) = v490;
              *(v280 + 48) = *v522;
              *(v280 + 16) = v458;
              *(v280 + 76) = result.n128_u64[0];
              *(v280 + 100) = v382;
              result.n128_u64[0] = v388;
              *(v280 + 116) = v388;
              *(v280 + 132) = v394;
              *(v280 + 148) = v398;
              *(v280 + 84) = v376;
            }

            v266 = (v271 + 156);
            v269 += 156;
            v270 = v271;
          }

          while ((v271 + 156) != a2);
        }
      }

      else if (!v268)
      {
        do
        {
          v340 = v266;
          result.n128_u64[0] = *(a1 + 232);
          if (result.n128_f64[0] < *(a1 + 76))
          {
            v431 = *v266;
            *&v527[12] = *(v266 + 60);
            v495 = v266[2];
            *v527 = v266[3];
            v463 = v266[1];
            v391 = *(a1 + 272);
            v397 = *(a1 + 288);
            v400 = *(a1 + 304);
            v379 = *(a1 + 240);
            v385 = *(a1 + 256);
            v341 = v266;
            do
            {
              v342 = *(v341 - 44);
              v341[6] = *(v341 - 60);
              v341[7] = v342;
              v341[8] = *(v341 - 28);
              *(v341 + 140) = *(v341 - 1);
              v343 = *(v341 - 108);
              v341[2] = *(v341 - 124);
              v341[3] = v343;
              v344 = *(v341 - 76);
              v341[4] = *(v341 - 92);
              v341[5] = v344;
              v345 = *(v341 - 140);
              *v341 = *(v341 - 156);
              v341[1] = v345;
              v346 = *(v341 - 236);
              v341 = (v341 - 156);
            }

            while (result.n128_f64[0] < v346);
            *v341 = v431;
            v341[2] = v495;
            v341[3] = *v527;
            v341[1] = v463;
            *(v341 + 60) = *&v527[12];
            *(v341 + 76) = result.n128_u64[0];
            *(v341 + 84) = v379;
            result = v385;
            *(v341 + 148) = v400;
            *(v341 + 132) = v397;
            *(v341 + 116) = v391;
            *(v341 + 100) = v385;
          }

          v266 = (v266 + 156);
          a1 = v340;
        }

        while ((v340 + 156) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v281 = (v13 - 2) >> 1;
        v282 = v281;
        do
        {
          v283 = v282;
          if (v281 >= v282)
          {
            v284 = (2 * v282) | 1;
            v285 = v11 + 156 * v284;
            if (2 * v282 + 2 < v13 && *(v285 + 76) < *(v285 + 232))
            {
              v285 += 156;
              v284 = 2 * v282 + 2;
            }

            v286 = v11 + 156 * v282;
            v287 = *(v286 + 76);
            if (*(v285 + 76) >= v287)
            {
              v427 = *v286;
              *&v523[12] = *(v286 + 60);
              v491 = *(v286 + 32);
              *v523 = *(v286 + 48);
              v459 = *(v286 + 16);
              v399 = *(v286 + 148);
              v389 = *(v286 + 116);
              v395 = *(v286 + 132);
              v383 = *(v286 + 100);
              v377 = *(v286 + 84);
              do
              {
                v288 = v286;
                v286 = v285;
                v289 = *(v285 + 16);
                *v288 = *v285;
                v288[1] = v289;
                v290 = *(v285 + 32);
                v291 = *(v285 + 48);
                v292 = *(v285 + 80);
                v288[4] = *(v285 + 64);
                v288[5] = v292;
                v288[2] = v290;
                v288[3] = v291;
                v293 = *(v285 + 96);
                v294 = *(v285 + 112);
                v295 = *(v285 + 128);
                *(v288 + 140) = *(v285 + 140);
                v288[7] = v294;
                v288[8] = v295;
                v288[6] = v293;
                if (v281 < v284)
                {
                  break;
                }

                v296 = 2 * v284;
                v284 = (2 * v284) | 1;
                v285 = v11 + 156 * v284;
                v297 = v296 + 2;
                if (v297 < v13 && *(v285 + 76) < *(v285 + 232))
                {
                  v285 += 156;
                  v284 = v297;
                }
              }

              while (*(v285 + 76) >= v287);
              *v286 = v427;
              *(v286 + 60) = *&v523[12];
              *(v286 + 32) = v491;
              *(v286 + 48) = *v523;
              *(v286 + 16) = v459;
              *(v286 + 76) = v287;
              *(v286 + 100) = v383;
              *(v286 + 116) = v389;
              *(v286 + 132) = v395;
              *(v286 + 148) = v399;
              *(v286 + 84) = v377;
            }
          }

          v282 = v283 - 1;
        }

        while (v283);
        v298 = 0x6F96F96F96F96F97 * (v12 >> 2);
        do
        {
          v299 = 0;
          v428 = *v11;
          v460 = *(v11 + 16);
          v554 = *(v11 + 64);
          v583 = *(v11 + 80);
          v492 = *(v11 + 32);
          v524 = *(v11 + 48);
          *&v670[12] = *(v11 + 140);
          v641 = *(v11 + 112);
          *v670 = *(v11 + 128);
          v612 = *(v11 + 96);
          v300 = v11;
          do
          {
            v301 = v300;
            v302 = v300 + 156 * v299;
            v300 = v302 + 156;
            v303 = 2 * v299;
            v299 = (2 * v299) | 1;
            v304 = v303 + 2;
            if (v304 < v298 && *(v302 + 232) < *(v302 + 388))
            {
              v300 = v302 + 312;
              v299 = v304;
            }

            v305 = *(v300 + 16);
            *v301 = *v300;
            v301[1] = v305;
            v306 = *(v300 + 32);
            v307 = *(v300 + 48);
            v308 = *(v300 + 80);
            v301[4] = *(v300 + 64);
            v301[5] = v308;
            v301[2] = v306;
            v301[3] = v307;
            v309 = *(v300 + 96);
            v310 = *(v300 + 112);
            v311 = *(v300 + 128);
            *(v301 + 140) = *(v300 + 140);
            v301[7] = v310;
            v301[8] = v311;
            v301[6] = v309;
          }

          while (v299 <= ((v298 - 2) >> 1));
          a2 = (a2 - 156);
          if (v300 == a2)
          {
            *v300 = v428;
            *(v300 + 16) = v460;
            *(v300 + 64) = v554;
            *(v300 + 80) = v583;
            *(v300 + 32) = v492;
            *(v300 + 48) = v524;
            result = v612;
            *(v300 + 140) = *&v670[12];
            *(v300 + 112) = v641;
            *(v300 + 128) = *v670;
            *(v300 + 96) = v612;
          }

          else
          {
            v312 = a2[1];
            *v300 = *a2;
            *(v300 + 16) = v312;
            v313 = a2[2];
            v314 = a2[3];
            v315 = a2[5];
            *(v300 + 64) = a2[4];
            *(v300 + 80) = v315;
            *(v300 + 32) = v313;
            *(v300 + 48) = v314;
            v316 = a2[6];
            v317 = a2[7];
            v318 = a2[8];
            *(v300 + 140) = *(a2 + 140);
            *(v300 + 112) = v317;
            *(v300 + 128) = v318;
            *(v300 + 96) = v316;
            *a2 = v428;
            a2[1] = v460;
            a2[4] = v554;
            a2[5] = v583;
            a2[2] = v492;
            a2[3] = v524;
            result = v612;
            *(a2 + 140) = *&v670[12];
            a2[7] = v641;
            a2[8] = *v670;
            a2[6] = v612;
            v319 = v300 - v11 + 156;
            if (v319 >= 157)
            {
              v320 = (0x6F96F96F96F96F97 * (v319 >> 2) - 2) >> 1;
              v321 = v11 + 156 * v320;
              result.n128_u64[0] = *(v300 + 76);
              if (*(v321 + 76) < result.n128_f64[0])
              {
                v378 = *v300;
                *&v396[12] = *(v300 + 60);
                v390 = *(v300 + 32);
                *v396 = *(v300 + 48);
                v384 = *(v300 + 16);
                v367 = *(v300 + 116);
                v370 = *(v300 + 132);
                v373 = *(v300 + 148);
                v361 = *(v300 + 84);
                v364 = *(v300 + 100);
                do
                {
                  v322 = v300;
                  v300 = v321;
                  v323 = *(v321 + 16);
                  *v322 = *v321;
                  v322[1] = v323;
                  v324 = *(v321 + 32);
                  v325 = *(v321 + 48);
                  v326 = *(v321 + 80);
                  v322[4] = *(v321 + 64);
                  v322[5] = v326;
                  v322[2] = v324;
                  v322[3] = v325;
                  v327 = *(v321 + 96);
                  v328 = *(v321 + 112);
                  v329 = *(v321 + 128);
                  *(v322 + 140) = *(v321 + 140);
                  v322[7] = v328;
                  v322[8] = v329;
                  v322[6] = v327;
                  if (!v320)
                  {
                    break;
                  }

                  v320 = (v320 - 1) >> 1;
                  v321 = v11 + 156 * v320;
                }

                while (*(v321 + 76) < result.n128_f64[0]);
                *v300 = v378;
                *(v300 + 60) = *&v396[12];
                *(v300 + 32) = v390;
                *(v300 + 48) = *v396;
                *(v300 + 16) = v384;
                *(v300 + 76) = result.n128_u64[0];
                *(v300 + 100) = v364;
                result = v367;
                *(v300 + 116) = v367;
                *(v300 + 132) = v370;
                *(v300 + 148) = v373;
                *(v300 + 84) = v361;
              }
            }
          }
        }

        while (v298-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 156 * (v13 >> 1);
    v16 = *(a2 - 10);
    if (v12 >= 0x4E01)
    {
      v17 = *(v15 + 76);
      if (v17 >= *(v11 + 76))
      {
        if (v16 < v17)
        {
          v403 = *v15;
          v435 = *(v15 + 16);
          v531 = *(v15 + 64);
          v560 = *(v15 + 80);
          v467 = *(v15 + 32);
          v499 = *(v15 + 48);
          *&v647[12] = *(v15 + 140);
          v618 = *(v15 + 112);
          *v647 = *(v15 + 128);
          v589 = *(v15 + 96);
          v33 = *(a2 - 140);
          *v15 = *v8;
          *(v15 + 16) = v33;
          v34 = *(a2 - 124);
          v35 = *(a2 - 108);
          v36 = *(a2 - 76);
          *(v15 + 64) = *(a2 - 92);
          *(v15 + 80) = v36;
          *(v15 + 32) = v34;
          *(v15 + 48) = v35;
          v37 = *(a2 - 60);
          v38 = *(a2 - 44);
          v39 = *(a2 - 28);
          *(v15 + 140) = *(a2 - 1);
          *(v15 + 112) = v38;
          *(v15 + 128) = v39;
          *(v15 + 96) = v37;
          *v8 = v403;
          *(a2 - 140) = v435;
          *(a2 - 92) = v531;
          *(a2 - 76) = v560;
          *(a2 - 124) = v467;
          *(a2 - 108) = v499;
          *(a2 - 1) = *&v647[12];
          *(a2 - 44) = v618;
          *(a2 - 28) = *v647;
          *(a2 - 60) = v589;
          if (*(v15 + 76) < *(v11 + 76))
          {
            v404 = *v11;
            v436 = *(v11 + 16);
            v532 = *(v11 + 64);
            v561 = *(v11 + 80);
            v468 = *(v11 + 32);
            v500 = *(v11 + 48);
            *&v648[12] = *(v11 + 140);
            v619 = *(v11 + 112);
            *v648 = *(v11 + 128);
            v590 = *(v11 + 96);
            v40 = *(v15 + 16);
            *v11 = *v15;
            *(v11 + 16) = v40;
            v41 = *(v15 + 32);
            v42 = *(v15 + 48);
            v43 = *(v15 + 80);
            *(v11 + 64) = *(v15 + 64);
            *(v11 + 80) = v43;
            *(v11 + 32) = v41;
            *(v11 + 48) = v42;
            v44 = *(v15 + 96);
            v45 = *(v15 + 112);
            v46 = *(v15 + 128);
            *(v11 + 140) = *(v15 + 140);
            *(v11 + 112) = v45;
            *(v11 + 128) = v46;
            *(v11 + 96) = v44;
            *v15 = v404;
            *(v15 + 16) = v436;
            *(v15 + 64) = v532;
            *(v15 + 80) = v561;
            *(v15 + 32) = v468;
            *(v15 + 48) = v500;
            *(v15 + 140) = *&v648[12];
            *(v15 + 112) = v619;
            *(v15 + 128) = *v648;
            *(v15 + 96) = v590;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v401 = *v11;
          v433 = *(v11 + 16);
          v529 = *(v11 + 64);
          v558 = *(v11 + 80);
          v465 = *(v11 + 32);
          v497 = *(v11 + 48);
          *&v645[12] = *(v11 + 140);
          v616 = *(v11 + 112);
          *v645 = *(v11 + 128);
          v587 = *(v11 + 96);
          v18 = *(a2 - 140);
          *v11 = *v8;
          *(v11 + 16) = v18;
          v19 = *(a2 - 124);
          v20 = *(a2 - 108);
          v21 = *(a2 - 76);
          *(v11 + 64) = *(a2 - 92);
          *(v11 + 80) = v21;
          *(v11 + 32) = v19;
          *(v11 + 48) = v20;
          v22 = *(a2 - 60);
          v23 = *(a2 - 44);
          v24 = *(a2 - 28);
          *(v11 + 140) = *(a2 - 1);
          *(v11 + 112) = v23;
          *(v11 + 128) = v24;
          *(v11 + 96) = v22;
          goto LABEL_26;
        }

        v407 = *v11;
        v439 = *(v11 + 16);
        v535 = *(v11 + 64);
        v564 = *(v11 + 80);
        v471 = *(v11 + 32);
        v503 = *(v11 + 48);
        *&v651[12] = *(v11 + 140);
        v622 = *(v11 + 112);
        *v651 = *(v11 + 128);
        v593 = *(v11 + 96);
        v61 = *(v15 + 16);
        *v11 = *v15;
        *(v11 + 16) = v61;
        v62 = *(v15 + 32);
        v63 = *(v15 + 48);
        v64 = *(v15 + 80);
        *(v11 + 64) = *(v15 + 64);
        *(v11 + 80) = v64;
        *(v11 + 32) = v62;
        *(v11 + 48) = v63;
        v65 = *(v15 + 96);
        v66 = *(v15 + 112);
        v67 = *(v15 + 128);
        *(v11 + 140) = *(v15 + 140);
        *(v11 + 112) = v66;
        *(v11 + 128) = v67;
        *(v11 + 96) = v65;
        *v15 = v407;
        *(v15 + 16) = v439;
        *(v15 + 64) = v535;
        *(v15 + 80) = v564;
        *(v15 + 32) = v471;
        *(v15 + 48) = v503;
        *(v15 + 140) = *&v651[12];
        *(v15 + 112) = v622;
        *(v15 + 128) = *v651;
        *(v15 + 96) = v593;
        if (*(a2 - 10) < *(v15 + 76))
        {
          v401 = *v15;
          v433 = *(v15 + 16);
          v529 = *(v15 + 64);
          v558 = *(v15 + 80);
          v465 = *(v15 + 32);
          v497 = *(v15 + 48);
          *&v645[12] = *(v15 + 140);
          v616 = *(v15 + 112);
          *v645 = *(v15 + 128);
          v587 = *(v15 + 96);
          v68 = *(a2 - 140);
          *v15 = *v8;
          *(v15 + 16) = v68;
          v69 = *(a2 - 124);
          v70 = *(a2 - 108);
          v71 = *(a2 - 76);
          *(v15 + 64) = *(a2 - 92);
          *(v15 + 80) = v71;
          *(v15 + 32) = v69;
          *(v15 + 48) = v70;
          v72 = *(a2 - 60);
          v73 = *(a2 - 44);
          v74 = *(a2 - 28);
          *(v15 + 140) = *(a2 - 1);
          *(v15 + 112) = v73;
          *(v15 + 128) = v74;
          *(v15 + 96) = v72;
LABEL_26:
          *v8 = v401;
          *(a2 - 140) = v433;
          *(a2 - 92) = v529;
          *(a2 - 76) = v558;
          *(a2 - 124) = v465;
          *(a2 - 108) = v497;
          *(a2 - 1) = *&v645[12];
          *(a2 - 44) = v616;
          *(a2 - 28) = *v645;
          *(a2 - 60) = v587;
        }
      }

      v75 = (v11 + 156);
      v76 = v11 + 156 * v14;
      v77 = v76 - 156;
      v78 = *(v76 - 80);
      v79 = *(a2 - 236);
      if (v78 >= *(v11 + 232))
      {
        if (v79 < v78)
        {
          v409 = *v77;
          v441 = *(v76 - 140);
          v537 = *(v76 - 92);
          v566 = *(v76 - 76);
          v473 = *(v76 - 124);
          v505 = *(v76 - 108);
          *&v653[12] = *(v76 - 16);
          v624 = *(v76 - 44);
          *v653 = *(v76 - 28);
          v595 = *(v76 - 60);
          v87 = *(a2 - 296);
          *v77 = *v9;
          *(v76 - 140) = v87;
          v88 = *(a2 - 280);
          v89 = *(a2 - 264);
          v90 = *(a2 - 232);
          *(v76 - 92) = *(a2 - 248);
          *(v76 - 76) = v90;
          *(v76 - 124) = v88;
          *(v76 - 108) = v89;
          v91 = *(a2 - 216);
          v92 = *(a2 - 200);
          v93 = *(a2 - 184);
          *(v76 - 16) = *(a2 - 172);
          *(v76 - 44) = v92;
          *(v76 - 28) = v93;
          *(v76 - 60) = v91;
          *v9 = v409;
          *(a2 - 296) = v441;
          *(a2 - 248) = v537;
          *(a2 - 232) = v566;
          *(a2 - 280) = v473;
          *(a2 - 264) = v505;
          *(a2 - 172) = *&v653[12];
          *(a2 - 200) = v624;
          *(a2 - 184) = *v653;
          *(a2 - 216) = v595;
          if (*(v76 - 80) < *(v11 + 232))
          {
            v538 = *(v11 + 220);
            v567 = *(v11 + 236);
            v474 = *(v11 + 188);
            v506 = *(v11 + 204);
            *&v654[12] = *(v11 + 296);
            v625 = *(v11 + 268);
            *v654 = *(v11 + 284);
            v596 = *(v11 + 252);
            v410 = *v75;
            v442 = *(v11 + 172);
            v94 = *(v76 - 140);
            *v75 = *v77;
            *(v11 + 172) = v94;
            v95 = *(v76 - 124);
            v96 = *(v76 - 108);
            v97 = *(v76 - 76);
            *(v11 + 220) = *(v76 - 92);
            *(v11 + 236) = v97;
            *(v11 + 188) = v95;
            *(v11 + 204) = v96;
            v98 = *(v76 - 60);
            v99 = *(v76 - 44);
            v100 = *(v76 - 28);
            *(v11 + 296) = *(v76 - 16);
            *(v11 + 268) = v99;
            *(v11 + 284) = v100;
            *(v11 + 252) = v98;
            *v77 = v410;
            *(v76 - 140) = v442;
            *(v76 - 92) = v538;
            *(v76 - 76) = v567;
            *(v76 - 124) = v474;
            *(v76 - 108) = v506;
            *(v76 - 16) = *&v654[12];
            *(v76 - 44) = v625;
            *(v76 - 28) = *v654;
            *(v76 - 60) = v596;
          }
        }
      }

      else
      {
        if (v79 < v78)
        {
          v536 = *(v11 + 220);
          v565 = *(v11 + 236);
          v472 = *(v11 + 188);
          v504 = *(v11 + 204);
          *&v652[12] = *(v11 + 296);
          v623 = *(v11 + 268);
          *v652 = *(v11 + 284);
          v594 = *(v11 + 252);
          v408 = *v75;
          v440 = *(v11 + 172);
          v80 = *(a2 - 296);
          *v75 = *v9;
          *(v11 + 172) = v80;
          v81 = *(a2 - 280);
          v82 = *(a2 - 264);
          v83 = *(a2 - 232);
          *(v11 + 220) = *(a2 - 248);
          *(v11 + 236) = v83;
          *(v11 + 188) = v81;
          *(v11 + 204) = v82;
          v84 = *(a2 - 216);
          v85 = *(a2 - 200);
          v86 = *(a2 - 184);
          *(v11 + 296) = *(a2 - 172);
          *(v11 + 268) = v85;
          *(v11 + 284) = v86;
          *(v11 + 252) = v84;
          goto LABEL_38;
        }

        v540 = *(v11 + 220);
        v569 = *(v11 + 236);
        v476 = *(v11 + 188);
        v508 = *(v11 + 204);
        *&v656[12] = *(v11 + 296);
        v627 = *(v11 + 268);
        *v656 = *(v11 + 284);
        v598 = *(v11 + 252);
        v412 = *v75;
        v444 = *(v11 + 172);
        v115 = *(v76 - 140);
        *v75 = *v77;
        *(v11 + 172) = v115;
        v116 = *(v76 - 124);
        v117 = *(v76 - 108);
        v118 = *(v76 - 76);
        *(v11 + 220) = *(v76 - 92);
        *(v11 + 236) = v118;
        *(v11 + 188) = v116;
        *(v11 + 204) = v117;
        v119 = *(v76 - 60);
        v120 = *(v76 - 44);
        v121 = *(v76 - 28);
        *(v11 + 296) = *(v76 - 16);
        *(v11 + 268) = v120;
        *(v11 + 284) = v121;
        *(v11 + 252) = v119;
        *v77 = v412;
        *(v76 - 140) = v444;
        *(v76 - 92) = v540;
        *(v76 - 76) = v569;
        *(v76 - 124) = v476;
        *(v76 - 108) = v508;
        *(v76 - 16) = *&v656[12];
        *(v76 - 44) = v627;
        *(v76 - 28) = *v656;
        *(v76 - 60) = v598;
        if (*(a2 - 236) < *(v76 - 80))
        {
          v408 = *v77;
          v440 = *(v76 - 140);
          v536 = *(v76 - 92);
          v565 = *(v76 - 76);
          v472 = *(v76 - 124);
          v504 = *(v76 - 108);
          *&v652[12] = *(v76 - 16);
          v623 = *(v76 - 44);
          *v652 = *(v76 - 28);
          v594 = *(v76 - 60);
          v122 = *(a2 - 296);
          *v77 = *v9;
          *(v76 - 140) = v122;
          v123 = *(a2 - 280);
          v124 = *(a2 - 264);
          v125 = *(a2 - 232);
          *(v76 - 92) = *(a2 - 248);
          *(v76 - 76) = v125;
          *(v76 - 124) = v123;
          *(v76 - 108) = v124;
          v126 = *(a2 - 216);
          v127 = *(a2 - 200);
          v128 = *(a2 - 184);
          *(v76 - 16) = *(a2 - 172);
          *(v76 - 44) = v127;
          *(v76 - 28) = v128;
          *(v76 - 60) = v126;
LABEL_38:
          *v9 = v408;
          *(a2 - 296) = v440;
          *(a2 - 248) = v536;
          *(a2 - 232) = v565;
          *(a2 - 280) = v472;
          *(a2 - 264) = v504;
          *(a2 - 172) = *&v652[12];
          *(a2 - 200) = v623;
          *(a2 - 184) = *v652;
          *(a2 - 216) = v594;
        }
      }

      v129 = (v11 + 312);
      v130 = v11 + 156 * v14;
      v131 = (v130 + 156);
      v132 = *(v130 + 232);
      v133 = *v357;
      if (v132 >= *(v11 + 388))
      {
        if (v133 < v132)
        {
          v414 = *v131;
          v446 = *(v130 + 172);
          v542 = *(v130 + 220);
          v571 = *(v130 + 236);
          v478 = *(v130 + 188);
          v510 = *(v130 + 204);
          *&v658[12] = *(v130 + 296);
          v629 = *(v130 + 268);
          *v658 = *(v130 + 284);
          v600 = *(v130 + 252);
          v141 = *(a2 - 452);
          *v131 = *v10;
          *(v130 + 172) = v141;
          v142 = *(a2 - 436);
          v143 = *(a2 - 420);
          v144 = *(a2 - 388);
          *(v130 + 220) = *(a2 - 404);
          *(v130 + 236) = v144;
          *(v130 + 188) = v142;
          *(v130 + 204) = v143;
          v145 = *(a2 - 372);
          v146 = *(a2 - 356);
          v147 = *(a2 - 340);
          *(v130 + 296) = *(a2 - 328);
          *(v130 + 268) = v146;
          *(v130 + 284) = v147;
          *(v130 + 252) = v145;
          *v10 = v414;
          *(a2 - 452) = v446;
          *(a2 - 404) = v542;
          *(a2 - 388) = v571;
          *(a2 - 436) = v478;
          *(a2 - 420) = v510;
          *(a2 - 328) = *&v658[12];
          *(a2 - 356) = v629;
          *(a2 - 340) = *v658;
          *(a2 - 372) = v600;
          if (*(v130 + 232) < *(v11 + 388))
          {
            v543 = *(v11 + 376);
            v572 = *(v11 + 392);
            v479 = *(v11 + 344);
            v511 = *(v11 + 360);
            *&v659[12] = *(v11 + 452);
            v630 = *(v11 + 424);
            *v659 = *(v11 + 440);
            v601 = *(v11 + 408);
            v415 = *v129;
            v447 = *(v11 + 328);
            v148 = *(v130 + 172);
            *v129 = *v131;
            *(v11 + 328) = v148;
            v149 = *(v130 + 188);
            v150 = *(v130 + 204);
            v151 = *(v130 + 236);
            *(v11 + 376) = *(v130 + 220);
            *(v11 + 392) = v151;
            *(v11 + 344) = v149;
            *(v11 + 360) = v150;
            v152 = *(v130 + 252);
            v153 = *(v130 + 268);
            v154 = *(v130 + 284);
            *(v11 + 452) = *(v130 + 296);
            *(v11 + 424) = v153;
            *(v11 + 440) = v154;
            *(v11 + 408) = v152;
            *v131 = v415;
            *(v130 + 172) = v447;
            *(v130 + 220) = v543;
            *(v130 + 236) = v572;
            *(v130 + 188) = v479;
            *(v130 + 204) = v511;
            *(v130 + 296) = *&v659[12];
            *(v130 + 268) = v630;
            *(v130 + 284) = *v659;
            *(v130 + 252) = v601;
          }
        }
      }

      else
      {
        if (v133 < v132)
        {
          v541 = *(v11 + 376);
          v570 = *(v11 + 392);
          v477 = *(v11 + 344);
          v509 = *(v11 + 360);
          *&v657[12] = *(v11 + 452);
          v628 = *(v11 + 424);
          *v657 = *(v11 + 440);
          v599 = *(v11 + 408);
          v413 = *v129;
          v445 = *(v11 + 328);
          v134 = *(a2 - 452);
          *v129 = *v10;
          *(v11 + 328) = v134;
          v135 = *(a2 - 436);
          v136 = *(a2 - 420);
          v137 = *(a2 - 388);
          *(v11 + 376) = *(a2 - 404);
          *(v11 + 392) = v137;
          *(v11 + 344) = v135;
          *(v11 + 360) = v136;
          v138 = *(a2 - 372);
          v139 = *(a2 - 356);
          v140 = *(a2 - 340);
          *(v11 + 452) = *(a2 - 328);
          *(v11 + 424) = v139;
          *(v11 + 440) = v140;
          *(v11 + 408) = v138;
          goto LABEL_47;
        }

        v544 = *(v11 + 376);
        v573 = *(v11 + 392);
        v480 = *(v11 + 344);
        v512 = *(v11 + 360);
        *&v660[12] = *(v11 + 452);
        v631 = *(v11 + 424);
        *v660 = *(v11 + 440);
        v602 = *(v11 + 408);
        v416 = *v129;
        v448 = *(v11 + 328);
        v155 = *(v130 + 172);
        *v129 = *v131;
        *(v11 + 328) = v155;
        v156 = *(v130 + 188);
        v157 = *(v130 + 204);
        v158 = *(v130 + 236);
        *(v11 + 376) = *(v130 + 220);
        *(v11 + 392) = v158;
        *(v11 + 344) = v156;
        *(v11 + 360) = v157;
        v159 = *(v130 + 252);
        v160 = *(v130 + 268);
        v161 = *(v130 + 284);
        *(v11 + 452) = *(v130 + 296);
        *(v11 + 424) = v160;
        *(v11 + 440) = v161;
        *(v11 + 408) = v159;
        *v131 = v416;
        *(v130 + 172) = v448;
        *(v130 + 220) = v544;
        *(v130 + 236) = v573;
        *(v130 + 188) = v480;
        *(v130 + 204) = v512;
        *(v130 + 296) = *&v660[12];
        *(v130 + 268) = v631;
        *(v130 + 284) = *v660;
        *(v130 + 252) = v602;
        if (*v357 < *(v130 + 232))
        {
          v413 = *v131;
          v445 = *(v130 + 172);
          v541 = *(v130 + 220);
          v570 = *(v130 + 236);
          v477 = *(v130 + 188);
          v509 = *(v130 + 204);
          *&v657[12] = *(v130 + 296);
          v628 = *(v130 + 268);
          *v657 = *(v130 + 284);
          v599 = *(v130 + 252);
          v162 = *(a2 - 452);
          *v131 = *v10;
          *(v130 + 172) = v162;
          v163 = *(a2 - 436);
          v164 = *(a2 - 420);
          v165 = *(a2 - 388);
          *(v130 + 220) = *(a2 - 404);
          *(v130 + 236) = v165;
          *(v130 + 188) = v163;
          *(v130 + 204) = v164;
          v166 = *(a2 - 372);
          v167 = *(a2 - 356);
          v168 = *(a2 - 340);
          *(v130 + 296) = *(a2 - 328);
          *(v130 + 268) = v167;
          *(v130 + 284) = v168;
          *(v130 + 252) = v166;
LABEL_47:
          *v10 = v413;
          *(a2 - 452) = v445;
          *(a2 - 404) = v541;
          *(a2 - 388) = v570;
          *(a2 - 436) = v477;
          *(a2 - 420) = v509;
          *(a2 - 328) = *&v657[12];
          *(a2 - 356) = v628;
          *(a2 - 340) = *v657;
          *(a2 - 372) = v599;
        }
      }

      v169 = *(v15 + 76);
      v170 = *(v130 + 232);
      if (v169 >= *(v77 + 76))
      {
        if (v170 < v169)
        {
          v418 = *v15;
          v450 = *(v15 + 16);
          v546 = *(v15 + 64);
          v575 = *(v15 + 80);
          v482 = *(v15 + 32);
          v514 = *(v15 + 48);
          *&v662[12] = *(v15 + 140);
          v633 = *(v15 + 112);
          *v662 = *(v15 + 128);
          v604 = *(v15 + 96);
          v175 = *(v130 + 236);
          *(v15 + 64) = *(v130 + 220);
          *(v15 + 80) = v175;
          v176 = *(v130 + 204);
          *(v15 + 32) = *(v130 + 188);
          *(v15 + 48) = v176;
          *(v15 + 140) = *(v130 + 296);
          v177 = *(v130 + 284);
          *(v15 + 112) = *(v130 + 268);
          *(v15 + 128) = v177;
          *(v15 + 96) = *(v130 + 252);
          v178 = *(v130 + 172);
          *v15 = *v131;
          *(v15 + 16) = v178;
          *v131 = v418;
          *(v130 + 172) = v450;
          *(v130 + 220) = v546;
          *(v130 + 236) = v575;
          *(v130 + 188) = v482;
          *(v130 + 204) = v514;
          *(v130 + 296) = *&v662[12];
          *(v130 + 268) = v633;
          *(v130 + 284) = *v662;
          *(v130 + 252) = v604;
          if (*(v15 + 76) < *(v77 + 76))
          {
            v419 = *v77;
            v451 = *(v77 + 16);
            v547 = *(v77 + 64);
            v576 = *(v77 + 80);
            v483 = *(v77 + 32);
            v515 = *(v77 + 48);
            *&v663[12] = *(v77 + 140);
            v634 = *(v77 + 112);
            *v663 = *(v77 + 128);
            v605 = *(v77 + 96);
            v179 = *(v15 + 80);
            *(v77 + 64) = *(v15 + 64);
            *(v77 + 80) = v179;
            v180 = *(v15 + 48);
            *(v77 + 32) = *(v15 + 32);
            *(v77 + 48) = v180;
            *(v77 + 140) = *(v15 + 140);
            v181 = *(v15 + 128);
            *(v77 + 112) = *(v15 + 112);
            *(v77 + 128) = v181;
            *(v77 + 96) = *(v15 + 96);
            v182 = *(v15 + 16);
            *v77 = *v15;
            *(v77 + 16) = v182;
            *v15 = v419;
            *(v15 + 16) = v451;
            *(v15 + 64) = v547;
            *(v15 + 80) = v576;
            *(v15 + 32) = v483;
            *(v15 + 48) = v515;
            *(v15 + 140) = *&v663[12];
            *(v15 + 112) = v634;
            *(v15 + 128) = *v663;
            *(v15 + 96) = v605;
          }
        }
      }

      else
      {
        if (v170 < v169)
        {
          v417 = *v77;
          v449 = *(v77 + 16);
          v545 = *(v77 + 64);
          v574 = *(v77 + 80);
          v481 = *(v77 + 32);
          v513 = *(v77 + 48);
          *&v661[12] = *(v77 + 140);
          v632 = *(v77 + 112);
          *v661 = *(v77 + 128);
          v603 = *(v77 + 96);
          v171 = *(v130 + 236);
          *(v77 + 64) = *(v130 + 220);
          *(v77 + 80) = v171;
          v172 = *(v130 + 204);
          *(v77 + 32) = *(v130 + 188);
          *(v77 + 48) = v172;
          *(v77 + 140) = *(v130 + 296);
          v173 = *(v130 + 284);
          *(v77 + 112) = *(v130 + 268);
          *(v77 + 128) = v173;
          *(v77 + 96) = *(v130 + 252);
          v174 = *(v130 + 172);
          *v77 = *v131;
          *(v77 + 16) = v174;
          goto LABEL_56;
        }

        v420 = *v77;
        v452 = *(v77 + 16);
        v548 = *(v77 + 64);
        v577 = *(v77 + 80);
        v484 = *(v77 + 32);
        v516 = *(v77 + 48);
        *&v664[12] = *(v77 + 140);
        v635 = *(v77 + 112);
        *v664 = *(v77 + 128);
        v606 = *(v77 + 96);
        v183 = *(v15 + 80);
        *(v77 + 64) = *(v15 + 64);
        *(v77 + 80) = v183;
        v184 = *(v15 + 48);
        *(v77 + 32) = *(v15 + 32);
        *(v77 + 48) = v184;
        *(v77 + 140) = *(v15 + 140);
        v185 = *(v15 + 128);
        *(v77 + 112) = *(v15 + 112);
        *(v77 + 128) = v185;
        *(v77 + 96) = *(v15 + 96);
        v186 = *(v15 + 16);
        *v77 = *v15;
        *(v77 + 16) = v186;
        *v15 = v420;
        *(v15 + 16) = v452;
        *(v15 + 64) = v548;
        *(v15 + 80) = v577;
        *(v15 + 32) = v484;
        *(v15 + 48) = v516;
        *(v15 + 140) = *&v664[12];
        *(v15 + 112) = v635;
        *(v15 + 128) = *v664;
        *(v15 + 96) = v606;
        if (*(v130 + 232) < *(v15 + 76))
        {
          v417 = *v15;
          v449 = *(v15 + 16);
          v545 = *(v15 + 64);
          v574 = *(v15 + 80);
          v481 = *(v15 + 32);
          v513 = *(v15 + 48);
          *&v661[12] = *(v15 + 140);
          v632 = *(v15 + 112);
          *v661 = *(v15 + 128);
          v603 = *(v15 + 96);
          v187 = *(v130 + 236);
          *(v15 + 64) = *(v130 + 220);
          *(v15 + 80) = v187;
          v188 = *(v130 + 204);
          *(v15 + 32) = *(v130 + 188);
          *(v15 + 48) = v188;
          *(v15 + 140) = *(v130 + 296);
          v189 = *(v130 + 284);
          *(v15 + 112) = *(v130 + 268);
          *(v15 + 128) = v189;
          *(v15 + 96) = *(v130 + 252);
          v190 = *(v130 + 172);
          *v15 = *v131;
          *(v15 + 16) = v190;
LABEL_56:
          *v131 = v417;
          *(v130 + 172) = v449;
          *(v130 + 220) = v545;
          *(v130 + 236) = v574;
          *(v130 + 188) = v481;
          *(v130 + 204) = v513;
          *(v130 + 296) = *&v661[12];
          *(v130 + 268) = v632;
          *(v130 + 284) = *v661;
          *(v130 + 252) = v603;
        }
      }

      v421 = *v11;
      v453 = *(v11 + 16);
      v549 = *(v11 + 64);
      v578 = *(v11 + 80);
      v485 = *(v11 + 32);
      v517 = *(v11 + 48);
      *&v665[12] = *(v11 + 140);
      v636 = *(v11 + 112);
      *v665 = *(v11 + 128);
      v607 = *(v11 + 96);
      v191 = *(v15 + 16);
      *v11 = *v15;
      *(v11 + 16) = v191;
      v192 = *(v15 + 32);
      v193 = *(v15 + 48);
      v194 = *(v15 + 80);
      *(v11 + 64) = *(v15 + 64);
      *(v11 + 80) = v194;
      *(v11 + 32) = v192;
      *(v11 + 48) = v193;
      v195 = *(v15 + 96);
      v196 = *(v15 + 112);
      v197 = *(v15 + 128);
      *(v11 + 140) = *(v15 + 140);
      *(v11 + 112) = v196;
      *(v11 + 128) = v197;
      *(v11 + 96) = v195;
      *v15 = v421;
      *(v15 + 16) = v453;
      *(v15 + 64) = v549;
      *(v15 + 80) = v578;
      *(v15 + 32) = v485;
      *(v15 + 48) = v517;
      *(v15 + 140) = *&v665[12];
      *(v15 + 112) = v636;
      *(v15 + 128) = *v665;
      *(v15 + 96) = v607;
      goto LABEL_58;
    }

    v25 = *(v11 + 76);
    if (v25 >= *(v15 + 76))
    {
      if (v16 < v25)
      {
        v405 = *v11;
        v437 = *(v11 + 16);
        v533 = *(v11 + 64);
        v562 = *(v11 + 80);
        v469 = *(v11 + 32);
        v501 = *(v11 + 48);
        *&v649[12] = *(v11 + 140);
        v620 = *(v11 + 112);
        *v649 = *(v11 + 128);
        v591 = *(v11 + 96);
        v47 = *(a2 - 140);
        *v11 = *v8;
        *(v11 + 16) = v47;
        v48 = *(a2 - 124);
        v49 = *(a2 - 108);
        v50 = *(a2 - 76);
        *(v11 + 64) = *(a2 - 92);
        *(v11 + 80) = v50;
        *(v11 + 32) = v48;
        *(v11 + 48) = v49;
        v51 = *(a2 - 60);
        v52 = *(a2 - 44);
        v53 = *(a2 - 28);
        *(v11 + 140) = *(a2 - 1);
        *(v11 + 112) = v52;
        *(v11 + 128) = v53;
        *(v11 + 96) = v51;
        *v8 = v405;
        *(a2 - 140) = v437;
        *(a2 - 92) = v533;
        *(a2 - 76) = v562;
        *(a2 - 124) = v469;
        *(a2 - 108) = v501;
        *(a2 - 1) = *&v649[12];
        *(a2 - 44) = v620;
        *(a2 - 28) = *v649;
        *(a2 - 60) = v591;
        if (*(v11 + 76) < *(v15 + 76))
        {
          v406 = *v15;
          v438 = *(v15 + 16);
          v534 = *(v15 + 64);
          v563 = *(v15 + 80);
          v470 = *(v15 + 32);
          v502 = *(v15 + 48);
          *&v650[12] = *(v15 + 140);
          v621 = *(v15 + 112);
          *v650 = *(v15 + 128);
          v592 = *(v15 + 96);
          v54 = *(v11 + 16);
          *v15 = *v11;
          *(v15 + 16) = v54;
          v55 = *(v11 + 32);
          v56 = *(v11 + 48);
          v57 = *(v11 + 80);
          *(v15 + 64) = *(v11 + 64);
          *(v15 + 80) = v57;
          *(v15 + 32) = v55;
          *(v15 + 48) = v56;
          v58 = *(v11 + 96);
          v59 = *(v11 + 112);
          v60 = *(v11 + 128);
          *(v15 + 140) = *(v11 + 140);
          *(v15 + 112) = v59;
          *(v15 + 128) = v60;
          *(v15 + 96) = v58;
          *v11 = v406;
          *(v11 + 16) = v438;
          *(v11 + 64) = v534;
          *(v11 + 80) = v563;
          *(v11 + 32) = v470;
          *(v11 + 48) = v502;
          *(v11 + 140) = *&v650[12];
          *(v11 + 112) = v621;
          *(v11 + 128) = *v650;
          *(v11 + 96) = v592;
        }
      }

      goto LABEL_58;
    }

    if (v16 < v25)
    {
      v402 = *v15;
      v434 = *(v15 + 16);
      v530 = *(v15 + 64);
      v559 = *(v15 + 80);
      v466 = *(v15 + 32);
      v498 = *(v15 + 48);
      *&v646[12] = *(v15 + 140);
      v617 = *(v15 + 112);
      *v646 = *(v15 + 128);
      v588 = *(v15 + 96);
      v26 = *(a2 - 140);
      *v15 = *v8;
      *(v15 + 16) = v26;
      v27 = *(a2 - 124);
      v28 = *(a2 - 108);
      v29 = *(a2 - 76);
      *(v15 + 64) = *(a2 - 92);
      *(v15 + 80) = v29;
      *(v15 + 32) = v27;
      *(v15 + 48) = v28;
      v30 = *(a2 - 60);
      v31 = *(a2 - 44);
      v32 = *(a2 - 28);
      *(v15 + 140) = *(a2 - 1);
      *(v15 + 112) = v31;
      *(v15 + 128) = v32;
      *(v15 + 96) = v30;
LABEL_35:
      *v8 = v402;
      *(a2 - 140) = v434;
      *(a2 - 92) = v530;
      *(a2 - 76) = v559;
      *(a2 - 124) = v466;
      *(a2 - 108) = v498;
      *(a2 - 1) = *&v646[12];
      *(a2 - 44) = v617;
      *(a2 - 28) = *v646;
      *(a2 - 60) = v588;
      goto LABEL_58;
    }

    v411 = *v15;
    v443 = *(v15 + 16);
    v539 = *(v15 + 64);
    v568 = *(v15 + 80);
    v475 = *(v15 + 32);
    v507 = *(v15 + 48);
    *&v655[12] = *(v15 + 140);
    v626 = *(v15 + 112);
    *v655 = *(v15 + 128);
    v597 = *(v15 + 96);
    v101 = *(v11 + 16);
    *v15 = *v11;
    *(v15 + 16) = v101;
    v102 = *(v11 + 32);
    v103 = *(v11 + 48);
    v104 = *(v11 + 80);
    *(v15 + 64) = *(v11 + 64);
    *(v15 + 80) = v104;
    *(v15 + 32) = v102;
    *(v15 + 48) = v103;
    v105 = *(v11 + 96);
    v106 = *(v11 + 112);
    v107 = *(v11 + 128);
    *(v15 + 140) = *(v11 + 140);
    *(v15 + 112) = v106;
    *(v15 + 128) = v107;
    *(v15 + 96) = v105;
    *v11 = v411;
    *(v11 + 16) = v443;
    *(v11 + 64) = v539;
    *(v11 + 80) = v568;
    *(v11 + 32) = v475;
    *(v11 + 48) = v507;
    *(v11 + 140) = *&v655[12];
    *(v11 + 112) = v626;
    *(v11 + 128) = *v655;
    *(v11 + 96) = v597;
    if (*(a2 - 10) < *(v11 + 76))
    {
      v402 = *v11;
      v434 = *(v11 + 16);
      v530 = *(v11 + 64);
      v559 = *(v11 + 80);
      v466 = *(v11 + 32);
      v498 = *(v11 + 48);
      *&v646[12] = *(v11 + 140);
      v617 = *(v11 + 112);
      *v646 = *(v11 + 128);
      v588 = *(v11 + 96);
      v108 = *(a2 - 140);
      *v11 = *v8;
      *(v11 + 16) = v108;
      v109 = *(a2 - 124);
      v110 = *(a2 - 108);
      v111 = *(a2 - 76);
      *(v11 + 64) = *(a2 - 92);
      *(v11 + 80) = v111;
      *(v11 + 32) = v109;
      *(v11 + 48) = v110;
      v112 = *(a2 - 60);
      v113 = *(a2 - 44);
      v114 = *(a2 - 28);
      *(v11 + 140) = *(a2 - 1);
      *(v11 + 112) = v113;
      *(v11 + 128) = v114;
      *(v11 + 96) = v112;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v198 = *(v11 + 76);
LABEL_61:
      v199 = 0;
      v374 = *v11;
      v371 = *(v11 + 148);
      *&v392[12] = *(v11 + 60);
      v386 = *(v11 + 32);
      *v392 = *(v11 + 48);
      v380 = *(v11 + 16);
      v365 = *(v11 + 116);
      v368 = *(v11 + 132);
      v359 = *(v11 + 84);
      v362 = *(v11 + 100);
      do
      {
        v200 = *(v11 + v199 + 232);
        v199 += 156;
      }

      while (v200 < v198);
      v201 = v11 + v199;
      v202 = a2;
      if (v199 == 156)
      {
        v205 = a2;
        while (v201 < v205)
        {
          v203 = (v205 - 156);
          v206 = *(v205 - 10);
          v205 = (v205 - 156);
          if (v206 < v198)
          {
            goto LABEL_71;
          }
        }

        v203 = v205;
      }

      else
      {
        do
        {
          v203 = (v202 - 156);
          v204 = *(v202 - 10);
          v202 = (v202 - 156);
        }

        while (v204 >= v198);
      }

LABEL_71:
      v11 = v201;
      if (v201 < v203)
      {
        v207 = v203;
        do
        {
          v422 = *v11;
          v454 = *(v11 + 16);
          v550 = *(v11 + 64);
          v579 = *(v11 + 80);
          v486 = *(v11 + 32);
          v518 = *(v11 + 48);
          *&v666[12] = *(v11 + 140);
          v637 = *(v11 + 112);
          *v666 = *(v11 + 128);
          v608 = *(v11 + 96);
          v208 = v207[1];
          *v11 = *v207;
          *(v11 + 16) = v208;
          v209 = v207[2];
          v210 = v207[3];
          v211 = v207[5];
          *(v11 + 64) = v207[4];
          *(v11 + 80) = v211;
          *(v11 + 32) = v209;
          *(v11 + 48) = v210;
          v212 = v207[6];
          v213 = v207[7];
          v214 = v207[8];
          *(v11 + 140) = *(v207 + 140);
          *(v11 + 112) = v213;
          *(v11 + 128) = v214;
          *(v11 + 96) = v212;
          *v207 = v422;
          v207[1] = v454;
          v207[4] = v550;
          v207[5] = v579;
          v207[2] = v486;
          v207[3] = v518;
          *(v207 + 140) = *&v666[12];
          v207[7] = v637;
          v207[8] = *v666;
          v207[6] = v608;
          do
          {
            v215 = *(v11 + 232);
            v11 += 156;
          }

          while (v215 < v198);
          do
          {
            v216 = *(v207 - 10);
            v207 = (v207 - 156);
          }

          while (v216 >= v198);
        }

        while (v11 < v207);
      }

      v217 = (v11 - 156);
      if (v11 - 156 != a1)
      {
        v218 = *(v11 - 140);
        *a1 = *v217;
        *(a1 + 16) = v218;
        v219 = *(v11 - 124);
        v220 = *(v11 - 108);
        v221 = *(v11 - 76);
        *(a1 + 64) = *(v11 - 92);
        *(a1 + 80) = v221;
        *(a1 + 32) = v219;
        *(a1 + 48) = v220;
        v222 = *(v11 - 60);
        v223 = *(v11 - 44);
        v224 = *(v11 - 28);
        *(a1 + 140) = *(v11 - 16);
        *(a1 + 112) = v223;
        *(a1 + 128) = v224;
        *(a1 + 96) = v222;
      }

      *v217 = v374;
      *(v11 - 124) = v386;
      *(v11 - 108) = *v392;
      *(v11 - 140) = v380;
      *(v11 - 96) = *&v392[12];
      *(v11 - 80) = v198;
      *(v11 - 72) = v359;
      *(v11 - 8) = v371;
      *(v11 - 24) = v368;
      *(v11 - 40) = v365;
      *(v11 - 56) = v362;
      if (v201 < v203)
      {
        goto LABEL_82;
      }

      v225 = sub_100534368(a1, v11 - 156);
      if (sub_100534368(v11, a2))
      {
        a2 = (v11 - 156);
        if (!v225)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v225)
      {
LABEL_82:
        sub_1005317F8(a1, v11 - 156, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v198 = *(v11 + 76);
      if (*(v11 - 80) < v198)
      {
        goto LABEL_61;
      }

      v375 = *v11;
      *&v393[12] = *(v11 + 60);
      v387 = *(v11 + 32);
      *v393 = *(v11 + 48);
      v381 = *(v11 + 16);
      v372 = *(v11 + 148);
      v366 = *(v11 + 116);
      v369 = *(v11 + 132);
      v360 = *(v11 + 84);
      v363 = *(v11 + 100);
      if (v198 >= *(a2 - 10))
      {
        v228 = v11 + 156;
        do
        {
          v11 = v228;
          if (v228 >= a2)
          {
            break;
          }

          v229 = *(v228 + 76);
          v228 += 156;
        }

        while (v198 >= v229);
      }

      else
      {
        v226 = v11;
        do
        {
          v11 = v226 + 156;
          v227 = *(v226 + 232);
          v226 += 156;
        }

        while (v198 >= v227);
      }

      v230 = a2;
      if (v11 < a2)
      {
        v231 = a2;
        do
        {
          v230 = (v231 - 156);
          v232 = *(v231 - 10);
          v231 = (v231 - 156);
        }

        while (v198 < v232);
      }

      while (v11 < v230)
      {
        v423 = *v11;
        v455 = *(v11 + 16);
        v551 = *(v11 + 64);
        v580 = *(v11 + 80);
        v487 = *(v11 + 32);
        v519 = *(v11 + 48);
        *&v667[12] = *(v11 + 140);
        v638 = *(v11 + 112);
        *v667 = *(v11 + 128);
        v609 = *(v11 + 96);
        v233 = v230[1];
        *v11 = *v230;
        *(v11 + 16) = v233;
        v234 = v230[2];
        v235 = v230[3];
        v236 = v230[5];
        *(v11 + 64) = v230[4];
        *(v11 + 80) = v236;
        *(v11 + 32) = v234;
        *(v11 + 48) = v235;
        v237 = v230[6];
        v238 = v230[7];
        v239 = v230[8];
        *(v11 + 140) = *(v230 + 140);
        *(v11 + 112) = v238;
        *(v11 + 128) = v239;
        *(v11 + 96) = v237;
        *v230 = v423;
        v230[1] = v455;
        v230[4] = v551;
        v230[5] = v580;
        v230[2] = v487;
        v230[3] = v519;
        *(v230 + 140) = *&v667[12];
        v230[7] = v638;
        v230[8] = *v667;
        v230[6] = v609;
        do
        {
          v240 = *(v11 + 232);
          v11 += 156;
        }

        while (v198 >= v240);
        do
        {
          v241 = *(v230 - 10);
          v230 = (v230 - 156);
        }

        while (v198 < v241);
      }

      v242 = (v11 - 156);
      if (v11 - 156 != a1)
      {
        v243 = *(v11 - 140);
        *a1 = *v242;
        *(a1 + 16) = v243;
        v244 = *(v11 - 124);
        v245 = *(v11 - 108);
        v246 = *(v11 - 76);
        *(a1 + 64) = *(v11 - 92);
        *(a1 + 80) = v246;
        *(a1 + 32) = v244;
        *(a1 + 48) = v245;
        v247 = *(v11 - 60);
        v248 = *(v11 - 44);
        v249 = *(v11 - 28);
        *(a1 + 140) = *(v11 - 16);
        *(a1 + 112) = v248;
        *(a1 + 128) = v249;
        *(a1 + 96) = v247;
      }

      a4 = 0;
      *v242 = v375;
      *(v11 - 124) = v387;
      *(v11 - 108) = *v393;
      *(v11 - 140) = v381;
      *(v11 - 96) = *&v393[12];
      *(v11 - 80) = v198;
      *(v11 - 72) = v360;
      result = v363;
      *(v11 - 8) = v372;
      *(v11 - 24) = v369;
      *(v11 - 40) = v366;
      *(v11 - 56) = v363;
    }
  }

  v257 = (v11 + 156);
  result.n128_u64[0] = *(v11 + 232);
  v258 = *(a2 - 10);
  if (result.n128_f64[0] >= *(v11 + 76))
  {
    if (v258 < result.n128_f64[0])
    {
      v555 = *(v11 + 220);
      v584 = *(v11 + 236);
      v493 = *(v11 + 188);
      v525 = *(v11 + 204);
      *&v671[12] = *(v11 + 296);
      v642 = *(v11 + 268);
      *v671 = *(v11 + 284);
      v613 = *(v11 + 252);
      v429 = *v257;
      v461 = *(v11 + 172);
      v331 = *(a2 - 140);
      *v257 = *v8;
      *(v11 + 172) = v331;
      v332 = *(a2 - 124);
      v333 = *(a2 - 108);
      v334 = *(a2 - 76);
      *(v11 + 220) = *(a2 - 92);
      *(v11 + 236) = v334;
      *(v11 + 188) = v332;
      *(v11 + 204) = v333;
      result = *(a2 - 60);
      v335 = *(a2 - 44);
      v336 = *(a2 - 28);
      *(v11 + 296) = *(a2 - 1);
      *(v11 + 268) = v335;
      *(v11 + 284) = v336;
      *(v11 + 252) = result;
      *v8 = v429;
      *(a2 - 140) = v461;
      *(a2 - 92) = v555;
      *(a2 - 76) = v584;
      *(a2 - 124) = v493;
      *(a2 - 108) = v525;
      *(a2 - 1) = *&v671[12];
      *(a2 - 44) = v642;
      *(a2 - 28) = *v671;
      *(a2 - 60) = v613;
      result.n128_u64[0] = *(v11 + 232);
      if (result.n128_f64[0] < *(v11 + 76))
      {
        v430 = *v11;
        v462 = *(v11 + 16);
        v556 = *(v11 + 64);
        v585 = *(v11 + 80);
        v494 = *(v11 + 32);
        v526 = *(v11 + 48);
        *&v672[12] = *(v11 + 140);
        v643 = *(v11 + 112);
        *v672 = *(v11 + 128);
        v614 = *(v11 + 96);
        v337 = *(v11 + 236);
        *(v11 + 64) = *(v11 + 220);
        *(v11 + 80) = v337;
        result = *(v11 + 204);
        *(v11 + 32) = *(v11 + 188);
        *(v11 + 48) = result;
        *(v11 + 140) = *(v11 + 296);
        v338 = *(v11 + 284);
        *(v11 + 112) = *(v11 + 268);
        *(v11 + 128) = v338;
        *(v11 + 96) = *(v11 + 252);
        v339 = *(v11 + 172);
        *v11 = *v257;
        *(v11 + 16) = v339;
        *(v11 + 252) = v614;
        *(v11 + 268) = v643;
        *(v11 + 284) = *v672;
        *(v11 + 296) = *&v672[12];
        *(v11 + 188) = v494;
        *(v11 + 204) = v526;
        *(v11 + 220) = v556;
        *(v11 + 236) = v585;
        result.n128_u64[0] = v430;
        *v257 = v430;
        *(v11 + 172) = v462;
      }
    }
  }

  else
  {
    if (v258 >= result.n128_f64[0])
    {
      v432 = *v11;
      v464 = *(v11 + 16);
      v557 = *(v11 + 64);
      v586 = *(v11 + 80);
      v496 = *(v11 + 32);
      v528 = *(v11 + 48);
      *&v673[12] = *(v11 + 140);
      v644 = *(v11 + 112);
      *v673 = *(v11 + 128);
      v615 = *(v11 + 96);
      v347 = *(v11 + 236);
      *(v11 + 64) = *(v11 + 220);
      *(v11 + 80) = v347;
      result = *(v11 + 204);
      *(v11 + 32) = *(v11 + 188);
      *(v11 + 48) = result;
      *(v11 + 140) = *(v11 + 296);
      v348 = *(v11 + 284);
      *(v11 + 112) = *(v11 + 268);
      *(v11 + 128) = v348;
      *(v11 + 96) = *(v11 + 252);
      v349 = *(v11 + 172);
      *v11 = *v257;
      *(v11 + 16) = v349;
      *(v11 + 252) = v615;
      *(v11 + 268) = v644;
      *(v11 + 284) = *v673;
      *(v11 + 296) = *&v673[12];
      *(v11 + 188) = v496;
      *(v11 + 204) = v528;
      *(v11 + 220) = v557;
      *(v11 + 236) = v586;
      *v257 = v432;
      *(v11 + 172) = v464;
      result.n128_u64[0] = *(a2 - 10);
      if (result.n128_f64[0] >= *(v11 + 232))
      {
        return result;
      }

      v553 = *(v11 + 220);
      v582 = *(v11 + 236);
      v489 = *(v11 + 188);
      v521 = *(v11 + 204);
      *&v669[12] = *(v11 + 296);
      v640 = *(v11 + 268);
      *v669 = *(v11 + 284);
      v611 = *(v11 + 252);
      v425 = *v257;
      v457 = *(v11 + 172);
      v350 = *(a2 - 140);
      *v257 = *v8;
      *(v11 + 172) = v350;
      v351 = *(a2 - 124);
      v352 = *(a2 - 108);
      v353 = *(a2 - 76);
      *(v11 + 220) = *(a2 - 92);
      *(v11 + 236) = v353;
      *(v11 + 188) = v351;
      *(v11 + 204) = v352;
      v354 = *(a2 - 60);
      v355 = *(a2 - 44);
      v356 = *(a2 - 28);
      *(v11 + 296) = *(a2 - 1);
      *(v11 + 268) = v355;
      *(v11 + 284) = v356;
      *(v11 + 252) = v354;
    }

    else
    {
      v425 = *v11;
      v457 = *(v11 + 16);
      v553 = *(v11 + 64);
      v582 = *(v11 + 80);
      v489 = *(v11 + 32);
      v521 = *(v11 + 48);
      *&v669[12] = *(v11 + 140);
      v640 = *(v11 + 112);
      *v669 = *(v11 + 128);
      v611 = *(v11 + 96);
      v259 = *(a2 - 140);
      *v11 = *v8;
      *(v11 + 16) = v259;
      v260 = *(a2 - 124);
      v261 = *(a2 - 108);
      v262 = *(a2 - 76);
      *(v11 + 64) = *(a2 - 92);
      *(v11 + 80) = v262;
      *(v11 + 32) = v260;
      *(v11 + 48) = v261;
      v263 = *(a2 - 60);
      v264 = *(a2 - 44);
      v265 = *(a2 - 28);
      *(v11 + 140) = *(a2 - 1);
      *(v11 + 112) = v264;
      *(v11 + 128) = v265;
      *(v11 + 96) = v263;
    }

    *v8 = v425;
    *(a2 - 140) = v457;
    *(a2 - 92) = v553;
    *(a2 - 76) = v582;
    *(a2 - 124) = v489;
    *(a2 - 108) = v521;
    result = v611;
    *(a2 - 1) = *&v669[12];
    *(a2 - 44) = v640;
    *(a2 - 28) = *v669;
    *(a2 - 60) = v611;
  }

  return result;
}

double sub_100533730(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 76);
  v5 = *(a3 + 76);
  if (v4 >= *(a1 + 76))
  {
    if (v5 < v4)
    {
      v106 = a2[6];
      v113 = a2[7];
      *v120 = a2[8];
      *&v120[12] = *(a2 + 140);
      v78 = a2[2];
      v85 = a2[3];
      v92 = a2[4];
      v99 = a2[5];
      v64 = *a2;
      v71 = a2[1];
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      v14 = a3[2];
      v15 = a3[3];
      v16 = a3[5];
      a2[4] = a3[4];
      a2[5] = v16;
      a2[2] = v14;
      a2[3] = v15;
      v17 = a3[6];
      v18 = a3[7];
      v19 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v18;
      a2[8] = v19;
      a2[6] = v17;
      a3[6] = v106;
      a3[7] = v113;
      a3[8] = *v120;
      *(a3 + 140) = *&v120[12];
      a3[2] = v78;
      a3[3] = v85;
      a3[4] = v92;
      a3[5] = v99;
      *a3 = v64;
      a3[1] = v71;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v107 = a1[6];
        v114 = a1[7];
        *v121 = a1[8];
        *&v121[12] = *(a1 + 140);
        v79 = a1[2];
        v86 = a1[3];
        v93 = a1[4];
        v100 = a1[5];
        v65 = *a1;
        v72 = a1[1];
        v20 = a2[1];
        *a1 = *a2;
        a1[1] = v20;
        v21 = a2[2];
        v22 = a2[3];
        v23 = a2[5];
        a1[4] = a2[4];
        a1[5] = v23;
        a1[2] = v21;
        a1[3] = v22;
        v24 = a2[6];
        v25 = a2[7];
        v26 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v25;
        a1[8] = v26;
        a1[6] = v24;
        a2[6] = v107;
        a2[7] = v114;
        a2[8] = *v121;
        *(a2 + 140) = *&v121[12];
        a2[2] = v79;
        a2[3] = v86;
        a2[4] = v93;
        a2[5] = v100;
        *a2 = v65;
        a2[1] = v72;
      }
    }
  }

  else
  {
    if (v5 < v4)
    {
      v105 = a1[6];
      v112 = a1[7];
      *v119 = a1[8];
      *&v119[12] = *(a1 + 140);
      v77 = a1[2];
      v84 = a1[3];
      v91 = a1[4];
      v98 = a1[5];
      v63 = *a1;
      v70 = a1[1];
      v6 = a3[1];
      *a1 = *a3;
      a1[1] = v6;
      v7 = a3[2];
      v8 = a3[3];
      v9 = a3[5];
      a1[4] = a3[4];
      a1[5] = v9;
      a1[2] = v7;
      a1[3] = v8;
      v10 = a3[6];
      v11 = a3[7];
      v12 = a3[8];
      *(a1 + 140) = *(a3 + 140);
      a1[7] = v11;
      a1[8] = v12;
      a1[6] = v10;
LABEL_9:
      a3[6] = v105;
      a3[7] = v112;
      a3[8] = *v119;
      *(a3 + 140) = *&v119[12];
      a3[2] = v77;
      a3[3] = v84;
      a3[4] = v91;
      a3[5] = v98;
      *a3 = v63;
      a3[1] = v70;
      goto LABEL_10;
    }

    v108 = a1[6];
    v115 = a1[7];
    *v122 = a1[8];
    *&v122[12] = *(a1 + 140);
    v80 = a1[2];
    v87 = a1[3];
    v94 = a1[4];
    v101 = a1[5];
    v66 = *a1;
    v73 = a1[1];
    v27 = a2[1];
    *a1 = *a2;
    a1[1] = v27;
    v28 = a2[2];
    v29 = a2[3];
    v30 = a2[5];
    a1[4] = a2[4];
    a1[5] = v30;
    a1[2] = v28;
    a1[3] = v29;
    v31 = a2[6];
    v32 = a2[7];
    v33 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v32;
    a1[8] = v33;
    a1[6] = v31;
    a2[6] = v108;
    a2[7] = v115;
    a2[8] = *v122;
    *(a2 + 140) = *&v122[12];
    a2[2] = v80;
    a2[3] = v87;
    a2[4] = v94;
    a2[5] = v101;
    *a2 = v66;
    a2[1] = v73;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v105 = a2[6];
      v112 = a2[7];
      *v119 = a2[8];
      *&v119[12] = *(a2 + 140);
      v77 = a2[2];
      v84 = a2[3];
      v91 = a2[4];
      v98 = a2[5];
      v63 = *a2;
      v70 = a2[1];
      v34 = a3[1];
      *a2 = *a3;
      a2[1] = v34;
      v35 = a3[2];
      v36 = a3[3];
      v37 = a3[5];
      a2[4] = a3[4];
      a2[5] = v37;
      a2[2] = v35;
      a2[3] = v36;
      v38 = a3[6];
      v39 = a3[7];
      v40 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v39;
      a2[8] = v40;
      a2[6] = v38;
      goto LABEL_9;
    }
  }

LABEL_10:
  result = *(a4 + 76);
  if (result < *(a3 + 76))
  {
    v109 = a3[6];
    v116 = a3[7];
    *v123 = a3[8];
    *&v123[12] = *(a3 + 140);
    v81 = a3[2];
    v88 = a3[3];
    v95 = a3[4];
    v102 = a3[5];
    v67 = *a3;
    v74 = a3[1];
    v42 = a4[1];
    *a3 = *a4;
    a3[1] = v42;
    v43 = a4[2];
    v44 = a4[3];
    v45 = a4[5];
    a3[4] = a4[4];
    a3[5] = v45;
    a3[2] = v43;
    a3[3] = v44;
    v46 = a4[6];
    v47 = a4[7];
    v48 = a4[8];
    *(a3 + 140) = *(a4 + 140);
    a3[7] = v47;
    a3[8] = v48;
    a3[6] = v46;
    a4[6] = v109;
    a4[7] = v116;
    a4[8] = *v123;
    *(a4 + 140) = *&v123[12];
    a4[2] = v81;
    a4[3] = v88;
    a4[4] = v95;
    a4[5] = v102;
    *a4 = v67;
    a4[1] = v74;
    result = *(a3 + 76);
    if (result < *(a2 + 76))
    {
      v110 = a2[6];
      v117 = a2[7];
      *v124 = a2[8];
      *&v124[12] = *(a2 + 140);
      v82 = a2[2];
      v89 = a2[3];
      v96 = a2[4];
      v103 = a2[5];
      v68 = *a2;
      v75 = a2[1];
      v49 = a3[1];
      *a2 = *a3;
      a2[1] = v49;
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[5];
      a2[4] = a3[4];
      a2[5] = v52;
      a2[2] = v50;
      a2[3] = v51;
      v53 = a3[6];
      v54 = a3[7];
      v55 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v54;
      a2[8] = v55;
      a2[6] = v53;
      a3[6] = v110;
      a3[7] = v117;
      a3[8] = *v124;
      *(a3 + 140) = *&v124[12];
      a3[2] = v82;
      a3[3] = v89;
      a3[4] = v96;
      a3[5] = v103;
      *a3 = v68;
      a3[1] = v75;
      result = *(a2 + 76);
      if (result < *(a1 + 76))
      {
        v111 = a1[6];
        v118 = a1[7];
        *v125 = a1[8];
        *&v125[12] = *(a1 + 140);
        v83 = a1[2];
        v90 = a1[3];
        v97 = a1[4];
        v104 = a1[5];
        v69 = *a1;
        v76 = a1[1];
        v56 = a2[1];
        *a1 = *a2;
        a1[1] = v56;
        v57 = a2[2];
        v58 = a2[3];
        v59 = a2[5];
        a1[4] = a2[4];
        a1[5] = v59;
        a1[2] = v57;
        a1[3] = v58;
        v60 = a2[6];
        v61 = a2[7];
        v62 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v61;
        a1[8] = v62;
        a1[6] = v60;
        a2[6] = v111;
        a2[7] = v118;
        a2[8] = *v125;
        *(a2 + 140) = *&v125[12];
        a2[2] = v83;
        a2[3] = v90;
        a2[4] = v97;
        a2[5] = v104;
        result = *&v69;
        *a2 = v69;
        a2[1] = v76;
      }
    }
  }

  return result;
}

double sub_100533C0C(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a2 + 76);
  v6 = *(a3 + 76);
  if (v5 >= *(a1 + 76))
  {
    if (v6 < v5)
    {
      v159 = a2[6];
      v170 = a2[7];
      *v181 = a2[8];
      *&v181[12] = *(a2 + 140);
      v115 = a2[2];
      v126 = a2[3];
      v137 = a2[4];
      v148 = a2[5];
      v93 = *a2;
      v104 = a2[1];
      v14 = a3[1];
      *a2 = *a3;
      a2[1] = v14;
      v15 = a3[2];
      v16 = a3[3];
      v17 = a3[5];
      a2[4] = a3[4];
      a2[5] = v17;
      a2[2] = v15;
      a2[3] = v16;
      v18 = a3[6];
      v19 = a3[7];
      v20 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v19;
      a2[8] = v20;
      a2[6] = v18;
      a3[6] = v159;
      a3[7] = v170;
      a3[8] = *v181;
      *(a3 + 140) = *&v181[12];
      a3[2] = v115;
      a3[3] = v126;
      a3[4] = v137;
      a3[5] = v148;
      *a3 = v93;
      a3[1] = v104;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v160 = a1[6];
        v171 = a1[7];
        *v182 = a1[8];
        *&v182[12] = *(a1 + 140);
        v116 = a1[2];
        v127 = a1[3];
        v138 = a1[4];
        v149 = a1[5];
        v94 = *a1;
        v105 = a1[1];
        v21 = a2[1];
        *a1 = *a2;
        a1[1] = v21;
        v22 = a2[2];
        v23 = a2[3];
        v24 = a2[5];
        a1[4] = a2[4];
        a1[5] = v24;
        a1[2] = v22;
        a1[3] = v23;
        v25 = a2[6];
        v26 = a2[7];
        v27 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v26;
        a1[8] = v27;
        a1[6] = v25;
        a2[6] = v160;
        a2[7] = v171;
        a2[8] = *v182;
        *(a2 + 140) = *&v182[12];
        a2[2] = v116;
        a2[3] = v127;
        a2[4] = v138;
        a2[5] = v149;
        *a2 = v94;
        a2[1] = v105;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v158 = a1[6];
      v169 = a1[7];
      *v180 = a1[8];
      *&v180[12] = *(a1 + 140);
      v114 = a1[2];
      v125 = a1[3];
      v136 = a1[4];
      v147 = a1[5];
      v92 = *a1;
      v103 = a1[1];
      v7 = a3[1];
      *a1 = *a3;
      a1[1] = v7;
      v8 = a3[2];
      v9 = a3[3];
      v10 = a3[5];
      a1[4] = a3[4];
      a1[5] = v10;
      a1[2] = v8;
      a1[3] = v9;
      v11 = a3[6];
      v12 = a3[7];
      v13 = a3[8];
      *(a1 + 140) = *(a3 + 140);
      a1[7] = v12;
      a1[8] = v13;
      a1[6] = v11;
LABEL_9:
      a3[6] = v158;
      a3[7] = v169;
      a3[8] = *v180;
      *(a3 + 140) = *&v180[12];
      a3[2] = v114;
      a3[3] = v125;
      a3[4] = v136;
      a3[5] = v147;
      *a3 = v92;
      a3[1] = v103;
      goto LABEL_10;
    }

    v161 = a1[6];
    v172 = a1[7];
    *v183 = a1[8];
    *&v183[12] = *(a1 + 140);
    v117 = a1[2];
    v128 = a1[3];
    v139 = a1[4];
    v150 = a1[5];
    v95 = *a1;
    v106 = a1[1];
    v28 = a2[1];
    *a1 = *a2;
    a1[1] = v28;
    v29 = a2[2];
    v30 = a2[3];
    v31 = a2[5];
    a1[4] = a2[4];
    a1[5] = v31;
    a1[2] = v29;
    a1[3] = v30;
    v32 = a2[6];
    v33 = a2[7];
    v34 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v33;
    a1[8] = v34;
    a1[6] = v32;
    a2[6] = v161;
    a2[7] = v172;
    a2[8] = *v183;
    *(a2 + 140) = *&v183[12];
    a2[2] = v117;
    a2[3] = v128;
    a2[4] = v139;
    a2[5] = v150;
    *a2 = v95;
    a2[1] = v106;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v158 = a2[6];
      v169 = a2[7];
      *v180 = a2[8];
      *&v180[12] = *(a2 + 140);
      v114 = a2[2];
      v125 = a2[3];
      v136 = a2[4];
      v147 = a2[5];
      v92 = *a2;
      v103 = a2[1];
      v35 = a3[1];
      *a2 = *a3;
      a2[1] = v35;
      v36 = a3[2];
      v37 = a3[3];
      v38 = a3[5];
      a2[4] = a3[4];
      a2[5] = v38;
      a2[2] = v36;
      a2[3] = v37;
      v39 = a3[6];
      v40 = a3[7];
      v41 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v40;
      a2[8] = v41;
      a2[6] = v39;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 76) < *(a3 + 76))
  {
    v162 = a3[6];
    v173 = a3[7];
    *v184 = a3[8];
    *&v184[12] = *(a3 + 140);
    v118 = a3[2];
    v129 = a3[3];
    v140 = a3[4];
    v151 = a3[5];
    v96 = *a3;
    v107 = a3[1];
    v42 = a4[1];
    *a3 = *a4;
    a3[1] = v42;
    v43 = a4[2];
    v44 = a4[3];
    v45 = a4[5];
    a3[4] = a4[4];
    a3[5] = v45;
    a3[2] = v43;
    a3[3] = v44;
    v46 = a4[6];
    v47 = a4[7];
    v48 = a4[8];
    *(a3 + 140) = *(a4 + 140);
    a3[7] = v47;
    a3[8] = v48;
    a3[6] = v46;
    a4[6] = v162;
    a4[7] = v173;
    a4[8] = *v184;
    *(a4 + 140) = *&v184[12];
    a4[2] = v118;
    a4[3] = v129;
    a4[4] = v140;
    a4[5] = v151;
    *a4 = v96;
    a4[1] = v107;
    if (*(a3 + 76) < *(a2 + 76))
    {
      v163 = a2[6];
      v174 = a2[7];
      *v185 = a2[8];
      *&v185[12] = *(a2 + 140);
      v119 = a2[2];
      v130 = a2[3];
      v141 = a2[4];
      v152 = a2[5];
      v97 = *a2;
      v108 = a2[1];
      v49 = a3[1];
      *a2 = *a3;
      a2[1] = v49;
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[5];
      a2[4] = a3[4];
      a2[5] = v52;
      a2[2] = v50;
      a2[3] = v51;
      v53 = a3[6];
      v54 = a3[7];
      v55 = a3[8];
      *(a2 + 140) = *(a3 + 140);
      a2[7] = v54;
      a2[8] = v55;
      a2[6] = v53;
      a3[6] = v163;
      a3[7] = v174;
      a3[8] = *v185;
      *(a3 + 140) = *&v185[12];
      a3[2] = v119;
      a3[3] = v130;
      a3[4] = v141;
      a3[5] = v152;
      *a3 = v97;
      a3[1] = v108;
      if (*(a2 + 76) < *(a1 + 76))
      {
        v164 = a1[6];
        v175 = a1[7];
        *v186 = a1[8];
        *&v186[12] = *(a1 + 140);
        v120 = a1[2];
        v131 = a1[3];
        v142 = a1[4];
        v153 = a1[5];
        v98 = *a1;
        v109 = a1[1];
        v56 = a2[1];
        *a1 = *a2;
        a1[1] = v56;
        v57 = a2[2];
        v58 = a2[3];
        v59 = a2[5];
        a1[4] = a2[4];
        a1[5] = v59;
        a1[2] = v57;
        a1[3] = v58;
        v60 = a2[6];
        v61 = a2[7];
        v62 = a2[8];
        *(a1 + 140) = *(a2 + 140);
        a1[7] = v61;
        a1[8] = v62;
        a1[6] = v60;
        a2[6] = v164;
        a2[7] = v175;
        a2[8] = *v186;
        *(a2 + 140) = *&v186[12];
        a2[2] = v120;
        a2[3] = v131;
        a2[4] = v142;
        a2[5] = v153;
        *a2 = v98;
        a2[1] = v109;
      }
    }
  }

  result = *(a5 + 76);
  if (result < *(a4 + 76))
  {
    v165 = a4[6];
    v176 = a4[7];
    *v187 = a4[8];
    *&v187[12] = *(a4 + 140);
    v121 = a4[2];
    v132 = a4[3];
    v143 = a4[4];
    v154 = a4[5];
    v99 = *a4;
    v110 = a4[1];
    v64 = a5[1];
    *a4 = *a5;
    a4[1] = v64;
    v65 = a5[2];
    v66 = a5[3];
    v67 = a5[5];
    a4[4] = a5[4];
    a4[5] = v67;
    a4[2] = v65;
    a4[3] = v66;
    v68 = a5[6];
    v69 = a5[7];
    v70 = a5[8];
    *(a4 + 140) = *(a5 + 140);
    a4[7] = v69;
    a4[8] = v70;
    a4[6] = v68;
    a5[6] = v165;
    a5[7] = v176;
    a5[8] = *v187;
    *(a5 + 140) = *&v187[12];
    a5[2] = v121;
    a5[3] = v132;
    a5[4] = v143;
    a5[5] = v154;
    *a5 = v99;
    a5[1] = v110;
    result = *(a4 + 76);
    if (result < *(a3 + 76))
    {
      v166 = a3[6];
      v177 = a3[7];
      *v188 = a3[8];
      *&v188[12] = *(a3 + 140);
      v122 = a3[2];
      v133 = a3[3];
      v144 = a3[4];
      v155 = a3[5];
      v100 = *a3;
      v111 = a3[1];
      v71 = a4[1];
      *a3 = *a4;
      a3[1] = v71;
      v72 = a4[2];
      v73 = a4[3];
      v74 = a4[5];
      a3[4] = a4[4];
      a3[5] = v74;
      a3[2] = v72;
      a3[3] = v73;
      v75 = a4[6];
      v76 = a4[7];
      v77 = a4[8];
      *(a3 + 140) = *(a4 + 140);
      a3[7] = v76;
      a3[8] = v77;
      a3[6] = v75;
      a4[6] = v166;
      a4[7] = v177;
      a4[8] = *v188;
      *(a4 + 140) = *&v188[12];
      a4[2] = v122;
      a4[3] = v133;
      a4[4] = v144;
      a4[5] = v155;
      *a4 = v100;
      a4[1] = v111;
      result = *(a3 + 76);
      if (result < *(a2 + 76))
      {
        v167 = a2[6];
        v178 = a2[7];
        *v189 = a2[8];
        *&v189[12] = *(a2 + 140);
        v123 = a2[2];
        v134 = a2[3];
        v145 = a2[4];
        v156 = a2[5];
        v101 = *a2;
        v112 = a2[1];
        v78 = a3[1];
        *a2 = *a3;
        a2[1] = v78;
        v79 = a3[2];
        v80 = a3[3];
        v81 = a3[5];
        a2[4] = a3[4];
        a2[5] = v81;
        a2[2] = v79;
        a2[3] = v80;
        v82 = a3[6];
        v83 = a3[7];
        v84 = a3[8];
        *(a2 + 140) = *(a3 + 140);
        a2[7] = v83;
        a2[8] = v84;
        a2[6] = v82;
        a3[6] = v167;
        a3[7] = v178;
        a3[8] = *v189;
        *(a3 + 140) = *&v189[12];
        a3[2] = v123;
        a3[3] = v134;
        a3[4] = v145;
        a3[5] = v156;
        *a3 = v101;
        a3[1] = v112;
        result = *(a2 + 76);
        if (result < *(a1 + 76))
        {
          v168 = a1[6];
          v179 = a1[7];
          *v190 = a1[8];
          *&v190[12] = *(a1 + 140);
          v124 = a1[2];
          v135 = a1[3];
          v146 = a1[4];
          v157 = a1[5];
          v102 = *a1;
          v113 = a1[1];
          v85 = a2[1];
          *a1 = *a2;
          a1[1] = v85;
          v86 = a2[2];
          v87 = a2[3];
          v88 = a2[5];
          a1[4] = a2[4];
          a1[5] = v88;
          a1[2] = v86;
          a1[3] = v87;
          v89 = a2[6];
          v90 = a2[7];
          v91 = a2[8];
          *(a1 + 140) = *(a2 + 140);
          a1[7] = v90;
          a1[8] = v91;
          a1[6] = v89;
          a2[6] = v168;
          a2[7] = v179;
          a2[8] = *v190;
          *(a2 + 140) = *&v190[12];
          a2[2] = v124;
          a2[3] = v135;
          a2[4] = v146;
          a2[5] = v157;
          result = *&v102;
          *a2 = v102;
          a2[1] = v113;
        }
      }
    }
  }

  return result;
}

BOOL sub_100534368(uint64_t a1, uint64_t a2)
{
  v2 = 0x6F96F96F96F96F97 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v11 = (a1 + 156);
      v12 = (a2 - 156);
      v13 = *(a1 + 232);
      v14 = *(a2 - 80);
      if (v13 >= *(a1 + 76))
      {
        if (v14 < v13)
        {
          v226 = *(a1 + 252);
          v241 = *(a1 + 268);
          *v256 = *(a1 + 284);
          *&v256[12] = *(a1 + 296);
          v164 = *(a1 + 188);
          v180 = *(a1 + 204);
          v196 = *(a1 + 220);
          v211 = *(a1 + 236);
          v132 = *v11;
          v148 = *(a1 + 172);
          v40 = *(a2 - 140);
          *v11 = *v12;
          *(a1 + 172) = v40;
          v41 = *(a2 - 124);
          v42 = *(a2 - 108);
          v43 = *(a2 - 76);
          *(a1 + 220) = *(a2 - 92);
          *(a1 + 236) = v43;
          *(a1 + 188) = v41;
          *(a1 + 204) = v42;
          v44 = *(a2 - 60);
          v45 = *(a2 - 44);
          v46 = *(a2 - 28);
          *(a1 + 296) = *(a2 - 16);
          *(a1 + 268) = v45;
          *(a1 + 284) = v46;
          *(a1 + 252) = v44;
          *(a2 - 60) = v226;
          *(a2 - 44) = v241;
          *(a2 - 28) = *v256;
          *(a2 - 16) = *&v256[12];
          *(a2 - 124) = v164;
          *(a2 - 108) = v180;
          *(a2 - 92) = v196;
          *(a2 - 76) = v211;
          *v12 = v132;
          *(a2 - 140) = v148;
          if (*(a1 + 232) < *(a1 + 76))
          {
            v227 = *(a1 + 96);
            v242 = *(a1 + 112);
            *v257 = *(a1 + 128);
            *&v257[12] = *(a1 + 140);
            v165 = *(a1 + 32);
            v181 = *(a1 + 48);
            v197 = *(a1 + 64);
            v212 = *(a1 + 80);
            v133 = *a1;
            v149 = *(a1 + 16);
            v47 = *(a1 + 268);
            *(a1 + 96) = *(a1 + 252);
            *(a1 + 112) = v47;
            *(a1 + 128) = *(a1 + 284);
            *(a1 + 140) = *(a1 + 296);
            v48 = *(a1 + 204);
            *(a1 + 32) = *(a1 + 188);
            *(a1 + 48) = v48;
            v49 = *(a1 + 236);
            *(a1 + 64) = *(a1 + 220);
            *(a1 + 80) = v49;
            v50 = *(a1 + 172);
            *a1 = *v11;
            *(a1 + 16) = v50;
            *(a1 + 252) = v227;
            *(a1 + 268) = v242;
            *(a1 + 284) = *v257;
            *(a1 + 296) = *&v257[12];
            *(a1 + 188) = v165;
            *(a1 + 204) = v181;
            *(a1 + 220) = v197;
            *(a1 + 236) = v212;
            result = 1;
            *v11 = v133;
            v11[1] = v149;
            return result;
          }
        }

        return 1;
      }

      if (v14 >= v13)
      {
        v232 = *(a1 + 96);
        v247 = *(a1 + 112);
        *v262 = *(a1 + 128);
        *&v262[12] = *(a1 + 140);
        v170 = *(a1 + 32);
        v186 = *(a1 + 48);
        v202 = *(a1 + 64);
        v217 = *(a1 + 80);
        v138 = *a1;
        v154 = *(a1 + 16);
        v68 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v68;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v69 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v69;
        v70 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v70;
        v71 = *(a1 + 172);
        *a1 = *v11;
        *(a1 + 16) = v71;
        *(a1 + 252) = v232;
        *(a1 + 268) = v247;
        *(a1 + 284) = *v262;
        *(a1 + 296) = *&v262[12];
        *(a1 + 188) = v170;
        *(a1 + 204) = v186;
        *(a1 + 220) = v202;
        *(a1 + 236) = v217;
        *v11 = v138;
        *(a1 + 172) = v154;
        if (*(a2 - 80) >= *(a1 + 232))
        {
          return 1;
        }

        v223 = *(a1 + 252);
        v238 = *(a1 + 268);
        *v253 = *(a1 + 284);
        *&v253[12] = *(a1 + 296);
        v161 = *(a1 + 188);
        v177 = *(a1 + 204);
        v193 = *(a1 + 220);
        v208 = *(a1 + 236);
        v129 = *v11;
        v145 = *(a1 + 172);
        v72 = *(a2 - 140);
        *v11 = *v12;
        *(a1 + 172) = v72;
        v73 = *(a2 - 124);
        v74 = *(a2 - 108);
        v75 = *(a2 - 76);
        *(a1 + 220) = *(a2 - 92);
        *(a1 + 236) = v75;
        *(a1 + 188) = v73;
        *(a1 + 204) = v74;
        v76 = *(a2 - 60);
        v77 = *(a2 - 44);
        v78 = *(a2 - 28);
        *(a1 + 296) = *(a2 - 16);
        *(a1 + 268) = v77;
        *(a1 + 284) = v78;
        *(a1 + 252) = v76;
      }

      else
      {
        v223 = *(a1 + 96);
        v238 = *(a1 + 112);
        *v253 = *(a1 + 128);
        *&v253[12] = *(a1 + 140);
        v161 = *(a1 + 32);
        v177 = *(a1 + 48);
        v193 = *(a1 + 64);
        v208 = *(a1 + 80);
        v129 = *a1;
        v145 = *(a1 + 16);
        v15 = *(a2 - 140);
        *a1 = *v12;
        *(a1 + 16) = v15;
        v16 = *(a2 - 124);
        v17 = *(a2 - 108);
        v18 = *(a2 - 76);
        *(a1 + 64) = *(a2 - 92);
        *(a1 + 80) = v18;
        *(a1 + 32) = v16;
        *(a1 + 48) = v17;
        v19 = *(a2 - 60);
        v20 = *(a2 - 44);
        v21 = *(a2 - 28);
        *(a1 + 140) = *(a2 - 16);
        *(a1 + 112) = v20;
        *(a1 + 128) = v21;
        *(a1 + 96) = v19;
      }

LABEL_56:
      v12[6] = v223;
      v12[7] = v238;
      v12[8] = *v253;
      *(v12 + 140) = *&v253[12];
      v12[2] = v161;
      v12[3] = v177;
      v12[4] = v193;
      v12[5] = v208;
      result = 1;
      *v12 = v129;
      v12[1] = v145;
      return result;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_100533C0C(a1, (a1 + 156), (a1 + 312), (a1 + 468), (a2 - 156));
      return 1;
    }

    v12 = (a1 + 156);
    v31 = (a1 + 312);
    v32 = *(a1 + 232);
    v33 = *(a1 + 76);
    v34 = (a1 + 388);
    v35 = *(a1 + 388);
    if (v32 >= v33)
    {
      if (v35 < v32)
      {
        v230 = *(a1 + 252);
        v245 = *(a1 + 268);
        *v260 = *(a1 + 284);
        *&v260[12] = *(a1 + 296);
        v168 = *(a1 + 188);
        v184 = *(a1 + 204);
        v200 = *(a1 + 220);
        v215 = *(a1 + 236);
        v136 = *v12;
        v152 = *(a1 + 172);
        v60 = *(a1 + 424);
        *(a1 + 252) = *(a1 + 408);
        *(a1 + 268) = v60;
        *(a1 + 284) = *(a1 + 440);
        *(a1 + 296) = *(a1 + 452);
        v61 = *(a1 + 360);
        *(a1 + 188) = *(a1 + 344);
        *(a1 + 204) = v61;
        v62 = *(a1 + 392);
        *(a1 + 220) = *(a1 + 376);
        *(a1 + 236) = v62;
        v63 = *(a1 + 328);
        *v12 = *v31;
        *(a1 + 172) = v63;
        *(a1 + 408) = v230;
        *(a1 + 424) = v245;
        *(a1 + 440) = *v260;
        *(a1 + 452) = *&v260[12];
        *(a1 + 344) = v168;
        *(a1 + 360) = v184;
        *(a1 + 376) = v200;
        *(a1 + 392) = v215;
        v55 = *(a1 + 232) < v33;
        *v31 = v136;
        *(a1 + 328) = v152;
        if (v55)
        {
          v231 = *(a1 + 96);
          v246 = *(a1 + 112);
          *v261 = *(a1 + 128);
          *&v261[12] = *(a1 + 140);
          v169 = *(a1 + 32);
          v185 = *(a1 + 48);
          v201 = *(a1 + 64);
          v216 = *(a1 + 80);
          v137 = *a1;
          v153 = *(a1 + 16);
          v64 = *(a1 + 268);
          *(a1 + 96) = *(a1 + 252);
          *(a1 + 112) = v64;
          *(a1 + 128) = *(a1 + 284);
          *(a1 + 140) = *(a1 + 296);
          v65 = *(a1 + 204);
          *(a1 + 32) = *(a1 + 188);
          *(a1 + 48) = v65;
          v66 = *(a1 + 236);
          *(a1 + 64) = *(a1 + 220);
          *(a1 + 80) = v66;
          v67 = *(a1 + 172);
          *a1 = *v12;
          *(a1 + 16) = v67;
          *(a1 + 252) = v231;
          *(a1 + 268) = v246;
          *(a1 + 284) = *v261;
          *(a1 + 296) = *&v261[12];
          *(a1 + 188) = v169;
          *(a1 + 204) = v185;
          *(a1 + 220) = v201;
          *(a1 + 236) = v216;
          *v12 = v137;
          *(a1 + 172) = v153;
        }
      }

      goto LABEL_51;
    }

    if (v35 >= v32)
    {
      v234 = *(a1 + 96);
      v249 = *(a1 + 112);
      *v264 = *(a1 + 128);
      *&v264[12] = *(a1 + 140);
      v173 = *(a1 + 32);
      v189 = *(a1 + 48);
      v204 = *(a1 + 64);
      v219 = *(a1 + 80);
      v141 = *a1;
      v157 = *(a1 + 16);
      v99 = *(a1 + 268);
      *(a1 + 96) = *(a1 + 252);
      *(a1 + 112) = v99;
      *(a1 + 128) = *(a1 + 284);
      *(a1 + 140) = *(a1 + 296);
      v100 = *(a1 + 204);
      *(a1 + 32) = *(a1 + 188);
      *(a1 + 48) = v100;
      v101 = *(a1 + 236);
      *(a1 + 64) = *(a1 + 220);
      *(a1 + 80) = v101;
      v102 = *(a1 + 172);
      *a1 = *v12;
      *(a1 + 16) = v102;
      *(a1 + 252) = v234;
      *(a1 + 268) = v249;
      *(a1 + 284) = *v264;
      *(a1 + 296) = *&v264[12];
      *(a1 + 188) = v173;
      *(a1 + 204) = v189;
      *(a1 + 220) = v204;
      *(a1 + 236) = v219;
      v55 = v35 < *(a1 + 232);
      *v12 = v141;
      *(a1 + 172) = v157;
      if (!v55)
      {
LABEL_51:
        if (*(a2 - 80) >= *v34)
        {
          return 1;
        }

        v107 = (a2 - 156);
        v235 = *(a1 + 408);
        v250 = *(a1 + 424);
        *v265 = *(a1 + 440);
        *&v265[12] = *(a1 + 452);
        v174 = *(a1 + 344);
        v190 = *(a1 + 360);
        v205 = *(a1 + 376);
        v220 = *(a1 + 392);
        v142 = *v31;
        v158 = *(a1 + 328);
        v108 = *(a2 - 140);
        *v31 = *(a2 - 156);
        *(a1 + 328) = v108;
        v109 = *(a2 - 124);
        v110 = *(a2 - 108);
        v111 = *(a2 - 76);
        *(a1 + 376) = *(a2 - 92);
        *(a1 + 392) = v111;
        *(a1 + 344) = v109;
        *(a1 + 360) = v110;
        v112 = *(a2 - 60);
        v113 = *(a2 - 44);
        v114 = *(a2 - 28);
        *(a1 + 452) = *(a2 - 16);
        *(a1 + 424) = v113;
        *(a1 + 440) = v114;
        *(a1 + 408) = v112;
        v107[6] = v235;
        v107[7] = v250;
        v107[8] = *v265;
        *(v107 + 140) = *&v265[12];
        v107[2] = v174;
        v107[3] = v190;
        v107[4] = v205;
        v107[5] = v220;
        *v107 = v142;
        v107[1] = v158;
        if (*v34 >= *(a1 + 232))
        {
          return 1;
        }

        v236 = *(a1 + 252);
        v251 = *(a1 + 268);
        *v266 = *(a1 + 284);
        *&v266[12] = *(a1 + 296);
        v175 = *(a1 + 188);
        v191 = *(a1 + 204);
        v206 = *(a1 + 220);
        v221 = *(a1 + 236);
        v143 = *v12;
        v159 = *(a1 + 172);
        v115 = *(a1 + 424);
        *(a1 + 252) = *(a1 + 408);
        *(a1 + 268) = v115;
        *(a1 + 284) = *(a1 + 440);
        *(a1 + 296) = *(a1 + 452);
        v116 = *(a1 + 360);
        *(a1 + 188) = *(a1 + 344);
        *(a1 + 204) = v116;
        v117 = *(a1 + 392);
        *(a1 + 220) = *(a1 + 376);
        *(a1 + 236) = v117;
        v118 = *(a1 + 328);
        *v12 = *v31;
        *(a1 + 172) = v118;
        *(a1 + 408) = v236;
        *(a1 + 424) = v251;
        *(a1 + 440) = *v266;
        *(a1 + 452) = *&v266[12];
        *(a1 + 344) = v175;
        *(a1 + 360) = v191;
        *(a1 + 376) = v206;
        *(a1 + 392) = v221;
        v55 = *(a1 + 232) < *(a1 + 76);
        *v31 = v143;
        *(a1 + 328) = v159;
        if (!v55)
        {
          return 1;
        }

        v223 = *(a1 + 96);
        v238 = *(a1 + 112);
        *v253 = *(a1 + 128);
        *&v253[12] = *(a1 + 140);
        v161 = *(a1 + 32);
        v177 = *(a1 + 48);
        v193 = *(a1 + 64);
        v208 = *(a1 + 80);
        v129 = *a1;
        v145 = *(a1 + 16);
        v119 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v119;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v120 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v120;
        v121 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v121;
        v122 = *(a1 + 172);
        *a1 = *v12;
        *(a1 + 16) = v122;
        goto LABEL_56;
      }

      v225 = *(a1 + 252);
      v240 = *(a1 + 268);
      *v255 = *(a1 + 284);
      *&v255[12] = *(a1 + 296);
      v163 = *(a1 + 188);
      v179 = *(a1 + 204);
      v195 = *(a1 + 220);
      v210 = *(a1 + 236);
      v131 = *v12;
      v147 = *(a1 + 172);
      v103 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v103;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v104 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v104;
      v105 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v105;
      v106 = *(a1 + 328);
      *v12 = *v31;
      *(a1 + 172) = v106;
    }

    else
    {
      v225 = *(a1 + 96);
      v240 = *(a1 + 112);
      *v255 = *(a1 + 128);
      *&v255[12] = *(a1 + 140);
      v163 = *(a1 + 32);
      v179 = *(a1 + 48);
      v195 = *(a1 + 64);
      v210 = *(a1 + 80);
      v131 = *a1;
      v147 = *(a1 + 16);
      v36 = *(a1 + 424);
      *(a1 + 96) = *(a1 + 408);
      *(a1 + 112) = v36;
      *(a1 + 128) = *(a1 + 440);
      *(a1 + 140) = *(a1 + 452);
      v37 = *(a1 + 360);
      *(a1 + 32) = *(a1 + 344);
      *(a1 + 48) = v37;
      v38 = *(a1 + 392);
      *(a1 + 64) = *(a1 + 376);
      *(a1 + 80) = v38;
      v39 = *(a1 + 328);
      *a1 = *v31;
      *(a1 + 16) = v39;
    }

    *(a1 + 408) = v225;
    *(a1 + 424) = v240;
    *(a1 + 440) = *v255;
    *(a1 + 452) = *&v255[12];
    *(a1 + 344) = v163;
    *(a1 + 360) = v179;
    *(a1 + 376) = v195;
    *(a1 + 392) = v210;
    *v31 = v131;
    *(a1 + 328) = v147;
    goto LABEL_51;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 80) < *(a1 + 76))
    {
      v222 = *(a1 + 96);
      v237 = *(a1 + 112);
      *v252 = *(a1 + 128);
      *&v252[12] = *(a1 + 140);
      v160 = *(a1 + 32);
      v176 = *(a1 + 48);
      v192 = *(a1 + 64);
      v207 = *(a1 + 80);
      v128 = *a1;
      v144 = *(a1 + 16);
      v3 = *(a2 - 140);
      *a1 = *(a2 - 156);
      *(a1 + 16) = v3;
      v4 = *(a2 - 124);
      v5 = *(a2 - 108);
      v6 = *(a2 - 76);
      *(a1 + 64) = *(a2 - 92);
      *(a1 + 80) = v6;
      *(a1 + 32) = v4;
      *(a1 + 48) = v5;
      v7 = *(a2 - 60);
      v8 = *(a2 - 44);
      v9 = *(a2 - 28);
      *(a1 + 140) = *(a2 - 16);
      *(a1 + 112) = v8;
      *(a1 + 128) = v9;
      *(a1 + 96) = v7;
      *(a2 - 60) = v222;
      *(a2 - 44) = v237;
      *(a2 - 28) = *v252;
      *(a2 - 16) = *&v252[12];
      *(a2 - 124) = v160;
      *(a2 - 108) = v176;
      *(a2 - 92) = v192;
      *(a2 - 76) = v207;
      *(a2 - 156) = v128;
      result = 1;
      *(a2 - 140) = v144;
      return result;
    }

    return 1;
  }

LABEL_13:
  v22 = a1 + 312;
  v23 = (a1 + 156);
  v24 = *(a1 + 232);
  v25 = *(a1 + 76);
  v26 = *(a1 + 388);
  if (v24 >= v25)
  {
    if (v26 < v24)
    {
      v228 = *(a1 + 252);
      v243 = *(a1 + 268);
      *v258 = *(a1 + 284);
      *&v258[12] = *(a1 + 296);
      v166 = *(a1 + 188);
      v182 = *(a1 + 204);
      v198 = *(a1 + 220);
      v213 = *(a1 + 236);
      v134 = *v23;
      v150 = *(a1 + 172);
      v51 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v51;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v52 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v52;
      v53 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v53;
      v54 = *(a1 + 328);
      *v23 = *v22;
      *(a1 + 172) = v54;
      *(a1 + 408) = v228;
      *(a1 + 424) = v243;
      *(a1 + 440) = *v258;
      *(a1 + 452) = *&v258[12];
      *(a1 + 344) = v166;
      *(a1 + 360) = v182;
      *(a1 + 376) = v198;
      *(a1 + 392) = v213;
      v55 = *(a1 + 232) < v25;
      *v22 = v134;
      *(a1 + 328) = v150;
      if (v55)
      {
        v229 = *(a1 + 96);
        v244 = *(a1 + 112);
        *v259 = *(a1 + 128);
        *&v259[12] = *(a1 + 140);
        v167 = *(a1 + 32);
        v183 = *(a1 + 48);
        v199 = *(a1 + 64);
        v214 = *(a1 + 80);
        v135 = *a1;
        v151 = *(a1 + 16);
        v56 = *(a1 + 268);
        *(a1 + 96) = *(a1 + 252);
        *(a1 + 112) = v56;
        *(a1 + 128) = *(a1 + 284);
        *(a1 + 140) = *(a1 + 296);
        v57 = *(a1 + 204);
        *(a1 + 32) = *(a1 + 188);
        *(a1 + 48) = v57;
        v58 = *(a1 + 236);
        *(a1 + 64) = *(a1 + 220);
        *(a1 + 80) = v58;
        v59 = *(a1 + 172);
        *a1 = *v23;
        *(a1 + 16) = v59;
        *(a1 + 252) = v229;
        *(a1 + 268) = v244;
        *(a1 + 284) = *v259;
        *(a1 + 296) = *&v259[12];
        *(a1 + 188) = v167;
        *(a1 + 204) = v183;
        *(a1 + 220) = v199;
        *(a1 + 236) = v214;
        *v23 = v135;
        *(a1 + 172) = v151;
      }
    }
  }

  else
  {
    if (v26 < v24)
    {
      v224 = *(a1 + 96);
      v239 = *(a1 + 112);
      *v254 = *(a1 + 128);
      *&v254[12] = *(a1 + 140);
      v162 = *(a1 + 32);
      v178 = *(a1 + 48);
      v194 = *(a1 + 64);
      v209 = *(a1 + 80);
      v130 = *a1;
      v146 = *(a1 + 16);
      v27 = *(a1 + 424);
      *(a1 + 96) = *(a1 + 408);
      *(a1 + 112) = v27;
      *(a1 + 128) = *(a1 + 440);
      *(a1 + 140) = *(a1 + 452);
      v28 = *(a1 + 360);
      *(a1 + 32) = *(a1 + 344);
      *(a1 + 48) = v28;
      v29 = *(a1 + 392);
      *(a1 + 64) = *(a1 + 376);
      *(a1 + 80) = v29;
      v30 = *(a1 + 328);
      *a1 = *v22;
      *(a1 + 16) = v30;
LABEL_35:
      *(a1 + 408) = v224;
      *(a1 + 424) = v239;
      *(a1 + 440) = *v254;
      *(a1 + 452) = *&v254[12];
      *(a1 + 344) = v162;
      *(a1 + 360) = v178;
      *(a1 + 376) = v194;
      *(a1 + 392) = v209;
      *v22 = v130;
      *(a1 + 328) = v146;
      goto LABEL_36;
    }

    v233 = *(a1 + 96);
    v248 = *(a1 + 112);
    *v263 = *(a1 + 128);
    *&v263[12] = *(a1 + 140);
    v171 = *(a1 + 32);
    v187 = *(a1 + 48);
    v203 = *(a1 + 64);
    v218 = *(a1 + 80);
    v139 = *a1;
    v155 = *(a1 + 16);
    v79 = *(a1 + 268);
    *(a1 + 96) = *(a1 + 252);
    *(a1 + 112) = v79;
    *(a1 + 128) = *(a1 + 284);
    *(a1 + 140) = *(a1 + 296);
    v80 = *(a1 + 204);
    *(a1 + 32) = *(a1 + 188);
    *(a1 + 48) = v80;
    v81 = *(a1 + 236);
    *(a1 + 64) = *(a1 + 220);
    *(a1 + 80) = v81;
    v82 = *(a1 + 172);
    *a1 = *v23;
    *(a1 + 16) = v82;
    *(a1 + 252) = v233;
    *(a1 + 268) = v248;
    *(a1 + 284) = *v263;
    *(a1 + 296) = *&v263[12];
    *(a1 + 188) = v171;
    *(a1 + 204) = v187;
    *(a1 + 220) = v203;
    *(a1 + 236) = v218;
    v55 = v26 < *(a1 + 232);
    *v23 = v139;
    *(a1 + 172) = v155;
    if (v55)
    {
      v224 = *(a1 + 252);
      v239 = *(a1 + 268);
      *v254 = *(a1 + 284);
      *&v254[12] = *(a1 + 296);
      v162 = *(a1 + 188);
      v178 = *(a1 + 204);
      v194 = *(a1 + 220);
      v209 = *(a1 + 236);
      v130 = *v23;
      v146 = *(a1 + 172);
      v83 = *(a1 + 424);
      *(a1 + 252) = *(a1 + 408);
      *(a1 + 268) = v83;
      *(a1 + 284) = *(a1 + 440);
      *(a1 + 296) = *(a1 + 452);
      v84 = *(a1 + 360);
      *(a1 + 188) = *(a1 + 344);
      *(a1 + 204) = v84;
      v85 = *(a1 + 392);
      *(a1 + 220) = *(a1 + 376);
      *(a1 + 236) = v85;
      v86 = *(a1 + 328);
      *v23 = *v22;
      *(a1 + 172) = v86;
      goto LABEL_35;
    }
  }

LABEL_36:
  v87 = a1 + 468;
  if (a1 + 468 == a2)
  {
    return 1;
  }

  v88 = 0;
  v89 = 0;
  while (1)
  {
    v90 = *(v87 + 76);
    if (v90 < *(v22 + 76))
    {
      v172 = *(v87 + 32);
      *v188 = *(v87 + 48);
      *&v188[12] = *(v87 + 60);
      v140 = *v87;
      v156 = *(v87 + 16);
      v125 = *(v87 + 116);
      v126 = *(v87 + 132);
      v127 = *(v87 + 148);
      v91 = v88;
      v123 = *(v87 + 84);
      v124 = *(v87 + 100);
      while (1)
      {
        v92 = (a1 + v91 + 468);
        v93 = *(a1 + v91 + 424);
        v92[6] = *(a1 + v91 + 408);
        v92[7] = v93;
        v92[8] = *(a1 + v91 + 440);
        *(a1 + v91 + 608) = *(a1 + v91 + 452);
        v94 = *(a1 + v91 + 360);
        v92[2] = *(a1 + v91 + 344);
        v92[3] = v94;
        v95 = *(a1 + v91 + 392);
        v92[4] = *(a1 + v91 + 376);
        v92[5] = v95;
        v96 = *(a1 + v91 + 328);
        *v92 = *(a1 + v91 + 312);
        v92[1] = v96;
        if (v91 == -312)
        {
          break;
        }

        v97 = *(a1 + v91 + 232);
        v91 -= 156;
        if (v90 >= v97)
        {
          v98 = a1 + v91 + 468;
          goto LABEL_44;
        }
      }

      v98 = a1;
LABEL_44:
      *(v98 + 32) = v172;
      *(v98 + 48) = *v188;
      *(v98 + 60) = *&v188[12];
      *v98 = v140;
      *(v98 + 16) = v156;
      *(v98 + 76) = v90;
      *(v98 + 100) = v124;
      *(v98 + 116) = v125;
      *(v98 + 132) = v126;
      *(v98 + 148) = v127;
      ++v89;
      *(v98 + 84) = v123;
      if (v89 == 8)
      {
        return v87 + 156 == a2;
      }
    }

    v22 = v87;
    v88 += 156;
    v87 += 156;
    if (v87 == a2)
    {
      return 1;
    }
  }
}

void sub_100535154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100535170()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

id sub_100535730(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[7];
  v11[6] = a3[6];
  v11[7] = v5;
  v6 = a3[9];
  v11[8] = a3[8];
  v11[9] = v6;
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v8 = a3[5];
  v11[4] = a3[4];
  v11[5] = v8;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  return [a4 onMotionStateNotification:v4 data:v11];
}

id sub_100535CB0(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (a3 * 100.0);
  }

  return [*(*(a1 + 32) + 24) visitEvent:*(a1 + 40) withFamiliarityIndex:v3];
}

void sub_100535CDC(id a1, NSArray *a2, NSError *a3)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (a3)
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v5 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      LODWORD(v32) = [(NSError *)a3 code];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cms mode query motion, error:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v8 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 1026;
      LODWORD(v32) = [(NSArray *)a2 count];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query motion, count:%{public}d}", buf, 0x18u);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(NSArray *)a2 countByEnumeratingWithState:&v23 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      v22 = a2;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if (p_info[248] != -1)
          {
            sub_1018B6480();
          }

          v14 = v7[249];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 startDate];
            v16 = v11;
            v17 = v7;
            v18 = p_info;
            v19 = [v13 endDate];
            v20 = [v13 automotive];
            v21 = [v13 confidence];
            *buf = 68290050;
            v28 = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2114;
            v32 = v15;
            a2 = v22;
            v33 = 2114;
            v34 = v19;
            p_info = v18;
            v7 = v17;
            v11 = v16;
            v35 = 1026;
            v36 = v20;
            v37 = 1026;
            v38 = v21;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query motion, start:%{public, location:escape_only}@, end:%{public, location:escape_only}@, automotive:%{public}hhd, confidence:%{public}d}", buf, 0x32u);
          }
        }

        v10 = [(NSArray *)a2 countByEnumeratingWithState:&v23 objects:v39 count:16];
      }

      while (v10);
    }
  }
}

void sub_100535FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100536054;
  v4[3] = &unk_1024473F0;
  v4[4] = a3;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100536054(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018B64A8();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#cms mode query visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018B64BC();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = *(a1 + 32);
      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      v34 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#cms mode query visit", "{msg%{public}.0s:#cms mode query visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v8 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) count];
      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 1026;
      LODWORD(v34) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode query visit, count:%{public}d}", buf, 0x18u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = *(a1 + 40);
    v10 = [obj countByEnumeratingWithState:&v25 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v13 = &kCTRegistrationRadioAccessTechnologyUnknown_ptr;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [objc_alloc(v13[423]) initWithVisit:*(*(&v25 + 1) + 8 * i)];
          if (p_info[248] != -1)
          {
            sub_1018B6480();
          }

          v16 = v7[249];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v15 arrivalDate];
            v18 = v12;
            v19 = v13;
            v20 = v7;
            v21 = [v15 departureDate];
            v22 = [v15 detectionDate];
            v23 = [v15 hasDepartureDate];
            *buf = 68290050;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2114;
            v34 = v17;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            v35 = 2114;
            v36 = v21;
            v7 = v20;
            v13 = v19;
            v12 = v18;
            v37 = 2114;
            v38 = v22;
            v39 = 1026;
            v40 = v23 ^ 1;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#cms mode query visit, arrive:%{public, location:escape_only}@, end:%{public, location:escape_only}@, detect:%{public, location:escape_only}@, entry:%{public}hhd}", buf, 0x36u);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v41 count:16];
      }

      while (v11);
    }
  }
}

void sub_1005365FC(id a1, NSArray *a2, NSError *a3)
{
  if (a3)
  {
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v4 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1026;
      LODWORD(v17) = [(NSError *)a3 code];
      v5 = "{msg%{public}.0s:#cms mode init motion, error:%{public}d}";
LABEL_6:
      v6 = v4;
      v7 = 24;
LABEL_12:
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, v5, &v12, v7);
    }
  }

  else
  {
    v9 = [(NSArray *)a2 count];
    if (v9)
    {
      v10 = [(NSArray *)a2 lastObject];
      if (qword_1025D47C0 != -1)
      {
        sub_1018B646C();
      }

      v11 = qword_1025D47C8;
      if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68290306;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = [v10 startDate];
        v18 = 2114;
        v19 = [v10 endDate];
        v20 = 1026;
        v21 = [v10 automotive];
        v22 = 1026;
        v23 = [v10 confidence];
        v24 = 1026;
        v25 = v9;
        v5 = "{msg%{public}.0s:#cms mode init motion (skip), start:%{public, location:escape_only}@, end:%{public, location:escape_only}@, automotive:%{public}hhd, confidence:%{public}d, count:%{public}d}";
        v6 = v11;
        v7 = 56;
        goto LABEL_12;
      }
    }

    else
    {
      if (qword_1025D47C0 != -1)
      {
        sub_1018B646C();
      }

      v4 = qword_1025D47C8;
      if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68289282;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        v16 = 1026;
        LODWORD(v17) = 0;
        v5 = "{msg%{public}.0s:#cms mode init motion, count:%{public}d}";
        goto LABEL_6;
      }
    }
  }
}

void sub_100536858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005368D8;
  block[3] = &unk_102447468;
  block[4] = a3;
  block[5] = a2;
  block[6] = v3;
  dispatch_async(v4, block);
}

void sub_1005368D8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018B64A8();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      *v24 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#cms mode init visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018B64BC();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = *(a1 + 32);
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      *v24 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#cms mode init visit", "{msg%{public}.0s:#cms mode init visit, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    v6 = [[CLVisit alloc] initWithVisit:{objc_msgSend(*(a1 + 40), "firstObject")}];
    [v6 coordinate];
    v18[6] = v7;
    v18[7] = v8;
    if (qword_1025D47C0 != -1)
    {
      sub_1018B646C();
    }

    v9 = qword_1025D47C8;
    if (os_log_type_enabled(qword_1025D47C8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = LocationLogEncryptionDataSize();
      v11 = LocationLogEncryptionEncryptData();
      v12 = LocationLogEncryptionDataSize();
      v13 = LocationLogEncryptionEncryptData();
      [v6 horizontalAccuracy];
      *buf = 68291331;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1040;
      *v24 = v10;
      *&v24[4] = 2098;
      *&v24[6] = v11;
      v25 = 1040;
      v26 = v12;
      v27 = 2098;
      v28 = v13;
      v29 = 2050;
      v30 = v14;
      v31 = 2113;
      v32 = [v6 arrivalDate];
      v33 = 2113;
      v34 = [v6 departureDate];
      v35 = 2117;
      v36 = [v6 _placeInference];
      v37 = 1026;
      v38 = [v6 hasDepartureDate] ^ 1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cms mode init visit, visit.coordinate.latitude:%{public, location:Encrypted_latitude}.*P, visit.coordinate.longitude:%{public, location:Encrypted_longitude}.*P, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@, entry:%{public}hhd}", buf, 0x60u);
    }

    v15 = [v6 hasDepartureDate];
    v16 = *(a1 + 48);
    if (v15)
    {
      [*(v16 + 24) visitEvent:v6 withFamiliarityIndex:0];
    }

    else
    {
      v17 = *(v16 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100536C7C;
      v18[3] = &unk_10245C918;
      v18[4] = v16;
      v18[5] = v6;
      [v17 getFamiliarityIndexForVisit:v6 withReply:v18];
    }
  }
}

id sub_100536C7C(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = (a3 * 100.0);
  }

  return [*(*(a1 + 32) + 24) visitEvent:*(a1 + 40) withFamiliarityIndex:v3];
}

uint64_t sub_100536F78(uint64_t a1)
{
  *a1 = off_10245C9E8;
  pthread_mutex_destroy(*(a1 + 8));
  v2 = *(a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    free(v3);
    v2 = *(a1 + 8);
    *(v2 + 104) = 0;
  }

  [*(v2 + 64) assertInside];

  if (*(a1 + 8))
  {
    operator delete();
  }

  return a1;
}

void sub_100537010(uint64_t a1)
{
  sub_100536F78(a1);

  operator delete();
}

BOOL sub_100537088(uint64_t a1)
{
  [*(*(a1 + 8) + 64) assertInside];
  v2 = *(*(a1 + 8) + 80);
  return v2 != pthread_self();
}

pthread_cond_t **sub_1005370D0(pthread_cond_t **a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
  *a1 = v2;
  pthread_cond_init(v2, 0);
  return a1;
}

pthread_cond_t **sub_100537118(pthread_cond_t **a1)
{
  pthread_cond_destroy(*a1);
  free(*a1);
  return a1;
}

void sub_100537154(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 4;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 4;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    if (v6[4])
    {
      goto LABEL_6;
    }

LABEL_13:
    if (qword_1025D45A0 != -1)
    {
      sub_1018B6E88();
    }

    v14 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a1 + 24);
      *buf = 67109376;
      *&buf[4] = 4;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B6E44(buf);
      v53 = *(a1 + 24);
      v64 = 67109376;
      *v65 = 4;
      *&v65[4] = 1024;
      *&v65[6] = v53;
      v54 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = imufm::AccessoryDMInternal, Strategy = AccessoryDMConverter]", "%s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    __src = 0;
    v62 = 0;
    v63 = 0;
    goto LABEL_74;
  }

  if (v9 != 1 || (*(v6 + 33) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (!v7)
  {
    v11 = 0;
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *(a1 + 24);
  v13 = v8;
LABEL_21:
  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (v16 < v17)
  {
    __src = 0;
    v62 = 0;
    v63 = 0;
    if (v13)
    {
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  v18 = vabdd_f64(v16, v17);
  v19 = v18 * 1.00999999 * 50.0;
  if (v19 >= 0x200)
  {
    v20 = 512;
  }

  else
  {
    v20 = v19;
  }

  __src = 0;
  v62 = 0;
  v63 = 0;
  v60 = v13;
  sub_100538CD0(&__src, v20);
  if (!v11[49])
  {
    goto LABEL_72;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = (v9 ? sub_1004F7CF0(v11 + 48, v21) + 8 : sub_1004F7CF0(v11 + 48, v21));
    v27 = *v26;
    if (*v26 >= v17)
    {
      break;
    }

LABEL_54:
    if (++v21 >= v11[49])
    {
      if (!v11[49])
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  if (v27 <= v16)
  {
    if (v27 >= v17 && v27 < v16)
    {
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v22 = 1;
      }

      v29 = sub_1004F7CF0(v11 + 48, v21);
      v30 = *(v29 + 16);
      HIDWORD(v30) = *(v29 + 32);
      v31 = *(v29 + 48);
      v32 = vextq_s8(vextq_s8(*(v29 + 32), *(v29 + 32), 0xCuLL), v31, 8uLL);
      *buf = v30;
      *&buf[16] = v32;
      v33 = vextq_s8(v31, v31, 8uLL);
      *v74 = v33.i64[0];
      sub_10011E648(&buf[24], v33);
      v34 = v62;
      if (v62 >= v63)
      {
        v38 = __src;
        v39 = v62 - __src;
        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - __src) >> 3);
        v41 = v40 + 1;
        if (v40 + 1 > 0x666666666666666)
        {
          sub_10028C64C();
        }

        if (0x999999999999999ALL * ((v63 - __src) >> 3) > v41)
        {
          v41 = 0x999999999999999ALL * ((v63 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v63 - __src) >> 3) >= 0x333333333333333)
        {
          v41 = 0x666666666666666;
        }

        if (v41)
        {
          sub_10045EA08(&__src, v41);
        }

        v42 = 8 * ((v62 - __src) >> 3);
        v43 = *buf;
        v44 = *&buf[16];
        *(v42 + 32) = *v74;
        *v42 = v43;
        *(v42 + 16) = v44;
        v37 = 40 * v40 + 40;
        v45 = (40 * v40 - v39);
        memcpy((v42 - v39), v38, v39);
        v46 = __src;
        __src = v45;
        v62 = v37;
        v63 = 0;
        if (v46)
        {
          operator delete(v46);
        }

        v13 = v60;
      }

      else
      {
        v35 = *buf;
        v36 = *&buf[16];
        *(v62 + 4) = *v74;
        *v34 = v35;
        v34[1] = v36;
        v37 = v34 + 40;
      }

      v62 = v37;
      v24 = 1;
      v25 = v21;
    }

    goto LABEL_54;
  }

  if (!v11[49])
  {
    goto LABEL_72;
  }

LABEL_58:
  v47 = (v18 * 50.0) + 858993459 * ((v62 - __src) >> 3);
  if (v47 < 0)
  {
    v47 = -v47;
  }

  if (v47 <= (v18 * 0.0500000007 * 50.0))
  {
    goto LABEL_72;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018B6E88();
    v13 = v60;
  }

  v48 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    if (v22)
    {
      v49 = v23;
    }

    else
    {
      v49 = 0;
    }

    v50 = *sub_1004F7CF0(v11 + 48, v49);
    if (v24)
    {
      v51 = v25;
    }

    else
    {
      v51 = 0;
    }

    v52 = *sub_1004F7CF0(v11 + 48, v51);
    *buf = 134219008;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    *&buf[22] = 2048;
    *&buf[24] = v50;
    *v74 = 2048;
    *&v74[2] = v52;
    v75 = 2048;
    v76 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - __src) >> 3);
    _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B6E44(buf);
    if (v22)
    {
      v55 = v23;
    }

    else
    {
      v55 = 0;
    }

    v56 = *sub_1004F7CF0(v11 + 48, v55);
    if (v24)
    {
      v57 = v25;
    }

    else
    {
      v57 = 0;
    }

    v58 = *sub_1004F7CF0(v11 + 48, v57);
    v64 = 134219008;
    *v65 = v17;
    *&v65[8] = 2048;
    v66 = v16;
    v67 = 2048;
    v68 = v56;
    v69 = 2048;
    v70 = v58;
    v71 = 2048;
    v72 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - __src) >> 3);
    v59 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = imufm::AccessoryDMInternal, Strategy = AccessoryDMConverter]", "%s\n", v59);
    if (v59 != buf)
    {
      free(v59);
    }

    v13 = v60;
    if (v60)
    {
LABEL_73:
      sub_100008080(v13);
    }
  }

  else
  {
LABEL_72:
    if (v13)
    {
      goto LABEL_73;
    }
  }

LABEL_74:
  if (v8)
  {
    sub_100008080(v8);
  }

  *a2 = mach_continuous_time();
  sub_10000EC00((a2 + 8), "com.apple.fm.coremotion.imu_v1.base");
  sub_100537A24(&__src, (a2 + 32));
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }
}

void sub_10053788C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  if (v24)
  {
    sub_100008080(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100537A24(void *a1@<X0>, void *a2@<X8>)
{
  __dst.i64[0] = 0x10000000006;
  sub_100538D90(v42, &__dst, 0.0);
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    if (v7 >= 0x100)
    {
      v7 = 256;
    }

    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 40 * v7;
    do
    {
      v9 = *a1 + v5;
      __dst = *(v9 + 24);
      v10 = *v9;
      v11 = *(v9 + 4);
      v13 = *(v9 + 8);
      v12 = *(v9 + 12);
      v14 = *(v9 + 16);
      v15 = *(v9 + 20);
      v34 = sub_100AEA718(&__dst, __dst);
      v35 = v16;
      v36 = __PAIR64__(v18, v17);
      v19.f32[0] = sub_100AEA7D0(&v34, v10, v11, v13);
      v20 = v19.i32[0];
      v22 = v21;
      v24 = v23;
      v34 = sub_100AEA718(&__dst, v19);
      v35 = v25;
      v36 = __PAIR64__(v27, v26);
      v28 = sub_100AEA7D0(&v34, v12, v14, v15);
      v29 = v42[0];
      *(v42[0] + v6) = v20;
      v30 = v43;
      v29[(v6 + v43)] = v22;
      v29[(v6 + 2 * v30)] = v24;
      *&v29[(v6 + 3 * v30)] = v28;
      v29[(v6 + 4 * v30)] = v31;
      v29[(v6++ + 5 * v30)] = v32;
      v5 += 40;
    }

    while (v8 != v5);
  }

  sub_10000EC00(v40, "audio_accessory_device_motion");
  v44 = 1;
  v45 = v42[3];
  sub_100538E58(v33, &v44, v42);
  sub_100537D24(v33, &v34);
  sub_100538A58(&__dst, v40, &v34);
  sub_100538F7C(a2, &__dst, 1);
  if (__p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(__dst.i64[0]);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }
}

void sub_100537CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_100538AF4(&a38);
  sub_100538B48(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void *sub_100537D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_1004579D4(a2 + 8, a1 + 24, a1 + 36, 3uLL);
  sub_100538EFC((a2 + 32), *(a1 + 8) - *a1);
  return memcpy(*(a2 + 32), *a1, *(a2 + 40) - *(a2 + 32));
}

void sub_100537DA4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100537DC0(uint64_t a1)
{
  sub_10003848C(v35);
  sub_100038730(&v36, "IMUFM Response | ", 17);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = sub_100038730(&v36, "FAILURE | error_msg: { ", 23);
      v6 = *(a1 + 40);
      v5 = a1 + 40;
      v4 = v6;
      v7 = *(v5 + 23);
      if (v7 >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v7 >= 0)
      {
        v9 = *(v5 + 23);
      }

      else
      {
        v9 = *(v5 + 8);
      }

      v10 = sub_100038730(v3, v8, v9);
      v11 = sub_100038730(v10, " }", 2);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  else
  {
    sub_100038730(&v36, "SUCCESS | ", 10);
    v13 = *(a1 + 16);
    if (v13 != (a1 + 24))
    {
      do
      {
        v14 = sub_100038730(&v36, "{ ", 2);
        v15 = *(v13 + 55);
        if (v15 >= 0)
        {
          v16 = (v13 + 4);
        }

        else
        {
          v16 = v13[4];
        }

        if (v15 >= 0)
        {
          v17 = *(v13 + 55);
        }

        else
        {
          v17 = v13[5];
        }

        v18 = sub_100038730(v14, v16, v17);
        sub_100038730(v18, " : [", 4);
        sub_1005392EC(&__dst, (v13 + 7));
        for (i = 0; ; i += 4)
        {
          sub_100038730(&v36, " ", 1);
          v20 = v36;
          *(&v38[-1].__locale_ + *(v36 - 24)) = *(&v38[-1].__locale_ + *(v36 - 24)) & 0xFFFFFEFB | 4;
          *(&v38[0].__locale_ + *(v20 - 24)) = 4;
          std::ostream::operator<<();
          if (i == 16)
          {
            break;
          }

          sub_100038730(&v36, ",", 1);
        }

        v21 = sub_100038730(&v36, "] }", 3);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v44, &std::ctype<char>::id);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v44);
        std::ostream::put();
        std::ostream::flush();
        if (__dst.__locale_)
        {
          locale = __dst.__locale_;
          operator delete(__dst.__locale_);
        }

        v23 = v13[1];
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
            v24 = v13[2];
            v25 = *v24 == v13;
            v13 = v24;
          }

          while (!v25);
        }

        v13 = v24;
      }

      while (v24 != (a1 + 24));
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018B6E88();
  }

  v26 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    if ((v43 & 0x10) != 0)
    {
      v28 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v28 = v39;
      }

      v29 = v38[4].__locale_;
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v27 = 0;
        v50 = 0;
LABEL_44:
        *(&__dst.__locale_ + v27) = 0;
        p_dst = &__dst;
        if (v50 < 0)
        {
          p_dst = __dst.__locale_;
        }

        *v44 = 136315138;
        *&v44[4] = p_dst;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "%s", v44, 0xCu);
        if (v50 < 0)
        {
          operator delete(__dst.__locale_);
        }

        goto LABEL_48;
      }

      v29 = v38[1].__locale_;
      v28 = v38[3].__locale_;
    }

    v27 = v28 - v29;
    if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v50 = v28 - v29;
    if (v27)
    {
      memmove(&__dst, v29, v27);
    }

    goto LABEL_44;
  }

LABEL_48:
  if (sub_10000A100(121, 2))
  {
    sub_1018B6E44(&__dst);
    sub_10003DD04(&v37, v44);
    if (v45 >= 0)
    {
      v33 = v44;
    }

    else
    {
      v33 = *v44;
    }

    v46 = 136315138;
    v47 = v33;
    v34 = _os_log_send_and_compose_impl();
    if (v45 < 0)
    {
      operator delete(*v44);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void imufm::utils::LogModelManagerResponse(const motion::fm::ModelManagerResponse &)", "%s\n", v34);
    if (v34 != &__dst)
    {
      free(v34);
    }
  }

  v36 = v31;
  if (v41 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100538490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::locale a54, uint64_t a55)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100538514(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = a3;
  sub_10000EC00(v24, "embeddings");
  v6 = sub_10045EF04(a1 + 16, v24);
  v7 = v6;
  if (a1 + 24 == v6)
  {
    goto LABEL_30;
  }

  v17 = *(v6 + 56);
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10038EB38(&__p, *(v6 + 64), *(v6 + 72), (*(v6 + 72) - *(v6 + 64)) >> 2);
  __src = 0;
  v22 = 0;
  v23 = 0;
  sub_10001676C(&__src, *(v7 + 88), *(v7 + 96), *(v7 + 96) - *(v7 + 88));
  if (v17)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018B6E88();
    }

    v8 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "IMUFM: Expecting float embeddings", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_26;
    }

    sub_1018B6E44(buf);
    LOWORD(v26) = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v9);
  }

  else
  {
    v10 = v19 - __p;
    if (v19 - __p == 8)
    {
      v11 = *__p;
      if (*__p == 1)
      {
        v12 = motion::fm::ArrayData::NumElements(&v17);
        v13 = motion::fm::ArrayData::BytesLength(&v17);
        v26 = 0;
        sub_100538BBC(buf, v12);
        memcpy(*&buf[0], __src, v13);
        if (v5 != buf)
        {
          sub_100731D80((a2 + 8), *&buf[0], *(&buf[0] + 1), (*(&buf[0] + 1) - *&buf[0]) >> 2);
        }

        if (*&buf[0])
        {
          *(&buf[0] + 1) = *&buf[0];
          operator delete(*&buf[0]);
        }

        goto LABEL_26;
      }

      if (qword_1025D45A0 != -1)
      {
        sub_1018B6E88();
      }

      v16 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 67109120;
        DWORD1(buf[0]) = v11;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "IMUFM: Expecting a single batch in the embeddings result, received %u", buf, 8u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_26;
      }

      sub_1018B6E44(buf);
      v26 = 67109120;
      LODWORD(v27) = v11;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v9);
    }

    else
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018B6E88();
      }

      v14 = v10 >> 2;
      v15 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "IMUFM: Expecting two dimensions from embeddings, recevied %lu", buf, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_26;
      }

      sub_1018B6E44(buf);
      v26 = 134217984;
      v27 = v14;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CMIMUFoundationModelResult imufm::utils::ResultFromModelManagerResponse(CFAbsoluteTime, CFAbsoluteTime, const motion::fm::ModelManagerResponse &)", "%s\n", v9);
    }
  }

  if (v9 != buf)
  {
    free(v9);
  }

LABEL_26:
  if (__src)
  {
    v22 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

LABEL_30:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1005389B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  sub_100538B48(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v27 + 16) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

char *sub_100538A58(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 6) = *a3;
  *(__dst + 5) = 0;
  *(__dst + 6) = 0;
  *(__dst + 4) = 0;
  *(__dst + 2) = *(a3 + 8);
  *(__dst + 6) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  *(__dst + 9) = 0;
  *(__dst + 56) = *(a3 + 32);
  *(__dst + 9) = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return __dst;
}

uint64_t sub_100538AF4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100538B48(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_100538BBC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10038EBB4(result, a2);
  }

  return result;
}

void sub_100538CB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100538CD0(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_10045EA08(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void *sub_100538D90(void *a1, uint64_t a2, float a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100538DDC(a1, a2, a3);
  return a1;
}

void sub_100538DC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_100538DDC(uint64_t a1, uint64_t a2, float a3)
{
  v9 = a3;
  *(a1 + 24) = *a2;
  *(a1 + 32) = *(a2 + 4) | dword_100000000;
  v4 = *(a2 + 4) * *a2;
  *(a1 + 40) = v4;
  sub_100538BBC(&v7, v4);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_100538E58(uint64_t a1, uint64_t *a2, char **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *a2;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 24) = v4;
  *(a1 + 36) = (*(a2 + 1) * *(a2 + 2)) | (*(a2 + 2) << 32);
  *(a1 + 44) = 1;
  *(a1 + 48) = *(a2 + 1) * *a2 * *(a2 + 2);
  if (a1 != a3)
  {
    sub_100731D80(a1, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return a1;
}

void sub_100538EE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100538EFC(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000166A8(result, a2);
  }

  return result;
}

void sub_100538F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100538F7C(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 80 * a3;
    do
    {
      sub_100539000(a1, v4, a2);
      a2 += 10;
      v6 -= 80;
    }

    while (v6);
  }

  return a1;
}

void *sub_100539000(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100249FD8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100539084();
  }

  return result;
}

void sub_1005390FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005391E4(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100539118(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 6);
  __dst[4] = 0;
  *(__dst + 6) = v5;
  __dst[5] = 0;
  __dst[6] = 0;
  sub_10038EB38((__dst + 4), *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  __dst[7] = 0;
  __dst[8] = 0;
  __dst[9] = 0;
  sub_10001676C((__dst + 7), *(a2 + 7), *(a2 + 8), *(a2 + 8) - *(a2 + 7));
  return __dst;
}

void sub_1005391B0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005391E4(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 11);
    if (v3)
    {
      *(__p + 12) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 8);
    if (v4)
    {
      *(__p + 9) = v4;
      operator delete(v4);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100539268(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100539268(a1, *a2);
    sub_100539268(a1, *(a2 + 1));
    v4 = *(a2 + 11);
    if (v4)
    {
      *(a2 + 12) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      *(a2 + 9) = v5;
      operator delete(v5);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1005392EC(uint64_t a1, motion::fm::ArrayData *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v4)
  {
    memmove((a1 + 24), v4, v5 - v4);
  }

  v6 = *(a1 + 28);
  v7 = *(a1 + 24) * v6;
  *(a1 + 32) = v6 | dword_100000000;
  *(a1 + 40) = v7;
  sub_100538BBC(&v13, v7);
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  v12 = v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  v9 = *(a2 + 4);
  v10 = motion::fm::ArrayData::BytesLength(a2);
  memcpy(v12, v9, v10);
  return a1;
}

void sub_1005393B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005393D4()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10053944C()
{
  v1 = 4;
  qword_102656CD8 = 0;
  unk_102656CE0 = 0;
  qword_102656CD0 = 0;
  sub_1004579D4(&qword_102656CD0, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656CD0, dword_100000000);
}

void sub_1005394C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_100539660(v7, a4);
  motion::fm::Client::sendModelManagerRequestAsync();
  sub_1005396F8(v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void *sub_1005395B8(void *a1)
{
  *a1 = off_10245CAD0;
  motion::fm::Client::~Client((a1 + 1));
  return a1;
}

void sub_1005395FC(void *a1)
{
  *a1 = off_10245CAD0;
  motion::fm::Client::~Client((a1 + 1));

  operator delete();
}

uint64_t sub_100539660(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005396F8(uint64_t a1)
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

void sub_100539778()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1005397F0()
{
  v1 = 4;
  qword_102656CF0 = 0;
  unk_102656CF8 = 0;
  qword_102656CE8 = 0;
  sub_1004579D4(&qword_102656CE8, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656CE8, dword_100000000);
}

void sub_100539864(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = off_10245CB20;
  *(a1 + 8) = off_10245CB70;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v3 = *a3;
  v4 = a3[1];
  *(a1 + 64) = *(a3 + 4);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  sub_10053A7EC((a1 + 72));
}

void sub_1005398FC(_Unwind_Exception *a1)
{
  *(v1 + 72) = off_10245CC08;
  sub_10053A3DC((v1 + 88));
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100539968(uint64_t a1)
{
  *a1 = off_10245CC08;
  sub_10053A3DC((a1 + 16));
  return a1;
}

uint64_t sub_1005399B0(uint64_t a1)
{
  *a1 = off_10245CB20;
  *(a1 + 8) = off_10245CB70;

  *(a1 + 72) = off_10245CC08;
  sub_10053A3DC((a1 + 88));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100539A80(uint64_t a1)
{
  sub_1005399B0(a1);

  operator delete();
}

void sub_100539AB8(uint64_t a1)
{
  sub_1005399B0(a1 - 8);

  operator delete();
}

uint64_t sub_100539B74(uint64_t a1)
{
  sub_100539F74((a1 + 24));
  v3 = a1;
  sub_100539FC4(&v3);
  return a1;
}