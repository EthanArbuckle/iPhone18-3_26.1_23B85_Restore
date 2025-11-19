void sub_1003B7588(_Unwind_Exception *a1)
{
  v2 = STACK[0x480];
  if (STACK[0x480])
  {
    STACK[0x488] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

double sub_1003B75E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(a1 + 232) < a3)
  {
    *(a1 + 232) = a3;
    *sub_1003AFDBC(a1 + 160, 0) = a4;
    *sub_1003AFDBC(a1 + 160, 1u) = a5;
    *sub_1003AFDBC(a1 + 160, 2u) = a6;
    sub_1003B66BC(a1);
    sub_1003B6C78(a1);
  }

  *a2 = *(a1 + 24);
  *(a2 + 5) = *(a1 + 29);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  sub_1003BB9A8(a2 + 16, *(a1 + 40), *(a1 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6));
  result = *(a1 + 64);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1003B76B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 563) == 1)
  {
    *(a1 + 563) = 0;
    if (*(a1 + 360) != *(a1 + 368))
    {
      sub_1003B83F8(a1);
    }
  }

  v83 = 0x100000003;
  v82 = xmmword_10056EDA0;
  v81 = off_1009A8F78;
  v84 = &v85;
  sub_1003A8C00(&v81, 3, 1);
  sub_1003A8C50(&v81, 0.0);
  v78 = 0x100000004;
  v77 = xmmword_10056ED80;
  v76 = off_1009A8EE8;
  v79 = &v80;
  sub_1003A8C00(&v76, 4, 1);
  sub_1003A8C50(&v76, 0.0);
  v73 = 0x100000003;
  v72 = xmmword_10056EDA0;
  v71 = off_1009A8F78;
  v74 = &v75;
  sub_1003A8C00(&v71, 3, 1);
  sub_1003A8C50(&v71, 0.0);
  v6 = 0;
  v7 = (a2 + 152);
  do
  {
    v8 = *(v7 - 7);
    *sub_1003AFDBC(&v81, v6) = v8;
    v9 = *(v7 - 4);
    *sub_1003AFDBC(&v76, v6) = v9;
    v10 = *v7;
    *sub_1003AFDBC(&v71, v6++) = v10;
    ++v7;
  }

  while (v6 != 3);
  v11 = *(a2 + 144);
  *sub_1003AFDBC(&v76, 3u) = v11;
  sub_10041511C(&v76, v70);
  v97 = 0x100000003;
  *&buf[8] = xmmword_10056EDA0;
  *buf = off_1009A8F78;
  v98 = v99;
  sub_1003A90A8(v70, a1 + 240, buf);
  v67 = 0x100000003;
  v65 = off_1009A8F78;
  v66 = xmmword_10056EDA0;
  v68 = &v69;
  sub_1003A8EBC(&v81, buf, &v65);
  v12 = *a2;
  *(a1 + 312) = *a2;
  if (v12 > *(a1 + 224))
  {
    sub_1003A8CFC(a1 + 96, &v81);
    v12 = *a2;
    *(a1 + 224) = *a2;
  }

  if (v12 > *(a1 + 232))
  {
    sub_1003A8CFC(a1 + 160, &v71);
    *(a1 + 232) = *a2;
  }

  v13 = *(a2 + 16);
  if (v13 <= 0.0 || *(a2 + 8) < -1.0)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004C9D60(a2, v14, v13);
    }

    goto LABEL_70;
  }

  v15 = *(a1 + 368);
  if (v15 == *(a1 + 360))
  {
    goto LABEL_43;
  }

  v62 = 0x100000003;
  v60 = off_1009A8F78;
  v61 = xmmword_10056EDA0;
  v63 = v64;
  sub_1003A920C(&v65, v15 - 136, &v60);
  v93 = 0x100000003;
  v92 = xmmword_10056EDA0;
  v91 = off_1009A8F78;
  v94 = v95;
  v97 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v98 = v99;
  v88 = 0x100000003;
  v87 = xmmword_10056EDA0;
  v86 = off_1009A8F78;
  v89 = v90;
  sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
  v17 = v16;
  v62 = 0x100000003;
  v60 = off_1009A8F78;
  v61 = xmmword_10056EDA0;
  v63 = v64;
  sub_1003A920C(a1 + 160, v15 - 64, &v60);
  v93 = 0x100000003;
  v92 = xmmword_10056EDA0;
  v91 = off_1009A8F78;
  v94 = v95;
  v97 = 0x100000134;
  *&buf[8] = xmmword_10056EEA0;
  *buf = off_1009A9168;
  v98 = v99;
  v88 = 0x100000003;
  v87 = xmmword_10056EDA0;
  v86 = off_1009A8F78;
  v89 = v90;
  sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
  v19 = v17 + v18;
  v20 = *(a2 + 8);
  v21 = *(v15 - 168);
  v22 = v20 - v21;
  if (v20 - v21 <= 0.0)
  {
    if ((fabs(v22) - v19) / *(a2 + 16) > 6.0)
    {
      v24 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v97 = *&v19;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,nLoS->LoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
      }

      v25 = *(a1 + 360);
      if (v25 != *(a1 + 368))
      {
        do
        {
          v62 = 0x100000003;
          v60 = off_1009A8F78;
          v61 = xmmword_10056EDA0;
          v63 = v64;
          sub_1003A920C(&v65, v25 + 40, &v60);
          v93 = 0x100000003;
          v92 = xmmword_10056EDA0;
          v91 = off_1009A8F78;
          v94 = v95;
          v97 = 0x100000134;
          *&buf[8] = xmmword_10056EEA0;
          *buf = off_1009A9168;
          v98 = v99;
          v88 = 0x100000003;
          v87 = xmmword_10056EDA0;
          v86 = off_1009A8F78;
          v89 = v90;
          sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
          v27 = v26;
          v62 = 0x100000003;
          v60 = off_1009A8F78;
          v61 = xmmword_10056EDA0;
          v63 = v64;
          sub_1003A920C(&v71, v25 + 112, &v60);
          v93 = 0x100000003;
          v92 = xmmword_10056EDA0;
          v91 = off_1009A8F78;
          v94 = v95;
          v97 = 0x100000134;
          *&buf[8] = xmmword_10056EEA0;
          *buf = off_1009A9168;
          v98 = v99;
          v88 = 0x100000003;
          v87 = xmmword_10056EDA0;
          v86 = off_1009A8F78;
          v89 = v90;
          sub_1003AFEC0(&v60, &v91, buf, &v86, "2");
          v29 = v27 + v28;
          v30 = *(v25 + 8);
          if ((v30 - *(a2 + 8) - v29) / *(a2 + 16) <= 6.0)
          {
            v25 += 176;
            v32 = *(a1 + 368);
          }

          else
          {
            v31 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              v35 = *v25;
              *buf = 134218240;
              *&buf[4] = v35;
              *&buf[12] = 2048;
              *&buf[14] = v30;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,Removing measurement at time %f s with range %f m", buf, 0x16u);
            }

            sub_1003BC650(buf, (v25 + 176), *(a1 + 368), v25);
            v33 = *(a1 + 368);
            if (v33 != v32)
            {
              v34 = v33 - 136;
              do
              {
                *(v33 - 64) = off_1009991A0;
                *(v33 - 136) = off_1009991A0;
                v34 -= 176;
                v33 -= 176;
              }

              while (v33 != v32);
            }

            *(a1 + 368) = v32;
          }
        }

        while (v25 != v32);
      }

      sub_1003B8528(a1);
      v36 = *(a1 + 360);
      v37 = *(a1 + 368);
      if (v36 == v37)
      {
        *(a1 + 328) = 0x3FF0000000000000;
      }

      else
      {
        v38 = v36 + 22;
        v39 = *(a1 + 360);
        if (v36 + 22 != v37)
        {
          v39 = *(a1 + 360);
          do
          {
            if (v38[1] < v39[1])
            {
              v39 = v38;
            }

            v38 += 22;
          }

          while (v38 != v37);
        }

        v40 = fmax(v39[1], 1.0);
        if (v40 != *(a1 + 328))
        {
          *(a1 + 328) = v40;
          do
          {
            v41 = sub_10041537C(v36[1] / *(a1 + 328));
            v36[4] = v41;
            v36[2] = v36[1] / (v41 * v36[3]);
            v36 += 22;
          }

          while (v36 != v37);
        }
      }
    }

    goto LABEL_43;
  }

  if ((v22 - v19) / *(a2 + 16) <= 6.0)
  {
LABEL_43:
    v42 = *(a1 + 360);
    v43 = *(a1 + 368);
    v44 = *(a2 + 8);
    if (v42 == v43)
    {
      v49 = fmax(v44, 1.0);
      *(a1 + 328) = v49;
      v50 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v49;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Minimum observed range initialized to %f m", buf, 0xCu);
      }
    }

    else
    {
      v45 = *(a1 + 328);
      if (v44 < v45 && v45 > 1.0)
      {
        v46 = fmax(v44, 1.0);
        *(a1 + 328) = v46;
        v47 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Minimum observed range changed to %f m", buf, 0xCu);
          v42 = *(a1 + 360);
          v43 = *(a1 + 368);
        }

        while (v42 != v43)
        {
          v48 = sub_10041537C(v42[1] / *(a1 + 328));
          v42[4] = v48;
          v42[2] = v42[1] / (v48 * v42[3]);
          v42 += 22;
        }
      }
    }

    v51 = sub_10041537C(*(a2 + 8) / *(a1 + 328));
    v52 = *(a2 + 8);
    if (v52 <= 10.0)
    {
      v53 = 0.1;
    }

    else
    {
      v53 = v52 / 10.0 * 0.1;
    }

    sub_1003BB924(buf, &v65, &v71, *(a2 + 24), *a2, v52, v53, v51);
    v54 = *(a1 + 368);
    if (v54 >= *(a1 + 376))
    {
      v55 = sub_1003BC6D8(a1 + 360, buf);
    }

    else
    {
      sub_1003BC824(a1 + 360, *(a1 + 368), buf);
      v55 = v54 + 176;
      *(a1 + 368) = v54 + 176;
    }

    *(a1 + 368) = v55;
    goto LABEL_60;
  }

  v23 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218496;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    v97 = *&v19;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#sa_algo_batchfilter_with,LoS->nLoS event detected by the batch filter: Previous range %f m, Current range %f m, Distance travelled %f m", buf, 0x20u);
  }

LABEL_60:
  if (((*(a1 + 560) & 1) != 0 || *(a1 + 561) == 1) && (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 368) - *(a1 + 360)) >> 4)) >= 4)
  {
    sub_1003B85B0(a1);
  }

  v56 = *(a1 + 368) - *(a1 + 360);
  if ((0x2E8BA2E8BA2E8BA3 * (v56 >> 4)) < 4 || (*(a1 + 560) & 1) != 0 || (*(a1 + 561) & 1) != 0 || *(a1 + 312) - *(a1 + 320) < 0.5)
  {
    if (v56 == 176)
    {
      v57 = *(a1 + 312);
      *(a1 + 304) = v57;
      *(a1 + 320) = v57 + -0.5;
    }
  }

  else
  {
    v59 = sub_1003B87C4(a1);
    *(a1 + 562) = v59;
    if (v59)
    {
      *(a1 + 320) = *(a1 + 312);
      sub_1003B66BC(a1);
    }
  }

LABEL_70:
  sub_1003B6C78(a1);
  *a3 = *(a1 + 24);
  *(a3 + 5) = *(a1 + 29);
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  result = sub_1003BB9A8((a3 + 2), *(a1 + 40), *(a1 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 6));
  a3[5] = *(a1 + 64);
  return result;
}

void sub_1003B83F8(uint64_t a1)
{
  v2 = *(a1 + 360);
  v3 = *(a1 + 368);
  if (v3 != v2)
  {
    v4 = v3 - 136;
    do
    {
      *(v3 - 64) = off_1009991A0;
      *(v3 - 136) = off_1009991A0;
      v4 -= 176;
      v3 -= 176;
    }

    while (v3 != v2);
  }

  *(a1 + 368) = v2;
  sub_1003B8528(a1);
  v5 = *(a1 + 40);
  *(a1 + 29) = 0;
  *(a1 + 24) = 0;
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x3FF0000000000000;
  sub_1003BF7F0(a1 + 72, v6);
  if (*(a1 + 352) == 1)
  {
    *(a1 + 352) = 0;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter is reinitialized", v8, 2u);
  }
}

void sub_1003B8528(uint64_t a1)
{
  *(a1 + 320) = *(a1 + 304);
  *(a1 + 560) = 257;
  *(a1 + 336) = 0;
  *(a1 + 562) = 0;
  *(a1 + 568) = 0;
  *(a1 + 564) = 0;
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter is reset", v2, 2u);
  }
}

void sub_1003B85B0(uint64_t a1)
{
  v1 = *(a1 + 360);
  v2 = *(a1 + 368);
  if (v1 != v2)
  {
    if (v1 + 176 != v2)
    {
      v4 = v1 + 288;
      do
      {
        v5 = *v1;
        v6 = *(v1 + 16);
        v23 = *(v1 + 32);
        v22[0] = v5;
        v22[1] = v6;
        sub_1003BBC24(&v24, v1 + 40);
        v25 = *(v1 + 104);
        sub_1003BBC24(&v26, v1 + 112);
        v7 = *(v4 - 112);
        v8 = *(v4 - 96);
        v18 = *(v4 - 80);
        v17[0] = v7;
        v17[1] = v8;
        sub_1003BBC24(&v19, v4 - 72);
        v20 = *(v4 - 8);
        sub_1003BBC24(&v21, v4);
        v21 = off_1009991A0;
        v19 = off_1009991A0;
        v26 = off_1009991A0;
        v24 = off_1009991A0;
        if (*(v22 + 1) < *(v17 + 1))
        {
          v1 = v4 - 112;
        }

        v9 = v4 + 64;
        v4 += 176;
      }

      while (v9 != v2);
    }

    v10 = *a1;
    v11 = *(a1 + 8);
    if (*a1 != v11)
    {
      v12 = 0;
      v13 = *(v1 + 8);
      do
      {
        if (v12)
        {
          v12 = 1;
        }

        else
        {
          LOBYTE(v17[0]) = 1;
          v16 = 0;
          *&v22[0] = 0;
          sub_1003BAC8C(*v10, v10[1], a1, (a1 + 360), v17, &v16, v22);
          v14 = v17[0];
          *(a1 + 560) &= LOBYTE(v17[0]);
          if ((v14 & 1) == 0)
          {
            if ((v16 & 1) == 0)
            {
              *(a1 + 561) = 0;
              return;
            }

            v15 = *(a1 + 336);
            if (v15 < *v22)
            {
              v15 = *v22;
            }

            *(a1 + 336) = v15;
          }

          v12 = v13 <= v10[1];
        }

        v10 += 2;
      }

      while (v10 != v11);
    }
  }
}

BOOL sub_1003B87C4(uint64_t a1)
{
  v2 = *(a1 + 360);
  v1 = *(a1 + 368);
  if ((0x2E8BA2E8BA2E8BA3 * ((v1 - v2) >> 4)) >= 4)
  {
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v5 = (a1 + 72);
    v4 = *(a1 + 72);
    v6 = *(a1 + 80);
    if ((*(a1 + 562) & 1) != 0 || v4 != v6)
    {
      if (v4 != v6)
      {
        do
        {
          sub_1003B9598(&v94, v4);
          v4 += 560;
        }

        while (v4 != v6);
        v4 = *v5;
      }

      sub_1003BBF40(buf, v4);
      for (i = 0; i != 3; ++i)
      {
        v10 = 0;
        v11 = *&qword_10056F2C0[i];
        do
        {
          if (v11 != 0.0 || *&qword_10056F2D8[v10] != 0.0)
          {
            sub_1003BBF40(&v79, buf);
            v12 = *sub_1003AFDBC(&v79, 1u);
            *sub_1003AFDBC(&v79, 1u) = v11 + v12;
            v13 = *sub_1003AFDBC(&v79, 3u);
            v14 = *&qword_10056F2D8[v10];
            *sub_1003AFDBC(&v79, 3u) = v13 + v14;
            sub_1003B9598(&v94, &v79);
          }

          ++v10;
        }

        while (v10 != 3);
      }
    }

    else
    {
      if (v2 != v1)
      {
        for (j = v2 + 176; j != v1; j += 176)
        {
          if (*(j + 8) < *(v2 + 8))
          {
            v2 = j;
          }
        }
      }

      if (*(v2 + 8) >= 0.5)
      {
        v15 = *(v2 + 8);
      }

      else
      {
        v15 = 0.5;
      }

      sub_1003BBC24(v84, v2 + 40);
      sub_1003BBC24(v93, v2 + 112);
      v16 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      do
      {
        sub_1003BBC24(buf, v84);
        sub_1003BBC24(&v79, v84);
        v17 = *sub_1003AFDBC(buf, v16);
        *sub_1003AFDBC(buf, v16) = v15 + v17;
        v18 = *sub_1003AFDBC(&v79, v16);
        *sub_1003AFDBC(&v79, v16) = v18 - v15;
        sub_1003B95EC(&v90, buf);
        sub_1003B95EC(&v90, &v79);
        ++v16;
      }

      while (v16 != 3);
      v19 = v90;
      for (k = v91; v19 != k; v19 += 64)
      {
        for (m = 0; m != 6; ++m)
        {
          v21 = *&qword_10056F2F0[m];
          v22 = __sincos_stret(v21);
          v98 = 0x300000003;
          *buf = off_1009A8FC0;
          *&buf[8] = xmmword_10056EDB0;
          v99 = &v100;
          *sub_1003A8DB0(buf, 0, 0) = v22.__cosval;
          *sub_1003A8DB0(buf, 1, 0) = 0;
          *sub_1003A8DB0(buf, 2, 0) = -v22.__sinval;
          *sub_1003A8DB0(buf, 0, 1) = 0;
          *sub_1003A8DB0(buf, 1, 1) = 0x3FF0000000000000;
          *sub_1003A8DB0(buf, 2, 1) = 0;
          *sub_1003A8DB0(buf, 0, 2) = v22.__sinval;
          *sub_1003A8DB0(buf, 1, 2) = 0;
          *sub_1003A8DB0(buf, 2, 2) = v22.__cosval;
          v81 = 0x100000003;
          v79 = off_1009A8F78;
          v80 = xmmword_10056EDA0;
          v82 = v83;
          sub_1003A90A8(buf, v93, &v79);
          v87 = 0x100000003;
          v85 = off_1009A8F78;
          v86 = xmmword_10056EDA0;
          v88 = &v89;
          sub_1003A920C(v19, &v79, &v85);
          v81 = 0x100000004;
          v79 = off_1009A8EE8;
          v80 = xmmword_10056ED80;
          v82 = v83;
          v23 = sub_1002EB67C(&v85, 0);
          *sub_1003AFDBC(&v79, 0) = v23;
          v24 = sub_1002EB67C(&v85, 1u);
          *sub_1003AFDBC(&v79, 1u) = v24;
          v25 = sub_1002EB67C(&v85, 2u);
          *sub_1003AFDBC(&v79, 2u) = v25;
          *sub_1003AFDBC(&v79, 3u) = v21;
          sub_1003B9598(&v94, &v79);
        }
      }

      *buf = &v90;
      sub_1003BCC80(buf);
    }

    v85 = 0;
    v86 = 0uLL;
    if (v94 != v95)
    {
      sub_1003B9680(a1, v94, a1 + 360);
    }

    sub_1003BA1D8(&v85, 0, v86);
    v27 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v86 - v85) >> 3));
    if (v86 == v85)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27;
    }

    sub_1003BDB24(v85, v86, v28, 1, v26);
    if (v85 != v86)
    {
      v30 = sub_1003BA230(v29, v85, (a1 + 360));
      *(a1 + 344) = v30;
      *(a1 + 352) = 1;
      v31 = *(a1 + 616);
      if (v30 > v31)
      {
        v32 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter has detected an issue with the measurements - rms normalized error (%f) is above the threshold (%f)", buf, 0x16u);
        }

        sub_1003B83F8(a1);
        v8 = 0;
        *(a1 + 563) = 1;
        goto LABEL_99;
      }

      v90 = 0;
      v91 = 0;
      v92 = 0;
      sub_1003BA3CC(&v90, v85);
      v33 = v85;
      if ((0x4FCACE213F2B3885 * ((v86 - v85) >> 3)) >= 2)
      {
        v34 = 1;
        do
        {
          v35 = v90;
          if (v91 == v90)
          {
            goto LABEL_55;
          }

          v36 = 0;
          v37 = 1;
          do
          {
            v38 = 0;
            v39 = 0.0;
            do
            {
              v40 = *sub_1003AFDBC(&v85[77 * v34 + 1], v38);
              v41 = sub_1003AFDBC(v90 + 616 * v36 + 8, v38);
              v39 = v39 + (v40 - *v41) * (v40 - *v41);
              ++v38;
            }

            while (v38 != 3);
            v42 = *sub_1003AFDBC(&v85[77 * v34 + 1], 3u);
            v43 = sub_1003AFDBC(v90 + 616 * v36 + 8, 3u);
            if ((v37 & (sqrt(v39) > 0.5)) != 0)
            {
              v44 = fmod(v42 - *v43 + 3.14159265, 6.28318531);
              if (v44 < 0.0)
              {
                v44 = v44 + 6.28318531;
              }

              v37 = fabs(v44 + -3.14159265) > 0.0872664626;
            }

            else
            {
              v37 = 0;
            }

            ++v36;
            v35 = v90;
          }

          while (0x4FCACE213F2B3885 * ((v91 - v90) >> 3) > v36);
          v33 = v85;
          if (v37)
          {
LABEL_55:
            if (exp(*(v35 + 600) - *&v33[77 * v34 + 75]) > 0.01)
            {
              sub_1003BA3CC(&v90, &v33[77 * v34]);
              v33 = v85;
            }
          }

          ++v34;
        }

        while (0x4FCACE213F2B3885 * ((v86 - v33) >> 3) > v34);
      }

      v46 = v90;
      v45 = v91;
      if ((0x4FCACE213F2B3885 * ((v91 - v90) >> 3)) > 1)
      {
        v47 = exp(-*(v90 + 600));
        v48 = 0.0;
        if (v46 != v45)
        {
          v49 = v46;
          do
          {
            v48 = v48 + exp(-*(v49 + 600));
            v49 += 616;
          }

          while (v49 != v45);
        }

        v50 = v47 / v48;
        if (v50 < 0.9)
        {
          v51 = sub_1003AFDBC(v46 + 144, 1u);
          v46 = v90;
          v45 = v91;
          if ((0x4FCACE213F2B3885 * ((v91 - v90) >> 3)) >= 2)
          {
            v52 = *v51;
            v53 = 1;
            v54 = 760;
            while (1)
            {
              v55 = sub_1003AFDBC(v46 + v54, 1u);
              v56 = fmod(*v55 - v52 + 3.14159265, 6.28318531);
              if (v56 < 0.0)
              {
                v56 = v56 + 6.28318531;
              }

              v57 = fabs(v56 + -3.14159265);
              if (v57 > 0.392699082)
              {
                break;
              }

              ++v53;
              v46 = v90;
              v45 = v91;
              v54 += 616;
              if (0x4FCACE213F2B3885 * ((v91 - v90) >> 3) <= v53)
              {
                goto LABEL_73;
              }
            }

            v58 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v50;
              *&buf[12] = 2048;
              *&buf[14] = v57;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter clearing solutions since the best one has a low weight (%f) and the horizontal angle difference to a secondary solution is too high (%f)", buf, 0x16u);
            }

            sub_1003BD980(&v90, v90);
            v46 = v90;
            v45 = v91;
          }
        }
      }

LABEL_73:
      if (v46 != v45)
      {
        do
        {
          v59 = sub_1003A8DB0(v46 + 488, 1, 1);
          v60 = *(v46 + 384);
          if (v60 != *(v46 + 388))
          {
            __assert_rtn("Trace", "cnmatrixbase.h", 4977, "A.NumRows() == A.NumCols()");
          }

          v61 = *v59;
          if (v60 < 1)
          {
            v63 = 0.0;
          }

          else
          {
            v62 = 0;
            v63 = 0.0;
            do
            {
              v63 = v63 + sub_1003BC8A4(v46 + 376, v62, v62);
              ++v62;
            }

            while (v60 != v62);
          }

          if (sqrt(v61) * 180.0 / 3.14159265 <= *(a1 + 608) || v63 <= *(a1 + 600))
          {
            v46 += 616;
          }

          else
          {
            sub_1003BDA6C(&v79, v46 + 616, v91, v46);
            sub_1003BD980(&v90, v64);
          }
        }

        while (v46 != v91);
        if (v90 != v46)
        {
          sub_1003BF7F0(v5, *v5);
          v65 = v90;
          v66 = v91;
          if (v90 == v91)
          {
            v73 = *(a1 + 80);
            v68 = 0.0;
          }

          else
          {
            v67 = *(v90 + 600);
            v68 = 0.0;
            do
            {
              sub_1003BBF40(v84, v65 + 8);
              sub_1003BBC24(v93, v65 + 144);
              sub_1003BC130(buf, v65 + 208);
              sub_1003BBDB4(&v79, v65 + 488);
              v69 = exp(v67 - *(v65 + 600));
              v70 = v69;
              v78 = v69;
              v71 = *(v65 + 608);
              v77 = v71;
              v72 = *(a1 + 80);
              if (v72 >= *(a1 + 88))
              {
                v73 = sub_1003BF8DC(v5, v84, v93, buf, &v79, &v78, &v77, a1 + 96, a1 + 160);
              }

              else
              {
                sub_1003BFA74(*(a1 + 80), v84, v93, buf, &v79, v71, a1 + 96, a1 + 160, v69);
                v73 = v72 + 560;
                *(a1 + 80) = v72 + 560;
              }

              *(a1 + 80) = v73;
              v68 = v68 + v70;
              v65 += 616;
            }

            while (v65 != v66);
          }

          for (n = *v5; n != v73; n += 560)
          {
            *(n + 416) = *(n + 416) / v68;
          }
        }
      }

      *buf = &v90;
      sub_1003BCFCC(buf);
    }

    v8 = *(a1 + 80) != *(a1 + 72);
LABEL_99:
    *buf = &v85;
    sub_1003BCFCC(buf);
    *buf = &v94;
    sub_1003BC8E8(buf);
    return v8;
  }

  return 0;
}

void sub_1003B94A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 + 176) = &a53;
  sub_1003BCFCC(&a67);
  *(v67 + 176) = v67;
  sub_1003BCFCC(&a67);
  *(v67 + 176) = &a64;
  sub_1003BC8E8(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B9598(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BC9A8(a1, a2);
  }

  else
  {
    sub_1003BBF40(a1[1], a2);
    result = v3 + 72;
    a1[1] = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003B95EC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BCD40(a1, a2);
  }

  else
  {
    sub_1003BBC24(a1[1], a2);
    result = v3 + 64;
    a1[1] = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003B9640(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BD180(a1, a2);
  }

  else
  {
    sub_1003BD020(a1, a2);
    result = v3 + 616;
  }

  a1[1] = result;
  return result;
}

void sub_1003B9680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v4 = v3;
  v6 = v5;
  sub_1003BBF40(v8, v7);
  sub_1003BA42C(v6, v8, v4);
}

void *sub_1003BA114(void *result)
{
  result[61] = off_1009991A0;
  result[47] = off_1009991A0;
  result[26] = off_1009991A0;
  result[18] = off_1009991A0;
  result[10] = off_1009991A0;
  result[1] = off_1009991A0;
  return result;
}

uint64_t sub_1003BA1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_1003BDA6C(&v7, a3, *(a1 + 8), a2);
    sub_1003BD980(a1, v5);
  }

  return a2;
}

double sub_1003BA230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v7 = 0.0;
    v12 = *a3;
  }

  else
  {
    v7 = 0.0;
    do
    {
      v21 = 0x100000001;
      v19 = off_1009A96E8;
      *&v8 = 0x100000001;
      *(&v8 + 1) = 0x100000001;
      v20 = v8;
      v22 = &v23;
      v16 = 0x400000001;
      v14 = off_1009A95C8;
      v15 = xmmword_10056F220;
      v17 = &v18;
      sub_100415A1C(a2 + 8, v3 + 40, v3 + 112, &v19, &v14);
      v9 = *(v3 + 32);
      v10 = *(v3 + 8);
      v11 = sub_1003AFDBC(&v19, 0);
      v7 = v7 + 1.0 / (v9 * 0.1) * (v10 - *v11) * (1.0 / (v9 * 0.1) * (v10 - *v11));
      v3 += 176;
    }

    while (v3 != v4);
    v3 = *a3;
    v12 = a3[1];
  }

  return sqrt(v7 / (0x2E8BA2E8BA2E8BA3 * ((v12 - v3) >> 4) - 3));
}

uint64_t sub_1003BA3CC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003BF6A4(a1, a2);
  }

  else
  {
    sub_1003BD5E4(a1, a1[1], a2);
    result = v3 + 616;
    a1[1] = v3 + 616;
  }

  a1[1] = result;
  return result;
}

void sub_1003BA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 8) - *a3) >> 4);
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v6 = sub_1003BA874(&v28, v5);
  sub_1003BA95C(v6, a2, a3, &v28);
  v25 = 0x400000004;
  v24 = xmmword_10056ED90;
  v23 = off_1009A8F30;
  v26 = &v27;
  sub_1003A8C00(&v23, 4, 4);
  sub_1003A8C50(&v23, 0.0);
  v20 = 0x100000004;
  v19 = xmmword_10056ED80;
  v18 = off_1009A8EE8;
  v21 = &v22;
  sub_1003A8C00(&v18, 4, 1);
  v7 = 0.0;
  sub_1003A8C50(&v18, 0.0);
  v8 = v28;
  v9 = v29;
  if (v28 != v29)
  {
    do
    {
      v10 = (v8 + 1);
      v11 = *v8;
      v15 = 0x400000004;
      v13 = off_1009A8F30;
      v14 = xmmword_10056ED90;
      v16 = v17;
      sub_1003A90A8((v8 + 10), (v8 + 1), &v13);
      v33 = 0x400000004;
      v32 = xmmword_10056ED90;
      v31 = off_1009A8F30;
      v34 = v35;
      sub_1003A8EBC(&v23, &v13, &v31);
      sub_1003A8CFC(&v23, &v31);
      v15 = 0x100000004;
      v13 = off_1009A8EE8;
      v14 = xmmword_10056ED80;
      v16 = v17;
      v10 += 72;
      sub_1003C07A0(v10, &v13, v11);
      v33 = 0x100000004;
      v32 = xmmword_10056ED80;
      v31 = off_1009A8EE8;
      v34 = v35;
      sub_1003A8EBC(&v18, &v13, &v31);
      sub_1003A8CFC(&v18, &v31);
      v7 = v7 + v11 * v11;
      v8 = (v10 + 72);
    }

    while ((v10 + 72) != v9);
  }

  v12 = sub_1003A8DB0(&v23, 3, 3);
  *v12 = *v12 + 0.101321184;
  v15 = 0x400000004;
  v13 = off_1009A8F30;
  v14 = xmmword_10056ED90;
  v16 = v17;
  v38 = 0x100000004;
  v37 = xmmword_10056ED80;
  v36 = off_1009A9658;
  v39 = &v40;
  v33 = 0x100000010;
  v32 = xmmword_10056F210;
  v31 = off_1009A96A0;
  v34 = v35;
  sub_1003A9CA4(&v23, &v36, &v31, &v13);
}

void sub_1003BA828(_Unwind_Exception *a1)
{
  STACK[0x220] = &STACK[0x208];
  sub_1003C01D0(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void *sub_1003BA874(void *result, unint64_t a2)
{
  if (0x86BCA1AF286BCA1BLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1AF286BCA1AF287)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1003C0248(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003BA948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003C0584(va);
  _Unwind_Resume(a1);
}

void sub_1003BA95C(uint64_t a1, uint64_t a2, double **a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  if (*a4 != v7)
  {
    v8 = v7 - 144;
    do
    {
      *(v7 - 72) = off_1009991A0;
      *(v7 - 144) = off_1009991A0;
      v8 -= 152;
      v7 -= 152;
    }

    while (v7 != v6);
    *(a4 + 8) = v6;
    sub_1003BA874(a4, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 4));
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      v40 = 0x100000001;
      v38 = off_1009A96E8;
      *&v11 = 0x100000001;
      *(&v11 + 1) = 0x100000001;
      v39 = v11;
      v41 = &v42;
      v35 = 0x400000001;
      v33 = off_1009A95C8;
      v34 = xmmword_10056F220;
      v36 = &v37;
      sub_100415A1C(a2, (v9 + 5), (v9 + 14), &v38, &v33);
      v13 = v9[3];
      v12 = v9[4];
      v14 = v9[2];
      v15 = sub_1003AFDBC(&v38, 0);
      v16 = 1.0 / (v13 * v12);
      v32 = v14 - v16 * *v15;
      v29 = 0x400000001;
      v27 = off_1009A95C8;
      v28 = xmmword_10056F220;
      v30 = &v31;
      sub_1003C07A0(&v33, &v27, v16);
      v17 = 0;
      v24 = 0x100000004;
      v22 = off_1009A8EE8;
      v23 = xmmword_10056ED80;
      v25 = &v26;
      do
      {
        v18 = sub_1002EB67C(&v27, v17);
        *sub_1003AFDBC(&v22, v17++) = v18;
      }

      while (v17 != 4);
      v19 = *(a4 + 8);
      if (v19 >= *(a4 + 16))
      {
        v20 = sub_1003C0860(a4, &v32, &v27, &v22);
      }

      else
      {
        sub_1003C09C0(*(a4 + 8), &v27, &v22, v32);
        v20 = v19 + 152;
        *(a4 + 8) = v19 + 152;
      }

      *(a4 + 8) = v20;
      v9 += 22;
    }

    while (v9 != v10);
  }
}

void sub_1003BAC8C(double a1, double a2, uint64_t a3, uint64_t *a4, BOOL *a5, char *a6, double *a7)
{
  *a5 = 1;
  *a6 = 0;
  *a7 = 0.0;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a4) >> 4);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    sub_1003BB4E4(&v71, v14);
    v68 = 0x100000002;
    v67 = xmmword_10056F230;
    v66 = off_1009A9730;
    v69 = &v70;
    v15 = *a4;
    v16 = a4[1];
    while (v15 != v16)
    {
      if (*(v15 + 8) <= a2)
      {
        v17 = sub_1002EB67C(v15 + 40, 2u);
        *sub_1003AFDBC(&v66, 0) = v17;
        v18 = sub_1002EB67C(v15 + 40, 0);
        *sub_1003AFDBC(&v66, 1u) = v18;
        v19 = v72;
        if (v72 >= v73)
        {
          v20 = sub_1003C0E70(&v71, &v66);
        }

        else
        {
          sub_1003C0C14(v72, &v66);
          v20 = v19 + 56;
        }

        v72 = v20;
      }

      v15 += 176;
    }

    if (v71 != v72)
    {
      v63 = 0x100000002;
      v62 = xmmword_10056F230;
      v61 = off_1009A9730;
      v64 = &v65;
      sub_1003A8C00(&v61, 2, 1);
      sub_1003A8C50(&v61, 0.0);
      v22 = v71;
      for (i = v72; v22 != i; v22 += 56)
      {
        v76 = 0x100000002;
        v74 = off_1009A9730;
        v75 = xmmword_10056F230;
        v77 = v78;
        sub_1003A8EBC(&v61, v22, &v74);
        sub_1003A8CFC(&v61, &v74);
      }

      v76 = 0x100000002;
      v75 = xmmword_10056F230;
      v74 = off_1009A9730;
      v77 = v78;
      sub_1003C07A0(&v61, &v74, 1.0 / v14);
      v48 = a5;
      sub_1003A8CFC(&v61, &v74);
      v23 = v71;
      v24 = v72;
      if (v71 == v72)
      {
        *v48 = 1;
      }

      else
      {
        v47 = a6;
        v25 = 0.0;
        do
        {
          v76 = 0x100000002;
          v74 = off_1009A9730;
          v75 = xmmword_10056F230;
          v77 = v78;
          sub_1003A920C(v23, &v61, &v74);
          sub_1003A8CFC(v23, &v74);
          v58 = 0x100000002;
          v57 = xmmword_10056F230;
          v56 = off_1009A9730;
          v59 = v60;
          v76 = 0x1000000E1;
          v75 = xmmword_10056F240;
          v74 = off_1009A9778;
          v77 = v78;
          v53 = 0x100000002;
          v51 = off_1009A9730;
          v52 = xmmword_10056F230;
          v54 = v55;
          sub_1003AFEC0(v23, &v56, &v74, &v51, "2");
          if (v26 > v25)
          {
            v25 = v26;
          }

          v23 += 56;
        }

        while (v23 != v24);
        *v48 = v25 < 0.3;
        if (v25 >= 0.3)
        {
          v76 = 0x200000002;
          v75 = xmmword_10056F250;
          v74 = off_1009A97C0;
          v77 = v78;
          sub_1003A8C00(&v74, 2, 2);
          sub_1003A8C50(&v74, 0.0);
          v28 = v71;
          for (j = v72; v28 != j; v28 += 56)
          {
            sub_1003C1194(v50, *(v28 + 12), *(v28 + 8));
            sub_1003A9464(v28, v50);
            v53 = 0x200000002;
            v51 = off_1009A97C0;
            v52 = xmmword_10056F250;
            v54 = v55;
            sub_1003A90A8(v28, v50, &v51);
            v58 = 0x200000002;
            v57 = xmmword_10056F250;
            v56 = off_1009A97C0;
            v59 = v60;
            sub_1003A8EBC(&v74, &v51, &v56);
            sub_1003A8CFC(&v74, &v56);
          }

          v58 = 0x200000002;
          v57 = xmmword_10056F250;
          v56 = off_1009A97C0;
          v59 = v60;
          v53 = 0x200000002;
          v51 = off_1009A97C0;
          v52 = xmmword_10056F250;
          v54 = v55;
          sub_1003BB62C(&v74, &v56, &v51);
          v29 = *sub_1003A8DB0(&v51, 0, 0);
          v30 = sub_1003A8DB0(&v51, 1, 1);
          if (*v30 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = *v30;
          }

          sub_1003C106C(v50, DWORD1(v57), v57);
          sub_1003A9464(&v56, v50);
          v32 = v71;
          v33 = v72;
          if (v71 == v72)
          {
            v41 = 0.0;
            v42 = 0.0;
          }

          else
          {
            v49 = v31;
            v34 = 0.0;
            v35 = 0.0;
            v36 = 0.0;
            v37 = 0.0;
            do
            {
              v80 = 0x100000002;
              *buf = off_1009A9730;
              *&buf[8] = xmmword_10056F230;
              v81 = &v82;
              sub_1003A90A8(v50, v32, buf);
              v38 = sub_1002EB67C(buf, 0);
              v39 = sub_1002EB67C(buf, 1u);
              if (v38 < v34)
              {
                v40 = v38;
              }

              else
              {
                v40 = v34;
              }

              if (v38 <= v35)
              {
                v34 = v40;
              }

              else
              {
                v35 = v38;
              }

              if (v39 <= v37)
              {
                if (v39 < v36)
                {
                  v36 = v39;
                }
              }

              else
              {
                v37 = v39;
              }

              v32 += 56;
            }

            while (v32 != v33);
            v41 = v35 - v34;
            v42 = v37 - v36;
            v31 = v49;
          }

          if (v42 >= v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = v42;
          }

          if (v41 < v42)
          {
            v41 = v42;
          }

          *a7 = v41;
          if (v43 >= a1)
          {
            v45 = qword_1009F9820;
            v46 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
            v44 = 0;
            if (v46)
            {
              *buf = 134218496;
              *&buf[4] = a2;
              *&buf[12] = 2048;
              *&buf[14] = v31;
              *&buf[22] = 2048;
              v80 = *&v43;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#sa_algo_batchfilter_with,Batch filter problem is observable now from the bin with max range %3.1f m: smallest eigenvalue is %f, smallest rectangular box dimension is %f m", buf, 0x20u);
              v44 = 0;
            }
          }

          else
          {
            v44 = 1;
          }

          *v47 = v44;
        }
      }
    }

    v74 = &v71;
    sub_1003C0A30(&v74);
  }
}

void sub_1003BB460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  a17 = &a58;
  sub_1003C0A30(&a17);
  _Unwind_Resume(a1);
}

void *sub_1003BB4E4(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_1003C0AF0(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

void sub_1003BB5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003C0E04(va);
  _Unwind_Resume(a1);
}

void sub_1003BB62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = 0x200000002;
  v30 = off_1009A97C0;
  v31 = xmmword_10056F250;
  v33 = &v34;
  v27 = 0x200000002;
  v25 = off_1009A97C0;
  v26 = xmmword_10056F250;
  v28 = &v29;
  v22 = 0x200000002;
  v20 = off_1009A97C0;
  v21 = xmmword_10056F250;
  v23 = &v24;
  v17 = 0x100000002;
  v15 = off_1009A9730;
  v16 = xmmword_10056F230;
  v18 = &v19;
  v12 = 0x200000002;
  v10 = off_1009A97C0;
  v11 = xmmword_10056F250;
  v13 = &v14;
  v7 = 0x1000000A8;
  v5 = off_1009A9850;
  v6 = xmmword_10056F260;
  v8 = &v9;
  sub_1003C12C0(a1, &v30, a3, &v25, a2, &v20, &v15, &v10, &v5);
  if (DWORD2(v26))
  {
    v3 = 0;
    while (*sub_1003AFDBC(&v25, v3) == 0.0)
    {
      if (++v3 >= DWORD2(v26))
      {
        goto LABEL_6;
      }
    }

    cnprint::CNPrinter::Print();
  }

LABEL_6:
  if (DWORD2(v21))
  {
    v4 = 0;
    while (*sub_1003AFDBC(&v20, v4) == 0.0)
    {
      if (++v4 >= DWORD2(v21))
      {
        return;
      }
    }

    cnprint::CNPrinter::Print();
  }
}

void *sub_1003BB884(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100012564(result, a2);
    }

    sub_100019B38();
  }

  return result;
}

uint64_t sub_1003BB924(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8)
{
  *a1 = a5;
  *(a1 + 8) = a6;
  *(a1 + 16) = a6 / (a7 * a8);
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  sub_1003BBC24(a1 + 40, a2);
  *(a1 + 104) = a4;
  sub_1003BBC24(a1 + 112, a3);
  return a1;
}

uint64_t sub_1003BB9A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003BBA24(result, a4);
  }

  return result;
}

void sub_1003BBA08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BBA24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_1003BBA70(a1, a2);
  }

  sub_100019B38();
}

void sub_1003BBA70(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

void *sub_1003BBAC8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 6) < a4)
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

    if (a4 <= 0x155555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 6);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAALL)
      {
        v11 = 0x155555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_1003BBA24(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 6) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

__n128 sub_1003BBC24(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8F78;
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
  if (v3 > 3)
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
  if (*(a2 + 8) > 3u)
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

__n128 sub_1003BBDB4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8FC0;
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
  if (v3 > 3)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 4)
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
  if (*(a2 + 8) > 3u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 3u)
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

__n128 sub_1003BBF40(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000004;
  *(a1 + 24) = 0x100000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8EE8;
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
  if (v3 > 4)
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
  if (*(a2 + 8) > 4u)
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

__n128 sub_1003BC130(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x400000004;
  *(a1 + 24) = 0x400000004;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A8F30;
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
  if (v3 > 4)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 5)
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
  if (*(a2 + 8) > 4u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 4u)
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

uint64_t sub_1003BC2BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10004EF2C(result, a4);
  }

  return result;
}

void sub_1003BC31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003BC338(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003BF7F0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003BC38C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 136;
      do
      {
        *(v3 - 8) = off_1009991A0;
        *(v3 - 17) = off_1009991A0;
        v4 -= 176;
        v3 -= 176;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003BC404(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BC460(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003BC540(a1, a4 + v8, v9);
      v9 += 11;
      v8 += 176;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 7;
      do
      {
        *(v6 + 14) = off_1009991A0;
        *(v6 + 5) = off_1009991A0;
        v6 += 11;
        v10 += 11;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003BC524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004C9DE8();
  }

  _Unwind_Resume(exception_object);
}

double sub_1003BC540(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 16) = v6;
  sub_1003BBC24(a2 + 40, a3 + 40);
  *(a2 + 104) = *(a3 + 26);
  *&result = sub_1003BBC24(a2 + 112, (a3 + 7)).n128_u64[0];
  return result;
}

uint64_t sub_1003BC5C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 136;
    do
    {
      *(v3 - 64) = off_1009991A0;
      *(v3 - 136) = off_1009991A0;
      v3 -= 176;
      v4 -= 176;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

__int128 *sub_1003BC650(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    *(a4 + 32) = *(v5 + 4);
    *a4 = v7;
    *(a4 + 16) = v8;
    sub_1003A8CFC(a4 + 40, v5 + 40);
    *(a4 + 104) = *(v5 + 26);
    sub_1003A8CFC(a4 + 112, (v5 + 7));
    a4 += 176;
    v5 += 11;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_1003BC6D8(uint64_t a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_100019B38();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BC404(a1, v6);
  }

  v13 = 0;
  v14 = 176 * v2;
  sub_1003BC824(a1, 176 * v2, a2);
  v15 = (176 * v2 + 176);
  v7 = *(a1 + 8);
  v8 = 176 * v2 + *a1 - v7;
  sub_1003BC460(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BC5C0(&v13);
  return v12;
}

void sub_1003BC810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003BC5C0(va);
  _Unwind_Resume(a1);
}

double sub_1003BC824(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  *(a2 + 32) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 16) = v6;
  sub_1003BBC24(a2 + 40, a3 + 40);
  *(a2 + 104) = *(a3 + 26);
  *&result = sub_1003BBC24(a2 + 112, (a3 + 7)).n128_u64[0];
  return result;
}

double sub_1003BC8A4(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004C9E90();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_1004C9E64();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_1004C9E38();
  }

  return *(v3 + 8 * v4);
}

void sub_1003BC8E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 72;
      v7 = v4 - 72;
      v8 = v4 - 72;
      do
      {
        v9 = *v8;
        v8 -= 72;
        (*v9)(v7);
        v6 -= 72;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1003BC9A8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_100019B38();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BCAF0(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_1003BBF40(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_1003BCB4C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BCC14(&v13);
  return v12;
}

void sub_1003BCADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003BCC14(va);
  _Unwind_Resume(a1);
}

void sub_1003BCAF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BCB4C(uint64_t a1, uint64_t a2, void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003BBF40(a4 + v7, v8);
      v8 += 72;
      v7 += 72;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 9;
        (*v12)(v6, v9);
        v10 += 9;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003BCBF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004C9EBC(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003BCC14(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 72);
    *(a1 + 16) = i - 72;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003BCC80(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1003BCD40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_100019B38();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1003BCE50(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_1003BBC24(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_1003BCE98(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1003BCF60(&v14);
  return v13;
}

void sub_1003BCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003BCF60(va);
  _Unwind_Resume(a1);
}

void sub_1003BCE50(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003BCE98(uint64_t a1, uint64_t a2, void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003BBC24(a4 + v7, v8);
      v8 += 64;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 8;
        (*v12)(v6, v9);
        v10 += 8;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003BCF44(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004C9F28(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003BCF60(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003BCFCC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003BD980(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003BD020(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_1003BBF40(v4 + 8, a2 + 8);
  sub_1003BBC24(v4 + 80, a2 + 80);
  sub_1003BBC24(v4 + 144, a2 + 144);
  sub_1003BC130(v4 + 208, a2 + 208);
  sub_1003BBDB4(v4 + 376, a2 + 376);
  sub_1003BBDB4(v4 + 488, a2 + 488);
  v5 = *(a2 + 600);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 600) = v5;
  *(a1 + 8) = v4 + 616;
}

void sub_1003BD0D8(_Unwind_Exception *a1)
{
  *v6 = off_1009991A0;
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *(v1 + 8) = v7;
  _Unwind_Resume(a1);
}

uint64_t sub_1003BD180(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6A63BD81A98EF6)
  {
    sub_100019B38();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v6 = 0x6A63BD81A98EF6;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003BD3F4(a1, v6);
  }

  v15 = 0;
  v16 = 616 * v2;
  v17 = (616 * v2);
  v7 = 616 * v2;
  *v7 = *a2;
  sub_1003BBF40(616 * v2 + 8, a2 + 8);
  sub_1003BBC24(616 * v2 + 80, a2 + 80);
  sub_1003BBC24(616 * v2 + 144, a2 + 144);
  sub_1003BC130(616 * v2 + 208, a2 + 208);
  sub_1003BBDB4(616 * v2 + 376, a2 + 376);
  sub_1003BBDB4(616 * v2 + 488, a2 + 488);
  v8 = *(a2 + 600);
  *(v7 + 608) = *(a2 + 608);
  *(v7 + 600) = v8;
  *&v17 = v17 + 616;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_1003BD450(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003BD868(&v15);
  return v14;
}

void sub_1003BD32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v8 = off_1009991A0;
  *v7 = off_1009991A0;
  *v6 = off_1009991A0;
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  sub_1003BD868(va);
  _Unwind_Resume(a1);
}

void sub_1003BD3F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6A63BD81A98EF7)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003BD450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v7 = a2;
    do
    {
      sub_1003BD5E4(a1, a4, v7);
      v7 += 616;
      a4 = v14 + 616;
      v14 += 616;
    }

    while (v7 != a3);
    v12 = 1;
    if (a2 != a3)
    {
      v8 = 0;
      do
      {
        v9 = (a2 + v8);
        v9[61] = off_1009991A0;
        v9[47] = off_1009991A0;
        v9[26] = off_1009991A0;
        v9[18] = off_1009991A0;
        v9[10] = off_1009991A0;
        v9[1] = off_1009991A0;
        v8 += 616;
      }

      while (a2 + v8 != a3);
    }
  }

  return sub_1003BD738(v11);
}

void sub_1003BD5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 + 80;
  *a2 = *a3;
  v6 = a2 + 80;
  sub_1003BBF40(a2 + 8, a3 + 8);
  sub_1003BBC24(v6, v5);
  sub_1003BBC24(a2 + 144, a3 + 144);
  sub_1003BC130(a2 + 208, a3 + 208);
  sub_1003BBDB4(a2 + 376, a3 + 376);
  sub_1003BBDB4(a2 + 488, a3 + 488);
  v7 = *(a3 + 600);
  *(a2 + 608) = *(a3 + 608);
  *(a2 + 600) = v7;
}

void sub_1003BD698(_Unwind_Exception *a1)
{
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

uint64_t sub_1003BD738(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003BD784(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003BD784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 128) = off_1009991A0;
      *(v6 - 240) = off_1009991A0;
      *(a3 + v5 - 408) = off_1009991A0;
      *(a3 + v5 - 472) = off_1009991A0;
      *(a3 + v5 - 536) = off_1009991A0;
      *(a3 + v5 - 608) = off_1009991A0;
      v5 -= 616;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t sub_1003BD868(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = v3 + v4;
      *(v5 - 128) = off_1009991A0;
      *(v5 - 240) = off_1009991A0;
      *(v3 + v4 - 408) = off_1009991A0;
      *(v3 + v4 - 472) = off_1009991A0;
      *(v3 + v4 - 536) = off_1009991A0;
      *(v3 + v4 - 608) = off_1009991A0;
      v4 -= 616;
    }

    while (v3 + v4 != v2);
    *(a1 + 16) = v3 + v4;
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1003BD980(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 128) = off_1009991A0;
      *(v4 - 240) = off_1009991A0;
      *(v2 + v3 - 408) = off_1009991A0;
      *(v2 + v3 - 472) = off_1009991A0;
      *(v2 + v3 - 536) = off_1009991A0;
      *(v2 + v3 - 608) = off_1009991A0;
      v3 -= 616;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1003BDA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    sub_1003A8CFC(a4 + 8, v5 + 8);
    sub_1003A8CFC(a4 + 80, v5 + 80);
    sub_1003A8CFC(a4 + 144, v5 + 144);
    sub_1003A8CFC(a4 + 208, v5 + 208);
    sub_1003A8CFC(a4 + 376, v5 + 376);
    sub_1003A8CFC(a4 + 488, v5 + 488);
    v7 = *(v5 + 608);
    *(a4 + 600) = *(v5 + 600);
    *(a4 + 608) = v7;
    a4 += 616;
    v5 += 616;
  }

  while (v5 != v6);
  return v6;
}

double sub_1003BDB24(uint64_t a1, char *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v86 = (a2 - 632);
  v87 = a2 - 616;
  v85 = (a2 - 1248);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8];
    v10 = 0x4FCACE213F2B3885 * (&a2[-v8] >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = *(a2 - 2);
      if (result >= *(v8 + 600))
      {
        return result;
      }

LABEL_111:
      v67 = v8;
      goto LABEL_112;
    }

LABEL_9:
    if (v9 <= 14783)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v69 = (v8 + 616);
          if ((v8 + 616) != a2)
          {
            v70 = 0;
            v71 = v8;
            do
            {
              v72 = v69;
              result = v71[152];
              if (result < v71[75])
              {
                v73 = *v69;
                v91 = *v72;
                sub_1003BBF40(v93, (v71 + 78));
                sub_1003BBC24(v94, (v71 + 87));
                sub_1003BBC24(v95, (v71 + 95));
                sub_1003BC130(v96, (v71 + 103));
                sub_1003BBDB4(v97, (v71 + 124));
                sub_1003BBDB4(v98, (v71 + 138));
                v99 = v71[152];
                v100 = *(v71 + 306);
                v74 = v70;
                while (1)
                {
                  *(a1 + v74 + 616) = *(a1 + v74);
                  sub_1003A8CFC(a1 + v74 + 624, a1 + v74 + 8);
                  sub_1003A8CFC(a1 + v74 + 696, a1 + v74 + 80);
                  sub_1003A8CFC(a1 + v74 + 760, a1 + v74 + 144);
                  sub_1003A8CFC(a1 + v74 + 824, a1 + v74 + 208);
                  sub_1003A8CFC(a1 + v74 + 992, a1 + v74 + 376);
                  sub_1003A8CFC(a1 + v74 + 1104, a1 + v74 + 488);
                  v75 = a1 + v74;
                  *(v75 + 1216) = *(a1 + v74 + 600);
                  *(v75 + 1224) = *(a1 + v74 + 608);
                  if (!v74)
                  {
                    break;
                  }

                  v74 -= 616;
                  if (v99 >= *(v75 - 16))
                  {
                    v76 = (a1 + v74 + 616);
                    goto LABEL_124;
                  }
                }

                v76 = a1;
LABEL_124:
                *v76 = v91;
                sub_1003A8CFC(v75 + 8, v93);
                sub_1003A8CFC(v75 + 80, v94);
                sub_1003A8CFC(v75 + 144, v95);
                sub_1003A8CFC(v75 + 208, v96);
                sub_1003A8CFC(v75 + 376, v97);
                *&result = sub_1003A8CFC(v75 + 488, v98).n128_u64[0];
                v77 = v99;
                *(v75 + 608) = v100;
                *(v75 + 600) = v77;
              }

              v69 = v72 + 616;
              v70 += 616;
              v71 = v72;
            }

            while (v72 + 616 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v78 = (v8 + 616);
        if ((v8 + 616) != a2)
        {
          v79 = v8 - 16;
          do
          {
            v80 = v78;
            result = *(a1 + 1216);
            if (result < *(a1 + 600))
            {
              v81 = *v78;
              v92 = *v80;
              sub_1003BBF40(v93, a1 + 624);
              sub_1003BBC24(v94, a1 + 696);
              sub_1003BBC24(v95, a1 + 760);
              sub_1003BC130(v96, a1 + 824);
              sub_1003BBDB4(v97, a1 + 992);
              sub_1003BBDB4(v98, a1 + 1104);
              v99 = *(a1 + 1216);
              v100 = *(a1 + 1224);
              v82 = v79;
              do
              {
                *(v82 + 632) = *(v82 + 16);
                sub_1003A8CFC(v82 + 640, v82 + 24);
                sub_1003A8CFC(v82 + 712, v82 + 96);
                sub_1003A8CFC(v82 + 776, v82 + 160);
                sub_1003A8CFC(v82 + 840, v82 + 224);
                sub_1003A8CFC(v82 + 1008, v82 + 392);
                sub_1003A8CFC(v82 + 1120, v82 + 504);
                *(v82 + 1232) = *(v82 + 616);
                *(v82 + 1240) = *(v82 + 624);
                v83 = *v82;
                v82 -= 616;
              }

              while (v99 < v83);
              *(v82 + 632) = v92;
              sub_1003A8CFC(v82 + 640, v93);
              sub_1003A8CFC(v82 + 712, v94);
              sub_1003A8CFC(v82 + 776, v95);
              sub_1003A8CFC(v82 + 840, v96);
              sub_1003A8CFC(v82 + 1008, v97);
              *&result = sub_1003A8CFC(v82 + 1120, v98).n128_u64[0];
              v84 = v99;
              *(v82 + 1240) = v100;
              *(v82 + 1232) = v84;
            }

            v78 = v80 + 616;
            v79 += 616;
            a1 = v80;
          }

          while (v80 + 616 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      sub_1003BE888(v8, a2, a2);
      return result;
    }

    v11 = v10 >> 1;
    v12 = v8 + 616 * (v10 >> 1);
    v13 = *(a2 - 2);
    if (v9 >= 0x13401)
    {
      v14 = *(v12 + 600);
      if (v14 >= *(a1 + 600))
      {
        if (v13 < v14)
        {
          sub_1003BF2A4(v12, v87);
          if (*(v12 + 600) < *(a1 + 600))
          {
            v15 = a1;
            v16 = v12;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v15 = a1;
        if (v13 < v14)
        {
          goto LABEL_16;
        }

        sub_1003BF2A4(a1, v12);
        if (*(a2 - 2) < *(v12 + 600))
        {
          v15 = v12;
LABEL_16:
          v16 = a2 - 616;
LABEL_25:
          sub_1003BF2A4(v15, v16);
        }
      }

      v20 = a1 + 616 * v11;
      v21 = v20 - 616;
      v22 = *(v20 - 16);
      v23 = *v86;
      if (v22 >= *(a1 + 1216))
      {
        if (v23 < v22)
        {
          sub_1003BF2A4(v21, a2 - 1232);
          if (*(v21 + 600) < *(a1 + 1216))
          {
            v24 = (a1 + 616);
            v25 = v21;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = (a1 + 616);
        if (v23 < v22)
        {
          goto LABEL_30;
        }

        sub_1003BF2A4(v24, v21);
        if (*v86 < *(v21 + 600))
        {
          v24 = v21;
LABEL_30:
          v25 = a2 - 1232;
LABEL_37:
          sub_1003BF2A4(v24, v25);
        }
      }

      v26 = a1 + 616 * v11;
      v27 = *(v26 + 1216);
      v28 = *v85;
      if (v27 >= *(a1 + 1832))
      {
        if (v28 < v27)
        {
          sub_1003BF2A4((v26 + 616), a2 - 1848);
          if (*(v26 + 1216) < *(a1 + 1832))
          {
            v29 = (a1 + 1232);
            v30 = (v26 + 616);
            goto LABEL_46;
          }
        }
      }

      else
      {
        v29 = (a1 + 1232);
        if (v28 < v27)
        {
          goto LABEL_42;
        }

        sub_1003BF2A4(v29, (v26 + 616));
        if (*v85 < *(v26 + 1216))
        {
          v29 = (v26 + 616);
LABEL_42:
          v30 = a2 - 1848;
LABEL_46:
          sub_1003BF2A4(v29, v30);
        }
      }

      v31 = *(v12 + 600);
      v32 = *(v26 + 1216);
      if (v31 >= *(v21 + 600))
      {
        if (v32 < v31)
        {
          sub_1003BF2A4(v12, (v26 + 616));
          if (*(v12 + 600) < *(v21 + 600))
          {
            v34 = v21;
            v33 = v12;
            goto LABEL_55;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = (v26 + 616);
          v34 = v21;
          goto LABEL_55;
        }

        sub_1003BF2A4(v21, v12);
        if (*(v26 + 1216) < *(v12 + 600))
        {
          v33 = (v26 + 616);
          v34 = v12;
LABEL_55:
          sub_1003BF2A4(v34, v33);
        }
      }

      v18 = a1;
      v19 = v12;
      goto LABEL_57;
    }

    v17 = *(a1 + 600);
    if (v17 >= *(v12 + 600))
    {
      if (v13 >= v17)
      {
        goto LABEL_58;
      }

      sub_1003BF2A4(a1, v87);
      if (*(a1 + 600) >= *(v12 + 600))
      {
        goto LABEL_58;
      }

      v18 = v12;
      v19 = a1;
    }

    else
    {
      v18 = v12;
      if (v13 >= v17)
      {
        sub_1003BF2A4(v12, a1);
        if (*(a2 - 2) >= *(a1 + 600))
        {
          goto LABEL_58;
        }

        v18 = a1;
      }

      v19 = a2 - 616;
    }

LABEL_57:
    sub_1003BF2A4(v18, v19);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 16) < *(a1 + 600))
    {
      v89 = *a1;
      sub_1003BBF40(v93, a1 + 8);
      sub_1003BBC24(v94, a1 + 80);
      sub_1003BBC24(v95, a1 + 144);
      sub_1003BC130(v96, a1 + 208);
      sub_1003BBDB4(v97, a1 + 376);
      sub_1003BBDB4(v98, a1 + 488);
      v35 = 0;
      v36 = *(a1 + 600);
      v100 = *(a1 + 608);
      v99 = v36;
      do
      {
        v37 = *(a1 + v35 + 1216);
        v35 += 616;
      }

      while (v37 < v99);
      v38 = a1 + v35;
      v39 = a2;
      if (v35 == 616)
      {
        v42 = a2;
        while (v38 < v42)
        {
          v40 = v42 - 616;
          v43 = *(v42 - 2);
          v42 -= 616;
          if (v43 < v99)
          {
            goto LABEL_70;
          }
        }

        v40 = v42;
      }

      else
      {
        do
        {
          v40 = v39 - 616;
          v41 = *(v39 - 2);
          v39 -= 616;
        }

        while (v41 >= v99);
      }

LABEL_70:
      v8 = v38;
      if (v38 < v40)
      {
        v44 = v40;
        do
        {
          sub_1003BF2A4(v8, v44);
          do
          {
            v45 = *(v8 + 1216);
            v8 += 616;
          }

          while (v45 < v99);
          do
          {
            v46 = *(v44 - 2);
            v44 -= 616;
          }

          while (v46 >= v99);
        }

        while (v8 < v44);
      }

      v47 = (v8 - 616);
      if (v8 - 616 != a1)
      {
        *a1 = *v47;
        sub_1003A8CFC(a1 + 8, v8 - 608);
        sub_1003A8CFC(a1 + 80, v8 - 536);
        sub_1003A8CFC(a1 + 144, v8 - 472);
        sub_1003A8CFC(a1 + 208, v8 - 408);
        sub_1003A8CFC(a1 + 376, v8 - 240);
        sub_1003A8CFC(a1 + 488, v8 - 128);
        v48 = *(v8 - 16);
        *(a1 + 608) = *(v8 - 8);
        *(a1 + 600) = v48;
      }

      *v47 = v89;
      sub_1003A8CFC(v8 - 608, v93);
      sub_1003A8CFC(v8 - 536, v94);
      sub_1003A8CFC(v8 - 472, v95);
      sub_1003A8CFC(v8 - 408, v96);
      sub_1003A8CFC(v8 - 240, v97);
      sub_1003A8CFC(v8 - 128, v98);
      v49 = v99;
      *(v8 - 8) = v100;
      *(v8 - 16) = v49;
      if (v38 < v40)
      {
        goto LABEL_81;
      }

      v50 = sub_1003BEE8C(a1, v8 - 616);
      if (sub_1003BEE8C(v8, a2))
      {
        a2 = (v8 - 616);
        if (!v50)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v50)
      {
LABEL_81:
        sub_1003BDB24(a1, v8 - 616, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v90 = *a1;
      sub_1003BBF40(v93, a1 + 8);
      sub_1003BBC24(v94, a1 + 80);
      sub_1003BBC24(v95, a1 + 144);
      sub_1003BC130(v96, a1 + 208);
      sub_1003BBDB4(v97, a1 + 376);
      sub_1003BBDB4(v98, a1 + 488);
      v51 = *(a1 + 600);
      v100 = *(a1 + 608);
      v99 = v51;
      if (v51 >= *(a2 - 2))
      {
        v54 = a1 + 616;
        do
        {
          v8 = v54;
          if (v54 >= a2)
          {
            break;
          }

          v55 = *(v54 + 600);
          v54 += 616;
        }

        while (v99 >= v55);
      }

      else
      {
        v52 = a1;
        do
        {
          v8 = v52 + 616;
          v53 = *(v52 + 1216);
          v52 += 616;
        }

        while (v99 >= v53);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v57 = a2;
        do
        {
          v56 = v57 - 616;
          v58 = *(v57 - 2);
          v57 -= 616;
        }

        while (v99 < v58);
      }

      while (v8 < v56)
      {
        sub_1003BF2A4(v8, v56);
        do
        {
          v59 = *(v8 + 1216);
          v8 += 616;
        }

        while (v99 >= v59);
        do
        {
          v60 = *(v56 - 2);
          v56 -= 616;
        }

        while (v99 < v60);
      }

      v61 = (v8 - 616);
      if (v8 - 616 != a1)
      {
        *a1 = *v61;
        sub_1003A8CFC(a1 + 8, v8 - 608);
        sub_1003A8CFC(a1 + 80, v8 - 536);
        sub_1003A8CFC(a1 + 144, v8 - 472);
        sub_1003A8CFC(a1 + 208, v8 - 408);
        sub_1003A8CFC(a1 + 376, v8 - 240);
        sub_1003A8CFC(a1 + 488, v8 - 128);
        v62 = *(v8 - 16);
        *(a1 + 608) = *(v8 - 8);
        *(a1 + 600) = v62;
      }

      *v61 = v90;
      sub_1003A8CFC(v8 - 608, v93);
      sub_1003A8CFC(v8 - 536, v94);
      sub_1003A8CFC(v8 - 472, v95);
      sub_1003A8CFC(v8 - 408, v96);
      sub_1003A8CFC(v8 - 240, v97);
      *&result = sub_1003A8CFC(v8 - 128, v98).n128_u64[0];
      a4 = 0;
      v63 = v99;
      *(v8 - 8) = v100;
      *(v8 - 16) = v63;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {
      sub_1003BE770(v8, v8 + 616, v8 + 1232, v87);
      return result;
    }

    if (v10 == 5)
    {
      sub_1003BE770(v8, v8 + 616, v8 + 1232, v8 + 1848);
      result = *(a2 - 2);
      if (result < *(v8 + 2448))
      {
        sub_1003BF2A4((v8 + 1848), v87);
        result = *(v8 + 2448);
        if (result < *(v8 + 1832))
        {
          sub_1003BF2A4((v8 + 1232), (v8 + 1848));
          result = *(v8 + 1832);
          if (result < *(v8 + 1216))
          {
            v64 = (v8 + 616);
            v65 = (v8 + 1232);
            goto LABEL_130;
          }
        }
      }

      return result;
    }

    goto LABEL_9;
  }

  result = *(v8 + 1216);
  v66 = *(a2 - 2);
  if (result < *(v8 + 600))
  {
    if (v66 < result)
    {
      goto LABEL_111;
    }

    sub_1003BF2A4(v8, (v8 + 616));
    result = *(a2 - 2);
    if (result >= *(v8 + 1216))
    {
      return result;
    }

    v67 = (v8 + 616);
LABEL_112:
    v68 = a2 - 616;
LABEL_113:
    sub_1003BF2A4(v67, v68);
    return result;
  }

  if (v66 < result)
  {
    v64 = (v8 + 616);
    v65 = a2 - 616;
LABEL_130:
    sub_1003BF2A4(v64, v65);
    result = *(v8 + 1216);
    if (result < *(v8 + 600))
    {
      v68 = (v8 + 616);
      v67 = v8;
      goto LABEL_113;
    }
  }

  return result;
}

void sub_1003BE740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 600);
  v9 = *(a3 + 600);
  if (v8 >= *(a1 + 600))
  {
    if (v9 < v8)
    {
      sub_1003BF2A4(a2, a3);
      if (*(a2 + 600) < *(v7 + 600))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_1003BF2A4(a1, v10);
      goto LABEL_10;
    }

    sub_1003BF2A4(a1, a2);
    if (*(a3 + 600) < *(a2 + 600))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 600) < *(a3 + 600))
  {
    sub_1003BF2A4(a3, a4);
    if (*(a3 + 600) < *(a2 + 600))
    {
      sub_1003BF2A4(a2, a3);
      if (*(a2 + 600) < *(v7 + 600))
      {

        sub_1003BF2A4(v7, a2);
      }
    }
  }
}

void sub_1003BE888(uint64_t a1, char *a2, char *a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = &a2[-a1];
    v7 = 0x4FCACE213F2B3885 * (&a2[-a1] >> 3);
    if (&a2[-a1] >= 617)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = (a1 + 616 * v8);
      do
      {
        sub_1003BF428(v5, v7, v10);
        v10 -= 77;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (*(v11 + 75) < *(v5 + 600))
        {
          sub_1003BF2A4(v11, v5);
          sub_1003BF428(v5, v7, v5);
        }

        v11 += 616;
      }

      while (v11 != a3);
    }

    if (v6 >= 617)
    {
      v12 = 0x4FCACE213F2B3885 * (v6 >> 3);
      v40 = v5;
      v39 = v5 + 600;
      do
      {
        v13 = v4;
        v43 = *v5;
        sub_1003BBF40(v44, v5 + 8);
        sub_1003BBC24(v45, v5 + 80);
        sub_1003BBC24(v46, v5 + 144);
        sub_1003BC130(v47, v5 + 208);
        sub_1003BBDB4(v48, v5 + 376);
        sub_1003BBDB4(v49, v5 + 488);
        v14 = 0;
        v50 = *v39;
        v51 = *(v39 + 8);
        v15 = v5;
        do
        {
          v16 = v15 + 616 * v14;
          v17 = v16 + 616;
          if (2 * v14 + 2 >= v12)
          {
            v14 = (2 * v14) | 1;
          }

          else
          {
            v18 = *(v16 + 1216);
            v19 = *(v16 + 1832);
            v20 = v16 + 1232;
            if (v18 >= v19)
            {
              v14 = (2 * v14) | 1;
            }

            else
            {
              v17 = v20;
              v14 = 2 * v14 + 2;
            }
          }

          *v15 = *v17;
          sub_1003A8CFC(v15 + 8, v17 + 8);
          sub_1003A8CFC(v15 + 80, v17 + 80);
          sub_1003A8CFC(v15 + 144, v17 + 144);
          sub_1003A8CFC(v15 + 208, v17 + 208);
          sub_1003A8CFC(v15 + 376, v17 + 376);
          sub_1003A8CFC(v15 + 488, v17 + 488);
          v21 = *(v17 + 600);
          *(v15 + 608) = *(v17 + 608);
          *(v15 + 600) = v21;
          v15 = v17;
        }

        while (v14 <= ((v12 - 2) >> 1));
        v41 = (v17 + 600);
        v42 = v13 - 616;
        if (v17 == v13 - 616)
        {
          *v17 = v43;
          sub_1003A8CFC(v17 + 8, v44);
          sub_1003A8CFC(v17 + 80, v45);
          sub_1003A8CFC(v17 + 144, v46);
          sub_1003A8CFC(v17 + 208, v47);
          sub_1003A8CFC(v17 + 376, v48);
          sub_1003A8CFC(v17 + 488, v49);
          v37 = v50;
          *(v17 + 608) = v51;
          *v41 = v37;
          v5 = v40;
        }

        else
        {
          *v17 = *(v13 - 616);
          v22 = (v13 - 608);
          sub_1003A8CFC(v17 + 8, (v13 - 608));
          v23 = (v13 - 536);
          sub_1003A8CFC(v17 + 80, (v13 - 536));
          v24 = (v13 - 472);
          sub_1003A8CFC(v17 + 144, (v13 - 472));
          v25 = (v13 - 408);
          sub_1003A8CFC(v17 + 208, (v13 - 408));
          v26 = (v13 - 240);
          sub_1003A8CFC(v17 + 376, (v13 - 240));
          v27 = (v13 - 128);
          sub_1003A8CFC(v17 + 488, (v13 - 128));
          v29 = *(v13 - 2);
          v28 = v13 - 16;
          *(v17 + 608) = *(v28 + 2);
          *v41 = v29;
          *v42 = v43;
          sub_1003A8CFC(v22, v44);
          sub_1003A8CFC(v23, v45);
          sub_1003A8CFC(v24, v46);
          sub_1003A8CFC(v25, v47);
          sub_1003A8CFC(v26, v48);
          sub_1003A8CFC(v27, v49);
          v5 = v40;
          *v28 = v50;
          *(v28 + 2) = v51;
          v30 = v17 - v40 + 616;
          if (v30 >= 617)
          {
            v31 = (0x4FCACE213F2B3885 * (v30 >> 3) - 2) >> 1;
            v32 = v40 + 616 * v31;
            if (*(v32 + 600) < *v41)
            {
              v52 = *v17;
              sub_1003BBF40(v53, v17 + 8);
              sub_1003BBC24(v54, v17 + 80);
              sub_1003BBC24(v55, v17 + 144);
              sub_1003BC130(v56, v17 + 208);
              sub_1003BBDB4(v57, v17 + 376);
              sub_1003BBDB4(v58, v17 + 488);
              v33 = *v41;
              v60 = *(v17 + 608);
              v59 = v33;
              v5 = v40;
              do
              {
                v34 = v32;
                v35 = v32 + 8;
                *v17 = *v32;
                sub_1003A8CFC(v17 + 8, v32 + 8);
                sub_1003A8CFC(v17 + 80, v32 + 80);
                sub_1003A8CFC(v17 + 144, v32 + 144);
                sub_1003A8CFC(v17 + 208, v32 + 208);
                sub_1003A8CFC(v17 + 376, v32 + 376);
                sub_1003A8CFC(v17 + 488, v32 + 488);
                v36 = *(v32 + 600);
                *(v17 + 608) = *(v32 + 608);
                *(v17 + 600) = v36;
                if (!v31)
                {
                  break;
                }

                v31 = (v31 - 1) >> 1;
                v32 = v40 + 616 * v31;
                v17 = v34;
              }

              while (*(v32 + 600) < v59);
              *v34 = v52;
              sub_1003A8CFC(v35, v53);
              sub_1003A8CFC(v34 + 80, v54);
              sub_1003A8CFC(v34 + 144, v55);
              sub_1003A8CFC(v34 + 208, v56);
              sub_1003A8CFC(v34 + 376, v57);
              sub_1003A8CFC(v34 + 488, v58);
              *(v34 + 600) = v59;
              *(v34 + 608) = v60;
            }
          }
        }

        v38 = v12-- <= 2;
        v4 = v42;
      }

      while (!v38);
    }
  }
}

void sub_1003BEE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1003BA114(&STACK[0x2A0]);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

BOOL sub_1003BEE8C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0x4FCACE213F2B3885 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 1216);
        v9 = *(a2 - 16);
        if (v8 < *(a1 + 600))
        {
          if (v9 >= v8)
          {
            sub_1003BF2A4(a1, (a1 + 616));
            if (*(a2 - 16) >= *(v3 + 1216))
            {
              return 1;
            }

            a1 = v3 + 616;
          }

          v5 = (a2 - 616);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 616);
        v7 = (a2 - 616);
        break;
      case 4:
        sub_1003BE770(a1, a1 + 616, a1 + 1232, a2 - 616);
        return 1;
      case 5:
        sub_1003BE770(a1, a1 + 616, a1 + 1232, a1 + 1848);
        if (*(a2 - 16) >= *(v3 + 2448))
        {
          return 1;
        }

        sub_1003BF2A4((v3 + 1848), (a2 - 616));
        if (*(v3 + 2448) >= *(v3 + 1832))
        {
          return 1;
        }

        sub_1003BF2A4((v3 + 1232), (v3 + 1848));
        if (*(v3 + 1832) >= *(v3 + 1216))
        {
          return 1;
        }

        v6 = (v3 + 616);
        v7 = (v3 + 1232);
        break;
      default:
        goto LABEL_16;
    }

    sub_1003BF2A4(v6, v7);
    if (*(v3 + 1216) < *(v3 + 600))
    {
      v5 = (v3 + 616);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 16) < *(a1 + 600))
    {
      v5 = (a2 - 616);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_1003BF2A4(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 1232;
  v11 = *(a1 + 1216);
  v12 = *(a1 + 1832);
  if (v11 < *(a1 + 600))
  {
    if (v12 >= v11)
    {
      sub_1003BF2A4(a1, (a1 + 616));
      if (*(v3 + 1832) >= *(v3 + 1216))
      {
        goto LABEL_36;
      }

      a1 = v3 + 616;
    }

    v13 = (v3 + 1232);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    sub_1003BF2A4((a1 + 616), (a1 + 1232));
    if (*(v3 + 1216) < *(v3 + 600))
    {
      v13 = (v3 + 616);
      a1 = v3;
LABEL_35:
      sub_1003BF2A4(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 1848;
  if (v3 + 1848 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 600) < *(v10 + 600))
    {
      v21 = *v14;
      sub_1003BBF40(v22, v14 + 8);
      sub_1003BBC24(v23, v14 + 80);
      sub_1003BBC24(v24, v14 + 144);
      sub_1003BC130(v25, v14 + 208);
      sub_1003BBDB4(v26, v14 + 376);
      sub_1003BBDB4(v27, v14 + 488);
      v28 = *(v14 + 600);
      v29 = *(v14 + 608);
      v17 = v15;
      while (1)
      {
        *(v3 + v17 + 1848) = *(v3 + v17 + 1232);
        sub_1003A8CFC(v3 + v17 + 1856, v3 + v17 + 1240);
        sub_1003A8CFC(v3 + v17 + 1928, v3 + v17 + 1312);
        sub_1003A8CFC(v3 + v17 + 1992, v3 + v17 + 1376);
        sub_1003A8CFC(v3 + v17 + 2056, v3 + v17 + 1440);
        sub_1003A8CFC(v3 + v17 + 2224, v3 + v17 + 1608);
        sub_1003A8CFC(v3 + v17 + 2336, v3 + v17 + 1720);
        v18 = v3 + v17;
        *(v18 + 2448) = *(v3 + v17 + 1832);
        *(v18 + 2456) = *(v3 + v17 + 1840);
        if (v17 == -1232)
        {
          break;
        }

        v17 -= 616;
        if (v28 >= *(v18 + 1216))
        {
          v19 = (v3 + v17 + 1848);
          goto LABEL_44;
        }
      }

      v19 = v3;
LABEL_44:
      *v19 = v21;
      sub_1003A8CFC(v18 + 1240, v22);
      sub_1003A8CFC(v18 + 1312, v23);
      sub_1003A8CFC(v18 + 1376, v24);
      sub_1003A8CFC(v18 + 1440, v25);
      sub_1003A8CFC(v18 + 1608, v26);
      sub_1003A8CFC(v18 + 1720, v27);
      *(v18 + 1832) = v28;
      *(v18 + 1840) = v29;
      if (++v16 == 8)
      {
        return v14 + 616 == a2;
      }
    }

    v10 = v14;
    v15 += 616;
    v14 += 616;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_1003BF28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BF2A4(char *a1, char *a2)
{
  v5 = *a1;
  sub_1003BBF40(v6, (a1 + 8));
  sub_1003BBC24(v7, (a1 + 80));
  sub_1003BBC24(v8, (a1 + 144));
  sub_1003BC130(v9, (a1 + 208));
  sub_1003BBDB4(v10, (a1 + 376));
  sub_1003BBDB4(v11, (a1 + 488));
  v12 = *(a1 + 75);
  v13 = *(a1 + 152);
  *a1 = *a2;
  sub_1003A8CFC((a1 + 8), (a2 + 8));
  sub_1003A8CFC((a1 + 80), (a2 + 80));
  sub_1003A8CFC((a1 + 144), (a2 + 144));
  sub_1003A8CFC((a1 + 208), (a2 + 208));
  sub_1003A8CFC((a1 + 376), (a2 + 376));
  sub_1003A8CFC((a1 + 488), (a2 + 488));
  v4 = *(a2 + 75);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 75) = v4;
  *a2 = v5;
  sub_1003A8CFC((a2 + 8), v6);
  sub_1003A8CFC((a2 + 80), v7);
  sub_1003A8CFC((a2 + 144), v8);
  sub_1003A8CFC((a2 + 208), v9);
  sub_1003A8CFC((a2 + 376), v10);
  sub_1003A8CFC((a2 + 488), v11);
  *(a2 + 75) = v12;
  *(a2 + 152) = v13;
}

void sub_1003BF414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

void sub_1003BF428(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x4FCACE213F2B3885 * ((a3 - a1) >> 3))
    {
      v8 = (0x9F959C427E56710ALL * ((a3 - a1) >> 3)) | 1;
      v9 = (a1 + 616 * v8);
      if ((0x9F959C427E56710ALL * ((a3 - a1) >> 3) + 2) < a2 && v9[75] < v9[152])
      {
        v9 += 77;
        v8 = 0x9F959C427E56710ALL * ((a3 - a1) >> 3) + 2;
      }

      if (v9[75] >= a3[75])
      {
        v16 = *a3;
        sub_1003BBF40(v17, (a3 + 1));
        sub_1003BBC24(v18, (v4 + 10));
        sub_1003BBC24(v19, (v4 + 18));
        sub_1003BC130(v20, (v4 + 26));
        sub_1003BBDB4(v21, (v4 + 47));
        sub_1003BBDB4(v22, (v4 + 61));
        v23 = v4[75];
        v24 = *(v4 + 152);
        do
        {
          v10 = v9;
          v11 = (v9 + 1);
          *v4 = *v9;
          sub_1003A8CFC((v4 + 1), (v9 + 1));
          sub_1003A8CFC((v4 + 10), (v9 + 10));
          sub_1003A8CFC((v4 + 18), (v9 + 18));
          sub_1003A8CFC((v4 + 26), (v9 + 26));
          sub_1003A8CFC((v4 + 47), (v9 + 47));
          sub_1003A8CFC((v4 + 61), (v9 + 61));
          v12 = *(v9 + 75);
          *(v4 + 152) = *(v9 + 152);
          *(v4 + 75) = v12;
          if (v6 < v8)
          {
            break;
          }

          v13 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = (a1 + 616 * v8);
          v14 = v13 + 2;
          if (v14 < a2 && v9[75] < v9[152])
          {
            v9 += 77;
            v8 = v14;
          }

          v4 = v10;
        }

        while (v9[75] >= v23);
        *v10 = v16;
        sub_1003A8CFC(v11, v17);
        sub_1003A8CFC((v10 + 10), v18);
        sub_1003A8CFC((v10 + 18), v19);
        sub_1003A8CFC((v10 + 26), v20);
        sub_1003A8CFC((v10 + 47), v21);
        sub_1003A8CFC((v10 + 61), v22);
        v15 = v23;
        *(v10 + 152) = v24;
        v10[75] = v15;
      }
    }
  }
}

void sub_1003BF68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003BA114(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF6A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6A63BD81A98EF6)
  {
    sub_100019B38();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v6 = 0x6A63BD81A98EF6;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003BD3F4(a1, v6);
  }

  v13 = 0;
  v14 = 616 * v2;
  sub_1003BD5E4(a1, 616 * v2, a2);
  v15 = (616 * v2 + 616);
  v7 = a1[1];
  v8 = 616 * v2 + *a1 - v7;
  sub_1003BD450(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003BD868(&v13);
  return v12;
}

void sub_1003BF7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003BD868(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BF7F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + v3;
      *(v4 - 64) = off_1009991A0;
      *(v4 - 128) = off_1009991A0;
      *(v4 - 256) = off_1009991A0;
      *(v2 + v3 - 424) = off_1009991A0;
      *(v2 + v3 - 488) = off_1009991A0;
      *(v2 + v3 - 560) = off_1009991A0;
      v3 -= 560;
    }

    while (v2 + v3 != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1003BF8DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x75075075075075)
  {
    sub_100019B38();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4) > v10)
  {
    v10 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) >= 0x3A83A83A83A83ALL)
  {
    v13 = 0x75075075075075;
  }

  else
  {
    v13 = v10;
  }

  v23 = a1;
  if (v13)
  {
    sub_1003BFBCC(a1, v13);
  }

  v20 = 0;
  v21 = 560 * v9;
  v22 = 560 * v9;
  sub_1003BFA74(560 * v9, a2, a3, a4, a5, *a7, a8, a9, *a6);
  *&v22 = 560 * v9 + 560;
  v14 = a1[1];
  v15 = 560 * v9 + *a1 - v14;
  sub_1003BFC28(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_1003C0004(&v20);
  return v19;
}

void sub_1003BFA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003C0004(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BFA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  sub_1003BBF40(a1, a2);
  sub_1003BBC24(v17 + 72, a3);
  sub_1003BC130(a1 + 136, a4);
  sub_1003BBDB4(a1 + 304, a5);
  *(a1 + 416) = a9;
  *(a1 + 424) = a6;
  sub_1003BBC24(a1 + 432, a7);
  sub_1003BBC24(a1 + 496, a8);
  return a1;
}

void sub_1003BFB2C(_Unwind_Exception *a1)
{
  *v5 = off_1009991A0;
  *v4 = off_1009991A0;
  *v3 = off_1009991A0;
  *v2 = off_1009991A0;
  *v1 = off_1009991A0;
  _Unwind_Resume(a1);
}

void sub_1003BFBCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x75075075075076)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003BFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v7 = a2;
    do
    {
      sub_1003BBF40(v4, v7);
      sub_1003BBC24(v4 + 72, v7 + 72);
      sub_1003BC130(v4 + 136, v7 + 136);
      sub_1003BBDB4(v4 + 304, v7 + 304);
      v8 = *(v7 + 416);
      *(v4 + 424) = *(v7 + 424);
      *(v4 + 416) = v8;
      sub_1003BBC24(v4 + 432, v7 + 432);
      sub_1003BBC24(v4 + 496, v7 + 496);
      v7 += 560;
      v4 = v15 + 560;
      v15 += 560;
    }

    while (v7 != a3);
    v13 = 1;
    if (a2 != a3)
    {
      v9 = 0;
      do
      {
        v10 = (a2 + v9);
        v10[62] = off_1009991A0;
        v10[54] = off_1009991A0;
        v10[38] = off_1009991A0;
        v10[17] = off_1009991A0;
        v10[9] = off_1009991A0;
        *v10 = off_1009991A0;
        v9 += 560;
      }

      while (a2 + v9 != a3);
    }
  }

  return sub_1003BFED4(v12);
}

uint64_t sub_1003BFED4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003BFF20(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003BFF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v5 = 0;
    do
    {
      v6 = a3 + v5;
      *(v6 - 64) = off_1009991A0;
      *(v6 - 128) = off_1009991A0;
      *(v6 - 256) = off_1009991A0;
      *(a3 + v5 - 424) = off_1009991A0;
      *(a3 + v5 - 488) = off_1009991A0;
      *(a3 + v5 - 560) = off_1009991A0;
      v5 -= 560;
    }

    while (a3 + v5 != a5);
  }
}

uint64_t sub_1003C0004(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = v3 + v4;
      *(v5 - 64) = off_1009991A0;
      *(v5 - 128) = off_1009991A0;
      *(v5 - 256) = off_1009991A0;
      *(v3 + v4 - 424) = off_1009991A0;
      *(v3 + v4 - 488) = off_1009991A0;
      *(v3 + v4 - 560) = off_1009991A0;
      v4 -= 560;
    }

    while (v3 + v4 != v2);
    *(a1 + 16) = v3 + v4;
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_1003C01D0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 144;
      do
      {
        *(v3 - 9) = off_1009991A0;
        *(v3 - 18) = off_1009991A0;
        v4 -= 152;
        v3 -= 152;
      }

      while (v3 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

void sub_1003C0248(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C02A4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_1003C0384(a1, (a4 + v8), v9);
      v9 += 19;
      v8 += 152;
    }

    while (v9 != a3);
    if (v6 != a3)
    {
      v10 = v6 + 10;
      do
      {
        v6[10] = off_1009991A0;
        v6[1] = off_1009991A0;
        v6 += 19;
        v10 += 19;
      }

      while (v6 != a3);
    }
  }
}

void sub_1003C0368(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1004C9F94();
  }

  _Unwind_Resume(exception_object);
}

double sub_1003C0384(uint64_t a1, void *a2, void *a3)
{
  v3 = (a3 + 10);
  *a2 = *a3;
  v4 = (a2 + 10);
  sub_1003C03F4((a2 + 1), (a3 + 1));
  *&result = sub_1003BBF40(v4, v3).n128_u64[0];
  return result;
}

__n128 sub_1003C03F4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x400000001;
  *(a1 + 24) = 0x400000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A95C8;
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
  if (v3 > 1)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 5)
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
  if (*(a2 + 8) > 1u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 4u)
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

uint64_t sub_1003C0584(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 144;
    do
    {
      *(v3 - 72) = off_1009991A0;
      *(v3 - 144) = off_1009991A0;
      v3 -= 152;
      v4 -= 152;
    }

    while (v3 != v2);
    *(a1 + 16) = v3;
  }

  v5 = *a1;
  if (*a1)
  {
    operator delete(v5);
  }

  return a1;
}

float64x2_t sub_1003C07A0(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_1004C9FE4();
  }

  sub_1003A8C00(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * (v6 - 2));
    v13 = (v11 + 8 * (v6 - 2));
    v14 = (v6 - 1) >> 1;
    do
    {
      v15 = *v10++;
      *v11++ = vmulq_n_f64(v15, a3);
      --v14;
    }

    while (v14);
    result = vmulq_n_f64(*v12, a3);
    *v13 = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = *v7++;
      result.f64[0] = v9 * a3;
      *v8++ = v9 * a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1003C0860(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1AF286BCA1AF286)
  {
    sub_100019B38();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v8 = 0x1AF286BCA1AF286;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_1003C0248(a1, v8);
  }

  v15 = 0;
  v16 = 152 * v4;
  v17 = 152 * v4;
  sub_1003C09C0((152 * v4), a3, a4, *a2);
  *&v17 = 152 * v4 + 152;
  v9 = *(a1 + 8);
  v10 = 152 * v4 + *a1 - v9;
  sub_1003C02A4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003C0584(&v15);
  return v14;
}

void sub_1003C09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003C0584(va);
  _Unwind_Resume(a1);
}

double *sub_1003C09C0(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = a4;
  v6 = (a1 + 10);
  sub_1003C03F4((a1 + 1), a2);
  sub_1003BBF40(v6, a3);
  return a1;
}

void sub_1003C0A30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 56;
      v7 = v4 - 56;
      v8 = v4 - 56;
      do
      {
        v9 = *v8;
        v8 -= 56;
        (*v9)(v7);
        v6 -= 56;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003C0AF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C0B4C(uint64_t a1, uint64_t a2, void (***a3)(void, __n128), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = sub_1003C0C14(a4 + v7, v8);
      v8 += 56;
      v7 += 56;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 7;
        (*v12)(v6, v9);
        v10 += 7;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_1003C0BF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_1004CA010(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003C0C14(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9730;
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
  if (v3 > 2)
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
  if (*(a2 + 8) > 2u)
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

uint64_t sub_1003C0E04(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003C0E70(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003C0AF0(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1003C0C14(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = 56 * v2 + *a1 - v7;
  sub_1003C0B4C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003C0E04(&v13);
  return v12;
}

void sub_1003C0FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003C0E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C106C(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000002;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A97C0;
  if (a2 > 2)
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

uint64_t sub_1003C1194(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x200000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1009A9808;
  if (a2 > 1)
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

double sub_1003C12C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 == a2)
  {
    sub_1004CA96C();
  }

  if (a1 == a3)
  {
    sub_1004CA940();
  }

  if (a1 == a4)
  {
    sub_1004CA914();
  }

  if (a1 == a5)
  {
    sub_1004CA8E8();
  }

  if (a1 == a6)
  {
    sub_1004CA8BC();
  }

  if (a1 == a7)
  {
    sub_1004CA890();
  }

  if (a1 == a8)
  {
    sub_1004CA864();
  }

  if (a1 == a9)
  {
    sub_1004CA838();
  }

  if (a2 == a3)
  {
    sub_1004CA80C();
  }

  if (a2 == a4)
  {
    sub_1004CA7E0();
  }

  if (a2 == a5)
  {
    sub_1004CA7B4();
  }

  if (a2 == a6)
  {
    sub_1004CA788();
  }

  if (a2 == a7)
  {
    sub_1004CA75C();
  }

  if (a2 == a8)
  {
    sub_1004CA730();
  }

  if (a2 == a9)
  {
    sub_1004CA704();
  }

  if (a3 == a4)
  {
    sub_1004CA6D8();
  }

  if (a3 == a5)
  {
    sub_1004CA6AC();
  }

  if (a3 == a6)
  {
    sub_1004CA680();
  }

  if (a3 == a7)
  {
    sub_1004CA654();
  }

  if (a3 == a8)
  {
    sub_1004CA628();
  }

  if (a3 == a9)
  {
    sub_1004CA5FC();
  }

  if (a4 == a5)
  {
    sub_1004CA5D0();
  }

  if (a4 == a6)
  {
    sub_1004CA5A4();
  }

  if (a4 == a7)
  {
    sub_1004CA578();
  }

  if (a4 == a8)
  {
    sub_1004CA54C();
  }

  if (a4 == a9)
  {
    sub_1004CA520();
  }

  if (a5 == a6)
  {
    sub_1004CA4F4();
  }

  if (a5 == a7)
  {
    sub_1004CA4C8();
  }

  if (a5 == a8)
  {
    sub_1004CA49C();
  }

  if (a5 == a9)
  {
    sub_1004CA470();
  }

  if (a6 == a7)
  {
    sub_1004CA444();
  }

  if (a6 == a8)
  {
    sub_1004CA418();
  }

  if (a6 == a9)
  {
    sub_1004CA3EC();
  }

  if (a7 == a8)
  {
    sub_1004CA3C0();
  }

  if (a7 == a9)
  {
    sub_1004CA394();
  }

  if (a8 == a9)
  {
    sub_1004CA368();
  }

  v16 = *(a1 + 8);
  if (v16 != *(a1 + 12))
  {
    sub_1004CA07C();
  }

  v17 = *(a7 + 24);
  if (*(a7 + 28) * v17 < v16)
  {
    sub_1004CA33C();
  }

  v18 = *(a8 + 24);
  if (*(a8 + 28) * v18 < v16)
  {
    sub_1004CA310();
  }

  v44 = *(a9 + 28) * *(a9 + 24);
  if (v44 < 3 * v16)
  {
    sub_1004CA2E4();
  }

  if (*(a2 + 24) < v16)
  {
    sub_1004CA2B8();
  }

  if (*(a2 + 28) < v16)
  {
    sub_1004CA28C();
  }

  if (*(a3 + 24) < v16)
  {
    sub_1004CA260();
  }

  if (*(a3 + 28) < v16)
  {
    sub_1004CA234();
  }

  if (*(a4 + 24) < v16)
  {
    sub_1004CA208();
  }

  if (*(a4 + 28) < v16)
  {
    sub_1004CA1DC();
  }

  if (*(a5 + 24) < v16)
  {
    sub_1004CA1B0();
  }

  if (*(a5 + 28) < v16)
  {
    sub_1004CA184();
  }

  if (*(a6 + 24) < v16)
  {
    sub_1004CA158();
  }

  if (*(a6 + 28) < v16)
  {
    sub_1004CA12C();
  }

  if (v17 < v16)
  {
    sub_1004CA100();
  }

  if (v18 < v16)
  {
    sub_1004CA0D4();
  }

  sub_1003A8CFC(a2, a1);
  sub_1003A8C00(a3, v16, v16);
  sub_1003A8C50(a3, 0.0);
  sub_1003A8C00(a4, v16, v16);
  sub_1003A8C50(a4, 0.0);
  sub_1003A8C00(a5, v16, v16);
  sub_1003A8C50(a5, 0.0);
  sub_1003A8C00(a6, v16, v16);
  sub_1003A8C50(a6, 0.0);
  v19 = *(a3 + 32);
  v20 = *(a4 + 32);
  v21 = *(a7 + 32);
  v22 = *(a8 + 32);
  v23 = *(a9 + 32);
  v24 = *(a2 + 32);
  v25 = *(a2 + 8);
  v26 = *(a5 + 32);
  v27 = *(a5 + 8);
  qmemcpy(v45, "NVNB", sizeof(v45));
  v28 = dgeevx_NEWLAPACK();
  if (v44 < **(a9 + 32) && cnprint::CNPrinter::GetLogLevel(v28) <= 1)
  {
    cnprint::CNPrinter::Print();
  }

  sub_1003A8C00(a9, *(a9 + 24), *(a9 + 28));
  sub_1003A8C00(a8, v16, 2);
  sub_1003A8C00(a7, v16, 1);
  if (v16)
  {
    v30 = 0;
    v31 = *(a4 + 32);
    v32 = *(a5 + 32);
    v33 = *(a6 + 32);
    do
    {
      result = *(v31 + 8 * v30);
      if (result != 0.0)
      {
        v34 = v30 * v16;
        v35 = v16 + v30;
        v36 = v16;
        do
        {
          v37 = *(v32 + 8 * v35);
          *(v33 + 8 * v34) = v37;
          *(v33 + 8 * v35) = -v37;
          result = *(v32 + 8 * v34);
          *(v32 + 8 * v35) = result;
          ++v34;
          ++v35;
          --v36;
        }

        while (v36);
        ++v30;
      }

      ++v30;
    }

    while (v30 < v16);
    v38 = v16 - 1;
    if (v16 != 1)
    {
      v39 = *(a3 + 32);
      v40 = *(a4 + 32);
      v41 = (v40 + 8);
      v42 = (v39 + 8);
      v43 = v16 + 1;
      do
      {
        *(v39 + 8 * v43) = *v42;
        result = *v41;
        *(v40 + 8 * v43) = *v41;
        *v42++ = 0;
        *v41++ = 0.0;
        v43 += v16 + 1;
        --v38;
      }

      while (v38);
    }
  }

  return result;
}

uint64_t sub_1003C1940()
{
  v1 = xmmword_10056F270;
  v2[0] = unk_10056F280;
  v2[1] = xmmword_10056F290;
  v2[2] = unk_10056F2A0;
  qword_1009F7D10 = 0;
  unk_1009F7D18 = 0;
  qword_1009F7D08 = 0;
  sub_10004EEB8(&qword_1009F7D08, &v1, &v3, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F7D08, &_mh_execute_header);
  v1 = xmmword_10056F2B0;
  qword_1009F7D28 = 0;
  unk_1009F7D30 = 0;
  qword_1009F7D20 = 0;
  sub_10004EEB8(&qword_1009F7D20, &v1, v2, 1uLL);
  return __cxa_atexit(sub_100045220, &qword_1009F7D20, &_mh_execute_header);
}

void sub_1003C1A44(uint64_t a1, double a2, double a3)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  if (a3 <= 0.0)
  {
    sub_1004CA9C4();
  }

  if (a2 <= 0.0)
  {
    sub_1004CA998();
  }

  *(a1 + 24) = 1.0 / a2 / (1.0 / a2 + 1.0 / (a3 * 6.28318531));
  sub_1003C1B54(a1);
  *a1 = 1;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a2;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured with fs = %f and fc = %f", &v7, 0x16u);
  }
}

void sub_1003C1B54(uint64_t a1)
{
  *(a1 + 1) = 0;
  *(a1 + 32) = 0;
  v1 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF reset", v2, 2u);
  }
}

uint64_t sub_1003C1BC4(uint64_t a1, __int128 *a2, _DWORD *a3)
{
  *a1 = off_1009A9898;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v6;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 5);
  *(a1 + 56) = 0;
  *(a1 + 48) = v8;
  *(a1 + 32) = v7;
  *(a1 + 64) = 0;
  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3 ? "PredictorSecondary_GestureClassifier" : "PredictorPrimary_GestureClassifier";
    sub_100004A08(&__p, v10);
    v11 = (__p.st_gid & 0x80000000) == 0 ? &__p : *&__p.st_dev;
    *buf = 136315138;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Configuring GestureClassifier for Predictor %s", buf, 0xCu);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  if (*a3 == 1)
  {
    operator new();
  }

  if (!*a3)
  {
    operator new();
  }

  *(a1 + 104) = espresso_create_context();
  *(a1 + 96) = espresso_create_plan();
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (stat(v12, &__p))
  {
    *(a1 + 72) = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CA9F0();
    }
  }

  else
  {
    *(a1 + 72) = 1;
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Successfully located model weights filepath.", buf, 2u);
    }

    v14 = *(a1 + 96);
    if (*(a2 + 23) < 0)
    {
      v15 = *a2;
    }

    if (espresso_plan_add_network())
    {
      *(a1 + 72) = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAA24();
      }
    }

    else
    {
      v16 = *(a1 + 96);
      if (espresso_plan_build())
      {
        *(a1 + 72) = 0;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004CAA58();
        }
      }

      else
      {
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Espresso Model initialized", buf, 2u);
        }
      }
    }
  }

  return a1;
}

void sub_1003C21B4(_Unwind_Exception *a1)
{
  v6 = *(v1 + 64);
  *(v1 + 64) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *v4;
  *v4 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_1003C2288(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8 = qword_1009F9820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 32))
    {
      v9 = "PredictorSecondary_GestureClassifier";
    }

    else
    {
      v9 = "PredictorPrimary_GestureClassifier";
    }

    sub_100004A08(v74, v9);
    sub_1004CAA8C(v74, buf, v8);
  }

  sub_1003C2B28(a1, a2, a3);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v10 = *(a3 + 32);
  v55 = a2;
  if (v10 == 1)
  {
    v75 = 1;
    v76 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v77 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    if (espresso_buffer_pack_tensor_shape())
    {
      __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 177, "status == ESPRESSO_STATUS_SUCCESS");
    }

    v29 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v30 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    sub_1003C66A4(&__src, v30 * v29);
    v11 = __src;
    if (a2[15056] != 1)
    {
      __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 182, "inputObject.deviceMotionBufferSecondary.has_value()");
    }

    for (i = 0; ; ++i)
    {
      v32 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      if (i >= ((*(**(a1 + 56) + 16))(*(a1 + 56)) * v32))
      {
        break;
      }

      if ((a2[15056] & 1) == 0)
      {
        sub_1000195BC();
      }

      v33 = *&a2[8 * i + 10656];
      v11[i] = v33;
    }
  }

  else
  {
    v11 = 0;
    if (!v10)
    {
      v75 = 1;
      v76 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      v77 = 9;
      v78 = ((*(**(a1 + 56) + 16))(*(a1 + 56)) + 2);
      if (espresso_buffer_pack_tensor_shape())
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 147, "status == ESPRESSO_STATUS_SUCCESS");
      }

      v12 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      v13 = (9 * v12 * ((*(**(a1 + 56) + 16))(*(a1 + 56)) + 2));
      sub_1003C66A4(&__src, v13);
      v14 = a2 + 9368;
      v11 = __src;
      if (a2[9368] != 1 || a2[9544] != 1)
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 153, "inputObject.deviceMotionBufferAfterProcessingPrimary.has_value() and inputObject.deltaUwbBufferAfterProcessingPrimary.has_value()");
      }

      v53 = a3;
      v54 = v13;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = a2 + 4688;
      v19 = a2 + 9464;
      while (v16 < (*(**(a1 + 56) + 24))(*(a1 + 56)))
      {
        v20 = 0;
        v58 = v16;
        v21 = 2 * v16;
        v59 = v15;
        do
        {
          for (j = 0; j < (*(**(a1 + 56) + 16))(*(a1 + 56)); ++j)
          {
            v23 = (*(**(a1 + 56) + 16))(*(a1 + 56));
            if ((*v14 & 1) == 0)
            {
              sub_1000195BC();
            }

            v24 = *&v18[8 * j + 8 * v15 * v23];
            v11[v17++] = v24;
          }

          if (v14[176] != 1)
          {
            sub_1000195BC();
          }

          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *&v19[8 * (v25 | v21)];
            v11[v17++] = v28;
            v25 = 1;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          ++v20;
          ++v15;
        }

        while (v20 != 9);
        v16 = v58 + 1;
        v15 = v59 + 9;
      }

      if (v17 != v54)
      {
        __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 169, "m == flattenedVectorsize");
      }

      a3 = v53;
    }
  }

  *&v63 = v11;
  LODWORD(v73) = 65568;
  v34 = *(a1 + 80);
  v35 = *(a1 + 88);
  if (espresso_network_bind_buffer())
  {
    __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", 197, "status == ESPRESSO_STATUS_SUCCESS");
  }

  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  if (espresso_network_bind_buffer())
  {
    v52 = 202;
    goto LABEL_61;
  }

  v38 = *(a1 + 96);
  if (espresso_plan_execute_sync())
  {
    v52 = 206;
LABEL_61:
    __assert_rtn("makePrediction", "NRBYSpatialGesturePredictor.mm", v52, "status == ESPRESSO_STATUS_SUCCESS");
  }

  __src = 0;
  v61 = 0;
  v62 = 0;
  if (!*(a3 + 32))
  {
    v39 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAB00(&v75, v39);
    }
  }

  v40 = 0;
  v41 = 0;
  do
  {
    if (v41 >= v62)
    {
      v42 = __src;
      v43 = v41 - __src;
      v44 = (v41 - __src) >> 2;
      v45 = v44 + 1;
      if ((v44 + 1) >> 62)
      {
        sub_100019B38();
      }

      v46 = v62 - __src;
      if ((v62 - __src) >> 1 > v45)
      {
        v45 = v46 >> 1;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v47 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        sub_10004F51C(&__src, v47);
      }

      v48 = v44;
      v49 = (4 * v44);
      v50 = &v49[-v48];
      *v49 = *(v75 + v40);
      v41 = (v49 + 1);
      memcpy(v50, v42, v43);
      v51 = __src;
      __src = v50;
      v61 = v41;
      v62 = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v41 = *(v75 + v40);
      v41 += 4;
    }

    v61 = v41;
    v40 += 4;
  }

  while (v40 != 12);
  ++*(a3 + 8);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_1003C33FC(a1, v55, &__src, a3, a4, a5);
  if (__src)
  {
    v61 = __src;
    operator delete(__src);
  }

  if (v11)
  {
    operator delete(v11);
  }
}

void sub_1003C2B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004CABA4();
  }

  if (!*(v4 + 32))
  {
    if ((*(v6 + 4680) & 1) == 0)
    {
      sub_1004CABD8();
    }

    v9 = (v6 + 9368);
    if ((*(v6 + 9456) & 1) == 0)
    {
      sub_1004CAC04();
    }

    if ((*(v6 + 10632) & 1) == 0)
    {
      sub_1004CAC30();
    }

    if (*(v4 + 4) == 1)
    {
      bzero(__dst, 0x1248uLL);
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v10 = 9 * (*(**(v8 + 56) + 16))(*(v8 + 56));
      LODWORD(v11) = (*(**(v8 + 56) + 32))(*(v8 + 56)) - v10;
      if (v11 < (*(**(v8 + 56) + 32))(*(v8 + 56)))
      {
        v11 = v11;
        do
        {
          (*(**(v8 + 64) + 24))(v46);
          v12 = v46[2 * (v11 % (*(**(v8 + 56) + 16))(*(v8 + 56)))];
          (*(**(v8 + 64) + 24))(v45);
          v13 = (*(**(v8 + 56) + 16))(*(v8 + 56));
          if ((*(v6 + 4680) & 1) == 0)
          {
            goto LABEL_55;
          }

          __dst[v11] = (*(v6 + 8 * v11) - v12) / *&v45[2 * (v11 % v13) + 1];
        }

        while (++v11 < (*(**(v8 + 56) + 32))(*(v8 + 56)));
      }

      LODWORD(v14) = (*(**(v8 + 56) + 40))(*(v8 + 56)) - 2;
      if (v14 < (*(**(v8 + 56) + 40))(*(v8 + 56)))
      {
        v14 = v14;
        do
        {
          v46[0] = (*(**(v8 + 64) + 32))(*(v8 + 64));
          v47 = v15;
          v16 = v14 & 1;
          if (v14 < 0)
          {
            v16 = -v16;
          }

          v17 = v46[2 * v16];
          (*(**(v8 + 64) + 32))(*(v8 + 64));
          if ((*(v6 + 9456) & 1) == 0)
          {
            goto LABEL_55;
          }

          v18 = *(v6 + 9376 + 8 * v14) - v17;
          *(&v48 + v14++) = v18 / (*(**(v8 + 64) + 16))(*(v8 + 64));
        }

        while (v14 < (*(**(v8 + 56) + 40))(*(v8 + 56)));
      }

      *(v4 + 4) = 0;
      goto LABEL_41;
    }

    if ((*v9 & 1) == 0)
    {
      sub_1004CAC5C();
    }

    if ((*(v6 + 9544) & 1) == 0)
    {
      sub_1004CAC88();
    }

    memcpy(__dst, (v6 + 4688), 0x1248uLL);
    v19 = *(v6 + 9512);
    v50 = *(v6 + 9496);
    v51 = v19;
    v52 = *(v6 + 9528);
    v20 = *(v6 + 9480);
    v48 = *(v6 + 9464);
    v49 = v20;
    v21 = 9 * (*(**(v8 + 56) + 16))(*(v8 + 56));
    if (v21 >= (*(**(v8 + 56) + 32))(*(v8 + 56)))
    {
LABEL_25:
      LODWORD(v24) = (*(**(v8 + 56) + 32))(*(v8 + 56)) - v21;
      if (v24 >= (*(**(v8 + 56) + 32))(*(v8 + 56)))
      {
LABEL_29:
        if ((*(v6 + 10648) & 1) == 0)
        {
          sub_1004CACB4();
        }

        v27 = *(v6 + 10640);
        v28 = *(v4 + 24);
        if ((*(**(v8 + 56) + 40))(*(v8 + 56)) < 3)
        {
LABEL_34:
          v32 = (*(**(v8 + 56) + 40))(*(v8 + 56)) - 2;
          if (v32 >= (*(**(v8 + 56) + 40))(*(v8 + 56)))
          {
LABEL_41:
            v41 = *v9;
            memcpy((v6 + 4688), __dst, 0x1248uLL);
            if ((v41 & 1) == 0)
            {
              *v9 = 1;
            }

            v42 = *(v6 + 9544);
            v43 = v51;
            *(v6 + 9496) = v50;
            *(v6 + 9512) = v43;
            *(v6 + 9528) = v52;
            v44 = v49;
            *(v6 + 9464) = v48;
            *(v6 + 9480) = v44;
            if ((v42 & 1) == 0)
            {
              *(v6 + 9544) = 1;
            }

            if ((*(v6 + 10648) & 1) == 0)
            {
              sub_1004CACE0();
            }

            *(v4 + 24) = *(v6 + 10640);
            return;
          }

          v33 = v32;
          v34 = v27 - v28;
          v35 = (v6 + 8 * v32 + 9376);
          while (1)
          {
            v46[0] = (*(**(v8 + 64) + 40))(*(v8 + 64));
            v47 = v36;
            v37 = v33 >= 0 ? v33 & 1 : -(v33 & 1);
            v38 = v46[2 * v37];
            (*(**(v8 + 64) + 40))(*(v8 + 64));
            v45[1] = v39;
            v45[3] = v40;
            if ((*(v6 + 9456) & 1) == 0)
            {
              break;
            }

            *(&v48 + v33++) = ((*v35 - *(v35 - 2)) / v34 - v38) / *&v45[2 * v37 + 1];
            ++v35;
            if (v33 >= (*(**(v8 + 56) + 40))(*(v8 + 56)))
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v29 = 0;
          while ((*(v6 + 9544) & 1) != 0)
          {
            *(&v48 + v29) = *(v6 + 9480 + 8 * v29);
            v30 = (*(**(v8 + 56) + 40))(*(v8 + 56));
            v31 = v29 + 3;
            ++v29;
            if (v31 >= v30)
            {
              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v24 = v24;
        while (1)
        {
          (*(**(v8 + 64) + 24))(v46);
          v25 = v46[2 * (v24 % (*(**(v8 + 56) + 16))(*(v8 + 56)))];
          (*(**(v8 + 64) + 24))(v45);
          v26 = (*(**(v8 + 56) + 16))(*(v8 + 56));
          if ((*(v6 + 4680) & 1) == 0)
          {
            break;
          }

          __dst[v24] = (*(v6 + 8 * v24) - v25) / *&v45[2 * (v24 % v26) + 1];
          if (++v24 >= (*(**(v8 + 56) + 32))(*(v8 + 56)))
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      v22 = v21;
      v23 = __dst;
      while ((*v9 & 1) != 0)
      {
        *v23++ = *(v6 + 4688 + 8 * v22);
        if (++v22 >= (*(**(v8 + 56) + 32))(*(v8 + 56)))
        {
          goto LABEL_25;
        }
      }
    }

LABEL_55:
    sub_1000195BC();
  }
}

void sub_1003C33FC(uint64_t a1@<X0>, uint64_t a2@<X1>, float **a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *(a4 + 32);
  if (v7 == 1)
  {
    v17 = (*a3)[1];
    *a6 = **a3 <= v17;
    *(a6 + 8) = v17;
    *(a6 + 16) = 0;
    return;
  }

  if (!v7)
  {
    v12 = *a3;
    v13 = **a3;
    v14 = (*a3)[1];
    if (v13 <= v14 || v13 <= v12[2])
    {
      v18 = v12[2];
      if (v14 <= v13 || ((v14 - v13) > 0.03 ? (v19 = v14 <= v18) : (v19 = 1), v19))
      {
        v15 = 0;
        v20 = v18 <= v13 || v18 <= v14;
        if (v20 || (v18 - v13) <= 0.03)
        {
          goto LABEL_26;
        }

        v21 = v18;
        v22 = *(a4 + 16);
        v23 = 0.0799999982;
      }

      else
      {
        v21 = v14;
        v22 = *(a4 + 16);
        v23 = 0.100000001;
      }

      v24 = v22 + v21 * v23;
      if (v24 > 1.0)
      {
        v24 = 1.0;
      }

      *(a4 + 16) = v24;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      if (a5 > 1)
      {
        if (a5 == 3)
        {
          v15 = 0;
          v16 = *(a4 + 16) + -0.0799999982;
          if (v16 < 0.0)
          {
            v16 = 0.0;
          }

          *(a4 + 16) = v16;
          goto LABEL_26;
        }

        if (a5 != 2 && a5 != 4)
        {
          goto LABEL_26;
        }

LABEL_89:
        sub_1004CAD0C();
      }

      if (a5 == 1)
      {
        v15 = 0;
        *(a4 + 16) = 0;
        goto LABEL_26;
      }

      if (!a5)
      {
        goto LABEL_89;
      }
    }

LABEL_26:
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a4 + 16);
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities hysteresisProb = %f", buf, 0xCu);
    }

    if ((*(a2 + 9456) & 1) == 0)
    {
      sub_1004CAD38();
    }

    v75 = 0.0;
    if ((atomic_load_explicit(&qword_1009F7D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F7D40))
    {
      dword_1009F7D38 = (*(**(a1 + 56) + 24))(*(a1 + 56));
      __cxa_guard_release(&qword_1009F7D40);
    }

    sub_1003C671C(&v73, dword_1009F7D38);
    sub_1003C671C(&v71, dword_1009F7D38);
    v27 = dword_1009F7D38;
    if (dword_1009F7D38 < 1)
    {
      __assert_rtn("_refineModelPrediction", "NRBYSpatialGesturePredictor.mm", 392, "_dimInputsModel > 0");
    }

    if (*(a2 + 9456) != 1)
    {
      sub_1000195BC();
    }

    v28 = v73;
    v29 = v71;
    v30 = (a2 + 9384);
    v31 = dword_1009F7D38;
    do
    {
      *v28++ = *(v30 - 1);
      v32 = *v30;
      v30 += 2;
      *v29++ = v32;
      --v31;
    }

    while (v31);
    sub_1003C671C(&v69, (v27 - 1));
    sub_1003C671C(__p, dword_1009F7D38 - 1);
    v33 = v69;
    if (dword_1009F7D38 >= 2)
    {
      v34 = __p[0];
      v35 = dword_1009F7D38 - 1;
      v36 = (v71 + 8);
      v37 = (v73 + 8);
      v38 = v69;
      do
      {
        *v38++ = *(v37 - 1) - *v37;
        *v34++ = *v36 - *(v36 - 1);
        ++v36;
        ++v37;
        --v35;
      }

      while (v35);
    }

    if (v70 == v33)
    {
      v46 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = v70 - v33;
      v42 = __p[0];
      if (v41 <= 1)
      {
        v41 = 1;
      }

      do
      {
        v43 = *v33++;
        if (v43 > 0.0)
        {
          ++v39;
        }

        v44 = *v42++;
        if (v44 > 0.0)
        {
          ++v40;
        }

        --v41;
      }

      while (v41);
      v45 = v39;
      v46 = v40;
    }

    if (a5 <= 1)
    {
      if (a5 == 1)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAD64();
        }

        v52 = *(a4 + 16);
        if ((v15 & 1) == 0 && v52 <= *(a1 + 32) * 0.5)
        {
          v63 = v75;
          *a6 = 0;
          *(a6 + 8) = v63;
          *(a6 + 16) = 0;
          goto LABEL_73;
        }

        v53 = (*(**(a1 + 56) + 48))(*(a1 + 56));
        v54 = v53 * v45 + v52 * 0.55 + (*(**(a1 + 56) + 56))(*(a1 + 56)) * v46;
        v75 = v54;
        v55 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities with range and rssi derivatives SinglePredictor handoffConfidence = %f", buf, 0xCu);
        }

        sub_1003C3C7C(a1, a2, v15, &v75, a4, 1, buf, v56);
        goto LABEL_62;
      }

      if (!a5)
      {
LABEL_65:
        __assert_rtn("_refineModelPrediction", "NRBYSpatialGesturePredictor.mm", 444, "0");
      }
    }

    else
    {
      if (a5 == 3)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAD98();
        }

        v47 = *(a4 + 16);
        v48 = (*(**(a1 + 56) + 48))(*(a1 + 56));
        v49 = v48 * v45 + v47 * 0.55 + (*(**(a1 + 56) + 56))(*(a1 + 56)) * v46;
        v75 = v49;
        v50 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v49;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #probabilities with range and rssi derivatives DualAnchorAntennaPredictor handoffConfidence = %f", buf, 0xCu);
        }

        sub_1003C3C7C(a1, a2, v15, &v75, a4, 3, buf, v51);
LABEL_62:
        *a6 = *buf;
        *(a6 + 16) = *&buf[16];
        goto LABEL_67;
      }

      if (a5 == 2 || a5 == 4)
      {
        goto LABEL_65;
      }
    }

LABEL_67:
    if (v15)
    {
      v57 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v74 - 1);
        v59 = *(v72 - 1);
        v60 = *(a4 + 16);
        v61 = *(a6 + 8);
        *buf = 134218752;
        *&buf[4] = v58;
        *&buf[12] = 2048;
        *&buf[14] = v59;
        *&buf[22] = 2048;
        v77 = v60;
        v78 = 2048;
        v79 = v61;
        v62 = "#spatialGesturesPredictor #evaluation distance = %f, rssi = %f, prediction = Handoff, hysteresis prob = %f, handoff confidence = %f";
LABEL_75:
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, v62, buf, 0x2Au);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

LABEL_73:
    v57 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v74 - 1);
      v65 = *(v72 - 1);
      v66 = *(a4 + 16);
      v67 = *(a6 + 8);
      *buf = 134218752;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = v65;
      *&buf[22] = 2048;
      v77 = v66;
      v78 = 2048;
      v79 = v67;
      v62 = "#spatialGesturesPredictor #evaluation distance = %f, rssi = %f, prediction = Other, hysteresis prob = %f, handoff confidence = %f";
      goto LABEL_75;
    }

LABEL_76:
    *a4 = *a6;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }
}

double sub_1003C3C24(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 4)
    {
      v2 = 48;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v2 = 40;
    }

    return *(a1 + v2);
  }

  if (a2 == 1)
  {
    v2 = 32;
    return *(a1 + v2);
  }

  if (!a2 || a2 == 2)
  {
    sub_1004CADCC();
  }

  return result;
}

void sub_1003C3C7C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, double *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, __n128 a8@<Q0>)
{
  v10 = a3;
  a8.n128_u64[0] = 0;
  if (a6 <= 1)
  {
    if (a6 == 1)
    {
      v14 = 32;
      goto LABEL_6;
    }

    if (a6)
    {
      goto LABEL_7;
    }

LABEL_43:
    sub_1004CADF8();
  }

  if (a6 == 3)
  {
    v14 = 40;
LABEL_6:
    a8.n128_u64[0] = *(a1 + v14);
    goto LABEL_7;
  }

  if (a6 == 2 || a6 == 4)
  {
    goto LABEL_43;
  }

LABEL_7:
  if (a3 == 1 || (v15 = *a4, *a4 > a8.n128_f64[0]))
  {
    v16 = (*(**(a1 + 56) + 24))(*(a1 + 56), a8);
    sub_1003C671C(&v39, 9 * v16);
    v17 = *(a5 + 32);
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_11;
      }

      v36 = "0";
      v37 = 500;
    }

    else
    {
      if (*(a2 + 4680) == 1)
      {
        for (i = 0; i < (9 * (*(**(a1 + 56) + 24))(*(a1 + 56))); ++i)
        {
          if ((*(a2 + 4680) & 1) == 0)
          {
            sub_1000195BC();
          }

          v24 = (*(**(a1 + 56) + 16))(*(a1 + 56));
          v39[i] = *(a2 + 8 * v24 * i);
        }

LABEL_11:
        v18 = v39;
        v19 = v39 + 1;
        v20 = *v39;
        if (v39 == v40 || v19 == v40)
        {
          v22 = v39;
        }

        else
        {
          v25 = *v39;
          v26 = v39 + 1;
          v27 = v39;
          v28 = v39 + 1;
          do
          {
            v29 = *v28++;
            v30 = v29;
            if (v29 < v25)
            {
              v25 = v30;
              v27 = v26;
            }

            v26 = v28;
          }

          while (v28 != v40);
          v31 = *v27;
          v22 = v39;
          v32 = v39 + 1;
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v20 < v33)
            {
              v20 = v34;
              v22 = v19;
            }

            v19 = v32;
          }

          while (v32 != v40);
          v20 = v31;
        }

        if (vabdd_f64(v20, *v22) <= 0.85)
        {
          v10 = 1;
          if (!v39)
          {
LABEL_37:
            v15 = *a4;
            goto LABEL_38;
          }
        }

        else
        {
          *a4 = 0.0;
          v35 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #evaluation Speculating sideways motion", v38, 2u);
          }

          v10 = 0;
          v18 = v39;
          if (!v39)
          {
            goto LABEL_37;
          }
        }

        v40 = v18;
        operator delete(v18);
        goto LABEL_37;
      }

      v36 = "inputObject.deviceMotionBufferPrimary.has_value()";
      v37 = 492;
    }

    __assert_rtn("_evaluateHeuristics", "NRBYSpatialGesturePredictor.mm", v37, v36);
  }

LABEL_38:
  *a7 = v10;
  *(a7 + 8) = v15;
  *(a7 + 16) = 0;
}

void sub_1003C3F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C3F60(uint64_t a1)
{
  *a1 = off_1009A9898;
  v2 = *(a1 + 96);
  if (espresso_plan_destroy())
  {
    v8 = 534;
    goto LABEL_14;
  }

  v3 = *(a1 + 104);
  if (espresso_context_destroy())
  {
    v8 = 537;
LABEL_14:
    __assert_rtn("~GestureClassifier", "NRBYSpatialGesturePredictor.mm", v8, "status == ESPRESSO_STATUS_SUCCESS");
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Deleted model network parameters", v9, 2u);
  }

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1003C40A8(uint64_t a1)
{
  sub_1003C3F60(a1);

  operator delete();
}

uint64_t sub_1003C40E0(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A98C0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a1 + 64;
  do
  {
    v7 = a1 + v5;
    *(v7 + 64) = 0;
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
    v5 += 40;
  }

  while (v5 != 360);
  *(a1 + 424) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 9864) = 0u;
  *(a1 + 9880) = 0u;
  *(a1 + 9896) = 0u;
  *(a1 + 11160) = 0u;
  *(a1 + 11176) = 0u;
  *(a1 + 11192) = 0u;
  *(a1 + 11208) = 0;
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 16);
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    if (v10)
    {
      sub_10000AD84(v10);
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = v8;
  }

  bzero((a1 + 10080), 0x438uLL);
  *(a1 + 56) = 0;
  bzero((a1 + 504), 0x2490uLL);
  v11 = 0;
  *(a1 + 10040) = 0u;
  *(a1 + 10056) = 0u;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0u;
  *(a1 + 9976) = 0u;
  *(a1 + 9992) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0u;
  *(a1 + 9912) = 0u;
  *(a1 + 9928) = 0u;
  *(a1 + 11212) = a3;
  do
  {
    sub_1003C1A44(v6, 100.0, 50.0);
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured LPF for signal %d in device motion data", buf, 8u);
    }

    ++v11;
    v6 += 40;
  }

  while (v11 != 9);
  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    sub_1003C1A44(a1 + 424 + 40 * v13, 50.0, 20.0);
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF configured LPF for signal %d in UWB data", buf, 8u);
    }

    v14 = 0;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  v17 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor GesturePredictor is created", buf, 2u);
  }

  return a1;
}

void sub_1003C43CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count **a9, void **a10)
{
  if (*(v10 + 11207) < 0)
  {
    operator delete(*(v10 + 11184));
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 11168) = v13;
    operator delete(v13);
  }

  v14 = *(v10 + 9888);
  if (v14)
  {
    *(v10 + 9896) = v14;
    operator delete(v14);
  }

  v15 = *a10;
  if (*a10)
  {
    *(v10 + 9872) = v15;
    operator delete(v15);
  }

  if (*a9)
  {
    sub_10000AD84(*a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C4434(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 8) + 72))
  {
    v4 = *(a2 + 24);
    v27[0] = *(a2 + 8);
    v27[1] = v4;
    v5 = *(a2 + 88);
    v27[2] = *(a2 + 40);
    v27[3] = v5;
    v28 = *(a2 + 104);
    v29 = *(a2 + 64);
    *&v5 = *(a2 + 56);
    v30 = *(a2 + 80);
    v31 = v5;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1003C466C(a1, v27, v25);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAE58();
    }

    sub_1003C4764(a1 + 9864, v25);
    sub_100009734((a1 + 9888), a2);
    v6 = *(a2 + 72);
    v24[0] = *(a2 + 56);
    v24[1] = v6;
    sub_1003C48B4(v7, v24);
    v11 = *(a1 + 11168);
    v12 = *(a1 + 11176);
    if (v11 >= v12)
    {
      v14 = *(a1 + 11160);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100019B38();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_1003C67F0(a1 + 11160, v18);
      }

      v19 = 24 * v15;
      *v19 = v8;
      *(v19 + 8) = v9;
      *(v19 + 16) = v10;
      v13 = 24 * v15 + 24;
      v20 = *(a1 + 11160);
      v21 = *(a1 + 11168) - v20;
      v22 = 24 * v15 - v21;
      memcpy((v19 - v21), v20, v21);
      v23 = *(a1 + 11160);
      *(a1 + 11160) = v22;
      *(a1 + 11168) = v13;
      *(a1 + 11176) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v11 = v8;
      v11[1] = v9;
      v13 = (v11 + 3);
      v11[2] = v10;
    }

    *(a1 + 11168) = v13;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004CAE8C();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

__n128 sub_1003C466C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  v6 = (a1 + 96);
  do
  {
    if (*(v6 - 32) == 1)
    {
      v7 = *(a2 + v5);
      if (*(v6 - 31) == 1)
      {
        v7 = (1.0 - *(v6 - 1)) * *v6 + *(v6 - 1) * v7;
      }

      else
      {
        *(v6 - 31) = 1;
      }

      *v6 = v7;
    }

    else
    {
      v8 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAEC0(&v10, v11, v8);
      }

      v7 = *(a2 + v5);
    }

    *(a3 + v5) = v7;
    v5 += 8;
    v6 += 5;
  }

  while (v5 != 72);
  *(a3 + 72) = *(a2 + 72);
  result = *(a2 + 88);
  *(a3 + 88) = result;
  return result;
}

void sub_1003C4764(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 3);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x276276276276276)
    {
      sub_100019B38();
    }

    v14 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a1) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x13B13B13B13B13BLL)
    {
      v15 = 0x276276276276276;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_1003C6794(a1, v15);
    }

    v16 = 104 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    *(v16 + 48) = v19;
    v11 = 104 * v12 + 104;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 64) = v9;
    *(v4 + 80) = v10;
    *(v4 + 48) = v8;
    v11 = v4 + 104;
  }

  *(a1 + 8) = v11;
}

void sub_1003C48B4(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a2 * v5 - v4 * v3 + *a2 * v5 - v4 * v3;
  if (fabs(v6) < 1.0)
  {
    asin(v6);
  }

  atan2(v4 * v5 + v2 * v3 + v4 * v5 + v2 * v3, (v5 * v5 + v3 * v3) * -2.0 + 1.0);
  atan2(v3 * v5 + v2 * v4 + v3 * v5 + v2 * v4, (v4 * v4 + v5 * v5) * -2.0 + 1.0);
}

void sub_1003C4980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  if (*(*(v5 + 8) + 72))
  {
    v7 = v6;
    v8 = v5;
    v9 = *(v5 + 9944);
    v114 = *(v5 + 9928);
    v115 = v9;
    v10 = *(v5 + 9976);
    v116 = *(v5 + 9960);
    v117 = v10;
    if ((*(v6 + 72) & 1) == 0)
    {
      sub_1004CAF00();
    }

    v11 = *(v5 + 11212);
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        v4 = *(v6 + 16);
        v3 = *(v6 + 64);
        goto LABEL_15;
      }

      if (v11)
      {
LABEL_15:
        v15 = v115;
        *(v8 + 9912) = v114;
        *(v8 + 9928) = v15;
        v16 = v117;
        *(v8 + 9944) = v116;
        *(v8 + 9960) = v16;
        *(v8 + 9976) = v4;
        *(v8 + 9984) = v3;
        v17 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor GesturePredictor consumed UWB input", __dst, 2u);
        }

        bzero(__src, 0x3A8uLL);
        v110 = 0;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v101 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v18 = *(v8 + 9888);
        v19 = *(v8 + 9896) - v18;
        v20 = v19 >> 3;
        if (v19)
        {
          v21 = 0;
          if (v20 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v20;
          }

          while (*(v18 + 8 * v21) <= *(v7 + 8))
          {
            if (v22 == ++v21)
            {
              goto LABEL_25;
            }
          }

          LODWORD(v20) = v21;
        }

LABEL_25:
        if (v20 == 9)
        {
          v23 = 0;
          v24 = *(v8 + 9864);
          v25 = *(v8 + 11160);
          v26 = __src;
          do
          {
            v27 = &v97 + v23;
            v28 = v25 + v23;
            v29 = *(v24 + 80);
            *(v26 + 4) = *(v24 + 64);
            *(v26 + 5) = v29;
            *(v26 + 12) = *(v24 + 96);
            v30 = *(v24 + 16);
            *v26 = *v24;
            *(v26 + 1) = v30;
            v31 = *(v24 + 48);
            *(v26 + 2) = *(v24 + 32);
            *(v26 + 3) = v31;
            *v27 = *(v25 + v23);
            v23 += 24;
            v24 += 104;
            v26 += 104;
            *(v27 + 2) = *(v28 + 16);
          }

          while (v23 != 216);
        }

        else
        {
          if ((v20 - 1) > 7)
          {
            if (v20 < 10)
            {
              goto LABEL_63;
            }

            memset(__dst, 0, 24);
            *buf = 0;
            do
            {
              sub_1002856D8(__dst, buf);
              ++*buf;
            }

            while (*buf < v20);
            LODWORD(v94) = 5;
            sub_1003C6848(*__dst, *&__dst[8], &v94);
            v40 = 0;
            memset(buf, 0, 24);
            do
            {
              sub_1002856D8(buf, (*__dst + v40));
              v40 += 4;
            }

            while (v40 != 36);
            std::__sort<std::__less<int,int> &,int *>();
            v41 = 0;
            v42 = *buf;
            v43 = *(v8 + 9864);
            v44 = &v97;
            v45 = __src;
            v46 = *(v8 + 11160);
            do
            {
              v47 = *&v42[v41];
              v48 = v43 + 104 * v47;
              v49 = *(v48 + 80);
              *(v45 + 4) = *(v48 + 64);
              *(v45 + 5) = v49;
              *(v45 + 12) = *(v48 + 96);
              v50 = *(v48 + 16);
              *v45 = *v48;
              *(v45 + 1) = v50;
              v51 = *(v48 + 48);
              *(v45 + 2) = *(v48 + 32);
              *(v45 + 3) = v51;
              v52 = v46 + 24 * v47;
              *v44 = *v52;
              *(v44 + 2) = *(v52 + 16);
              v41 += 4;
              v44 = (v44 + 24);
              v45 += 104;
            }

            while (v41 != 36);
            *&buf[8] = v42;
            operator delete(v42);
            v53 = *__dst;
            if (!*__dst)
            {
              goto LABEL_63;
            }

            *&__dst[8] = *__dst;
          }

          else
          {
            v32 = (9 - v20);
            memset(buf, 0, 24);
            *__dst = 0;
            do
            {
              sub_1002856D8(buf, __dst);
              ++*__dst;
            }

            while (*__dst < v20);
            LODWORD(v94) = 5;
            sub_1003C6848(*buf, *&buf[8], &v94);
            v33 = *buf;
            if (v32 <= v20)
            {
              v54 = 0;
              if (v32 <= 1)
              {
                v55 = 1;
              }

              else
              {
                v55 = 9 - v20;
              }

              v56 = 4 * v55;
              do
              {
                *&__dst[v54] = v33[v54 / 4];
                v54 += 4;
              }

              while (v56 != v54);
              v57 = *buf;
              v58 = 1;
              do
              {
                v59 = *v57++;
                *&__dst[4 * v32] = v59;
                if (v32 > 7)
                {
                  break;
                }

                ++v32;
                v39 = v58++ >= v20;
              }

              while (!v39);
            }

            else
            {
              LODWORD(v34) = 0;
              do
              {
                v34 = v34;
                v35 = 1;
                v36 = v33;
                do
                {
                  v37 = v34;
                  v38 = *v36++;
                  *&__dst[4 * v34++] = v38;
                  if (v37 > 7)
                  {
                    break;
                  }

                  v39 = v35++ >= v20;
                }

                while (!v39);
              }

              while (v37 <= 7);
            }

            std::__sort<std::__less<int,int> &,int *>();
            v60 = 0;
            v61 = *(v8 + 9864);
            v62 = &v97;
            v63 = *(v8 + 11160);
            v64 = __src;
            do
            {
              v65 = *&__dst[v60];
              v66 = v61 + 104 * v65;
              v67 = *(v66 + 80);
              *(v64 + 4) = *(v66 + 64);
              *(v64 + 5) = v67;
              *(v64 + 12) = *(v66 + 96);
              v68 = *(v66 + 16);
              *v64 = *v66;
              *(v64 + 1) = v68;
              v69 = *(v66 + 48);
              *(v64 + 2) = *(v66 + 32);
              *(v64 + 3) = v69;
              v70 = v63 + 24 * v65;
              *v62 = *v70;
              *(v62 + 2) = *(v70 + 16);
              v60 += 4;
              v62 = (v62 + 24);
              v64 += 104;
            }

            while (v60 != 36);
            v53 = *buf;
            if (!*buf)
            {
              goto LABEL_63;
            }

            *&buf[8] = *buf;
          }

          operator delete(v53);
        }

LABEL_63:
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004CAF58();
        }

        v71 = (v8 + 9888);
        memcpy(__dst, (v8 + 1440), 0xEA0uLL);
        memcpy(buf, (v8 + 10296), 0x360uLL);
        memcpy(&__dst[3744], __src, 0x3A8uLL);
        *&buf[1024] = v107;
        *&buf[1040] = v108;
        *&buf[1056] = v109;
        *&buf[960] = v103;
        *&buf[976] = v104;
        *&buf[992] = v105;
        *&buf[1008] = v106;
        *&buf[896] = v99;
        *&buf[912] = v100;
        *&buf[928] = v101;
        *&buf[944] = v102;
        *&buf[864] = v97;
        *&buf[1072] = v110;
        *&buf[880] = v98;
        memcpy((v8 + 504), __dst, 0x1248uLL);
        memcpy((v8 + 10080), buf, 0x438uLL);
        v94 = 0;
        v95 = 0;
        v96 = 0;
        __p = 0;
        v92 = 0;
        v93 = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(v8 + 10072) = *(v7 + 8);
        v72 = *(v8 + 9864);
        if (0x4EC4EC4EC4EC4EC5 * ((*(v8 + 9872) - v72) >> 3) > v20)
        {
          v20 = v20;
          v73 = 24 * v20;
          v74 = 8 * v20;
          v75 = 104 * v20;
          do
          {
            sub_1003C4764(&v94, (v72 + v75));
            sub_100009734(&v88, *v71 + v74);
            v76 = *(v8 + 11160) + v73;
            v77 = v92;
            if (v92 >= v93)
            {
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v92 - __p) >> 3);
              v81 = v80 + 1;
              if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_100019B38();
              }

              if (0x5555555555555556 * ((v93 - __p) >> 3) > v81)
              {
                v81 = 0x5555555555555556 * ((v93 - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v93 - __p) >> 3) >= 0x555555555555555)
              {
                v82 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v82 = v81;
              }

              if (v82)
              {
                sub_1003C67F0(&__p, v82);
              }

              v83 = 8 * ((v92 - __p) >> 3);
              v84 = *v76;
              *(v83 + 16) = *(v76 + 16);
              *v83 = v84;
              v79 = (24 * v80 + 24);
              v85 = (v83 - (v92 - __p));
              memcpy(v85, __p, v92 - __p);
              v86 = __p;
              __p = v85;
              v92 = v79;
              v93 = 0;
              if (v86)
              {
                operator delete(v86);
              }
            }

            else
            {
              v78 = *v76;
              *(v92 + 2) = *(v76 + 16);
              *v77 = v78;
              v79 = v77 + 24;
            }

            ++v20;
            v72 = *(v8 + 9864);
            v87 = 0x4EC4EC4EC4EC4EC5 * ((*(v8 + 9872) - v72) >> 3);
            v92 = v79;
            v73 += 24;
            v74 += 8;
            v75 += 104;
          }

          while (v87 > v20);
        }

        if ((v8 + 9864) != &v94)
        {
          sub_1003C6BA4((v8 + 9864), v94, v95, 0x4EC4EC4EC4EC4EC5 * ((v95 - v94) >> 3));
        }

        if (v71 != &v88)
        {
          sub_10017AF94((v8 + 9888), v88, v89, (v89 - v88) >> 3);
        }

        if ((v8 + 11160) != &__p)
        {
          sub_1003C6D68((v8 + 11160), __p, v92, 0xAAAAAAAAAAAAAAABLL * ((v92 - __p) >> 3));
        }

        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (__p)
        {
          v92 = __p;
          operator delete(__p);
        }

        if (v94)
        {
          v95 = v94;
          operator delete(v94);
        }

        return;
      }
    }

    else
    {
      if (v11 == 3)
      {
        v12 = *(v6 + 64);
        *__dst = *(v6 + 16);
        *&__dst[8] = v12;
        v4 = sub_1003C5314(v5, __dst);
        v3 = v13;
        v14 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #LPF UWB signals filtered for DualAnchorAntennaPredictor", buf, 2u);
        }

        goto LABEL_15;
      }

      if (v11 != 2 && v11 != 4)
      {
        goto LABEL_15;
      }
    }

    sub_1004CAF2C();
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

void sub_1003C5274(_Unwind_Exception *a1)
{
  v2 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    STACK[0x4D8] = v2;
    operator delete(v2);
  }

  v3 = STACK[0x910];
  if (STACK[0x910])
  {
    STACK[0x918] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

double sub_1003C5314(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 424;
  v5 = &v15;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v4 + 40 * v3;
    if (*v8 == 1)
    {
      v9 = *(a2 + 8 * v3);
      if (*(v8 + 1) == 1)
      {
        v9 = (1.0 - *(v8 + 24)) * *(v8 + 32) + *(v8 + 24) * v9;
      }

      else
      {
        *(v8 + 1) = 1;
      }

      *(v8 + 32) = v9;
    }

    else
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004CAEC0(&v12, v13, v10);
      }

      v9 = *(a2 + 8 * v3);
    }

    v6 = 0;
    *v5 = v9;
    v5 = &v14;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  return v15;
}

void sub_1003C5418()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Gesture changed", v1, 2u);
  }
}

double sub_1003C5480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  *(v3 + 11208) = 0;
  v4 = *(v3 + 8);
  if (v4[72])
  {
    v5 = v3;
    memcpy(__dst, (v3 + 504), 0x1248uLL);
    __dst[4680] = 1;
    memcpy(v24, (v5 + 5184), sizeof(v24));
    v6 = *(v5 + 9912);
    v27 = *(v5 + 9928);
    v7 = *(v5 + 9960);
    v28 = *(v5 + 9944);
    v25 = 1;
    v29 = v7;
    v30 = *(v5 + 9976);
    v26 = v6;
    v31 = 1;
    v8 = *(v5 + 10040);
    v34 = *(v5 + 10024);
    v35 = v8;
    v36 = *(v5 + 10056);
    v9 = *(v5 + 10008);
    v32 = *(v5 + 9992);
    v33 = v9;
    v37 = 1;
    memcpy(v38, (v5 + 10080), 0x438uLL);
    v38[1080] = 1;
    v39 = *(v5 + 10072);
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v20 = 0;
    v21 = 0.0;
    v22 = 0;
    (*(*v4 + 16))(&v20, v4, __dst, v5 + 24, *(v5 + 11212));
    if ((v25 & 1) == 0)
    {
      sub_1004CB00C();
    }

    memcpy((v5 + 5184), v24, 0x1248uLL);
    if ((v37 & 1) == 0)
    {
      sub_1004CB038();
    }

    v10 = v35;
    *(v5 + 10024) = v34;
    *(v5 + 10040) = v10;
    *(v5 + 10056) = v36;
    v11 = v33;
    *(v5 + 9992) = v32;
    *(v5 + 10008) = v11;
    if (v22 != 1)
    {
      v13 = v21;
      v15 = sub_1003C3C24(*(v5 + 8), *(v5 + 11212));
      v16 = qword_1009F9820;
      v17 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (v13 <= v15)
      {
        if (!v17)
        {
          return v13;
        }

        *buf = 134217984;
        v44 = v13;
        v18 = "#spatialGesturesPredictor Gesture = Other, HandoffConfidence = %f";
      }

      else
      {
        if (!v17)
        {
          return v13;
        }

        *buf = 134217984;
        v44 = v13;
        v18 = "#spatialGesturesPredictor Gesture = Handoff, HandoffConfidence = %f";
      }

      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      return v13;
    }

    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor #evaluation false positive alert", buf, 2u);
    }

    *(v5 + 11208) = 1;
    return 0.0;
  }

  else
  {
    v14 = qword_1009F9820;
    v13 = 1.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CAF8C(v14);
    }
  }

  return v13;
}

uint64_t sub_1003C57B0(uint64_t a1, uint64_t *a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1009A9908;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    if (v7)
    {
      sub_10000AD84(v7);
    }
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
  }

  *(a1 + 56) = 1;
  *(a1 + 136) = a3;
  return a1;
}

uint64_t sub_1003C5854(uint64_t a1)
{
  *a1 = off_1009A9908;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_1003C6F10((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000AD84(v2);
  }

  return a1;
}

void sub_1003C58BC(uint64_t a1)
{
  sub_1003C5854(a1);

  operator delete();
}

void sub_1003C58F4(void *a1, uint64_t a2)
{
  if (*(a1[1] + 72))
  {
    v3 = *(a2 + 24);
    v6[0] = *(a2 + 8);
    v6[1] = v3;
    v4 = vextq_s8(*(a2 + 120), *(a2 + 120), 8uLL);
    v6[2] = *(a2 + 40);
    v6[3] = v4;
    v6[4] = *(a2 + 88);
    v7 = *(a2 + 104);
    sub_1003C59C0((a1 + 8), v6);
    v5 = a1[13];
    if (v5 >= 0x33)
    {
      do
      {
        ++a1[12];
        a1[13] = v5 - 1;
        sub_1003C7190((a1 + 8), 1);
        v5 = a1[13];
      }

      while (v5 > 0x32);
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004CAE24();
  }
}

__n128 sub_1003C59C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 46 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003C6FBC(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2E)) + 88 * (v8 % 0x2E);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v10;
  result = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  *(v9 + 80) = *(a2 + 80);
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  *(v9 + 32) = result;
  ++*(a1 + 40);
  return result;
}

void sub_1003C5A8C()
{
  v0 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "#spatialGesturesPredictor Gesture changed", v1, 2u);
  }
}

double sub_1003C5AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v4 = v3[1];
  if (v4[72])
  {
    v5 = v3;
    if (v3[13] == 50)
    {
      v6 = v3[12];
      v7 = v3[9];
      v8 = -4400;
      do
      {
        v9 = *(v7 + 8 * (v6 / 0x2E)) + 88 * (v6 % 0x2E);
        v10 = *(v9 + 48);
        v11 = &v20[v8];
        *(v11 + 277) = *(v9 + 32);
        *(v11 + 278) = v10;
        *(v11 + 279) = *(v9 + 64);
        v12 = *(v9 + 16);
        *(v11 + 275) = *v9;
        *(v11 + 560) = *(v9 + 80);
        *(v11 + 276) = v12;
        ++v6;
        v8 += 88;
      }

      while (v8);
      v18[0] = 0;
      v18[4680] = 0;
      v18[4688] = 0;
      v18[9368] = 0;
      v18[9376] = 0;
      v18[9456] = 0;
      v18[9464] = 0;
      v18[9544] = 0;
      v18[9552] = 0;
      v18[10632] = 0;
      v18[10640] = 0;
      v18[10648] = 0;
      memcpy(v19, v20, 0x1130uLL);
      v19[4400] = 1;
      v15 = 0;
      v16 = 0.0;
      v17 = 0;
      (*(*v4 + 16))(&v15, v4, v18, v5 + 3, *(v5 + 34));
      return v16;
    }

    else
    {
      v13 = 0.0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004CB098();
      }
    }
  }

  else
  {
    v13 = 0.0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB064();
    }
  }

  return v13;
}

uint64_t sub_1003C5CF4(uint64_t result, void *a2, int a3)
{
  *result = off_1009A9950;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if (a3 > 2)
  {
    if (a3 != 4)
    {
      if (a3 != 3)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (a2[2])
    {
      operator new();
    }

    v3 = "gestureClassifiers[kIdxMotionBasedSpatialGesturePredictor] != NULL";
    v4 = 1042;
LABEL_15:
    __assert_rtn("GesturePredictorWrapper", "NRBYSpatialGesturePredictor.mm", v4, v3);
  }

  if (a3 == 1)
  {
LABEL_6:
    if (*a2)
    {
      operator new();
    }

    v3 = "gestureClassifiers[kIdxUwbSpatialGesturePredictor] != NULL";
    v4 = 1036;
    goto LABEL_15;
  }

  if (!a3 || a3 == 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004CB0CC();
    }

    v3 = "false";
    v4 = 1050;
    goto LABEL_15;
  }

  return result;
}

void sub_1003C5F98(_Unwind_Exception *exception_object)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v3 -= 8;
    if (!v3)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1003C6018(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    (*(*v3 + 16))(v3, a2);
  }

  result = *(a1 + 16);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_1003C60B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1003C60F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    sub_1003C6458(v25, a2);
    sub_1003C6458(v20, a3);
    (*(*v8 + 32))(v8, v25, v20, a4);
    if (v24 == 1 && v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v29 == 1 && v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1003C6458(v15, a2);
    sub_1003C6458(v10, a3);
    (*(*v9 + 32))(v9, v15, v10, a4);
    if (v14 == 1 && v13 == 1 && v12 < 0)
    {
      operator delete(v11);
    }

    if (v19 == 1 && v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }
}

void sub_1003C6284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53, __int16 a54, char a55, char a56)
{
  if (a21 == 1 && a19 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a39 == 1 && a37 == 1 && a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003C6348(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 || (v3 = *(a1 + 16)) != 0)
  {
    v4 = *(*v3 + 40);

    v4();
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004CB100();
    }

    return -1.0;
  }

  return result;
}

void sub_1003C63D8(uint64_t a1)
{
  sub_1003C64E8(a1);

  operator delete();
}

void sub_1003C6420(void *a1)
{
  sub_1003C6578(a1);

  operator delete();
}

_BYTE *sub_1003C6458(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[64] = 0;
  if (*(a2 + 64) == 1)
  {
    *a1 = *a2;
    sub_100012FB4(a1 + 8, (a2 + 8));
    a1[64] = 1;
  }

  return a1;
}

void sub_1003C64B4(_Unwind_Exception *exception_object)
{
  if (v1[64] == 1 && v1[56] == 1 && v1[31] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C64E8(uint64_t a1)
{
  *a1 = off_1009A98C0;
  if (*(a1 + 11207) < 0)
  {
    operator delete(*(a1 + 11184));
  }

  v2 = *(a1 + 11160);
  if (v2)
  {
    *(a1 + 11168) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 9888);
  if (v3)
  {
    *(a1 + 9896) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 9864);
  if (v4)
  {
    *(a1 + 9872) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  return a1;
}

void *sub_1003C6578(void *a1)
{
  *a1 = off_1009A9950;
  v2 = 2;
  do
  {
    v3 = a1[v2];
    a1[v2] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    --v2;
  }

  while (v2 * 8);
  return a1;
}

double sub_1003C6618@<D0>(_OWORD *a1@<X8>)
{
  a1[10] = xmmword_10056F760;
  a1[11] = unk_10056F770;
  a1[12] = xmmword_10056F780;
  a1[6] = xmmword_10056F720;
  a1[7] = unk_10056F730;
  a1[8] = xmmword_10056F740;
  a1[9] = unk_10056F750;
  a1[2] = xmmword_10056F6E0;
  a1[3] = unk_10056F6F0;
  a1[4] = xmmword_10056F700;
  a1[5] = unk_10056F710;
  result = dbl_10056F6D0[0];
  *a1 = xmmword_10056F6C0;
  a1[1] = *dbl_10056F6D0;
  return result;
}

void *sub_1003C66A4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10004F5E0(result, a2);
  }

  return result;
}

void sub_1003C6700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003C671C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100013050(result, a2);
  }

  return result;
}

void sub_1003C6778(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C6794(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  sub_100013B04();
}

void sub_1003C67F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_1003C6848(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 2;
  if (v4 >= 2)
  {
    v5 = a1;
    v14 = xmmword_10056F470;
    v6 = a2 - 4;
    if (a2 - 4 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = sub_1003C68F8(&v14, a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 4 * v10);
          *(v5 + 4 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 4;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

uint64_t sub_1003C68F8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      sub_1003C6988(v12, a2, 0x40uLL);
      return sub_1003C6A7C(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      sub_1003C6988(v12, a2, v10 - v9);
      do
      {
        v11 = sub_1003C6A7C(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t sub_1003C6988(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t sub_1003C6A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    result = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
        v12 = v6 - 1;
      }

      while (*(a1 + 40) <= v12);
      v13 = result << v5;
      if (v5 >= 0x40)
      {
        v13 = 0;
      }

      result = v13 + (*(a1 + 56) & v12);
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v14 = *(a1 + 24);
  if (v2 < v14)
  {
    v15 = *a1;
    v16 = *(a1 + 48);
    v17 = *(a1 + 16);
    v18 = *(a1 + 60);
    v19 = *v15;
    while (1)
    {
      v20 = v19 / 0xADC8;
      v21 = 48271 * (v19 % 0xADC8);
      v20 *= 3399;
      v9 = v21 >= v20;
      v22 = v21 - v20;
      if (v9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFF;
      }

      v19 = v23 + v22;
      v24 = v19 - 1;
      if (v16 > v24)
      {
        v25 = result << (v17 + 1);
        if (v17 >= 0x3F)
        {
          v25 = 0;
        }

        result = v25 + (v18 & v24);
        if (++v2 == v14)
        {
          break;
        }
      }
    }

    *v15 = v19;
  }

  return result;
}

void *sub_1003C6BA4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x276276276276276)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x13B13B13B13B13BLL)
      {
        v11 = 0x276276276276276;
      }

      else
      {
        v11 = v10;
      }

      sub_1003C6D18(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003C6D18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    sub_1003C6794(a1, a2);
  }

  sub_100019B38();
}

void *sub_1003C6D68(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1003C6EC4(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003C6EC4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1003C67F0(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_1003C6F10(void *a1)
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
    v5 = 23;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 46;
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

void *sub_1003C6FBC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2E;
  v3 = v1 - 46;
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

void sub_1003C7144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003C7190(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x2E)
  {
    a2 = 1;
  }

  if (v2 < 0x5C)
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
    *(a1 + 32) -= 46;
  }

  return v4 ^ 1u;
}

void sub_1003C71F0()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(nullsub_73, &off_1009EC220, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EC228, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_1003C7270(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 240) == 1)
  {
    v3 = (a1 + 56);
    if (*(a1 + 288) == 1)
    {
      if (*(a1 + 64) == *(a2 + 16))
      {
        return;
      }

      v4 = *(a2 + 8);
      v5 = *(a2 + 40);
      *(a1 + 72) = *(a2 + 24);
      *(a1 + 88) = v5;
      *v3 = v4;
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 104);
      *(a1 + 136) = *(a2 + 88);
      *(a1 + 152) = v8;
      *(a1 + 104) = v6;
      *(a1 + 120) = v7;
      v9 = *(a2 + 120);
      v10 = *(a2 + 136);
      v11 = *(a2 + 168);
      *(a1 + 200) = *(a2 + 152);
      *(a1 + 216) = v11;
      *(a1 + 168) = v9;
      *(a1 + 184) = v10;
      v12 = *(a2 + 184);
      v13 = *(a2 + 200);
      v14 = *(a2 + 216);
      *(a1 + 280) = *(a2 + 232);
      *(a1 + 248) = v13;
      *(a1 + 264) = v14;
      *(a1 + 232) = v12;
    }

    else
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 40);
      *(a1 + 72) = *(a2 + 24);
      *(a1 + 88) = v16;
      *v3 = v15;
      v17 = *(a2 + 56);
      v18 = *(a2 + 72);
      v19 = *(a2 + 104);
      *(a1 + 136) = *(a2 + 88);
      *(a1 + 152) = v19;
      *(a1 + 104) = v17;
      *(a1 + 120) = v18;
      v20 = *(a2 + 120);
      v21 = *(a2 + 136);
      v22 = *(a2 + 168);
      *(a1 + 200) = *(a2 + 152);
      *(a1 + 216) = v22;
      *(a1 + 168) = v20;
      *(a1 + 184) = v21;
      v23 = *(a2 + 184);
      v24 = *(a2 + 200);
      v25 = *(a2 + 216);
      *(a1 + 280) = *(a2 + 232);
      *(a1 + 248) = v24;
      *(a1 + 264) = v25;
      *(a1 + 232) = v23;
      *(a1 + 288) = 1;
    }

    if ((*(a2 + 240) & 1) == 0)
    {
      sub_1000195BC();
    }

    sub_1003CBD5C(a1 + 296, a2 + 8, v27);
    if (v28 == 1)
    {
      v26 = *(a1 + 48);
      if (!v26 || v27[0] - *(*(*(a1 + 16) + 8 * ((v26 + *(a1 + 40) - 1) / 0x38uLL)) + 72 * ((v26 + *(a1 + 40) - 1) % 0x38uLL)) >= 0.25)
      {
        sub_1003C7420(a1 + 8, v27);
      }
    }
  }
}

uint64_t sub_1003C7420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 56 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_1003C7C30(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x38)) + 72 * (v8 % 0x38);
  *v9 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  *(v9 + 16) = v10;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40) + 1;
  *(a1 + 40) = v14;
  v15 = v13 + v14;
  v16 = *(a1 + 8);
  v17 = (v16 + 8 * (v15 / 0x38));
  v18 = *v17 + 72 * (v15 % 0x38);
  if (*(a1 + 16) == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4032;
  }

  return v18 - 72;
}

void sub_1003C7524(void *a1, uint64_t a2)
{
  v6 = 0;
  sub_1003CAE94((a1 + 37), a2, &v6, v4);
  if (v6 == 1)
  {
    sub_1003C75EC(a1);
  }

  else if (v5 == 1)
  {
    v3 = a1[6];
    if (!v3 || v4[0] - *(*(a1[2] + 8 * ((v3 + a1[5] - 1) / 0x38uLL)) + 72 * ((v3 + a1[5] - 1) % 0x38uLL)) >= 0.25)
    {
      sub_1003C7420((a1 + 1), v4);
    }
  }
}

void sub_1003C75EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 48) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 24);
      v2 = (*(a1 + 16) + 8);
      *(a1 + 16) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 28;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 56;
  }

  *(a1 + 40) = v6;
LABEL_8:
  if (*(a1 + 288) == 1)
  {
    *(a1 + 288) = 0;
  }
}

uint64_t sub_1003C7678(uint64_t a1, double *a2, uint64_t a3, int a4)
{
  if (*(a3 + 256) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= 5 && *a2 - *(*(*(a1 + 16) + 8 * ((v5 + *(a1 + 40) - 1) / 0x38)) + 72 * ((v5 + *(a1 + 40) - 1) % 0x38)) <= 5.0)
  {
    __src = 0;
    v61 = 0;
    v62 = 0;
    if (sub_1003C7B28(a1, a3, a2, &v59))
    {
      v57 = a4;
      v9 = *(a1 + 40);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = (v10 + 8 * (v9 / 0x38));
      if (v11 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 72 * (v9 % 0x38);
      }

LABEL_14:
      v58 = v12;
      while (1)
      {
        if (v11 == v10)
        {
          v15 = 0;
        }

        else
        {
          v14 = *(a1 + 48) + *(a1 + 40);
          v15 = *(v10 + 8 * (v14 / 0x38)) + 72 * (v14 % 0x38);
        }

        if (v13 == v15)
        {
          break;
        }

        v16 = v13 - *v12;
        v17 = 0x8E38E38E38E38E39 * (v16 >> 3);
        if (v16 < -71)
        {
          v23 = 54 - v17;
          v24 = (54 - v17) / 0x38;
          v20 = &v12[-v24];
          v21 = *v20;
          v22 = *v20 + 72 * (56 * v24 - v23) + 3960;
        }

        else
        {
          v18 = v17 + 1;
          v19 = (v17 + 1) / 0x38;
          v20 = &v12[v19];
          v21 = *v20;
          v22 = *v20 + 72 * (v18 - 56 * v19);
        }

        while (1)
        {
          if (v11 == v10)
          {
            v50 = 0;
          }

          else
          {
            v49 = *(a1 + 48) + *(a1 + 40);
            v50 = *(v10 + 8 * (v49 / 0x38)) + 72 * (v49 % 0x38);
          }

          if (v22 == v50)
          {
            break;
          }

          v25 = 0.0;
          for (i = 16; i != 40; i += 8)
          {
            v27 = *(v13 + i) - *(v22 + i);
            v25 = v25 + v27 * v27;
          }

          v28 = sqrt(v25);
          if (v28 > 2.0 && v28 < 15.0)
          {
            v30 = 0;
            v31 = 0.0;
            do
            {
              v32 = v59.f64[v30] - *(v22 + 16 + v30 * 8);
              v31 = v31 + v32 * v32;
              ++v30;
            }

            while (v30 != 3);
            v33 = 0.0;
            v34 = &v59;
            for (j = 2; j != 5; ++j)
            {
              v36 = v34->f64[0];
              v34 = (v34 + 8);
              v33 = v33 + (v36 - *(v13 + 8 * j)) * (v36 - *(v13 + 8 * j));
            }

            v37 = fabs(sqrt(v31) - sqrt(v33) + *(v13 + 8) - *(v22 + 8));
            v38 = v61;
            if (v61 >= v62)
            {
              v40 = __src;
              v41 = v61 - __src;
              v42 = (v61 - __src) >> 3;
              v43 = v42 + 1;
              if ((v42 + 1) >> 61)
              {
                sub_100019B38();
              }

              v44 = v62 - __src;
              if ((v62 - __src) >> 2 > v43)
              {
                v43 = v44 >> 2;
              }

              v45 = v44 >= 0x7FFFFFFFFFFFFFF8;
              v46 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v45)
              {
                v46 = v43;
              }

              if (v46)
              {
                sub_100012564(&__src, v46);
              }

              *(8 * v42) = v37;
              v39 = 8 * v42 + 8;
              memcpy(0, v40, v41);
              v47 = __src;
              __src = 0;
              v61 = v39;
              v62 = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v61 = v37;
              v39 = (v38 + 1);
            }

            v61 = v39;
            v21 = *v20;
          }

          v22 += 72;
          if (v22 - v21 == 4032)
          {
            v48 = v20[1];
            ++v20;
            v21 = v48;
            v22 = v48;
          }

          v10 = *(a1 + 16);
          v11 = *(a1 + 24);
        }

        v13 += 72;
        v12 = v58;
        if (v13 - *v58 == 4032)
        {
          v12 = v58 + 1;
          v13 = v58[1];
          goto LABEL_14;
        }
      }

      v51 = __src;
      v52 = (v61 - __src) >> 3;
      if (v52 >= 5)
      {
        v53 = 0;
        *(a1 + 1) = 1;
        v54 = 0.0;
        do
        {
          v54 = v54 + v51[v53] * v51[v53];
          ++v53;
        }

        while (v52 != v53);
        v55 = v54 / v52;
        if (v55 < 3.0)
        {
          v56 = v57;
        }

        else
        {
          v56 = 0;
        }

        if (v55 < 0.5 || (v56 & 1) != 0)
        {
          *a1 = 0;
          v6 = 1;
        }

        else
        {
          if (v57)
          {
            sub_1003C75EC(a1);
          }

          v6 = 0;
          *a1 = 1;
        }
      }

      else if (*a1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 2;
    }

    if (__src)
    {
      v61 = __src;
      operator delete(__src);
    }
  }

  else if (*a1)
  {
    return 0;
  }

  else
  {
    return 2;
  }

  return v6;
}

void sub_1003C7B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C7B28(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
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
  v17 = v10;
  v18 = v11;
  v19.columns[0] = sub_1003AF418(a3);
  v12 = __invert_f2(v19);
  v13 = vmla_n_f32(vmul_n_f32(v12.columns[0], v17), v12.columns[1], v18);
  v14 = *(a3 + 64);
  v15 = COERCE_FLOAT(*(a3 + 72));
  *&v14 = *&v14 + v13.f32[1];
  *a4 = vcvtq_f64_f32(*&v14);
  a4[1].f64[0] = (v15 + v13.f32[0]);
  return 1;
}