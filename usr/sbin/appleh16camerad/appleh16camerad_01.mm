void sub_10000FF00(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int16x8_t *__src, int16x8_t *a9, char a10)
{
  v10 = __src;
  v15 = a9;
  v16 = a2 + (a2 >> 31);
  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: hlwt2\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height=%d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width=%d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: img_data = [\n", buf, 2u);
    }

    sub_10002E530(a1, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (a3 >= 1)
    {
      v25 = 0;
      v26 = (a2 & 0xFFFFFFF8);
      v27 = 2 * (a2 >> 1);
      v28 = v10;
      v29 = a9;
      do
      {
        if (v26 < 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = a1;
          do
          {
            v126 = vld2_s16(v31);
            v31 += 8;
            *(v28->i64 + v30) = v126.val[0];
            *(v29 + v30) = v126.val[1];
            v30 += 8;
          }

          while (v30 < v26);
          v30 = v30;
        }

        if (v30 < a2)
        {
          do
          {
            if (v30)
            {
              v32 = a9;
            }

            else
            {
              v32 = v10;
            }

            *(v32 + 2 * (v25 * a2 / 2 + (v30 >> 1))) = *(a1 + 2 * v30);
            ++v30;
          }

          while (a2 != v30);
        }

        ++v25;
        v29 += v27;
        v28 = (v28 + v27);
        a1 += 2 * a2;
      }

      while (v25 != a3);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: L = [\n", buf, 2u);
    }

    sub_10002E530(v10, 0, 0, v16 >> 1, a3, v16 >> 1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (a3 < 1)
    {
      goto LABEL_54;
    }

    v17 = 0;
    v18 = (a2 & 0xFFFFFFF8);
    v19 = 2 * (a2 >> 1);
    v20 = __src;
    v21 = a9;
    do
    {
      if (v18 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = a1;
        do
        {
          v125 = vld2_s16(v23);
          v23 += 8;
          *(v20->i64 + v22) = v125.val[0];
          *(v21 + v22) = v125.val[1];
          v22 += 8;
        }

        while (v22 < v18);
        v22 = v22;
      }

      if (v22 < a2)
      {
        do
        {
          if (v22)
          {
            v24 = a9;
          }

          else
          {
            v24 = __src;
          }

          v24->i16[v17 * a2 / 2 + (v22 >> 1)] = *(a1 + 2 * v22);
          ++v22;
        }

        while (a2 != v22);
      }

      ++v17;
      v21 += v19;
      v20 = (v20 + v19);
      a1 += 2 * a2;
    }

    while (v17 != a3);
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: H = [\n", buf, 2u);
    }

    sub_10002E530(a9, 0, 0, v16 >> 1, a3, v16 >> 1);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

LABEL_54:
  v33 = v16 >> 1;
  v34 = ((v16 >> 1) * a3);
  v35 = v34 & 0xFFFFFFF8;
  if (v35 < 1)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = 0;
    v37 = a9;
    v38 = v10;
    do
    {
      v39 = *v38++;
      *v37 = vsubq_s16(*v37, v39);
      ++v37;
      v36 += 8;
    }

    while (v36 < v35);
  }

  if (v36 < v34)
  {
    v40 = v34 - v36;
    v41 = &v10->i8[2 * v36];
    v42 = &a9->i16[v36];
    do
    {
      v43 = *v41;
      v41 += 2;
      *v42++ -= v43;
      --v40;
    }

    while (v40);
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: H = [\n", buf, 2u);
    }

    sub_10002E530(a9, 0, 0, v33, a3, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v35 < 1)
    {
      LODWORD(v48) = 0;
    }

    else
    {
      v48 = 0;
      v49 = a9;
      v50 = v10;
      do
      {
        v51 = vshrq_n_s16(*v49, 1uLL);
        *v50 = vsraq_n_s16(*v50, *v49, 1uLL);
        ++v50;
        *v49++ = v51;
        v48 += 8;
      }

      while (v48 < v35);
    }

    if (v48 < v34)
    {
      v56 = v34 - v48;
      v57 = &v10->i8[2 * v48];
      v58 = &a9->i16[v48];
      do
      {
        v59 = *v58;
        *v58++ >>= 1;
        *v57 += v59 >> 1;
        v57 += 2;
        --v56;
      }

      while (v56);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: L = [\n", buf, 2u);
    }

    sub_10002E530(v10, 0, 0, v33, a3, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v35 < 1)
    {
      LODWORD(v44) = 0;
    }

    else
    {
      v44 = 0;
      v45 = a9;
      v46 = v10;
      do
      {
        v47 = vshrq_n_s16(*v45, 1uLL);
        *v46 = vsraq_n_s16(*v46, *v45, 1uLL);
        ++v46;
        *v45++ = v47;
        v44 += 8;
      }

      while (v44 < v35);
    }

    if (v44 < v34)
    {
      v52 = v34 - v44;
      v53 = &v10->i8[2 * v44];
      v54 = &a9->i16[v44];
      do
      {
        v55 = *v54;
        *v54++ >>= 1;
        *v53 += v55 >> 1;
        v53 += 2;
        --v52;
      }

      while (v52);
    }
  }

  if (a3 < 1)
  {
    v63 = a3;
    v62 = 0;
    v61 = 0;
  }

  else
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = a3;
    do
    {
      if (v60)
      {
        memcpy((a5 + 2 * v62 * v33), v10, 2 * v33);
        ++v62;
      }

      else
      {
        memcpy((a4 + 2 * v61 * v33), v10, 2 * v33);
        ++v61;
      }

      ++v60;
      v10 = (v10 + 2 * v33);
    }

    while (a3 != v60);
  }

  if (a10)
  {
    v64 = v63;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v61;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a = [\n", buf, 2u);
    }

    v65 = v63 / 2;
    sub_10002E530(a4, 0, 0, v33, v63 / 2, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h = [\n", buf, 2u);
    }

    sub_10002E530(a5, 0, 0, v33, v63 / 2, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    v62 = 0;
    v64 = v63;
    v65 = v63 / 2;
  }

  v66 = (v65 * v33);
  v67 = v66 & 0xFFFFFFF8;
  if (v67 < 1)
  {
    LODWORD(v68) = 0;
  }

  else
  {
    v68 = 0;
    v69 = a5;
    v70 = a4;
    do
    {
      v71 = *v70++;
      *v69 = vsubq_s16(*v69, v71);
      ++v69;
      v68 += 8;
    }

    while (v68 < v67);
  }

  if (v68 < v66)
  {
    v72 = v66 - v68;
    v73 = (a4 + 2 * v68);
    v74 = (a5 + 2 * v68);
    do
    {
      v75 = *v73++;
      *v74++ -= v75;
      --v72;
    }

    while (v72);
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h = [\n", buf, 2u);
    }

    sub_10002E530(a5, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v67 < 1)
    {
      LODWORD(v80) = 0;
    }

    else
    {
      v80 = 0;
      v81 = a4;
      v82 = a5;
      do
      {
        v83 = *v82++;
        *v81 = vaddq_s16(vaddq_s16(*v81, *v81), v83);
        ++v81;
        v80 += 8;
      }

      while (v80 < v67);
    }

    if (v80 < v66)
    {
      v88 = v66 - v80;
      v89 = (a5 + 2 * v80);
      v90 = (a4 + 2 * v80);
      do
      {
        v91 = *v89++;
        *v90 = v91 + 2 * *v90;
        ++v90;
        --v88;
      }

      while (v88);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a = [\n", buf, 2u);
    }

    sub_10002E530(a4, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v67 < 1)
    {
      LODWORD(v76) = 0;
    }

    else
    {
      v76 = 0;
      v77 = a4;
      v78 = a5;
      do
      {
        v79 = *v78++;
        *v77 = vaddq_s16(vaddq_s16(*v77, *v77), v79);
        ++v77;
        v76 += 8;
      }

      while (v76 < v67);
    }

    if (v76 < v66)
    {
      v84 = v66 - v76;
      v85 = (a5 + 2 * v76);
      v86 = (a4 + 2 * v76);
      do
      {
        v87 = *v85++;
        *v86 = v87 + 2 * *v86;
        ++v86;
        --v84;
      }

      while (v84);
    }
  }

  v120 = (v65 * v33);
  if (v64 < 1)
  {
    v94 = 0;
    v93 = 0;
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v94 = 0;
    do
    {
      if (v92)
      {
        memcpy((a7 + 2 * v94 * v33), v15, 2 * v33);
        ++v94;
      }

      else
      {
        memcpy((a6 + 2 * v93 * v33), v15, 2 * v33);
        ++v93;
      }

      ++v92;
      v15 = (v15 + 2 * v33);
    }

    while (v64 != v92);
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Splitting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v93;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v = [\n", buf, 2u);
    }

    sub_10002E530(a6, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v94;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    sub_10002E530(a7, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    v62 = v94;
  }

  if (v67 < 1)
  {
    LODWORD(v95) = 0;
  }

  else
  {
    v95 = 0;
    v97 = a6;
    v96 = a7;
    do
    {
      v98 = *v97++;
      *v96 = vsubq_s16(*v96, v98);
      ++v96;
      v95 += 8;
    }

    while (v95 < v67);
  }

  if (v95 < v120)
  {
    v99 = v120 - v95;
    v100 = (a6 + 2 * v95);
    v101 = (a7 + 2 * v95);
    do
    {
      v102 = *v100++;
      *v101++ -= v102;
      --v99;
    }

    while (v99);
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Lifting\n", buf, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    sub_10002E530(a7, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    if (v67 < 1)
    {
      LODWORD(v107) = 0;
    }

    else
    {
      v107 = 0;
      v109 = a6;
      v108 = a7;
      do
      {
        v110 = vshrq_n_s16(*v108, 1uLL);
        *v109 = vsraq_n_s16(*v109, *v108, 1uLL);
        ++v109;
        *v108++ = v110;
        v107 += 8;
      }

      while (v107 < v67);
    }

    if (v107 < v120)
    {
      v115 = v120 - v107;
      v116 = (a6 + 2 * v107);
      v117 = (a7 + 2 * v107);
      do
      {
        v118 = *v117;
        *v117++ >>= 1;
        *v116++ += v118 >> 1;
        --v115;
      }

      while (v115);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v = [\n", buf, 2u);
    }

    sub_10002E530(a6, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    if (v67 < 1)
    {
      LODWORD(v103) = 0;
    }

    else
    {
      v103 = 0;
      v105 = a6;
      v104 = a7;
      do
      {
        v106 = vshrq_n_s16(*v104, 1uLL);
        *v105 = vsraq_n_s16(*v105, *v104, 1uLL);
        ++v105;
        *v104++ = v106;
        v103 += 8;
      }

      while (v103 < v67);
    }

    if (v103 < v120)
    {
      v111 = v120 - v103;
      v112 = (a6 + 2 * v103);
      v113 = (a7 + 2 * v103);
      do
      {
        v114 = *v113;
        *v113++ >>= 1;
        *v112++ += v114 >> 1;
        --v111;
      }

      while (v111);
    }
  }

  if (a10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = v62;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: v_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v124 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: h_cnt_split = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d = [\n", buf, 2u);
    }

    sub_10002E530(a7, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }
}

void sub_10001167C(int16x8_t *a1, int16x8_t *a2, int16x8_t *a3, int a4, int a5, uint64_t a6, char a7)
{
  v10 = (a5 * a4);
  v11 = v10 & 0xFFFFFFF8;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = 0;
    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a6;
    do
    {
      v17 = *v13++;
      v18 = v17;
      v19 = *v14++;
      v20 = v19;
      v21 = *v15++;
      v22 = v21;
      v23 = vmull_s16(*v20.i8, *v20.i8);
      v24 = vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v20, v20), v18, v18), v22, v22);
      v25 = vcvtq_f32_s32(vmlal_s16(vmlal_s16(v23, *v18.i8, *v18.i8), *v22.i8, *v22.i8));
      v26 = vrsqrteq_f32(v25);
      v27 = vcvtq_f32_s32(v24);
      v28 = vmulq_f32(vmulq_f32(v26, vrsqrtsq_f32(vmulq_f32(v26, v25), v26)), v25);
      v29 = vrsqrteq_f32(v27);
      *v16++ = vuzp1q_s16(vcvtq_s32_f32(v28), vcvtq_s32_f32(vmulq_f32(vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v27), v29)), v27)));
      v12 += 8;
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v30 = v10 - v12;
    v31 = (a6 + 2 * v12);
    v32 = &a3->i16[v12];
    v33 = &a2->i16[v12];
    v34 = &a1->i16[v12];
    do
    {
      v35 = *v34++;
      v36 = v35 * v35;
      v37 = *v33++;
      v38 = v36 + v37 * v37;
      v39 = *v32++;
      *v31++ = sqrt((v38 + v39 * v39));
      --v30;
    }

    while (v30);
  }

  if (a7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: calcEmap\n", &v40, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67109120;
      v41 = a5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height=%d\n", &v40, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67109120;
      v41 = a4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width=%d\n", &v40, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: emap = [\n", &v40, 2u);
    }

    sub_10002E530(a6, 0, 0, a4, a5, a4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v40, 2u);
    }
  }
}

void sub_100011940(int16x8_t *a1, int a2, int a3, _WORD *a4, char a5)
{
  v6 = a1;
  v7 = (a3 * a2);
  if (a5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v29, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", &v29, 2u);
    }

    sub_10002E530(v6, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v29, 2u);
    }

    v15 = v7 & 0xFFFFFFF8;
    if (v15 < 1)
    {
      v17 = 0uLL;
    }

    else
    {
      v16 = 0;
      v17 = 0uLL;
      v18 = v6;
      do
      {
        v19 = *v18++;
        v17 = vaddw_high_s16(vaddw_s16(v17, *v19.i8), v19);
        v16 += 8;
      }

      while (v16 < v15);
    }

    v24 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v25 = (v24.f32[1] + v24.f32[0]);
    if (v7 >= 1)
    {
      v26 = v7;
      do
      {
        v27 = v6->i16[0];
        v6 = (v6 + 2);
        v25 += v27;
        --v26;
      }

      while (v26);
    }

    v28 = v25 / v7;
    *a4 = v25 / v7;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 67109120;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: mean(x) = %d\n", &v29, 8u);
    }
  }

  else
  {
    v8 = v7 & 0xFFFFFFF8;
    if (v8 < 1)
    {
      v10 = 0uLL;
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = a1;
      do
      {
        v12 = *v11++;
        v10 = vaddw_high_s16(vaddw_s16(v10, *v12.i8), v12);
        v9 += 8;
      }

      while (v9 < v8);
    }

    v20 = vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
    v21 = (v20.f32[1] + v20.f32[0]);
    if (v7 >= 1)
    {
      v22 = (a3 * a2);
      do
      {
        v23 = v6->i16[0];
        v6 = (v6 + 2);
        v21 += v23;
        --v22;
      }

      while (v22);
    }

    *a4 = v21 / v7;
  }
}

void sub_100011BE4(void *__src, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, int16x8_t *__dst, char a8)
{
  v16 = (a3 * a2);
  memcpy(__dst, __src, 2 * v16);
  if (a8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a4;
      *buf = 67109120;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", buf, 2u);
    }

    sub_10002E530(__src, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }

    v23 = *a4;
    v24 = v16 & 0xFFFFFFF8;
    if (v24 < 1)
    {
      LODWORD(v25) = 0;
    }

    else
    {
      v25 = 0;
      v26 = vdupq_n_s16(v23);
      v27 = __dst;
      do
      {
        *v27 = vabdq_s16(*v27, v26);
        ++v27;
        v25 += 8;
      }

      while (v25 < v24);
    }

    if (v25 < v16)
    {
      v31 = v16 - v25;
      v32 = &__dst->i16[v25];
      do
      {
        v33 = *v32 - v23;
        if (v33 < 0)
        {
          LOWORD(v33) = v23 - *v32;
        }

        *v32++ = v33;
        --v31;
      }

      while (v31);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: abs(x-mean(x)) = [\n", buf, 2u);
    }

    sub_10002E530(__dst, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }

  else
  {
    v17 = *a4;
    v18 = v16 & 0xFFFFFFF8;
    if (v18 < 1)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = 0;
      v20 = vdupq_n_s16(v17);
      v21 = __dst;
      do
      {
        *v21 = vabdq_s16(*v21, v20);
        ++v21;
        v19 += 8;
      }

      while (v19 < v18);
    }

    if (v19 < v16)
    {
      v28 = v16 - v19;
      v29 = &__dst->i16[v19];
      do
      {
        v30 = *v29 - v17;
        if (v30 < 0)
        {
          LOWORD(v30) = v17 - *v29;
        }

        *v29++ = v30;
        --v28;
      }

      while (v28);
    }
  }

  v37 = 0;
  sub_100011940(__dst, a2, a3, &v37, a8);
  v34 = v37;
  *a5 = v37;
  *a6 = (5 * v34) >> 2;
  if (a8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v39 = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_tmp_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *a5;
      *buf = 67109120;
      v39 = v35;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_mad_mean = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *a6;
      *buf = 67109120;
      v39 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_mad_sigma = %d\n", buf, 8u);
    }
  }
}

void sub_100012098(uint64_t a1, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7, uint64_t a8, char a9)
{
  v11 = (a3 * a2);
  v12 = *a4 + (*a7 >> *a5);
  *a6 = v12;
  if (a9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 67109120;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a4;
      v46 = 67109120;
      v47 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_median = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *a5;
      v46 = 67109120;
      v47 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: noise_factor = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a7;
      v46 = 67109120;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_sigma = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *a6;
      v46 = 67109120;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sft_thr = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x = [\n", &v46, 2u);
    }

    sub_10002E530(a1, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v46, 2u);
    }

    v29 = *a6;
    v30 = v11 & 0xFFFFFFF8;
    if (v30 < 1)
    {
      LODWORD(v31) = 0;
    }

    else
    {
      v31 = 0;
      v32 = vdupq_n_s16(v29);
      v33 = a1;
      v34 = a8;
      do
      {
        v35 = *v33++;
        *v34++ = vandq_s8(vsubq_s16(v35, v32), vcgtq_s16(v35, v32));
        v31 += 8;
      }

      while (v31 < v30);
    }

    if (v31 < v11)
    {
      v41 = v11 - v31;
      v42 = (a8 + 2 * v31);
      v43 = (a1 + 2 * v31);
      do
      {
        v44 = *v43++;
        v45 = v44 - v29;
        if (v44 <= v29)
        {
          v45 = 0;
        }

        *v42++ = v45;
        --v41;
      }

      while (v41);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 67109120;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: length = %d\n", &v46, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: x_th = [\n", &v46, 2u);
    }

    sub_10002E530(a8, 0, 0, a2, a3, a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v46, 2u);
    }
  }

  else
  {
    v13 = v11 & 0xFFFFFFF8;
    if (v13 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v14 = 0;
      v15 = vdupq_n_s16(v12);
      v16 = a1;
      v17 = a8;
      do
      {
        v18 = *v16++;
        *v17++ = vandq_s8(vsubq_s16(v18, v15), vcgtq_s16(v18, v15));
        v14 += 8;
      }

      while (v14 < v13);
    }

    if (v14 < v11)
    {
      v36 = v11 - v14;
      v37 = (a8 + 2 * v14);
      v38 = (a1 + 2 * v14);
      do
      {
        v39 = *v38++;
        v40 = v39 - v12;
        if (v39 <= v12)
        {
          v40 = 0;
        }

        *v37++ = v40;
        --v36;
      }

      while (v36);
    }
  }
}

void sub_100012548(uint64_t a1, int a2, int a3, int *a4, uint64_t a5, int a6, const __int16 *a7, char a8)
{
  v10 = *a4;
  if (a3 - v10 + 1 >= 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = (v10 * v10);
    v14 = v13 & 0x7FFFFFF8;
    v15 = a2 - v10 + 1;
    v16 = a6;
    do
    {
      v17 = v12 + v10;
      if ((v15 & 0x80000000) == 0)
      {
        v18 = 0;
        v19 = 0;
        v20 = a1;
        do
        {
          if (v10 >= 1)
          {
            v21 = v20;
            v22 = a7;
            v23 = v12;
            do
            {
              v24 = 0;
              do
              {
                v22[v24] = *(v21 + 2 * v24);
                ++v24;
              }

              while (v19 + v24 < v19 + v10);
              ++v23;
              v22 += v10;
              v21 += 2 * a2;
            }

            while (v23 < v17);
          }

          v25 = vld1q_dup_s16(a7);
          if (v14)
          {
            v26 = 0;
            v27 = a7;
            do
            {
              v28 = *v27++;
              v25 = vmaxq_s16(v28, v25);
              v26 += 8;
            }

            while (v26 < v14);
            v29 = ((v14 - 1) & 0xFFFFFFF8) + 8;
          }

          else
          {
            v29 = 0;
          }

          v30 = vmaxv_s16(vmax_s16(*v25.i8, *&vextq_s8(v25, v25, 8uLL)));
          if (v29 < v13)
          {
            v31 = v13 - v29;
            v32 = &a7[v29];
            do
            {
              v34 = *v32++;
              v33 = v34;
              if (v30 <= v34)
              {
                v30 = v33;
              }

              --v31;
            }

            while (v31);
          }

          *(a5 + 2 * v11 * v16 + 2 * v18++) = v30;
          v19 += v10;
          v20 += 2 * v10;
        }

        while (v19 <= v15);
      }

      ++v11;
      a1 += 2 * v10 * a2;
      v12 += v10;
    }

    while (v17 <= (a3 - v10 + 1));
  }

  if (a8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: xmax = [\n", buf, 2u);
    }

    sub_10002E530(a5, 0, 0, a2 / 2, a3 / 2, a2 / 2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", v36, 2u);
    }
  }
}

void sub_100012790(int16x8_t *a1, int a2, int a3, float *a4, char a5)
{
  v5 = (a3 * a2);
  v6 = v5 & 0xFFFFFFF8;
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v7 = 0;
    v8.i64[0] = 0x1000100010001;
    v8.i64[1] = 0x1000100010001;
    v9 = a1;
    v10 = 0uLL;
    v11 = 0uLL;
    do
    {
      v12 = *v9++;
      v13 = vandq_s8(vcgtzq_s16(v12), v8);
      v14 = vmaxq_s16(v12, 0);
      v10 = vaddw_high_u16(vaddw_u16(v10, *v14.i8), v14);
      v11 = vaddw_high_u16(vaddw_u16(v11, *v13.i8), v13);
      v7 += 8;
    }

    while (v7 < v6);
  }

  v15 = vadd_s32(vzip1_s32(*v11.i8, *v10.i8), vzip2_s32(*v11.i8, *v10.i8));
  v16 = vextq_s8(v10, v10, 8uLL).u64[0];
  v17 = vextq_s8(v11, v11, 8uLL).u64[0];
  v18 = vadd_s32(vadd_s32(v15, vzip1_s32(v17, v16)), vzip2_s32(v17, v16));
  if (v7 < v5)
  {
    v19 = v5 - v7;
    v20 = &a1->i16[v7];
    do
    {
      v21 = *v20++;
      v18 = vadd_s32(v18, __PAIR64__(v21 & ~(v21 >> 31), v21 > 0));
      --v19;
    }

    while (v19);
  }

  v22 = vcvts_n_f32_s32(v18.u32[1], 4uLL) / v18.i32[0];
  *a4 = v22;
  if ((a5 & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v22;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sharpness = %f\n", &v23, 0xCu);
  }
}

float32x2_t sub_100012904(int16x8_t *a1, int16x8_t *a2, int a3, int a4, float *a5, float *a6, float *a7, char a8)
{
  v10 = (a4 * a3);
  v11 = *a5;
  v12 = v10 & 0xFFFFFFF8;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    v21 = 0uLL;
    v20 = 0uLL;
    v19 = 0uLL;
    v15 = 0uLL;
  }

  else
  {
    v13 = 0;
    v14 = vdupq_n_s16(v11);
    v15 = 0uLL;
    v16.i64[0] = 0x2000200020002;
    v16.i64[1] = 0x2000200020002;
    v17 = a1;
    v18 = a2;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    do
    {
      v22 = *v17++;
      v23 = v22;
      v24 = *v18++;
      v25 = vshrq_n_s16(v23, 4uLL);
      v26 = vshrq_n_s16(v24, 4uLL);
      v27 = vcgtq_s16(vmaxq_s16(v25, v26), v14);
      v15 = vsubq_s16(v15, v27);
      v19 = vsubq_s16(v19, vandq_s8(v27, vcgtq_s16(v25, v26)));
      v28 = vandq_s8(v27, vandq_s8(vcgtq_s16(v26, v25), v16));
      v20 = vaddq_s16(v28, v20);
      v21 = vaddq_s16(vandq_s8(v28, vcgtq_s16(v14, v25)), v21);
      v13 += 8;
    }

    while (v13 < v12);
  }

  v29 = vmovl_u16(vadd_s16(*v15.i8, *&vextq_s8(v15, v15, 8uLL)));
  v30 = vmovl_u16(vadd_s16(*v19.i8, *&vextq_s8(v19, v19, 8uLL)));
  v31 = vand_s8(vzip1_s32(*v30.i8, *v29.i8), 0xFFFF0000FFFFLL);
  v32 = vand_s8(vzip2_s32(*v30.i8, *v29.i8), 0xFFFF0000FFFFLL);
  v29.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
  v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
  v33 = vadd_s32(vadd_s32(vadd_s32(v32, v31), vand_s8(vzip1_s32(*v30.i8, *v29.i8), 0xFFFF0000FFFFLL)), vand_s8(vzip2_s32(*v30.i8, *v29.i8), 0xFFFF0000FFFFLL));
  v34 = vmovl_u16(vadd_s16(*v21.i8, *&vextq_s8(v21, v21, 8uLL)));
  v35 = vmovl_u16(vadd_s16(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
  *v29.i8 = vand_s8(vzip1_s32(*v35.i8, *v34.i8), 0xFFFF0000FFFFLL);
  *v30.i8 = vand_s8(vzip2_s32(*v35.i8, *v34.i8), 0xFFFF0000FFFFLL);
  v34.i64[0] = vextq_s8(v34, v34, 8uLL).u64[0];
  v35.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v36 = vadd_s32(vadd_s32(vadd_s32(*v30.i8, *v29.i8), vand_s8(vzip1_s32(*v35.i8, *v34.i8), 0xFFFF0000FFFFLL)), vand_s8(vzip2_s32(*v35.i8, *v34.i8), 0xFFFF0000FFFFLL));
  if (v13 < v10)
  {
    v37 = v11;
    v38 = v10 - v13;
    v39 = &a2->i16[v13];
    v40 = &a1->i16[v13];
    do
    {
      v41 = *v40++;
      v42 = (v41 >> 4);
      v43 = *v39++;
      v44 = v43 >> 4;
      v45 = (v43 >> 4);
      if (v45 <= v42)
      {
        v46 = v42;
      }

      else
      {
        v46 = v44;
      }

      if (v46 > v37)
      {
        v33 = vadd_s32(v33, ((v42 > v45) | 0x100000000));
        if (v45 > v42)
        {
          v47.i32[1] = v36.i32[1];
          if (v42 < v37)
          {
            v47.i32[1] = v36.i32[1] + 2;
          }

          v47.i32[0] = v36.i32[0] + 2;
          v36 = v47;
        }
      }

      --v38;
    }

    while (v38);
  }

  v48 = v33.i32[1];
  if (v33.i32[1])
  {
    v49 = vcvt_f32_s32(v33);
    result = vdiv_f32(v49, vdup_lane_s32(v49, 1));
  }

  else
  {
    result = 0;
  }

  *a6 = result.f32[0];
  v51 = v36.i32[0];
  if (v36.i32[0])
  {
    v52 = vcvt_f32_s32(v36);
    result = vdiv_f32(vdup_lane_s32(v52, 1), v52);
  }

  else
  {
    result.i32[0] = 1.0;
  }

  *a7 = result.f32[0];
  if (a8)
  {
    v57 = v33.i32[0];
    v58 = v36.i32[1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Nedge      = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v53) = 67109120;
      HIDWORD(v53) = v57;
      *buf = v53;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Nda        = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v51;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Nrg        = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v54) = 67109120;
      HIDWORD(v54) = v58;
      *buf = v54;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Nbrg       = %d\n", buf, 8u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *a6;
      *buf = 134217984;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurConf   = %f\n", buf, 0xCu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v56 = *a7;
      *buf = 134217984;
      *&buf[4] = v56;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurExtent = %f\n", buf, 0xCu);
    }
  }

  return result;
}

void sub_100012D58(uint64_t a1)
{
  v2 = 0;
  v3 = v13;
  v13[0] = 0;
  v13[2] = 0;
  v12 = sub_10001301C;
  v13[1] = sub_1000131E8;
  v13[3] = sub_100013FB4;
  v13[4] = 0;
  do
  {
    v4 = *(v3 - 1);
    v5 = (*(a1 + 80) + (*v3 >> 1));
    if (*v3)
    {
      v4 = *(*v5 + v4);
    }

    v6 = v4(v5);
    if (v2 > 1)
    {
      break;
    }

    v3 += 2;
    ++v2;
  }

  while (!v6);
  if (v6)
  {
    v7 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000140B0();
    }
  }

  if (sub_100014184(*(a1 + 80)))
  {
    v8 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v8 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100083F9C();
    }
  }

  if (sub_100014370())
  {
    v9 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v9 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008400C();
    }
  }

  if (sub_100014668())
  {
    v10 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008407C();
    }
  }

  if (sub_10001482C(*(a1 + 80)))
  {
    v11 = off_10041DCE8;
    if (off_10041DCE8 == &_os_log_default)
    {
      v11 = os_log_create("com.apple.isp", "daemon");
      off_10041DCE8 = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000840EC();
    }
  }
}

uint64_t sub_10001301C(uint64_t *a1)
{
  v5 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  v1 = sub_100014A64(*a1, outputStruct);
  if (!v1)
  {
    if (analytics_send_event_lazy())
    {
      return 0;
    }

    else
    {
      v2 = off_10041DCC0;
      if (off_10041DCC0 == &_os_log_default)
      {
        v2 = os_log_create("com.apple.isp", "general");
        off_10041DCC0 = v2;
      }

      v1 = 3758097084;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100080744();
      }
    }
  }

  return v1;
}

void *sub_100013130(uint64_t *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Successful_ISPStart", a1[4]);
    xpc_dictionary_set_uint64(v3, "Successful_ISPResumes", a1[5]);
    xpc_dictionary_set_uint64(v3, "Successful_ISPSuspends", a1[6]);
    xpc_dictionary_set_uint64(v3, "TotalISPPowerOn", a1[5] + a1[4]);
    xpc_dictionary_set_uint64(v3, "Failed_ISPResumes", a1[7]);
    xpc_dictionary_set_uint64(v3, "Failed_ISPSuspends", a1[8]);
  }

  return v3;
}

uint64_t sub_1000131E8()
{
  v0 = __chkstk_darwin();
  v1 = *(*v0 + 4304);
  if (v1 && *(v1 + 640) != 1)
  {
    return 0;
  }

  v2 = sub_1000133D8(*v0, __src);
  if (!v2)
  {
    v3 = 0;
    v4 = v13;
    v13[0] = 0;
    v13[2] = 0;
    v13[4] = 0;
    v13[6] = 0;
    v12 = sub_100013428;
    v13[1] = sub_1000138A0;
    v13[3] = sub_100013AF0;
    v13[5] = sub_100013C90;
    v13[7] = sub_100013E10;
    v13[8] = 0;
    do
    {
      v5 = *(v4 - 1);
      v6 = (v0 + (*v4 >> 1));
      if (*v4)
      {
        v5 = *(*v6 + v5);
      }

      memcpy(v10, __src, sizeof(v10));
      v7 = v5(v6, v10);
      if (v3 > 3)
      {
        break;
      }

      v4 += 2;
      ++v3;
    }

    while ((v7 & 1) != 0);
    if (v7)
    {
      return 0;
    }

    v8 = off_10041DCC0;
    if (off_10041DCC0 == &_os_log_default)
    {
      v8 = os_log_create("com.apple.isp", "general");
      off_10041DCC0 = v8;
    }

    v2 = 3758097084;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080834(v8);
    }
  }

  return v2;
}

uint64_t sub_1000133D8(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 3028;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x3Du, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_100013428()
{
  __chkstk_darwin();
  v1 = v0;
  v9 = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_1000136A8;
  v12 = &unk_1000A2B70;
  memcpy(v13, v0, sizeof(v13));
  v2 = analytics_send_event_lazy();
  if ((v2 & 1) == 0)
  {
    v3 = off_10041DCC0;
    if (off_10041DCC0 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC0 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000808B0();
    }
  }

  if (v1[396])
  {
    v4 = 0;
    do
    {
      memcpy(v7, v1, sizeof(v7));
      v8 = v4;
      v2 = analytics_send_event_lazy();
      if ((v2 & 1) == 0)
      {
        v5 = off_10041DCC0;
        if (off_10041DCC0 == &_os_log_default)
        {
          v5 = os_log_create("com.apple.isp", "general");
          off_10041DCC0 = v5;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v15 = "com.apple.applecamerad.ProjectorUsage";
          v16 = 1024;
          v17 = v4;
          v18 = 1024;
          v19 = 0;
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to send the %s event number %d into the diagnostics system %08X\n\n", buf, 0x18u);
        }
      }

      ++v4;
    }

    while (v4 < v1[396]);
  }

  return v2;
}

void *sub_1000136A8(_DWORD *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = a1[8];
    xpc_dictionary_set_uint64(v2, "Dense_High_Power", (v3 * 0.001));
    LODWORD(v5) = a1[9];
    xpc_dictionary_set_uint64(v4, "Dense_Low_Power", (v5 * 0.001));
    LODWORD(v6) = a1[10];
    xpc_dictionary_set_uint64(v4, "Sparse_High_Power", (v6 * 0.001));
    LODWORD(v7) = a1[11];
    xpc_dictionary_set_uint64(v4, "Sparse_Low_Power", (v7 * 0.001));
    LODWORD(v8) = a1[12];
    xpc_dictionary_set_uint64(v4, "Flood_Output_Duration", (v8 * 0.001));
    LODWORD(v9) = a1[13];
    xpc_dictionary_set_uint64(v4, "ProbeA", (v9 * 0.001));
    LODWORD(v10) = a1[14];
    xpc_dictionary_set_uint64(v4, "ProbeB", (v10 * 0.001));
    LODWORD(v11) = a1[15];
    xpc_dictionary_set_uint64(v4, "Standby_Time", (v11 * 0.001));
  }

  return v4;
}

void *sub_1000137F4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = *(a1 + 4 * *(a1 + 3060) + 1620);
    xpc_dictionary_set_uint64(v2, "Flood_Avg_Exposure", (v3 * 0.001));
    xpc_dictionary_set_double(v4, "Flood_Avg_Temp", *(a1 + 4 * *(a1 + 3060) + 2100));
    xpc_dictionary_set_double(v4, "Flood_Min_Temp", *(a1 + 4 * *(a1 + 3060) + 2580));
  }

  return v4;
}

uint64_t sub_1000138A0(uint64_t a1, const void *a2)
{
  memcpy(v5, a2, sizeof(v5));
  v2 = analytics_send_event_lazy();
  if ((v2 & 1) == 0)
  {
    v3 = off_10041DCC0;
    if (off_10041DCC0 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "general");
      off_10041DCC0 = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100080928();
    }
  }

  return v2;
}

void *sub_100013988(unsigned int *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Rigel_Faults", a1[377]);
    xpc_dictionary_set_uint64(v3, "Rigel_LVT_Faults", a1[378]);
    xpc_dictionary_set_uint64(v3, "Rigel_UVLO_Faults", a1[379]);
    xpc_dictionary_set_uint64(v3, "Mama_Bear_Faults", a1[380]);
    xpc_dictionary_set_uint64(v3, "Yogi_Faults", a1[381]);
    xpc_dictionary_set_uint64(v3, "Bane_Faults", a1[394]);
    xpc_dictionary_set_uint64(v3, "Bane_Temperature_Low_Faults", a1[401]);
    xpc_dictionary_set_uint64(v3, "Bane_Temperature_High_Faults", a1[402]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_Hard_Low_Faults", a1[395]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_Hard_High_Faults", a1[396]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_Intermediate_Low_Faults", a1[397]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_Intermediate_High_Faults", a1[398]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_OutOfRange_Low_Faults", a1[399]);
    xpc_dictionary_set_uint64(v3, "Bane_Trace_Resistance_OutOfRange_High_Faults", a1[400]);
    xpc_dictionary_set_uint64(v3, "Romeo_Fail_Status", a1[403]);
  }

  return v3;
}

BOOL sub_100013AF0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 1520;
  while (!*(v4 + 4 * v2))
  {
LABEL_6:
    v3 = v2++ > 2;
    if (v2 == 4)
    {
      return 1;
    }
  }

  v5 = 0;
  while ((analytics_send_event_lazy() & 1) != 0)
  {
    if (++v5 >= *(v4 + 4 * v2))
    {
      goto LABEL_6;
    }
  }

  v6 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v6 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000809A0();
  }

  return v3;
}

BOOL sub_100013C90(uint64_t a1, _DWORD *a2)
{
  v2 = a2[377] + a2[379] + a2[378];
  if (!v2)
  {
    return 1;
  }

  memcpy(v5, a2, sizeof(v5));
  v6 = v2;
  if (analytics_send_event_lazy())
  {
    return 1;
  }

  v4 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v4;
  }

  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100080A18();
    return 0;
  }

  return result;
}

void *sub_100013D98(unsigned int *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "BufferInUseHighWaterMark", a1[383]);
    xpc_dictionary_set_uint64(v3, "TotalBuffersInPool", a1[384]);
    xpc_dictionary_set_uint64(v3, "TotalFaceIDAttempts", a1[765]);
  }

  return v3;
}

BOOL sub_100013E10(int a1, _DWORD *__src)
{
  v6 = __src[8];
  if (v6 > 0x78)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v13 = v5;
  v14 = v4;
  v15 = v2;
  v16 = v3;
  v9 = 0;
  while (1)
  {
    memcpy(v11, __src, sizeof(v11));
    v12 = v9;
    if ((analytics_send_event_lazy() & 1) == 0)
    {
      break;
    }

    if (++v9 >= __src[8])
    {
      return 1;
    }
  }

  v10 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v10 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v10;
  }

  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_100080A90();
    return 0;
  }

  return result;
}

uint64_t sub_100013F64(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 16;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x64u, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_100013FB4(uint64_t *a1)
{
  v1 = sub_100013F64(*a1, &outputStruct);
  if (!v1)
  {
    if (analytics_send_event_lazy())
    {
      return 0;
    }

    else
    {
      v2 = off_10041DCC0;
      if (off_10041DCC0 == &_os_log_default)
      {
        v2 = os_log_create("com.apple.isp", "general");
        off_10041DCC0 = v2;
      }

      v1 = 3758097084;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100080BF8(v2);
      }
    }
  }

  return v1;
}

void sub_1000140B0()
{
  sub_100014140();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100014158(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t sub_100014170@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 1025;
  *(result + 14) = a2;
  return result;
}

uint64_t sub_100014184(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 8;
  while (*(v2 + v1) != 1 || (analytics_send_event_lazy() & 1) != 0)
  {
    if (++v1 == 6)
    {
      return 0;
    }
  }

  v4 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v4;
  }

  v3 = 3758097084;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100080B08();
  }

  return v3;
}

void *sub_1000142B4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "ChannelNum", *(a1 + 40));
    xpc_dictionary_set_uint64(v3, "SIF_Errors", *(*(a1 + 32) + 12 * *(a1 + 40)));
    xpc_dictionary_set_uint64(v3, "Dropped_Frame_Count", *(*(a1 + 32) + 12 * *(a1 + 40) + 4));
    xpc_dictionary_set_uint64(v3, "Streamed_Frame_Count", *(*(a1 + 32) + 12 * *(a1 + 40) + 8));
  }

  return v3;
}

uint64_t sub_100014370()
{
  v0 = 0;
  while ((analytics_send_event_lazy() & 1) != 0)
  {
    if (++v0 == 6)
    {
      return 0;
    }
  }

  v1 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100080B80();
  }

  return 0;
}

void *sub_100014484(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "ChannelNum", *(a1 + 40));
    xpc_dictionary_set_uint64(v3, "ChannelStreamingDurationinMS", *(*(a1 + 32) + 56 * *(a1 + 40) + 48));
    xpc_dictionary_set_uint64(v3, "MotionControlFaultStatus", *(*(a1 + 32) + 56 * *(a1 + 40)));
    xpc_dictionary_set_uint64(v3, "AFandOISControlFaultStatus", *(*(a1 + 32) + 56 * *(a1 + 40) + 4));
    v4 = *(a1 + 32) + 56 * *(a1 + 40);
    if (*(v4 + 8) == 1)
    {
      xpc_dictionary_set_uint64(v3, "AFComplianceFlagCount", *(v4 + 12));
      xpc_dictionary_set_uint64(v3, "OISComplianceFlagCount", *(*(a1 + 32) + 56 * *(a1 + 40) + 16));
      xpc_dictionary_set_double(v3, "coilTempEstB1Max", *(*(a1 + 32) + 56 * *(a1 + 40) + 20));
      xpc_dictionary_set_double(v3, "coilTempEstB2Max", *(*(a1 + 32) + 56 * *(a1 + 40) + 24));
      xpc_dictionary_set_double(v3, "coilTempEstB3Max", *(*(a1 + 32) + 56 * *(a1 + 40) + 28));
      xpc_dictionary_set_double(v3, "coilTempEstB1Mean", *(*(a1 + 32) + 56 * *(a1 + 40) + 32));
      xpc_dictionary_set_double(v3, "coilTempEstB2Mean", *(*(a1 + 32) + 56 * *(a1 + 40) + 36));
      xpc_dictionary_set_double(v3, "coilTempEstB3Mean", *(*(a1 + 32) + 56 * *(a1 + 40) + 40));
    }
  }

  return v3;
}

uint64_t sub_100014668()
{
  if (analytics_send_event_lazy())
  {
    return 0;
  }

  v1 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v1;
  }

  v0 = 3758097084;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_1000807BC();
  }

  return v0;
}

void *sub_100014750(unsigned int *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "FlickerDC", a1[8]);
    xpc_dictionary_set_uint64(v3, "Flicker50Hz", a1[9]);
    xpc_dictionary_set_uint64(v3, "Flicker60Hz", a1[10]);
    xpc_dictionary_set_uint64(v3, "FlickerUnder100Hz", a1[11]);
    xpc_dictionary_set_uint64(v3, "FlickerUnder300Hz", a1[12]);
    xpc_dictionary_set_uint64(v3, "FlickerUnder500Hz", a1[13]);
    xpc_dictionary_set_uint64(v3, "FlickerOver500Hz", a1[14]);
    xpc_dictionary_set_uint64(v3, "FlickerInvalid", a1[15]);
  }

  return v3;
}

uint64_t sub_10001482C(uint64_t *a1)
{
  v2 = 0;
  while (*(a1 + v2 + 8) != 1 || sub_10001498C(*a1, v2, 1718186595) || sub_10001498C(*a1, v2, 1785950322) || (analytics_send_event_lazy() & 1) != 0)
  {
    if (++v2 == 6)
    {
      return 0;
    }
  }

  v5 = off_10041DCC0;
  if (off_10041DCC0 == &_os_log_default)
  {
    v5 = os_log_create("com.apple.isp", "general");
    off_10041DCC0 = v5;
  }

  v3 = 3758097084;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100080C7C();
  }

  return v3;
}

BOOL sub_10001498C(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 <= 5 && (v3 = *(a1 + 4304) + 104 * a2, v5 = *(v3 + 8), v4 = v3 + 8, v5))
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = -1;
  }

  return v6 == a3;
}

uint64_t sub_1000149C0(uint64_t a1, unsigned int a2, void *outputStruct)
{
  result = 3758097084;
  v5 = *(a1 + 4344);
  if (v5)
  {
    if (outputStruct)
    {
      v6 = 584;
      input = a2;
      return IOConnectCallMethod(v5, 0x4Du, &input, 1u, 0, 0, 0, 0, outputStruct, &v6);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t sub_100014A64(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 40;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x4Cu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t sub_100014AB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 3758097088;
  }

  v3 = sub_1000149C0(v2, 1u, outputStruct);
  if (v3)
  {
    return v3;
  }

  v3 = sub_1000149C0(*(a1 + 8), 0, __src);
  if (v3)
  {
    return v3;
  }

  v6 = 0;
  for (i = 28; i != 53; ++i)
  {
    LODWORD(v3) = v3 + LODWORD(__src[i]);
    v6 += LODWORD(outputStruct[i]);
  }

  v8 = arc4random_uniform(v3);
  v9 = arc4random_uniform(v6);
  v10 = 0;
  while (1)
  {
    v8 -= LODWORD(__src[v10 + 28]);
    if (v8 < 1)
    {
      break;
    }

    if (++v10 == 25)
    {
      LODWORD(v10) = 0;
      break;
    }
  }

  v11 = 0;
  while (1)
  {
    v9 -= LODWORD(outputStruct[v11 + 28]);
    if (v9 < 1)
    {
      break;
    }

    if (++v11 == 25)
    {
      LODWORD(v11) = 0;
      break;
    }
  }

  v12 = arc4random_uniform(3u);
  v4 = 0;
  if (__src[3] && __src[53])
  {
    v18 = _NSConcreteStackBlock;
    v19 = 0x40000000;
    v20 = sub_10001990C;
    v21 = &unk_1000A1E80;
    memcpy(v22, __src, sizeof(v22));
    v23 = v12;
    v24 = v10;
    if (analytics_send_event_lazy())
    {
      v4 = 0;
    }

    else
    {
      v13 = off_10041DB90;
      if (off_10041DB90 == &_os_log_default)
      {
        v13 = os_log_create("com.apple.isp", "general");
        off_10041DB90 = v13;
      }

      v4 = 3758097084;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10007C644();
      }
    }
  }

  if (outputStruct[3])
  {
    if (outputStruct[53])
    {
      memcpy(v15, outputStruct, sizeof(v15));
      v16 = v12;
      v17 = v11;
      if ((analytics_send_event_lazy() & 1) == 0)
      {
        v14 = off_10041DB90;
        if (off_10041DB90 == &_os_log_default)
        {
          v14 = os_log_create("com.apple.isp", "general");
          off_10041DB90 = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10007C644();
        }

        return 3758097084;
      }
    }
  }

  return v4;
}

void sub_100014DD4(_OWORD *a1, int a2, int a3)
{
  sub_1000439E0(a1);
  *(v5 + 48) = a3;
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  v7 = v6 + 3 * a2;
  *(v5 + 40) = 4 * a2;
  *(v5 + 44) = 1;
  *(v5 + 32) = v7 + (2 * v6 + 10) * a2;
  *(v5 + 36) = v7;
  sub_100043930();
}

void sub_100014F38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *(a1 + 48) + 3;
  do
  {
    v5 = &v14[v3];
    *(v5 + 2) = 1;
    v5[24] = 0;
    *v5 = &off_1000A1C58;
    *(v5 + 1) = 0;
    v3 += 32;
  }

  while (v3 != 128);
  v6 = 0;
  v7 = &v15;
  while (1)
  {
    sub_100043D64(a1, v6, v10);
    if (*v7 == 1)
    {
      if (*(v7 - 2))
      {
        break;
      }
    }

    *(v7 - 1) = v12;
    *(v7 - 2) = v11;
    *v7 = v13;
    v7 += 4;
    v13 = 0;
    sub_100016068(v10);
    if (v4 == ++v6)
    {
      v8 = sub_100043B44(a1);
      *sub_100016114(a2, 1, v8) = &off_1000A1C58;
      sub_100043B44(a1);
      operator new[]();
    }
  }

  operator delete[]();
}

void sub_100015ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100044064(&a35);
  sub_100044064(&a42);
  sub_100044064(&a49);
  sub_100044064(&a56);
  for (i = 96; i != -32; i -= 32)
  {
    sub_100016068(&STACK[0x240] + i);
  }

  sub_100043A74(&a63);
  sub_100016068(a12);
  for (j = 96; j != -32; j -= 32)
  {
    sub_100016068(&STACK[0x2C0] + j);
  }

  _Unwind_Resume(a1);
}

double sub_100016014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  if (v2 != *(a2 + 20))
  {
    sub_10007C2FC();
  }

  if (!v2)
  {
    return 0.0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = 0.0;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    result = result + v7 * v8;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_100016068(uint64_t result)
{
  *result = off_1000A1C28;
  if (*(result + 8) && *(result + 24) == 1)
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  return result;
}

void sub_1000160DC(uint64_t a1)
{
  sub_100016068(a1);

  operator delete();
}

uint64_t sub_100016114(uint64_t result, int a2, int a3)
{
  *result = off_1000A1C28;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1000161A0(uint64_t a1)
{
  sub_100016068(a1);

  operator delete();
}

__n128 sub_1000161D8(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  if (a2 <= 2306)
  {
    if (a2 > 1586)
    {
      if (a2 <= 2050)
      {
        switch(a2)
        {
          case 1587:
            if ((a5 - 69) > 1)
            {
              if ((a5 - 71) > 1)
              {
                *a1 = &unk_1002BC000;
                *(a1 + 8) = 65748;
                v11 = "/usr/local/share/firmware/isp/3623_01XX.dat";
              }

              else
              {
                *a1 = &unk_1002AB000;
                *(a1 + 8) = 65748;
                v11 = "/usr/local/share/firmware/isp/3624_01XX.dat";
              }
            }

            else
            {
              *a1 = &unk_10029A000;
              *(a1 + 8) = 65748;
              v11 = "/usr/local/share/firmware/isp/3624_02XX.dat";
            }

            break;
          case 1811:
            *a1 = &unk_10031B000;
            *(a1 + 8) = 37400;
            v11 = "/usr/local/share/firmware/isp/4723_01XX.dat";
            break;
          case 1812:
            *a1 = &unk_10028F000;
            *(a1 + 8) = 41368;
            v11 = "/usr/local/share/firmware/isp/2022_01XX.dat";
            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      if (a2 != 2051)
      {
        if (a2 == 2068)
        {
          *a1 = &unk_10026F000;
          *(a1 + 8) = 127884;
          v11 = "/usr/local/share/firmware/isp/2123_01XX.dat";
          goto LABEL_83;
        }

        if (a2 != 2131)
        {
          return result;
        }
      }

      *a1 = &unk_100325000;
      *(a1 + 8) = 149496;
      v11 = "/usr/local/share/firmware/isp/7623_01XX.dat";
    }

    else
    {
      if (a2 > 1393)
      {
        switch(a2)
        {
          case 1394:
            *a1 = &unk_1000D8000;
            *(a1 + 8) = 24392;
            v11 = "/usr/local/share/firmware/isp/1020_03XX.dat";
            break;
          case 1395:
            *a1 = &unk_1000DE000;
            *(a1 + 8) = 14260;
            v11 = "/usr/local/share/firmware/isp/0019_02XX.dat";
            break;
          case 1556:
            if ((a5 & 0xFFFFFFFE) == 0x1E)
            {
              *a1 = &unk_1003D3000;
              *(a1 + 8) = 60780;
              v11 = "/usr/local/share/firmware/isp/2924_01XX.dat";
            }

            else
            {
              *a1 = &unk_1003E2000;
              *(a1 + 8) = 60780;
              v11 = "/usr/local/share/firmware/isp/2921_02XX.dat";
            }

            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      switch(a2)
      {
        case 1029:
          if ((a5 & 0xFFFFFFFE) == 0x1E)
          {
            *a1 = &unk_100395000;
            *(a1 + 8) = 38436;
            v11 = "/usr/local/share/firmware/isp/9724_01XX.dat";
          }

          else
          {
            *a1 = &unk_10039F000;
            *(a1 + 8) = 37576;
            v11 = "/usr/local/share/firmware/isp/9723_01XX.dat";
          }

          break;
        case 1300:
          *a1 = &unk_1000CD000;
          *(a1 + 8) = 41368;
          v11 = "/usr/local/share/firmware/isp/2820_01XX.dat";
          break;
        case 1368:
          if (a5 != 9)
          {
            if (a5 == 112)
            {
              *a1 = &unk_1003BB000;
              *(a1 + 8) = 52136;
              v11 = "/usr/local/share/firmware/isp/1925_03XX.dat";
              break;
            }

            if (a5 != 16)
            {
              *a1 = &unk_1003C8000;
              *(a1 + 8) = 44352;
              v11 = "/usr/local/share/firmware/isp/1921_01XX.dat";
              break;
            }
          }

          *a1 = &unk_1003B0000;
          *(a1 + 8) = 44352;
          v11 = "/usr/local/share/firmware/isp/1922_02XX.dat";
          break;
        default:
          return result;
      }
    }

LABEL_83:
    v12 = *(v11 + 1);
    *(a1 + 12) = *v11;
    *(a1 + 28) = v12;
    result = *(v11 + 28);
    *(a1 + 40) = result;
    return result;
  }

  if (a2 <= 2417)
  {
    if (a2 > 2323)
    {
      switch(a2)
      {
        case 2324:
          *a1 = &unk_1000B5000;
          *(a1 + 8) = 98124;
          v11 = "/usr/local/share/firmware/isp/2325_01XX.dat";
          break;
        case 2339:
          *a1 = &unk_100266000;
          *(a1 + 8) = 36168;
          v11 = "/usr/local/share/firmware/isp/8824_01XX.dat";
          break;
        case 2392:
          *a1 = &unk_1003A9000;
          *(a1 + 8) = 28660;
          v11 = "/usr/local/share/firmware/isp/2224_01XX.dat";
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 2307:
          if ((a5 - 97) > 1)
          {
            *a1 = &unk_100240000;
            *(a1 + 8) = 152192;
            v11 = "/usr/local/share/firmware/isp/7424_01XX.dat";
          }

          else
          {
            *a1 = &unk_10021A000;
            *(a1 + 8) = 152308;
            v11 = "/usr/local/share/firmware/isp/7425_01XX.dat";
          }

          break;
        case 2308:
          if (a5 == 99 || a5 == 79)
          {
            *a1 = &unk_10034A000;
            *(a1 + 8) = 152308;
            v11 = "/usr/local/share/firmware/isp/7525_01XX.dat";
          }

          else
          {
            *a1 = &unk_100370000;
            *(a1 + 8) = 149496;
            v11 = "/usr/local/share/firmware/isp/7524_01XX.dat";
          }

          break;
        case 2323:
          if (a5 != 67 || a11)
          {
            if ((a5 - 69) > 1)
            {
              *a1 = &unk_1002F9000;
              *(a1 + 8) = 138436;
              v11 = "/usr/local/share/firmware/isp/4523_02XX.dat";
            }

            else
            {
              *a1 = &unk_1002D7000;
              *(a1 + 8) = 138436;
              v11 = "/usr/local/share/firmware/isp/4524_01XX.dat";
            }
          }

          else
          {
            *a1 = &unk_1002CD000;
            *(a1 + 8) = 37420;
            v11 = "/usr/local/share/firmware/isp/4523_01XX.dat";
          }

          break;
        default:
          return result;
      }
    }

    goto LABEL_83;
  }

  if (a2 <= 3413)
  {
    switch(a2)
    {
      case 2418:
        if ((a5 - 97) > 1)
        {
          if (a5 == 99)
          {
            *a1 = &unk_1001C1000;
            *(a1 + 8) = 186112;
            v11 = "/usr/local/share/firmware/isp/3525_02XX.dat";
          }

          else
          {
            *a1 = &unk_1001EF000;
            *(a1 + 8) = 172804;
            v11 = "/usr/local/share/firmware/isp/3524_01XX.dat";
          }
        }

        else
        {
          *a1 = &unk_100193000;
          *(a1 + 8) = 186112;
          v11 = "/usr/local/share/firmware/isp/3525_01XX.dat";
        }

        break;
      case 2419:
        *a1 = &unk_1000E2000;
        *(a1 + 8) = 724052;
        v11 = "/usr/local/share/firmware/isp/4425_01XX.dat";
        break;
      case 2434:
        *a1 = &unk_1003F1000;
        *(a1 + 8) = 149364;
        v11 = "/usr/local/share/firmware/isp/7324_01XX.dat";
        break;
      default:
        return result;
    }

    goto LABEL_83;
  }

  if (a2 == 3414)
  {
    if (a3 == 2)
    {
      *a1 = &unk_10041C000;
      *(a1 + 8) = 7040;
      v11 = "/usr/local/share/firmware/isp/6222_01XX.dat";
    }

    else
    {
      *a1 = &unk_10041A000;
      *(a1 + 8) = 7040;
      v11 = "/usr/local/share/firmware/isp/6221_01XX.dat";
    }

    goto LABEL_83;
  }

  if (a2 == 20584 || a2 == 20588)
  {
    *a1 = &unk_100416000;
    *(a1 + 8) = 12800;
    v11 = "/usr/local/share/firmware/isp/0225_01XX.dat";
    goto LABEL_83;
  }

  return result;
}

uint64_t sub_10001684C(int a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSString stringWithUTF8String:off_1000A1C80[a1]];
  if ([(NSFileManager *)v2 fileExistsAtPath:v3]&& (v5 = 0, ![(NSFileManager *)v2 removeItemAtPath:v3 error:&v5]))
  {
    NSLog(@"Failed to remove %s token: %@", off_1000A1C90[a1], [v5 description]);
    return 0;
  }

  else
  {
    sub_10001690C("token was removed");
    return 1;
  }
}

void sub_10001690C(char *a1, ...)
{
  va_start(va, a1);
  v9 = 0;
  v1 = vasprintf(&v9, a1, va);
  if (v9)
  {
    v2 = objc_alloc_init(NSDateFormatter);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = [v2 stringFromDate:{+[NSDate date](NSDate, "date")}];
    v4 = [NSString stringWithFormat:@"%@ %s\n", v3, v9, va];

    free(v9);
    v9 = 0;
    v5 = fopen("/var/mobile/Documents/Tokens.log", "a");
    if (v5)
    {
      v6 = v5;
      fwrite([(NSString *)v4 UTF8String], [(NSString *)v4 length], 1uLL, v5);
      fclose(v6);
    }

    else
    {
      NSLog(@"Failed to open token log file.", v7, v8);
    }
  }

  else
  {
    NSLog(@"Failed to create log message string with code: %d (0x%X)", v1, v1);
  }
}

BOOL sub_100016A2C(char *a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
    snprintf(a1, 0x20uLL, "%lld", valuePtr);
    CFRelease(v3);
  }

  else
  {
    NSLog(@"Failed to read unique chip identifier");
  }

  return v3 != 0;
}

uint64_t sub_100016ABC(int a1, int a2, time_t *a3)
{
  v6 = +[NSFileManager defaultManager];
  v7 = off_1000A1C80[a2];
  if (![(NSFileManager *)v6 fileExistsAtPath:[NSString stringWithUTF8String:v7]])
  {
    sub_10001690C("Can't activate %s projector: no projector token found");
    return 0;
  }

  nullsub_12(__s2);
  if ((sub_100016F90(__s2, v7) & 1) == 0)
  {
    sub_10001690C("Failed to read %s projector token file. Token will be removed.");
    goto LABEL_8;
  }

  v8 = time(0);
  v9 = v18;
  if (v8 > v18)
  {
    sub_10001690C("%s token timeout was reached (current time %ld). Token will be removed.");
LABEL_8:
    sub_10001684C(a2);
    return 0;
  }

  if (v8 > v17 + 43200)
  {
    sub_10001690C("%s token has exceeded max allowed timeout. Token will be removed.");
    goto LABEL_8;
  }

  if (!sub_100016A2C(__s1))
  {
    sub_10001690C("Failed to read unique chip ID");
    return 0;
  }

  if (strcmp(__s1, __s2))
  {
    sub_10001690C("%s token does not match device. Token will be removed.");
    goto LABEL_8;
  }

  v11 = 0;
  while (v11 >= __s2[16] || __s2[v11 + 17] != a1 || a1 == 0)
  {
    if (++v11 == 8)
    {
      sub_10001690C("%s token doesn't match platform. Token will be removed.");
      goto LABEL_8;
    }
  }

  if (v20 == 1)
  {
    v13 = sub_100016DAC();
    if (v13 == -1 || v13 > v17)
    {
      sub_10001690C("System performed boot since %s token creation (boot time: %ld). Token will be removed.");
      goto LABEL_8;
    }
  }

  if (!v19)
  {
    sub_10001690C("Number of allowed activations has reached zero. %s token will be removed.");
    goto LABEL_8;
  }

  v14 = v19 - 1;
  if (v19 >= 1)
  {
    --v19;
    if (v14)
    {
      if (!sub_100016E64(__s2, v7))
      {
        sub_10001690C("Failed to update %s token file. Will return false so someone looks at that...");
        return 0;
      }

      sub_10001690C("%s token activation count updated to %d", off_1000A1C90[a2], v19);
    }

    else
    {
      sub_10001690C("Using last allowed activation. %s token will be removed.", off_1000A1C90[a2]);
      sub_10001684C(a2);
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  return 1;
}

uint64_t sub_100016DAC()
{
  *v4 = 0x1500000001;
  v2 = 16;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0) || (result = v3) == 0)
  {
    v1 = __error();
    NSLog(@"Failed to read boot time. errno %d", *v1);
    return -1;
  }

  return result;
}

BOOL sub_100016E64(uint64_t a1, const char *a2)
{
  __ptr = 3;
  strncpy(v10, (a1 + 32), 0x20uLL);
  strncpy(v11, a1, 0x20uLL);
  bzero(v12, 0x20uLL);
  v4 = *(a1 + 84);
  v12[0] = *(a1 + 68);
  v12[1] = v4;
  v12[2] = *(a1 + 104);
  v5 = *(a1 + 124);
  v13 = *(a1 + 120);
  v14 = v5;
  v6 = qword_10041DB80;
  if (qword_10041DB80 <= 0x7B)
  {
    do
    {
      v10[v6 - 4] ^= byte_10008AEAD[v6 & 7];
      ++v6;
    }

    while (v6 != 124);
  }

  v7 = fopen(a2, "w");
  if (v7)
  {
    fwrite(&__ptr, 1uLL, 0x7CuLL, v7);
    fclose(v7);
  }

  return v7 != 0;
}

uint64_t sub_100016F90(uint64_t a1, char *__filename)
{
  result = fopen(__filename, "r");
  if (result)
  {
    v4 = result;
    v5 = fread(&__ptr, 1uLL, 0x24uLL, result) == 36 && __ptr == 3;
    if (v5 && fread(&v11[qword_10041DB80 - 4], 1uLL, 0x58uLL, v4) == 88)
    {
      v6 = qword_10041DB80;
      if (qword_10041DB80 <= 0x7B)
      {
        do
        {
          v11[v6 - 4] ^= byte_10008AEAD[v6 & 7];
          ++v6;
        }

        while (v6 != 124);
      }

      strncpy(a1, v12, 0x20uLL);
      *(a1 + 104) = v13;
      v7 = v15;
      *(a1 + 120) = v14;
      *(a1 + 124) = v7 != 0;
      strncpy((a1 + 32), v11, 0x20uLL);
      *(a1 + 63) = 0;
      bzero((a1 + 68), 0x20uLL);
      v8 = 0;
      *(a1 + 64) = 8;
      while (1)
      {
        v9 = *&v12[4 * v8 + 32];
        *(a1 + 68 + 4 * v8) = v9;
        if (!v9)
        {
          break;
        }

        if (++v8 == 8)
        {
          return 1;
        }
      }

      *(a1 + 64) = v8;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001711C(uint64_t a1)
{
  *a1 = 0xFFFFFFFF00000000;
  *(a1 + 8) = -1;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 80) = 0x4FFFF00000001;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = -1;
  sub_1000171C8(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v2 = objc_alloc_init(NSMutableDictionary);
  *(a1 + 88) = v2;
  [v2 setValue:&off_1000AFF08 forKey:@"Version"];
  return a1;
}

void sub_1000171A8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000171C8(uint64_t a1, void *a2)
{
  v4 = [a2 lastPathComponent];
  v5 = [a2 stringByDeletingLastPathComponent];
  v6 = *(a1 + 16);
  if (v6)
  {

    *(a1 + 16) = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {

    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 1;
  if (!v4 || (v8 = [(__CFString *)v4 length], !a2) || !v8)
  {
    v4 = @"JasperFrameModes.plist";
  }

  *(a1 + 16) = [(__CFString *)v4 copy];
  if (!v5 || (v9 = [(__CFString *)v5 length], !a2) || !v9)
  {
    v5 = @"/var/mobile/Documents/JasperL";
  }

  v10 = [(__CFString *)v5 copy];
  *(a1 + 24) = v10;
  v11 = [v10 stringByAppendingPathComponent:*(a1 + 16)];
  v12 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v11];
  if (a2)
  {
    NSLog(@"Jasper Frame Config: using file %@ as config plist", v11);
  }

  else if ((v12 & 1) == 0)
  {
    *(a1 + 32) = 0;
  }
}

uint64_t sub_1000172CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
  }

  v3 = *(a1 + 24);
  if (v3)
  {
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_100017344(uint64_t a1, uint64_t a2, void *__src)
{
  v8 = 14092;
  v9 = a2;
  memcpy(v10, __src, sizeof(v10));
  NSLog(@"%s: [ch:%d] Sending Peridot online config command", "onlineUpdate", a2);
  v5 = sub_10000BE84(a1, v7, 0x3D0u, 0, 0xFFFFFFFF);
  if (!v5)
  {
    return v11;
  }

  NSLog(@"%s: Sending Peridot online config failed: 0x%08X", "onlineUpdate", v5);
  return 0;
}

uint64_t sub_100017414()
{
  sub_10001711C(&unk_10041DD80);

  return __cxa_atexit(sub_100017334, &unk_10041DD80, &_mh_execute_header);
}

uint64_t sub_10001746C(uint64_t result, int a2, int a3)
{
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        operator delete[]();
      }
    }

    *(result + 16) = a2;
    *(result + 20) = a3;
    operator new[]();
  }

  return result;
}

uint64_t sub_100017508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    sub_10007C328();
  }

  sub_1000176C8(a3, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);

  return sub_100017760(v6, v7, v8, v9, v10, v11, v12);
}

void sub_100017578(uint64_t a1)
{
  sub_1000175B0(a1);

  operator delete();
}

uint64_t sub_1000175B0(uint64_t result)
{
  *result = off_1000A1CB0;
  if (*(result + 8) && *(result + 24) == 1)
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  return result;
}

void sub_100017620(uint64_t a1)
{
  sub_100017658(a1);

  operator delete();
}

uint64_t sub_100017658(uint64_t result)
{
  *result = off_1000A1CE0;
  if (*(result + 8) && *(result + 24) == 1)
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1000176C8(uint64_t result, int a2, int a3)
{
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        operator delete[]();
      }
    }

    *(result + 16) = a2;
    *(result + 20) = a3;
    operator new[]();
  }

  return result;
}

uint64_t sub_100017760(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, float *a5, unsigned int a6, unsigned int a7)
{
  if ((a7 & 1) == 0)
  {
    sub_10007C380();
  }

  if ((a6 & 1) == 0)
  {
    sub_10007C354();
  }

  v7 = a7 - 1;
  v8 = v7 >> 1;
  v9 = a6 - 1;
  v10 = (a6 - 1) >> 1;
  if (a6 == 1)
  {
    v16 = v9 >> 1;
  }

  else
  {
    v11 = 0;
    v12 = a3 - v8;
    v13 = v8 + a3;
    if (v8 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7 >> 1;
    }

    if (v10 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a6 - 1) >> 1;
    }

    v118 = v15;
    v16 = v9 >> 1;
    v17 = a7 * v10;
    v18 = v8 + a7 * v10;
    do
    {
      v19 = v7;
      if (v7)
      {
        v20 = 0;
        v21 = v18;
        v22 = v8;
        do
        {
          *a5 = 0.0;
          if (v16 - v11 < a6)
          {
            v23 = 0;
            v24 = 0.0;
            v25 = v21;
            v26 = v16 - v11;
            do
            {
              if (v8 - v20 < a7)
              {
                v27 = v25;
                v28 = v23;
                v29 = v22;
                do
                {
                  v24 = v24 + (*(a4 + 4 * v27) * *(result + 4 * v28));
                  *a5 = v24;
                  ++v29;
                  ++v28;
                  ++v27;
                }

                while (v29 < a7);
              }

              ++v26;
              v23 += a3;
              v25 += a7;
            }

            while (v26 < a6);
          }

          ++v20;
          ++a5;
          --v22;
          --v21;
        }

        while (v20 != v14);
      }

      if (v8 < v12)
      {
        v30 = 0;
        v31 = v8;
        do
        {
          *a5 = 0.0;
          if (v16 - v11 < a6)
          {
            v32 = 0.0;
            v33 = v17;
            v34 = v30;
            v35 = v16 - v11;
            do
            {
              v36 = a7;
              v37 = v33;
              v38 = v34;
              do
              {
                v32 = v32 + (*(a4 + 4 * v37) * *(result + 4 * v38));
                *a5 = v32;
                ++v38;
                ++v37;
                --v36;
              }

              while (v36);
              ++v35;
              v34 += a3;
              v33 += a7;
            }

            while (v35 < a6);
          }

          ++v31;
          ++a5;
          ++v30;
        }

        while (v31 != v12);
      }

      if (v12 < a3)
      {
        v39 = a3 - 2 * v8;
        v40 = a3 - v8;
        do
        {
          *a5 = 0.0;
          if (v16 - v11 < a6)
          {
            v41 = 0.0;
            v42 = v17;
            v43 = v39;
            v44 = v16 - v11;
            do
            {
              if (v40 != v13)
              {
                v45 = 0;
                v46 = v42;
                v47 = v43;
                do
                {
                  v41 = v41 + (*(a4 + 4 * v46) * *(result + 4 * v47));
                  *a5 = v41;
                  ++v45;
                  ++v47;
                  ++v46;
                }

                while (v45 < (v13 - v40));
              }

              ++v44;
              v43 += a3;
              v42 += a7;
            }

            while (v44 < a6);
          }

          ++v40;
          ++a5;
          ++v39;
        }

        while (v40 != a3);
      }

      ++v11;
      v18 -= a7;
      v17 -= a7;
      v7 = v19;
    }

    while (v11 != v118);
  }

  v48 = v16;
  v49 = a2 - v16;
  if (v16 < a2 - v16)
  {
    v50 = 0;
    v51 = a3 - v8;
    v52 = v8 + a3;
    if (v8 <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v8;
    }

    v54 = v48;
    v55 = a3 - 2 * v8;
    do
    {
      if (v7)
      {
        v56 = 0;
        v57 = v8;
        do
        {
          *a5 = 0.0;
          if (a6)
          {
            v58 = 0;
            v59 = 0.0;
            v60 = v57;
            v61 = v50;
            do
            {
              if (v8 - v56 < a7)
              {
                v62 = v60;
                v63 = v61;
                v64 = v57;
                do
                {
                  v59 = v59 + (*(a4 + 4 * v62) * *(result + 4 * v63));
                  *a5 = v59;
                  ++v64;
                  ++v63;
                  ++v62;
                }

                while (v64 < a7);
              }

              ++v58;
              v61 += a3;
              v60 += a7;
            }

            while (v58 != a6);
          }

          ++v56;
          ++a5;
          --v57;
        }

        while (v56 != v53);
      }

      v65 = v50;
      v66 = v8;
      if (v8 < v51)
      {
        do
        {
          *a5 = 0.0;
          if (a6)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0.0;
            v70 = v65;
            do
            {
              if (a7)
              {
                v71 = a7;
                v72 = v67;
                v73 = v70;
                do
                {
                  v69 = v69 + (*(a4 + 4 * v72) * *(result + 4 * v73));
                  *a5 = v69;
                  ++v73;
                  ++v72;
                  --v71;
                }

                while (v71);
              }

              ++v68;
              v70 += a3;
              v67 += a7;
            }

            while (v68 != a6);
          }

          ++v66;
          ++a5;
          ++v65;
        }

        while (v66 != v51);
      }

      v74 = v55;
      v75 = a3 - v8;
      if (v51 < a3)
      {
        do
        {
          *a5 = 0.0;
          if (a6)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0.0;
            v79 = v74;
            do
            {
              if (v75 != v52)
              {
                v80 = 0;
                v81 = v76;
                v82 = v79;
                do
                {
                  v78 = v78 + (*(a4 + 4 * v81) * *(result + 4 * v82));
                  *a5 = v78;
                  ++v80;
                  ++v82;
                  ++v81;
                }

                while (v80 < (v52 - v75));
              }

              ++v77;
              v79 += a3;
              v76 += a7;
            }

            while (v77 != a6);
          }

          ++v75;
          ++a5;
          ++v74;
        }

        while (v75 != a3);
      }

      ++v54;
      v50 += a3;
      v55 += a3;
    }

    while (v54 != v49);
  }

  if (v49 < a2)
  {
    v83 = v48 + a2;
    v84 = a3 - v8;
    v85 = v8 + a3;
    if (v8 <= 1)
    {
      v86 = 1;
    }

    else
    {
      v86 = v8;
    }

    v87 = a3 * (a2 - 2 * v48);
    v88 = a3 + v87 - 2 * v8;
    do
    {
      v89 = v9 - 1;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      if (v7)
      {
        v90 = 0;
        v91 = v8;
        do
        {
          *a5 = 0.0;
          if (v83 != v49)
          {
            v92 = 0;
            v93 = 0.0;
            v94 = v91;
            v95 = v87;
            do
            {
              if (v8 - v90 < a7)
              {
                v96 = v94;
                v97 = v95;
                v98 = v91;
                do
                {
                  v93 = v93 + (*(a4 + 4 * v96) * *(result + 4 * v97));
                  *a5 = v93;
                  ++v98;
                  ++v97;
                  ++v96;
                }

                while (v98 < a7);
              }

              ++v92;
              v95 += a3;
              v94 += a7;
            }

            while (v92 != v9);
          }

          ++v90;
          ++a5;
          --v91;
        }

        while (v90 != v86);
      }

      v99 = v87;
      v100 = v8;
      if (v8 < v84)
      {
        do
        {
          *a5 = 0.0;
          if (v83 != v49)
          {
            v101 = 0;
            v102 = 0;
            v103 = 0.0;
            v104 = v99;
            do
            {
              if (a7)
              {
                v105 = a7;
                v106 = v101;
                v107 = v104;
                do
                {
                  v103 = v103 + (*(a4 + 4 * v106) * *(result + 4 * v107));
                  *a5 = v103;
                  ++v107;
                  ++v106;
                  --v105;
                }

                while (v105);
              }

              ++v102;
              v104 += a3;
              v101 += a7;
            }

            while (v102 != v9);
          }

          ++v100;
          ++a5;
          ++v99;
        }

        while (v100 != v84);
      }

      v108 = v88;
      v109 = a3 - v8;
      if (v84 < a3)
      {
        do
        {
          *a5 = 0.0;
          if (v83 != v49)
          {
            v110 = 0;
            v111 = 0;
            v112 = 0.0;
            v113 = v108;
            do
            {
              if (v109 != v85)
              {
                v114 = 0;
                v115 = v110;
                v116 = v113;
                do
                {
                  v112 = v112 + (*(a4 + 4 * v115) * *(result + 4 * v116));
                  *a5 = v112;
                  ++v114;
                  ++v116;
                  ++v115;
                }

                while (v114 < (v85 - v109));
              }

              ++v111;
              v113 += a3;
              v110 += a7;
            }

            while (v111 != v9);
          }

          ++v109;
          ++a5;
          ++v108;
        }

        while (v109 != a3);
      }

      ++v49;
      v87 += a3;
      v88 += a3;
      v9 = v89;
    }

    while (v49 != a2);
  }

  return result;
}

uint64_t sub_100017DCC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = dispatch_group_create();
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = malloc_type_malloc(0x48uLL, 0x1000040773C5DECuLL);
    if (v4)
    {
      v5 = v4;
      pthread_mutex_init(v4, 0);
      LOBYTE(v5[1].__sig) = 1;
      dispatch_set_context(*(a1 + 8), v5);
      dispatch_set_finalizer_f(*(a1 + 8), sub_100017E54);
    }
  }

  return a1;
}

void sub_100017E54(pthread_mutex_t *a1)
{
  pthread_mutex_destroy(a1);

  free(a1);
}

uint64_t sub_100017E90(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    context = dispatch_get_context(*(a1 + 8));
    if (context)
    {
      v4 = context;
      pthread_mutex_lock(context);
      LOBYTE(v4[1].__sig) = 0;
      pthread_mutex_unlock(v4);
      v2 = *(a1 + 8);
    }

    dispatch_release(v2);
    *(a1 + 8) = 0;
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_100017F00(NSObject *a1, int a2, const void *a3)
{
  v6 = objc_alloc_init(CMDeviceImpactManager);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v6 isDeviceImpactAvailable])
    {
      if (a1 && dispatch_get_context(a1))
      {
        v7 = _Block_copy(a3);
        dispatch_group_enter(a1);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100018454;
        v36[3] = &unk_1000A1D28;
        v36[4] = a1;
        v36[5] = v7;
        [v6 queryDeviceImpactsWithCompletion:v36];
        if (a2)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100018670;
          block[3] = &unk_1000A1D50;
          block[4] = v6;
          dispatch_group_notify(a1, global_queue, block);
        }

        else
        {
          dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
        }

        return 0;
      }

      v27 = off_10041DB88;
      if (off_10041DB88 == &_os_log_default)
      {
        v27 = os_log_create("com.apple.isp", "services");
        off_10041DB88 = v27;
      }

      v17 = 3758097084;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10007C424(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    else
    {
      v19 = off_10041DB88;
      if (off_10041DB88 == &_os_log_default)
      {
        v19 = os_log_create("com.apple.isp", "services");
        off_10041DB88 = v19;
      }

      v17 = 3758097112;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10007C3AC(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

LABEL_14:

    return v17;
  }

  v9 = off_10041DB88;
  if (off_10041DB88 == &_os_log_default)
  {
    v9 = os_log_create("com.apple.isp", "services");
    off_10041DB88 = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10007C49C(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = 3758097095;
  if (v6)
  {
    goto LABEL_14;
  }

  return v17;
}

uint64_t sub_100018198(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100018284;
    v12[3] = &unk_1000A1D00;
    v12[4] = a1;
    return sub_100017F00(v1, 1, v12);
  }

  else
  {
    v3 = off_10041DB88;
    if (off_10041DB88 == &_os_log_default)
    {
      v3 = os_log_create("com.apple.isp", "services");
      off_10041DB88 = v3;
    }

    v2 = 3758097088;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007C514(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v2;
}

void sub_100018284(uint64_t a1, char *a2, unsigned int a3)
{
  v13 = *(a1 + 32);
  if (a3)
  {
    v3 = a3;
    v4 = off_10041DB88;
    v5 = a2 + 8;
    do
    {
      if (v4 == &_os_log_default)
      {
        v4 = os_log_create("com.apple.isp", "services");
        off_10041DB88 = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *v5;
        v7 = *(v5 + 4);
        v8 = *(v5 - 8);
        v9 = *(v5 - 1);
        *buf = 136316162;
        v17 = "SendDeviceImpacts_block_invoke";
        v18 = 1024;
        v19 = v6;
        v20 = 2048;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        v24 = 2048;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s - Device Impact Callback: impactType=%u date=%lld simulated=%d peakAccel=%f\n", buf, 0x2Cu);
        v4 = off_10041DB88;
      }

      v5 += 20;
      --v3;
    }

    while (v3);
  }

  v10 = sub_100055728(*v13, a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = off_10041DB88;
    if (off_10041DB88 == &_os_log_default)
    {
      v12 = os_log_create("com.apple.isp", "services");
      off_10041DB88 = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007C58C(v11, v12);
    }
  }
}

void sub_100018454(uint64_t a1, void *a2)
{
  context = dispatch_get_context(*(a1 + 32));
  memset(v27, 0, 220);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v3 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = v5;
    v10 = v5 <= 0xBu;
    v11 = 11 - v5;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v27 + 20 * v9;
    v13 = 20 * v11;
    while (1)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(obj);
      }

      if (v13 == v7)
      {
        break;
      }

      v14 = *(*(&v22 + 1) + 8 * v8);
      v15 = &v12[v7];
      [objc_msgSend(v14 "date")];
      v17 = (v16 * 1000000000.0);
      *(v15 + 2) = [v14 impactType];
      *(v15 + 12) = v17;
      *v15 = [v14 isSimulated];
      [v14 peakAcceleration];
      *&v18 = v18;
      *(v15 + 1) = LODWORD(v18);
      LOBYTE(v9) = v9 + 1;
      v8 = v8 + 1;
      v7 += 20;
      if (v4 == v8)
      {
        v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v5 = v9;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  pthread_mutex_lock(context);
  if (LOBYTE(context[1].__sig) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  pthread_mutex_unlock(context);
  _Block_release(*(a1 + 40));
  dispatch_group_leave(*(a1 + 32));
}

void sub_100018678(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100018694(double *a1, double *a2, uint64_t a3)
{
  v3 = a2[3];
  v49 = a2[2] / v3;
  v4 = a2[1];
  *&v50[1] = *a2 / v3;
  *&v51[1] = v49;
  *&v51[2] = v4 / v3;
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[8];
  v48[2] = a2[7] / v6;
  v50[0] = 0;
  v51[0] = 0;
  v51[3] = 0;
  v51[4] = 0;
  v51[5] = 0x3FF0000000000000;
  v48[0] = v5 / v6;
  v48[1] = 0.0;
  v48[3] = 0.0;
  v48[4] = v5 / v6;
  v48[5] = v7 / v6;
  v8 = v50;
  v9 = v51;
  v48[6] = 0.0;
  v48[7] = 0.0;
  v48[8] = 1.0;
  for (i = 1; i != 3; ++i)
  {
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = v9[v11];
      v9[v11] = *v12;
      *v12 = v13;
      v12 += 3;
      ++v11;
    }

    while (i != v11);
    ++v8;
    v9 += 3;
  }

  v14 = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v15 = &v49;
  do
  {
    v16 = 0;
    v17 = a1;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + v15[v18++] * v21;
      }

      while (v18 != 3);
      *(v41 + 3 * v14 + v16++) = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v14;
    v15 += 3;
  }

  while (v14 != 3);
  v22 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v41;
  do
  {
    v24 = 0;
    v25 = v48;
    do
    {
      v26 = 0;
      v27 = 0.0;
      v28 = v25;
      do
      {
        v29 = *v28;
        v28 += 3;
        v27 = v27 + *(v23 + v26) * v29;
        v26 += 8;
      }

      while (v26 != 24);
      *(&v43 + 3 * v22 + v24++) = v27;
      ++v25;
    }

    while (v24 != 3);
    ++v22;
    v23 = (v23 + 24);
  }

  while (v22 != 3);
  v30 = v46;
  *(a3 + 32) = v45;
  *(a3 + 48) = v30;
  *(a3 + 64) = v47;
  v31 = v44;
  *a3 = v43;
  *(a3 + 16) = v31;
  v32 = (a3 + 8);
  v33 = a3 + 24;
  for (j = 1; j != 3; ++j)
  {
    v35 = 0;
    v36 = v32;
    do
    {
      v37 = *(v33 + 8 * v35);
      *(v33 + 8 * v35) = *v36;
      *v36 = v37;
      v36 += 3;
      ++v35;
    }

    while (j != v35);
    ++v32;
    v33 += 24;
  }

  for (k = 0; k != 3; ++k)
  {
    for (m = 0; m != 24; m += 8)
    {
      *(a3 + m) = -*(a3 + m);
    }

    a3 += 24;
  }

  return 0;
}

void sub_1000188CC(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 72) = xmmword_10008AF78;
  *(a1 + 160) = 0;
  *(a1 + 162) = 0;
  *(a1 + 164) = 0;
  *a1 = off_1000A1D90;
  *(a1 + 120) = 0x1E00000001;
  *(a1 + 128) = 1;
  *(a1 + 136) = 1;
  *(a1 + 148) = 4;
  *(a1 + 156) = 2;
  operator new[]();
}

void *sub_100018A04(void *a1)
{
  *a1 = off_1000A1D90;
  if (a1[12])
  {
    operator delete[]();
  }

  if (a1[13])
  {
    operator delete[]();
  }

  return sub_100023EA4(a1);
}

void sub_100018A88(void *a1)
{
  sub_100018A04(a1);

  operator delete();
}

uint64_t sub_100018AC0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = sub_10002503C(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    sub_100018B48(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

uint64_t sub_100018B48(double *a1, uint64_t a2)
{
  v4[0] = off_1000A1C28;
  v4[1] = a2;
  v4[2] = 0x300000003;
  v5 = 0;
  v2 = sub_100018BE8(v4, *a1 / 1000.0, a1[1] / 1000.0, a1[2] / 1000.0);
  sub_100016068(v4);
  return v2;
}

uint64_t sub_100018BE8(uint64_t a1, double a2, long double a3, long double a4)
{
  v8 = cos(a3);
  v9 = cos(a4);
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 20), !v11))
  {
    sub_10007C618();
  }

  v12 = v9;
  **(a1 + 8) = v8 * v9;
  v13 = __sincos_stret(a2);
  v14 = sin(a3);
  v15 = sin(a4);
  if (v11 == 1)
  {
    sub_10007C618();
  }

  *(*(a1 + 8) + 8) = v13.__sinval * v12 * v14 - v13.__cosval * v15;
  if (v11 <= 2)
  {
    sub_10007C618();
  }

  *(*(a1 + 8) + 16) = v13.__cosval * v14 * v12 + v13.__sinval * v15;
  if (v10 == 1)
  {
    sub_10007C618();
  }

  *(*(a1 + 8) + 8 * v11) = v8 * v15;
  *(*(a1 + 8) + 8 * v11 + 8) = v13.__sinval * v14 * v15 + v13.__cosval * v12;
  *(*(a1 + 8) + 8 * v11 + 16) = v13.__cosval * v14 * v15 - v13.__sinval * v12;
  if (v10 <= 2)
  {
    sub_10007C618();
  }

  v16 = 2 * v11;
  *(*(a1 + 8) + 8 * v16) = -v14;
  *(*(a1 + 8) + 8 * v16 + 8) = v13.__sinval * v8;
  *(*(a1 + 8) + 8 * v16 + 16) = v13.__cosval * v8;
  return 0;
}

uint64_t sub_100018D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 8);
  v69[2] = *a3 / v5;
  v69[0] = v4 / v5;
  v69[1] = 0.0;
  v69[3] = 0.0;
  v69[4] = v4 / v5;
  v69[5] = v6 / v5;
  v69[6] = 0.0;
  v69[7] = 0.0;
  v69[8] = 1.0;
  v7 = *(a3 + 336);
  v67[2] = *(a3 + 320);
  v67[3] = v7;
  v68 = *(a3 + 352);
  v8 = *(a3 + 304);
  v67[0] = *(a3 + 288);
  v67[1] = v8;
  memset(v66, 0, sizeof(v66));
  v9 = 45;
  v10 = a3;
  do
  {
    *&v66[v9 - 45] = *(v10 + 360) - *(v10 + 32);
    ++v9;
    v10 += 8;
  }

  while (v9 != 48);
  v11 = 0;
  v65 = *(a3 + 504);
  v64 = *(a3 + 488);
  v12 = *(a3 + 480);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = &v57;
  v14 = v67;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      *v16 = *(v14 + v15);
      v16 = (v16 + 24);
      v15 += 8;
    }

    while (v15 != 24);
    ++v11;
    v13 = (v13 + 8);
    v14 = (v14 + 24);
  }

  while (v11 != 3);
  v17 = 0;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v18 = v50;
  do
  {
    v19 = 0;
    v20 = *&v66[v17];
    do
    {
      *(v18 + v19) = v20 * *(&v64 + v19) + 0.0;
      v19 += 8;
    }

    while (v19 != 24);
    ++v17;
    v18 = (v18 + 24);
  }

  while (v17 != 3);
  v21 = 0;
  v22 = 0;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *__src = 0u;
  v53 = 0u;
  do
  {
    v23 = v21;
    v24 = 3;
    do
    {
      *(__src + v23) = *(v50 + v23) / v12;
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v22;
    v21 += 24;
  }

  while (v22 != 3);
  v25 = 0;
  v26 = 0;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  do
  {
    v27 = v25;
    v28 = 3;
    do
    {
      *(v62 + v27) = *(&v57 + v27) - *(__src + v27);
      v27 += 8;
      --v28;
    }

    while (v28);
    ++v26;
    v25 += 24;
  }

  while (v26 != 3);
  v29 = 0;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *__src = 0u;
  v53 = 0u;
  v30 = v69;
  do
  {
    v31 = 0;
    v32 = v62;
    do
    {
      v33 = 0;
      v34 = 0.0;
      v35 = v32;
      do
      {
        v36 = *v35;
        v35 += 3;
        v34 = v34 + v30[v33++] * v36;
      }

      while (v33 != 3);
      *(&__src[3 * v29] + v31++) = v34;
      v32 = (v32 + 8);
    }

    while (v31 != 3);
    ++v29;
    v30 += 3;
  }

  while (v29 != 3);
  sub_10001913C(v69, v50);
  v37 = 0;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v38 = __src;
  do
  {
    v39 = 0;
    v40 = v50;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v40;
      do
      {
        v44 = *v43;
        v43 += 3;
        v42 = v42 + *&v38[v41++] * v44;
      }

      while (v41 != 3);
      *(&v57 + 3 * v37 + v39++) = v42;
      v40 = (v40 + 8);
    }

    while (v39 != 3);
    ++v37;
    v38 += 3;
  }

  while (v37 != 3);
  sub_100019250(&v57, a2, __src);
  sub_10001746C(a2, v53, SDWORD1(v53));
  memcpy(*(a2 + 8), __src[1], 8 * *(a2 + 16) * *(a2 + 20));
  sub_100016068(__src);
  v45 = *(a2 + 20);
  if (v45)
  {
    if (*(a2 + 16) < 3u)
    {
      sub_10007C618();
    }

    v46 = 0;
    v47 = 8 * (2 * v45);
    v48 = 8 * v45;
    do
    {
      *(*(a2 + 8) + v46) = *(*(a2 + 8) + v46) / *(*(a2 + 8) + v46 + v47);
      *(*(a2 + 8) + v48 + v46) = *(*(a2 + 8) + v48 + v46) / *(*(a2 + 8) + v47 + v46);
      *(*(a2 + 8) + v47 + v46) = 0x3FF0000000000000;
      v46 += 8;
    }

    while (v48 != v46);
  }

  return 0;
}

void sub_100019128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100016068(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001913C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = 0.0;
  v4 = -1;
  do
  {
    if (v2 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 + 1;
    }

    v6 = v4;
    if (!v2)
    {
      v6 = 2;
    }

    v3 = v3 + *(result + 8 * v2) * (*(result + 24 + 8 * v5) * *(result + 48 + 8 * v6) - *(result + 24 + 8 * v6) * *(result + 48 + 8 * v5));
    ++v4;
    ++v2;
  }

  while (v2 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = v7++;
    v10 = v7;
    if (v9 == 2)
    {
      v10 = 0;
    }

    v11 = v9 - 1;
    if (!v9)
    {
      v11 = 2;
    }

    v12 = result + 24 * v10;
    v13 = result + 24 * v11;
    v14 = a2;
    v15 = -1;
    do
    {
      if (v8 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 + 1;
      }

      v17 = v8 == 0;
      v18 = v8 + 1;
      v19 = v15;
      if (v17)
      {
        v19 = 2;
      }

      *v14 = (*(v12 + 8 * v16) * *(v13 + 8 * v19) - *(v12 + 8 * v19) * *(v13 + 8 * v16)) / v3;
      v14 += 3;
      ++v15;
      v8 = v18;
    }

    while (v18 != 3);
    a2 += 8;
  }

  while (v7 != 3);
  return result;
}

uint64_t sub_100019250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000192C8(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1DE0;
  *(a3 + 8) = v4;
  *(a3 + 16) = 3;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_1000192C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a3;
  if (*(a2 + 16) == 3)
  {
    result = sub_100016114(a3, 3, *(a2 + 20));
    v6 = 0;
    v7 = *(a2 + 8);
    v8 = *(result + 8);
    v9 = *(a2 + 20);
    v10 = *(a2 + 20);
    do
    {
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = v7;
        do
        {
          v13 = 0;
          v14 = 0.0;
          result = v12;
          do
          {
            v14 = v14 + *(a1 + v13) * *result;
            v13 += 8;
            result += 8 * v9;
          }

          while (v13 != 24);
          *(v8 + 8 * v6 * v9 + 8 * v11++) = v14;
          v12 += 8;
        }

        while (v11 != v9);
      }

      ++v6;
      a1 += 24;
    }

    while (v6 != 3);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = off_1000A1C28;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_1000193AC(uint64_t a1)
{
  sub_100016068(a1);

  operator delete();
}

void sub_1000193E4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 72) = xmmword_10008AFF8;
  *(a1 + 160) = 0;
  *(a1 + 162) = 0;
  *(a1 + 164) = 0;
  *a1 = off_1000A1E18;
  *(a1 + 120) = 0x3200000003;
  *(a1 + 128) = xmmword_10008AFB0;
  *(a1 + 144) = xmmword_10008AFC0;
  operator new[]();
}

void *sub_1000194E4(void *a1)
{
  *a1 = off_1000A1E18;
  if (a1[12])
  {
    operator delete[]();
  }

  if (a1[13])
  {
    operator delete[]();
  }

  return sub_100023EA4(a1);
}

void sub_100019568(void *a1)
{
  sub_1000194E4(a1);

  operator delete();
}

uint64_t sub_1000195A0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = sub_10002503C(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    sub_100018B48(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

uint64_t sub_10001966C(uint64_t a1, long double *a2)
{
  *a2 = atan2(*(a1 + 56), *(a1 + 64)) * 1000.0;
  a2[1] = atan2(-*(a1 + 48), sqrt(*(a1 + 64) * *(a1 + 64) + *(a1 + 56) * *(a1 + 56))) * 1000.0;
  a2[2] = atan2(*(a1 + 24), *a1) * 1000.0;
  return 0;
}

void sub_1000196F4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_1000197B4(void *a1)
{
  *a1 = off_1000A1E58;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100019820(void *a1)
{
  *a1 = off_1000A1E58;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void *sub_1000198EC(void *result, uint64_t a2)
{
  *result = "com.apple.tof.clocking";
  result[1] = a2;
  return result;
}

uint64_t sub_1000198FC(uint64_t result)
{
  if (*(result + 8))
  {
    *(result + 8) = 0;
  }

  return result;
}

void *sub_10001990C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_double(v2, "nDefaultCaseCountJasper", *(a1 + 32) / *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nDefaultCaseZeroScoreJasper", *(a1 + 40));
    xpc_dictionary_set_double(v3, "nPLLSwitchCountJasper", *(a1 + 48) / *(a1 + 56));
    xpc_dictionary_set_double(v3, "nPLLSwitchPerSecCountJasper", *(a1 + 48) / *(a1 + 456));
    xpc_dictionary_set_uint64(v3, "nBankNumberJasper", *(a1 + 616));
    xpc_dictionary_set_uint64(v3, "nBankOpModeJasper", *(a1 + 64 + 48 * *(a1 + 616)));
    xpc_dictionary_set_uint64(v3, "nBankMaxPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 16));
    xpc_dictionary_set_uint64(v3, "nBankMinPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 8));
    xpc_dictionary_set_double(v3, "nBankSamplePriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 24));
    xpc_dictionary_set_double(v3, "nBankAverage2ValPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 40));
    xpc_dictionary_set_uint64(v3, "nBankMaxDiffPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 32));
    xpc_dictionary_set_double(v3, "nPriSwitchCountJasper", *(a1 + 464) / *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoCallsJasper", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults0", *(a1 + 480));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults1", *(a1 + 488));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults2", *(a1 + 496));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults3", *(a1 + 504));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults4", *(a1 + 512));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults5", *(a1 + 520));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults6", *(a1 + 528));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults7", *(a1 + 536));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults8", *(a1 + 544));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults9", *(a1 + 552));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults10", *(a1 + 560));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent1", *(a1 + 568));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent2", *(a1 + 572));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent3", *(a1 + 576));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent4", *(a1 + 580));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent5", *(a1 + 584));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent6", *(a1 + 588));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent7", *(a1 + 592));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent8", *(a1 + 596));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent9", *(a1 + 600));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent10", *(a1 + 604));
    xpc_dictionary_set_double(v3, "nSelectionAlgoCallsPerSecJasper", *(a1 + 56) / *(a1 + 456));
    xpc_dictionary_set_double(v3, "nUniquePriPairBanksJasper", *(a1 + 472));
    xpc_dictionary_set_uint64(v3, "nPllHistJasper", *(a1 + 620));
    xpc_dictionary_set_uint64(v3, "nTotalRunTimeSecJasper", *(a1 + 456));
    xpc_dictionary_set_BOOL(v3, "nJasperOnJasper", *(a1 + 608));
  }

  return v3;
}

void *sub_100019CE8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_double(v2, "nDefaultCaseCountJasper", *(a1 + 32) / *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nDefaultCaseZeroScoreJasper", *(a1 + 40));
    xpc_dictionary_set_double(v3, "nPLLSwitchCountJasper", *(a1 + 48) / *(a1 + 56));
    xpc_dictionary_set_double(v3, "nPLLSwitchPerSecCountJasper", *(a1 + 48) / *(a1 + 456));
    xpc_dictionary_set_uint64(v3, "nBankNumberJasper", *(a1 + 616));
    xpc_dictionary_set_uint64(v3, "nBankOpModeJasper", *(a1 + 64 + 48 * *(a1 + 616)));
    xpc_dictionary_set_uint64(v3, "nBankMaxPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 16));
    xpc_dictionary_set_uint64(v3, "nBankMinPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 8));
    xpc_dictionary_set_double(v3, "nBankSamplePriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 24));
    xpc_dictionary_set_double(v3, "nBankAverage2ValPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 40));
    xpc_dictionary_set_uint64(v3, "nBankMaxDiffPriJasper", *(a1 + 64 + 48 * *(a1 + 616) + 32));
    xpc_dictionary_set_double(v3, "nPriSwitchCountJasper", *(a1 + 464) / *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoCallsJasper", *(a1 + 56));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults0", *(a1 + 480));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults1", *(a1 + 488));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults2", *(a1 + 496));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults3", *(a1 + 504));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults4", *(a1 + 512));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults5", *(a1 + 520));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults6", *(a1 + 528));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults7", *(a1 + 536));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults8", *(a1 + 544));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults9", *(a1 + 552));
    xpc_dictionary_set_uint64(v3, "nSelectionAlgoResults10", *(a1 + 560));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent1", *(a1 + 568));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent2", *(a1 + 572));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent3", *(a1 + 576));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent4", *(a1 + 580));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent5", *(a1 + 584));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent6", *(a1 + 588));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent7", *(a1 + 592));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent8", *(a1 + 596));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent9", *(a1 + 600));
    xpc_dictionary_set_uint64(v3, "kSelectionAlgoFrequent10", *(a1 + 604));
    xpc_dictionary_set_double(v3, "nSelectionAlgoCallsPerSecJasper", *(a1 + 56) / *(a1 + 456));
    xpc_dictionary_set_double(v3, "nUniquePriPairBanksJasper", *(a1 + 472));
    xpc_dictionary_set_uint64(v3, "nPllHistJasper", *(a1 + 620));
    xpc_dictionary_set_uint64(v3, "nTotalRunTimeSecJasper", *(a1 + 456));
    xpc_dictionary_set_BOOL(v3, "nJasperOnJasper", *(a1 + 608));
  }

  return v3;
}

uint64_t sub_10001A0DC(uint64_t a1, double *a2, void *a3, double *a4, void *a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  if ((a1 - 10) < 0xFFFFFFFFFFFFFFF7)
  {
    return 4294967197;
  }

  v12 = a2;
  v14 = a1 - 1;
  if (a1 == 1)
  {
    a6.i64[0] = *a2;
    a7.i64[0] = 1.0;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    *a3 = vbslq_s8(vnegq_f64(v15), a7, a6).u64[0];
    *a4 = fabs(*a2);
    *a5 = 0x3FF0000000000000;
    if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_10001A624(a1, a2, 1, a6, *a7.i64, a8);
    *a4 = v16;
    if ((v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v79 = v12;
      v80 = a3;
      v17 = 0;
      v8 = 0;
      v76 = a1 - 2;
      v77 = a5;
      v18 = a1;
      v74 = a4;
      v75 = v14;
      v19 = a4 + 1;
      v73 = &v87[v14];
      v84 = 8 * a1;
      while (1)
      {
        v20 = &v12[v18];
        sub_10001A6C4(1, a1 + v8, a1 + v8 - 1, v12, 1, &v12[v18], a1);
        if (a1 + v8 == 2)
        {
          break;
        }

        sub_10001A624(a1 + v8 - 1, &v12[v18], a1, v21, *v22.i64, v23);
        v87[v17] = v29;
        if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          return -v8;
        }

        sub_10001A6C4(0, a1 + v8 - 1, a1 + v8 - 1, v20, a1, &v12[v84 / 8 + 1], a1);
        --v8;
        v18 = a1;
        sub_10001A624(v8 + a1, &v12[v84 / 8 + 1], 1, v30, v31, v32);
        v19[v17] = v33;
        v12 += a1 + 1;
        ++v17;
        if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return v8;
        }
      }

      v34 = v74;
      v87[v76] = v12[a1];
      v35 = v20[1];
      v74[v76 + 1] = v35;
      v36 = v75;
      v37 = v36 + v36 * a1;
      v38 = v80;
      v80[v37] = 0x3FF0000000000000;
      if (a1 < 2)
      {
        v66 = v77;
        v77[v37] = 0x3FF0000000000000;
        *v77 = 0x3FF0000000000000;
      }

      else
      {
        v39 = 0;
        v72 = a1 * a1;
        v40 = &v80[a1 * a1 - 2];
        v78 = (v18 * 8) ^ 0xFFFFFFFFFFFFFFF8;
        v41 = v80 + a1 * (v18 * 8 + 8) - 16;
        v42 = &v80[a1 * v75];
        v43 = v79;
        v44 = &v79[a1 * v75];
        v23 = xmmword_10008B050;
        v45 = a1 - 2;
        do
        {
          v46 = v36;
          v47 = v45;
          if (v36 < a1)
          {
            v48 = 0;
            v49 = 0;
            v50 = vdupq_n_s64(v39);
            do
            {
              v51 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v49), v23)));
              if (v51.i8[0])
              {
                *(v40 + v48) = 0;
              }

              if (v51.i8[4])
              {
                *(v41 + v48) = 0;
              }

              v49 += 2;
              v48 += 16 * a1;
            }

            while ((v39 & 0xFFFFFFFFFFFFFFFELL) + 2 != v49);
          }

          v52 = v47 + v47 * a1;
          v53 = &v43[v52];
          v81 = v46;
          v82 = v47;
          sub_10001A6C4(1, a1 - v47, a1 - v47 - 1, v53, 1, &v80[v47 + v46 * a1], a1);
          v35 = *v53;
          *v22.i64 = 1.0 - *v53;
          v80[v52] = v22.i64[0];
          if (v81 < a1)
          {
            v35 = -v35;
            v54 = -1;
            do
            {
              *v22.i64 = v44[v54] * v35;
              v42[v54++] = v22.i64[0];
            }

            while (v39 != v54);
          }

          ++v39;
          v43 = v79;
          v40 += v78;
          v41 += v78;
          v42 = (v42 + v78);
          v44 = (v44 + v78);
          v36 = v82;
          v55 = 8 * a1;
          v45 = v82 - 1;
          v23 = xmmword_10008B050;
        }

        while (v82 >= 1);
        v77[v75 + v75 * a1] = 0x3FF0000000000000;
        if (a1 != 2)
        {
          v56 = 0;
          v83 = v79 - 2;
          v57 = v84 ^ 0xFFFFFFFFFFFFFFF8;
          v58 = &v77[v72 - 2];
          v59 = &v79[v72 - 3];
          v60 = 1;
          v61 = a1 - 2;
          v62 = v75;
          do
          {
            v63 = v62;
            v62 = v61;
            if (v63 < a1)
            {
              bzero(v77 + (v84 - 8) * a1 + v57 * v56 - 8, 8 * v56 + 8);
            }

            sub_10001A6C4(0, a1 - v62, a1 - v62, &v83[v63 + v62 * a1], a1, &v77[v62 + v62 * a1], a1);
            v35 = v83[v63 + v62 * a1];
            *v22.i64 = 1.0 - v35;
            *&v77[v62 + v62 * a1] = 1.0 - v35;
            v55 = 8 * a1;
            if (v63 < a1)
            {
              v64 = 0;
              v35 = -v35;
              v65 = v60;
              do
              {
                *v22.i64 = *(v59 + v64) * v35;
                *(v58 + v64) = v22.i64[0];
                v64 += v84;
                --v65;
              }

              while (v65);
            }

            v61 = v62 - 1;
            ++v56;
            ++v60;
            v58 += v57;
            v59 += v57;
          }

          while (v56 != v76);
        }

        v66 = v77;
        *v77 = 0x3FF0000000000000;
        v34 = v74;
        v67 = v75;
        v38 = v80;
        v68 = v77 + 1;
        v69 = &v77[a1];
        do
        {
          *v69 = 0;
          *v68++ = 0;
          v69 = (v69 + v55);
          --v67;
        }

        while (v67);
      }

      v85 = a1;
      v86 = 0;
      v70 = sub_10001A834(&v85, &v85, &v85, v34, v87, v66, &v85, v38, v35, v22, v23, v24, v25, v26, v27, v28, &v85, v73, &v86);
      return (v70 | v86) != 0;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001A624(uint64_t result, double *a2, uint64_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  if (result < 2)
  {
    goto LABEL_5;
  }

  v6 = result - 1;
  v7 = 8 * a3;
  a4.i64[0] = 0;
  v8 = 8 * a3;
  v9 = result - 1;
  do
  {
    *a4.i64 = *a4.i64 + *(a2 + v8) * *(a2 + v8);
    v8 += v7;
    --v9;
  }

  while (v9);
  if (*a4.i64 == 0.0)
  {
LABEL_5:
    *a2 = 0.0;
  }

  else
  {
    v10 = *a2;
    *a4.i64 = sqrt(*a4.i64 + v10 * v10);
    *a6.i64 = -*a2;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = *vbslq_s8(vnegq_f64(v11), a4, a6).i64;
    *a2 = (v12 - *a2) / v12;
    v13 = &a2[a3];
    v14 = 1.0 / (v10 - v12);
    do
    {
      *v13 = v14 * *v13;
      v13 = (v13 + v7);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10001A6C4(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 2 && a3 >= 1 && *a4 != 0.0)
  {
    if (result)
    {
      v7 = 0;
      v8 = 8 * a5;
      v9 = a6;
      do
      {
        v10 = 8 * a5;
        v11 = 1;
        v12 = *(a6 + 8 * v7 * a7);
        do
        {
          v12 = v12 + *(a4 + v10) * *(v9 + 8 * v11++);
          v10 += v8;
        }

        while (a2 != v11);
        v13 = v12 * *a4;
        *(a6 + 8 * v7 * a7) = *(a6 + 8 * v7 * a7) - v13;
        v14 = &a4[a5];
        for (i = 1; i != a2; ++i)
        {
          *(v9 + 8 * i) = *(v9 + 8 * i) + -v13 * *v14;
          v14 = (v14 + v8);
        }

        ++v7;
        v9 += 8 * a7;
      }

      while (v7 != a3);
    }

    else
    {
      v16 = 0;
      v17 = 8 * a7;
      v18 = (a6 + 8 * a7);
      v19 = 8 * a5;
      do
      {
        v20 = *(a6 + 8 * v16);
        v21 = 8 * a5;
        v22 = v18;
        v23 = a3 - 1;
        v24 = v20;
        if (a3 < 2)
        {
          *(a6 + 8 * v16) = v20 - v20 * *a4;
        }

        else
        {
          do
          {
            v24 = v24 + *(a4 + v21) * *v22;
            v22 = (v22 + v17);
            v21 += v19;
            --v23;
          }

          while (v23);
          v25 = v24 * *a4;
          *(a6 + 8 * v16) = v20 - v25;
          v26 = 0;
          v27 = &a4[a5];
          v28 = a3 - 1;
          do
          {
            *(v18 + v26) = *(v18 + v26) + -v25 * *v27;
            v26 += v17;
            v27 = (v27 + v19);
            --v28;
          }

          while (v28);
        }

        ++v16;
        ++v18;
      }

      while (v16 != a2);
    }
  }

  return result;
}

uint64_t sub_10001A834(uint64_t *a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5, double *a6, uint64_t *a7, uint64_t a8, double a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, double a14, int8x16_t a15, int8x16_t a16, uint64_t *a17, uint64_t a18, void *a19)
{
  v19 = a19;
  v259 = 0.0;
  v260[0] = 0;
  v20 = *a17;
  v257 = 0.0;
  *&v258 = 0.0;
  v255 = 0.0;
  v256 = 0.0;
  v253 = 0.0;
  v254 = 0.0;
  v251 = 0.0;
  *&v252 = 0.0;
  v249 = 0.0;
  v250 = 0;
  v248 = 0;
  *a19 = 0;
  v21 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v22 = a8;
  v24 = a6;
  v25 = a4;
  v26 = a2;
  v27 = a4 - 1;
  v28 = v21 - 1;
  if (v21 == 1)
  {
    goto LABEL_18;
  }

  v29 = fabs(*v25);
  if (*v25 != 0.0)
  {
    v30 = v21 - 2;
    if (v21 >= 2)
    {
      v31 = v25 + 1;
      v32 = a5;
      v33 = v29;
      do
      {
        v34 = *v31++;
        v35 = fabs(v34);
        v36 = *v32++;
        *a12.i64 = v33 + fabs(v36);
        v33 = v35 * (v33 / *a12.i64);
        if (v29 >= v33)
        {
          v29 = v33;
        }

        v37 = v29 == 0.0 || v30-- == 0;
      }

      while (!v37);
    }
  }

  v38 = v29 / sqrt(v21) * 9.99200722e-15;
  v39 = 6 * v21 * v21;
  a11.i64[0] = 0x8000000000000;
  if (v38 <= v39 * COERCE_DOUBLE(0x8000000000000))
  {
    v40 = v39 * COERCE_DOUBLE(0x8000000000000);
  }

  else
  {
    v40 = v38;
  }

  if (v21 <= 1)
  {
    goto LABEL_17;
  }

  v71 = 0;
  v72 = 0;
  v223 = a18 + 16 * v28;
  v222 = a18 + 24 * v28;
  v221 = a18 - 8;
  v244 = a18 - 8 + 8 * v21;
  v239 = a5 - 1;
  v212 = v25 + 1;
  v204 = a6 - 1;
  v230 = a5 - 2;
  v225 = v25 - 2;
  v226 = a8 + 8 * ~v20 + 8;
  v73 = a18 + 24 * v21;
  v209 = a18 + 16 * v21 - 32;
  v210 = v73 - 40;
  v243 = v73 - 24;
  v207 = a18 - 16;
  v208 = a18 + 8 * v21 - 24;
  v242 = a18 - 16 + 16 * v21;
  v203 = a5 + 1;
  v74 = -1;
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  v76 = vnegq_f64(v75);
  v205 = v76;
  v77 = 0.0;
  v78 = 0.0;
  v79 = 0.0;
  v80 = -1;
  v228 = 6 * v21 * v21;
  v229 = a3;
  v224 = v20;
  v232 = a5;
  v231 = a1;
  v220 = v24;
  v206 = v25;
  v227 = v27;
  while (2)
  {
    v81 = v71 > v39;
    if (v71 <= v39)
    {
      v82 = v21 - 1;
      v83 = &v227[v21];
      v84 = &v239[v21 - 1];
      v219 = &v227[v21 - 1];
      v245 = v21;
      v85 = &v230[v21];
      v86 = v74;
      v87 = &v225[v21];
      v233 = v84;
LABEL_45:
      v74 = v86;
      while (2)
      {
        v88 = 0;
        v76.i64[0] = *v83;
        v89 = fabs(*v83);
        while (1)
        {
          *a10.i64 = fabs(v85[v88]);
          if (*a10.i64 <= v40)
          {
            break;
          }

          *a11.i64 = fabs(v87[v88]);
          if (v89 <= *a11.i64)
          {
            v76.i64[0] = a11.i64[0];
          }

          else
          {
            *v76.i64 = v89;
          }

          if (*v76.i64 <= *a10.i64)
          {
            v89 = *a10.i64;
          }

          else
          {
            v89 = *v76.i64;
          }

          --v88;
          if (!(v82 + v88))
          {
            v90 = 0;
            goto LABEL_58;
          }
        }

        v85[v88] = 0.0;
        if (v88)
        {
          v90 = v82 + v88;
LABEL_58:
          v91 = v90 + 1;
          if (v90 + 1 != v82)
          {
            if (v90 >= v80 || v21 < v74)
            {
              *v76.i64 = v25[v90];
              v93 = fabs(*v76.i64);
              a15.i64[0] = *v83;
              v92 = fabs(*v83);
              if (v93 >= v92)
              {
                goto LABEL_65;
              }

              v72 = 2;
            }

            else
            {
              if (v72 == 1)
              {
                a15.i64[0] = *v83;
                v92 = fabs(*v83);
LABEL_65:
                *a11.i64 = v92 * 9.99200722e-15;
                if (fabs(*v84) > *a11.i64)
                {
                  *v76.i64 = v25[v90];
                  v94 = fabs(*v76.i64);
                  if (v21 > v91)
                  {
                    v95 = &a5[v90];
                    v96 = v90 + 1;
                    *a11.i64 = v94;
                    while (1)
                    {
                      *a12.i64 = fabs(*v95);
                      *a13.i64 = *a11.i64 * 9.99200722e-15;
                      if (*a12.i64 <= *a11.i64 * 9.99200722e-15)
                      {
                        break;
                      }

                      v97 = v96 + 1;
                      *a11.i64 = *a11.i64 / (*a11.i64 + *a12.i64) * fabs(v25[v96]);
                      if (v94 >= *a11.i64)
                      {
                        v94 = *a11.i64;
                      }

                      ++v95;
                      ++v96;
                      if (v21 == v97)
                      {
                        v260[0] = v21 - 1;
                        v72 = 1;
                        v101 = 1;
                        goto LABEL_91;
                      }
                    }

                    v72 = 1;
                    goto LABEL_88;
                  }

                  v260[0] = v21 - 1;
                  v101 = 1;
                  v72 = 1;
                  goto LABEL_91;
                }

                v98 = v84;
                v72 = 1;
                goto LABEL_84;
              }

              *v76.i64 = v25[v90];
              v93 = fabs(*v76.i64);
            }

            v98 = &a5[v90];
            *a11.i64 = fabs(*v98);
            if (*a11.i64 > v93 * 9.99200722e-15)
            {
              a15.i64[0] = *v83;
              v94 = fabs(*v83);
              if (v82 > v90)
              {
                v99 = v21 - 2;
                *a11.i64 = v94;
                while (1)
                {
                  *a12.i64 = fabs(a5[v99]);
                  *a13.i64 = *a11.i64 * 9.99200722e-15;
                  if (*a12.i64 <= *a11.i64 * 9.99200722e-15)
                  {
                    break;
                  }

                  *a11.i64 = *a11.i64 / (*a11.i64 + *a12.i64) * fabs(v25[v99]);
                  if (v94 >= *a11.i64)
                  {
                    v94 = *a11.i64;
                  }

                  if (v99-- <= v90)
                  {
                    goto LABEL_90;
                  }
                }

                v96 = v99 + 1;
LABEL_88:
                v239[v96] = 0.0;
                if (!v81)
                {
                  continue;
                }

                goto LABEL_165;
              }

LABEL_90:
              v101 = 0;
              v260[0] = v90 + 1;
LABEL_91:
              v102 = *a1;
              v103 = ~v90;
              v246 = v90 + 1;
              v238 = v90;
              v234 = v72;
              if (v94 / v89 * (*a1 * 9.99200722e-15) > 1.11022302e-16 && ((v240 = *a1, v104 = v24, v105 = v22, v106 = v71, v214 = a15, v218 = v76, !v101) ? (v107 = fabs(*a15.i64), v108 = a5[v90], v109 = v212[v90]) : (v107 = fabs(*v76.i64), v76.i64[0] = *v219, v108 = *v84, v109 = *a15.i64), (sub_10001BB18(&v251, &v259, *v76.i64, v108, v109), a5 = v232, v84 = &v239[v21 - 1], v71 = v106, v22 = v105, v24 = v104, v83 = &v227[v21], v91 = v246, v90 = v238, a15.i64[0] = v214.i64[0], v76.i64[0] = v218.i64[0], v102 = v240, v107 <= 0.0) || v251 / v107 * (v251 / v107) >= 1.11022302e-16))
              {
                v111 = v71 + v21 + v103;
                if (v251 != 0.0)
                {
                  v236 = v71 + v21 + v103;
                  if (!v101)
                  {
                    v110.i64[0] = 1.0;
                    v164 = (fabs(*v214.i64) - v251) * (*vbslq_s8(v205, v110, v214).i64 + v251 / *v214.i64);
                    if (v21 >= v238 + 2)
                    {
                      if (!sub_10001BBF4(&v254, &v253, &v259, v164, *v233))
                      {
                        v217 = a7;
                        v165 = v239;
                        v166 = v210 - 8 * v238;
                        v167 = v209 - 8 * v238;
                        v168 = v208 - 8 * v238;
                        v169 = v225;
                        v170 = v21;
                        v171 = v207 - 8 * v238;
                        while (1)
                        {
                          if (v170 < v21)
                          {
                            v165[v21] = v259;
                          }

                          v173 = v253;
                          v172 = v254;
                          v174 = v169[v245 + 1];
                          v175 = v165[v245 - 1];
                          v176 = v253 * v175 + v254 * v174;
                          v165[v245 - 1] = v254 * v175 - v253 * v174;
                          v177 = v169[v21];
                          v178 = v172 * v177;
                          v169[v21] = v172 * v177;
                          if (sub_10001BBF4(&v256, &v255, &v259, v176, v173 * v177))
                          {
                            break;
                          }

                          v179 = -v173;
                          v169[v245 + 1] = v259;
                          v181 = v255;
                          v180 = v256;
                          v182 = v165[v245 - 1];
                          v164 = v178 * v255 + v256 * v182;
                          v183 = -v255;
                          v169[v21] = v256 * v178 - v255 * v182;
                          if (v170 <= v238 + 2)
                          {
                            *(v171 + 8 * v21) = v172;
                            *(v168 + 8 * v21) = v179;
                            *(v167 + 8 * v21) = v180;
                            *(v166 + 8 * v21) = v183;
                            v26 = a2;
                            a7 = v217;
                            v24 = v220;
                            v25 = v206;
                            a5 = v232;
                            v91 = v246;
                            v90 = v238;
                            v22 = a8;
                            goto LABEL_151;
                          }

                          v184 = v165[v245 - 2];
                          v165[v245 - 2] = v180 * v184;
                          *(v171 + 8 * v21) = v172;
                          *(v168 + 8 * v21) = v179;
                          *(v167 + 8 * v21) = v180;
                          *(v166 + 8 * v21) = v183;
                          v185 = sub_10001BBF4(&v254, &v253, &v259, v164, v181 * v184);
                          v166 -= 8;
                          v167 -= 8;
                          v168 -= 8;
                          v171 -= 8;
                          --v165;
                          --v169;
                          --v170;
                          result = 0xFFFFFFFFLL;
                          if (v185)
                          {
                            return result;
                          }
                        }
                      }

                      return 0xFFFFFFFFLL;
                    }

LABEL_151:
                    if (fabs(v164) <= v40)
                    {
                      v164 = 0.0;
                    }

                    a5[v90] = v164;
                    v186 = v21 - v91 + 1;
                    v260[0] = v186;
                    sub_10001BCB0("L", "B", v260, v26, v223, v222, &v24[v90], a7);
                    v260[0] = v186;
                    v20 = v224;
                    sub_10001BCB0("R", "B", v229, v260, a18, v221 + 8 * *v231, (v226 + 8 * v246 * v224), a17);
                    v86 = v246;
                    a1 = v231;
                    a5 = v232;
                    v84 = &v239[v21 - 1];
                    v19 = a19;
                    v87 = &v225[v21];
                    v72 = v234;
                    v71 = v236;
                    v83 = &v227[v21];
                    v85 = &v230[v21];
                    goto LABEL_125;
                  }

                  v216 = a7;
                  v110.i64[0] = 1.0;
                  v145 = (fabs(*v218.i64) - v251) * (*vbslq_s8(v205, v110, v218).i64 + v251 / *v218.i64);
                  v146 = v21 - v246;
                  if (v21 > v246)
                  {
                    v147 = 0;
                    v148 = v232[v238];
                    v149 = &v203[v238];
                    v150 = v246;
                    v151 = &v212[v238];
                    v202 = v77;
                    while (!sub_10001BBF4(&v254, &v253, &v259, v145, v148))
                    {
                      if (v150 > v246)
                      {
                        v149[v147 - 2] = v259;
                      }

                      v152 = v253;
                      v153 = v254;
                      v154 = v151[v147 - 1];
                      v155 = v149[v147 - 1];
                      v156 = v253 * v155 + v254 * v154;
                      v149[v147 - 1] = v254 * v155 - v253 * v154;
                      v157 = v151[v147];
                      v148 = v152 * v157;
                      v158 = v153 * v157;
                      v151[v147] = v153 * v157;
                      if (sub_10001BBF4(&v256, &v255, &v259, v156, v152 * v157))
                      {
                        break;
                      }

                      v151[v147 - 1] = v259;
                      v160 = v255;
                      v159 = v256;
                      v161 = v149[v147 - 1];
                      v151[v147] = v256 * v158 - v255 * v161;
                      if (v150 < v82)
                      {
                        v162 = v149[v147];
                        v148 = v160 * v162;
                        v149[v147] = v159 * v162;
                      }

                      ++v150;
                      v145 = v158 * v160 + v159 * v161;
                      *(a18 + v147 * 8) = v153;
                      *(v244 + v147 * 8) = v152;
                      *(v242 + v147 * 8) = v159;
                      *(v243 + v147 * 8) = v160;
                      ++v147;
                      v83 = &v227[v21];
                      v77 = v202;
                      if (v21 == v150)
                      {
                        goto LABEL_137;
                      }
                    }

                    return 0xFFFFFFFFLL;
                  }

LABEL_137:
                  *v233 = v145;
                  v163 = v146 + 1;
                  v260[0] = v146 + 1;
                  v144 = v24;
                  v26 = a2;
                  a7 = v216;
                  sub_10001BCB0("L", "F", v260, a2, a18, v221 + 8 * v240, &v24[v238], v216);
                  v260[0] = v163;
                  v20 = v224;
                  sub_10001BCB0("R", "F", v229, v260, v223, v222, (v226 + 8 * v246 * v224), a17);
                  v84 = &v239[v21 - 1];
                  if (fabs(*v233) <= v40)
                  {
                    *v233 = 0.0;
                  }

                  v22 = a8;
                  v25 = v206;
                  goto LABEL_123;
                }
              }

              else
              {
                v251 = 0.0;
                v111 = v71 + v21 + v103;
              }

              *&v258 = 1.0;
              *&v252 = 1.0;
              v236 = v111;
              if (!v101)
              {
                v122 = 1.0;
                v123 = 1.0;
                v241 = v90 + 2;
                if (v21 >= v90 + 2)
                {
                  v215 = a7;
                  v124 = v210 - 8 * v90;
                  v125 = v209 - 8 * v90;
                  v126 = v25;
                  v127 = v208 - 8 * v90;
                  v128 = v230;
                  v129 = v21;
                  v130 = v207 - 8 * v90;
                  v131 = v21;
                  while (1)
                  {
                    v132 = &v126[v131];
                    v134 = *(v132 - 1);
                    v133 = v132 - 1;
                    if (sub_10001BBF4(&v258, &v257, &v259, v134 * v123, v128[v21]))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v135 = v259;
                    if (v129 < v21)
                    {
                      v128[v245 + 1] = v79 * v259;
                    }

                    v136 = v122 * v135;
                    v137 = v257;
                    v138 = v133;
                    v131 = v21;
                    if (sub_10001BBF4(&v252, &v249, v138, v136, v126[v245 - 2] * v257))
                    {
                      return 0xFFFFFFFFLL;
                    }

                    --v129;
                    v123 = *&v258;
                    *(v130 + 8 * v21) = *&v258;
                    *(v127 + 8 * v21) = -v137;
                    v122 = *&v252;
                    *(v125 + 8 * v21) = *&v252;
                    v79 = v249;
                    *(v124 + 8 * v21) = -v249;
                    v124 -= 8;
                    v125 -= 8;
                    v127 -= 8;
                    v130 -= 8;
                    --v126;
                    --v128;
                    if (v129 + 1 <= v241)
                    {
                      v25 = v206;
                      v90 = v238;
                      *v76.i64 = v206[v238];
                      v77 = v79;
                      v78 = v79;
                      v22 = a8;
                      v26 = a2;
                      a7 = v215;
                      v24 = v220;
                      a5 = v232;
                      v83 = &v227[v21];
                      v91 = v246;
                      break;
                    }
                  }
                }

                v139 = *v76.i64 * v123;
                v25[v90] = v139 * v122;
                a5[v90] = v139 * v78;
                v140 = v21 - v91 + 1;
                v260[0] = v140;
                v141 = v91;
                sub_10001BCB0("L", "B", v260, v26, v223, v222, &v24[v90], a7);
                v260[0] = v140;
                v20 = v224;
                sub_10001BCB0("R", "B", v229, v260, a18, v221 + 8 * *v231, (v226 + 8 * v141 * v224), a17);
                a5 = v232;
                if (fabs(v232[v238]) <= v40)
                {
                  v232[v238] = 0.0;
                }

                v79 = v78;
                v19 = a19;
                a1 = v231;
                v72 = v234;
                v71 = v236;
                v24 = v220;
                v84 = &v239[v21 - 1];
                goto LABEL_124;
              }

              v112 = v21 - v91;
              if (v21 > v91)
              {
                v113 = 0;
                v114 = &v25[v90];
                v115 = 1.0;
                v116 = 1.0;
                v117 = v91;
                v118 = &a5[v90];
                while (!sub_10001BBF4(&v258, &v257, &v259, v114[v113] * v116, v118[v113]))
                {
                  v119 = v259;
                  if (v117 > v246)
                  {
                    v118[v113 - 1] = v78 * v259;
                  }

                  v120 = v115 * v119;
                  v121 = v257;
                  if (sub_10001BBF4(&v252, &v249, &v114[v113], v120, v114[v113 + 1] * v257))
                  {
                    break;
                  }

                  v116 = *&v258;
                  *(a18 + v113 * 8) = *&v258;
                  *(v244 + v113 * 8) = v121;
                  v115 = *&v252;
                  *(v242 + v113 * 8) = *&v252;
                  ++v117;
                  v78 = v249;
                  *(v243 + v113 * 8) = v249;
                  ++v113;
                  if (v21 == v117)
                  {
                    v83 = &v227[v21];
                    a15.i64[0] = *v83;
                    v102 = *v231;
                    v77 = v78;
                    v24 = v220;
                    v25 = v206;
                    v84 = &v239[v21 - 1];
                    v90 = v238;
                    goto LABEL_120;
                  }
                }

                return 0xFFFFFFFFLL;
              }

              v115 = 1.0;
              v116 = 1.0;
LABEL_120:
              v142 = *a15.i64 * v116;
              *v83 = v142 * v115;
              *v84 = v142 * v77;
              v143 = v112 + 1;
              v260[0] = v112 + 1;
              v144 = v24;
              v26 = a2;
              sub_10001BCB0("L", "F", v260, a2, a18, v221 + 8 * v102, &v24[v90], a7);
              v260[0] = v143;
              v20 = v224;
              sub_10001BCB0("R", "F", v229, v260, v223, v222, (v226 + 8 * v246 * v224), a17);
              v84 = &v239[v21 - 1];
              if (fabs(*v233) <= v40)
              {
                *v233 = 0.0;
              }

              v78 = v77;
              v79 = v77;
LABEL_123:
              a5 = v232;
              v19 = a19;
              a1 = v231;
              v72 = v234;
              v71 = v236;
              v24 = v144;
LABEL_124:
              v87 = &v225[v21];
              v85 = &v230[v21];
              v86 = v246;
LABEL_125:
              v80 = v21;
              v81 = v71 > v228;
              if (v71 <= v228)
              {
                goto LABEL_45;
              }

              goto LABEL_165;
            }

LABEL_84:
            *v98 = 0.0;
            if (!v81)
            {
              continue;
            }

            goto LABEL_165;
          }

          v247 = v74;
          v235 = v72;
          v237 = v71;
          v260[0] = v21 - 1;
          v187 = v84;
          sub_10001B8C0(v219, v84, v83, &v250, &v248, &v253, &v254, &v255, v76, a10, a11, a12, a13, v89, *a15.i64, a16, &v256);
          *v219 = v248;
          *v187 = 0.0;
          *v83 = v250;
          v188 = *v26;
          if (*v26 >= 1)
          {
            v189 = &v204[v21];
            v191 = v253;
            v190 = v254;
            v192 = 8 * *a7;
            do
            {
              v193 = *(v189 - 1);
              a12.i64[0] = *v189;
              *a13.i64 = v191 * *v189 + v190 * v193;
              *a11.i64 = v190 * *v189 - v193 * v191;
              *(v189 - 1) = a13.i64[0];
              *v189 = a11.i64[0];
              v189 = (v189 + v192);
              --v188;
            }

            while (v188);
          }

          a3 = v229;
          v194 = *v229;
          a5 = v232;
          v19 = a19;
          a1 = v231;
          v71 = v237;
          v22 = a8;
          if (*v229 >= 1)
          {
            v195 = (v226 + 8 * v82 * v20);
            v196 = (v226 + 8 * v21 * v20);
            v198 = v255;
            v197 = v256;
            do
            {
              v199 = *v195;
              a12.i64[0] = *v196;
              *a13.i64 = v198 * *v196 + v197 * *v195;
              *v195++ = *a13.i64;
              *a11.i64 = v197 * *a12.i64 - v199 * v198;
              *v196++ = a11.i64[0];
              --v194;
            }

            while (v194);
          }

          v82 = v21 - 2;
          v72 = v235;
          v24 = v220;
          v74 = v247;
        }

        else
        {
          a3 = v229;
        }

        break;
      }

      v21 = v82;
      v27 = v227;
      v39 = v228;
      if (v82 > 1)
      {
        continue;
      }

LABEL_17:
      v21 = *a1;
      if (*a1 >= 1)
      {
LABEL_18:
        v41 = 1;
        v42 = v24;
        do
        {
          v43 = v27[v41];
          if (v43 < 0.0)
          {
            v27[v41] = -v43;
            v44 = *v26;
            if (*v26 >= 1)
            {
              v45 = 8 * *a7;
              v46 = v42;
              do
              {
                *v46 = -*v46;
                v46 = (v46 + v45);
                --v44;
              }

              while (v44);
            }
          }

          ++v42;
          v37 = v41++ == v21;
        }

        while (!v37);
        if (v21 >= 2)
        {
          v47 = v21 + 1;
          v48 = v21 - 1;
          v49 = 8 * v21 - 8;
          v50 = (v22 + v20 * v49);
          v51 = 1;
          do
          {
            v52 = *v25;
            v53 = v47 - v51;
            if (v47 - v51 >= 2)
            {
              v55 = v25 + 1;
              v56 = v48;
              v54 = 1;
              v57 = 2;
              do
              {
                v58 = *v55++;
                v59 = v58;
                if (v58 <= v52)
                {
                  v54 = v57;
                  v52 = v59;
                }

                ++v57;
                --v56;
              }

              while (v56);
            }

            else
            {
              v54 = 1;
            }

            if (v54 != v53)
            {
              v27[v54] = v27[v53];
              v27[v53] = v52;
              v60 = *v26;
              v61 = 8 * v54;
              if (*v26 >= 1)
              {
                v62 = 8 * *a7;
                v63 = v61 - 8;
                v64 = v24;
                do
                {
                  v65 = *(v64 + v63);
                  *(v64 + v63) = *(v64 + v49);
                  *(v64 + v49) = v65;
                  v64 = (v64 + v62);
                  --v60;
                }

                while (v60);
              }

              v66 = *a3;
              if (*a3 >= 1)
              {
                v67 = (v22 + v20 * (v61 - 8));
                v68 = v50;
                do
                {
                  v69 = *v67;
                  *v67++ = *v68;
                  *v68++ = v69;
                  --v66;
                }

                while (v66);
              }
            }

            ++v51;
            --v48;
            v49 -= 8;
            v50 -= v20;
          }

          while (v51 != v21);
        }
      }

      return 0;
    }

    break;
  }

LABEL_165:
  *v19 = 0;
  if (*a1 < 2)
  {
    return 0;
  }

  v200 = 0;
  v201 = *a1 - 1;
  result = 0;
  do
  {
    if (*a5 != 0.0)
    {
      *v19 = ++v200;
    }

    ++a5;
    --v201;
  }

  while (v201);
  return result;
}

uint64_t sub_10001B8C0(double *a1, unint64_t *a2, double *a3, double *a4, double *a5, void *a6, double *a7, double *a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, double a14, double a15, int8x16_t a16, unint64_t *a17)
{
  v19 = a17;
  v20 = *a1;
  v21 = fabs(*a1);
  v22 = fabs(*a3);
  v23 = 1;
  if (v22 > v21)
  {
    v24 = v22;
  }

  else
  {
    v24 = v21;
  }

  if (v22 > v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v22;
  }

  if (v22 > v21)
  {
    a11.i64[0] = *a3;
  }

  else
  {
    a11.i64[0] = *a1;
  }

  if (v22 > v21)
  {
    v23 = 3;
  }

  else
  {
    v20 = *a3;
  }

  a13.i64[0] = *a2;
  if (*a2 == 0.0)
  {
    *a4 = v25;
    *a5 = v24;
    v26 = 0.0;
    v27 = 1.0;
    v28 = 1.0;
    v29 = 0.0;
  }

  else
  {
    v30 = fabs(*a13.i64);
    if (v30 > v24)
    {
      if (v24 / v30 < 1.11022302e-16)
      {
        *a5 = v30;
        if (v25 <= 1.0)
        {
          v31 = v25 * (v24 / v30);
        }

        else
        {
          v31 = v24 / (v30 / v25);
        }

        *a4 = v31;
        v47 = v20 / *a13.i64;
        v48 = *a11.i64 / *a13.i64;
        v49 = v22 <= v21;
        if (v22 <= v21)
        {
          v50 = v47;
        }

        else
        {
          v50 = v48;
        }

        if (v49)
        {
          v51 = v48;
        }

        else
        {
          v51 = v47;
        }

        *a17 = 0x3FF0000000000000;
        *a8 = v50;
        *a7 = v51;
        *a6 = 0x3FF0000000000000;
        a9.i64[0] = 1.0;
        goto LABEL_53;
      }

      v23 = 2;
    }

    *a16.i64 = v24 - v25;
    v32 = (v24 - v25) / v24;
    v17.i64[0] = 1.0;
    if (v24 - v25 == v24)
    {
      v32 = 1.0;
    }

    v33 = *a13.i64 / *a11.i64;
    v18.i64[0] = 2.0;
    v34 = 2.0 - v32;
    v35 = sqrt(v34 * v34 + v33 * v33);
    v36 = fabs(*a13.i64 / *a11.i64);
    v37 = sqrt(v33 * v33 + v32 * v32);
    if (v32 != 0.0)
    {
      v36 = v37;
    }

    v38 = (v35 + v36) * 0.5;
    *a4 = v25 / v38;
    *a5 = v24 * v38;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = *a13.i64 / *vbslq_s8(v40, a16, a11).i64 + v33 / v34;
    v42 = *vbslq_s8(v40, v18, a11).i64 * *vbslq_s8(v40, v17, a13).i64;
    if (v32 != 0.0)
    {
      v42 = v41;
    }

    if (v33 * v33 != 0.0)
    {
      v42 = (v33 / (v34 + v35) + v33 / (v32 + v36)) * (v38 + 1.0);
    }

    v43 = sqrt(v42 * v42 + 4.0);
    v28 = 2.0 / v43;
    v29 = v42 / v43;
    v27 = (v28 + v29 * v33) / v38;
    v26 = v20 / *a11.i64 * v29 / v38;
  }

  v44 = v22 <= v21;
  if (v22 <= v21)
  {
    v45 = v27;
  }

  else
  {
    v45 = v29;
  }

  if (v44)
  {
    v46 = v26;
  }

  else
  {
    v46 = v28;
  }

  if (v44)
  {
    v26 = v28;
  }

  *a17 = v45;
  *a8 = v46;
  if (v44)
  {
    *a9.i64 = v29;
  }

  else
  {
    *a9.i64 = v27;
  }

  *a7 = v26;
  *a6 = a9.i64[0];
  if (v23 != 2)
  {
    if (v23 == 1)
    {
      a9.i64[0] = *a7;
      a2 = a1;
    }

    else
    {
      v19 = a8;
      a2 = a3;
    }
  }

LABEL_53:
  a10.i64[0] = 1.0;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  v53 = vnegq_f64(v52);
  v54 = vbslq_s8(v53, a10, a9);
  a12.i64[0] = *v19;
  v55 = vbslq_s8(v53, a10, a12);
  *v54.i64 = *v54.i64 * *v55.i64;
  v55.i64[0] = *a2;
  v56 = vbslq_s8(v53, a10, v55);
  *v54.i64 = *v54.i64 * *v56.i64;
  v56.i64[0] = *a5;
  v57 = vbslq_s8(v53, v56, v54);
  *a5 = *v57.i64;
  v57.i64[0] = *a1;
  v58 = vbslq_s8(v53, a10, v57);
  *v54.i64 = *v54.i64 * *v58.i64;
  v58.i64[0] = *a3;
  v59 = vbslq_s8(v53, a10, v58);
  *v54.i64 = *v54.i64 * *v59.i64;
  v59.i64[0] = *a4;
  *a4 = vbslq_s8(v53, v59, v54).u64[0];
  return 0;
}

double *sub_10001BB18(double *result, double *a2, double a3, double a4, double a5)
{
  v5 = fabs(a3);
  v6 = fabs(a4);
  v7 = fabs(a5);
  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v5 > v7)
  {
    v7 = v5;
  }

  if (v8 == 0.0)
  {
    *result = 0.0;
    if (v7 != 0.0)
    {
      if (v7 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      if (v7 > v6)
      {
        v6 = v7;
      }

      v6 = v6 * sqrt(v6 + v9 / v6 * (v9 / v6));
    }
  }

  else
  {
    v10 = v8 / v7 + 1.0;
    v11 = (v7 - v8) / v7;
    if (v6 >= v7)
    {
      v13 = v7 / v6;
      v14 = 2.0 / (sqrt(v13 * v10 * (v13 * v10) + 1.0) + sqrt(v13 * v11 * (v13 * v11) + 1.0));
      *result = v13 * (v8 * v14);
      v6 = v6 / v14;
    }

    else
    {
      v12 = 2.0 / (sqrt(v6 / v7 * (v6 / v7) + v10 * v10) + sqrt(v6 / v7 * (v6 / v7) + v11 * v11));
      *result = v8 * v12;
      v6 = v7 / v12;
    }
  }

  *a2 = v6;
  return result;
}

BOOL sub_10001BBF4(double *a1, double *a2, double *a3, double a4, double a5)
{
  if (a5 == 0.0)
  {
    v5 = 0;
    *a1 = 1.0;
    *a2 = 0.0;
    *a3 = a4;
  }

  else if (a4 == 0.0)
  {
    v5 = 0;
    *a1 = 0.0;
    *a2 = 1.0;
    *a3 = a5;
  }

  else
  {
    v6 = sqrt(a5 * a5 + a4 * a4);
    *a3 = v6;
    *a1 = a4 / v6;
    *a2 = a5 / *a3;
    if (fabs(a4) > fabs(a5) && *a1 < 0.0)
    {
      *a1 = -*a1;
      *a2 = -*a2;
      *a3 = -*a3;
    }

    return (*a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  }

  return v5;
}

uint64_t sub_10001BCB0(_BYTE *a1, unsigned __int8 *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, double *a7, uint64_t *a8)
{
  v8 = *a3;
  if (*a3)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = a5 - 8;
      v11 = a6 - 8;
      v12 = *a8;
      v13 = *a2;
      if (*a1 == 76)
      {
        if (v13 == 70)
        {
          if (v8 >= 2)
          {
            v14 = a7 + 1;
            v15 = 8 * v12;
            for (i = 1; i != v8; ++i)
            {
              v17 = *(v10 + 8 * i);
              v18 = *(v11 + 8 * i);
              v20 = v18 == 0.0 && v17 == 1.0 || v9 < 1;
              if (!v20)
              {
                v21 = v14;
                v22 = v9;
                do
                {
                  v23 = *(v21 - 1);
                  v24 = v23 * -v18 + v17 * *v21;
                  *(v21 - 1) = v17 * v23 + v18 * *v21;
                  *v21 = v24;
                  v21 = (v21 + v15);
                  --v22;
                }

                while (v22);
              }

              ++v14;
            }
          }
        }

        else if (v8 >= 2)
        {
          v34 = &a7[v8 - 1];
          do
          {
            v35 = *(v10 + 8 * (v8 - 1));
            v36 = *(v11 + 8 * (v8 - 1));
            if ((v36 != 0.0 || v35 != 1.0) && v9 >= 1)
            {
              v39 = v34;
              v40 = v9;
              do
              {
                v41 = *(v39 - 1);
                v42 = v41 * -v36 + v35 * *v39;
                *(v39 - 1) = v35 * v41 + v36 * *v39;
                *v39 = v42;
                v39 += v12;
                --v40;
              }

              while (v40);
            }

            v34 -= 8;
            v20 = v8-- <= 2;
          }

          while (!v20);
        }
      }

      else if (v13 == 70)
      {
        if (v9 >= 2)
        {
          v25 = v12;
          for (j = 1; j != v9; ++j)
          {
            v27 = *(v10 + 8 * j);
            v28 = *(v11 + 8 * j);
            if ((v28 != 0.0 || v27 != 1.0) && v8 >= 1)
            {
              v31 = a7;
              v32 = v8;
              do
              {
                v33 = v31[v25];
                v31[v25] = *v31 * -v28 + v27 * v33;
                *v31 = v27 * *v31 + v28 * v33;
                ++v31;
                --v32;
              }

              while (v32);
            }

            a7 = (a7 + v25 * 8);
          }
        }
      }

      else if (v9 >= 2)
      {
        v43 = (a7 + v12 * (8 * v9 - 16));
        v44 = -8 * v12;
        v45 = (a7 + v12 * (8 * v9 - 8));
        do
        {
          v46 = *(v10 + 8 * (v9 - 1));
          v47 = *(v11 + 8 * (v9 - 1));
          if ((v47 != 0.0 || v46 != 1.0) && v8 >= 1)
          {
            v50 = v45;
            v51 = v43;
            v52 = v8;
            do
            {
              v53 = *v50;
              *v50 = *v51 * -v47 + v46 * *v50;
              ++v50;
              *v51 = v46 * *v51 + v47 * v53;
              ++v51;
              --v52;
            }

            while (v52);
          }

          v43 = (v43 + v44);
          v45 = (v45 + v44);
          v20 = v9-- <= 2;
        }

        while (!v20);
      }
    }
  }

  return 0;
}

uint64_t sub_10001BEE8()
{
  v0 = __chkstk_darwin();
  result = qword_10041DF88;
  if (qword_10041DF88)
  {
    sub_1000542C8(qword_10041DF88);
    v2 = sub_10005E408(qword_10041DF88, 1785950322, 1852793709);
    if (v2 == -1)
    {
      NSLog(@"\tDefault calibration from NVM: deice is not ready or no ToF channel found");
    }

    else
    {
      v3 = v2;
      v4 = sub_10001E268(v0, qword_10041DF88, v2, v8, 0xA000u);
      if (v4)
      {
        v5 = v4;
        v6 = sub_10001E31C(v0, qword_10041DF88, v3, 13, v8, 0xA000u);
        if (v6)
        {
          v7 = v6;
          *(v0 + 32) = PDPeridotCalibCalibrationBlobsFromNVM();
          CFRelease(v5);
          CFRelease(v7);
          if (*(v0 + 32))
          {
            NSLog(@"\tDefault calibration from NVM: created pseudo-FDR from NVM");
            return 1;
          }

          NSLog(@"\tDefault calibration from NVM: failed to create calibration from NVM");
        }

        else
        {
          NSLog(@"\tDefault calibration from NVM: failed to read device NVM");
          CFRelease(v5);
        }
      }

      else
      {
        NSLog(@"\tDefault calibration from NVM: failed to read sensor NVM");
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001C060(uint64_t a1)
{
  *a1 = off_1000A2218;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = off_1000A2238;
  *(a1 + 16) = a1 + 24;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 72) = sub_10001FFF0(a1 + 8);
  return a1;
}

uint64_t sub_10001C100(uint64_t a1)
{
  v2 = sub_10001C060(a1);
  *v2 = off_1000A1EF0;
  sub_10001C18C(v2);
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = *(a1 + 57);
  }

  return a1;
}

void sub_10001C15C(_Unwind_Exception *a1)
{
  *v1 = off_1000A2218;
  sub_100020734(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10001C18C(uint64_t a1)
{
  *(a1 + 73) = 0;
  v1 = (a1 + 73);
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", kCFAllocatorDefault, 3u);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v5);
    goto LABEL_7;
  }

  v8 = CFGetTypeID(v5);
  if (v8 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v5, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v5);
}

uint64_t sub_10001C288()
{
  if (byte_10041DF95 != 1)
  {
    NSLog(@"Testing if aFDR may be used");
    byte_10041DF95 = 1;
    byte_10041DF96 = 0;
    if ((dword_10041DE04 & 2) != 0)
    {
      byte_10041DF96 = 1;
      NSLog(@"\taFDR may be used");
    }

    else
    {
      v11 = 0;
      v1 = MGCopyAnswer();
      if (!v1)
      {
        NSLog(@"\tCouldn't get boot manifest hash");
        goto LABEL_15;
      }

      v2 = v1;
      v3 = MGCopyAnswer();
      if (!v3)
      {
        NSLog(@"\tCouldn't get crypto hash method");
        goto LABEL_15;
      }

      v4 = v3;
      if (([v3 isEqualToString:@"sha2-384"] & 1) == 0)
      {
        NSLog(@"\tCrypto hash method is %@. Only %s is supported", v4, "sha2-384");
        goto LABEL_15;
      }

      v5 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
      v6 = [NSData dataWithContentsOfFile:v5];
      if (!v6)
      {
        NSLog(@"\tCouldn't find AP ticket file at path %@", v5);

        goto LABEL_15;
      }

      v7 = v6;

      [(NSData *)v7 bytes];
      [(NSData *)v7 length];
      if (AMSupportDigestSha384())
      {
        NSLog(@"\tFailed to digest AP ticket");
LABEL_15:
        v0 = 0;
        return v0 & 1;
      }

      if (memcmp(__s1, [v2 bytes], 0x30uLL))
      {
        NSLog(@"\tAP ticket digest doesn't match boot manifest hash");
        goto LABEL_15;
      }

      if (Img4DecodeInitManifest([(NSData *)v7 bytes], [(NSData *)v7 length], v12))
      {
        NSLog(@"\tFailed to initialize Manifest from ticket");
        v0 = 1;
        return v0 & 1;
      }

      if (Img4DecodeGetBooleanFromSection(v12, 0, 1717660003, &v11))
      {
        LOBYTE(v11) = 0;
      }

      if (Img4DecodeGetBooleanFromSection(v12, 0, 1717663091, &v11 + 1))
      {
        v9 = 0;
        HIBYTE(v11) = 0;
      }

      else
      {
        v9 = HIBYTE(v11);
      }

      byte_10041DF96 = (v9 | v11) & 1;
      v10 = " not";
      if ((v9 | v11))
      {
        v10 = "";
      }

      NSLog(@"\taFDR may%s be used (%d, %d)", v10, v11, v9);
    }

    v0 = byte_10041DF96;
    return v0 & 1;
  }

  v0 = byte_10041DF96;
  return v0 & 1;
}

uint64_t sub_10001C53C(_WORD *a1)
{
  sub_1000207A0(&v9);
  v9 = off_1000A22E0;
  v10[73] = 1;
  if (v10[72] == 1 && (sub_10002089C(&v9, a1) & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    sub_10001C060(&v4);
    v4 = off_1000A1ED0;
    v8 = 1;
    if (v7 == 1 && (v7 = v6, v6 == 1))
    {
      v2 = sub_10002089C(&v4, a1);
    }

    else
    {
      v2 = 0;
    }

    v4 = off_1000A2218;
    sub_100020734(v5);
  }

  v9 = off_1000A20A8;
  sub_10001E9B8(v10);
  return v2;
}

void sub_10001C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100020734((v13 + 8));
  sub_10001E9B8(va);
  _Unwind_Resume(a1);
}

void *sub_10001C6D8(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);
  return a1;
}

void *sub_10001C71C(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));
  return a1;
}

const void *sub_10001C760(size_t *a1)
{
  v2 = fopen("/var/mobile/Library/ISP/Pearl/NVM.bin", "rb");
  if (v2)
  {
    v3 = v2;
    fseeko(v2, 0, 2);
    *a1 = ftello(v3);
    fseeko(v3, 0, 0);
    if (*a1 > 0xC7)
    {
      operator new[]();
    }

    fclose(v3);
  }

  sub_1000207A0(&v13);
  v13 = off_1000A22E0;
  v14[73] = 1;
  if (v14[72] == 1 && (v4 = sub_100020A18(&v13, a1)) != 0 || ((sub_10001C060(&v8), v8 = off_1000A1ED0, v12 = 1, v11 != 1) || (v11 = v10, v10 != 1) ? (v4 = 0) : (v4 = sub_100020A18(&v8, a1)), v8 = off_1000A2218, sub_100020734(v9), v4))
  {
    v5 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/NVM.bin", 513, 4, 0, 511);
    v6 = fdopen(v5, "wb");
    if (v6)
    {
      fwrite(v4, 1uLL, *a1, v6);
      fclose(v6);
    }
  }

  v13 = off_1000A20A8;
  sub_10001E9B8(v14);
  return v4;
}

void sub_10001C97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100020734((v13 + 8));
  sub_10001E9B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C9E0(uint64_t a1)
{
  sub_1000207A0(&v11);
  v11 = off_1000A22E0;
  v12[73] = 1;
  if (sub_10001CB9C(&v11, a1) && (sub_10001CC80(&v11), (v2 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    sub_10001C060(&v6);
    v6 = off_1000A1ED0;
    v10 = 1;
    if (v9 == 1)
    {
      v9 = v8;
    }

    if (sub_10001CB9C(&v6, a1))
    {
      sub_10001CC80(&v6);
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    v6 = off_1000A2218;
    sub_100020734(v7);
  }

  v11 = off_1000A20A8;
  sub_10001E9B8(v12);
  return v3;
}

void sub_10001CB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10001E9B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001CB9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001F8E0((a1 + 8), 4);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v11, 4);
    if (v11 == 1)
    {
      result = sub_100020B84(v3, v7);
      if (result)
      {
        v5 = v7[3];
        *(a2 + 32) = v7[2];
        *(a2 + 48) = v5;
        *(a2 + 64) = v8;
        v6 = v7[1];
        *a2 = v7[0];
        *(a2 + 16) = v6;
        *(a2 + 72) = v9;
        *(a2 + 88) = v10;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10001CC80(uint64_t a1)
{
  v1 = sub_10001F8E0((a1 + 8), 3);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 24))(v1, &v2, 4);
    switch(v2)
    {
      case 3:
        sub_100020DF0();
        break;
      case 2:
        sub_100020D18();
        break;
      case 1:
        sub_100020C40();
        break;
    }
  }
}

BOOL sub_10001CD88()
{
  BinaryRepresentation = PDPeridotCalibCreateBinaryRepresentation();
  if (!BinaryRepresentation)
  {
    return 0;
  }

  v1 = BinaryRepresentation;
  BytePtr = CFDataGetBytePtr(BinaryRepresentation);
  Length = CFDataGetLength(v1);
  v4 = open_dprotected_np("/var/mobile/Library/ISP/JasperL/JasperLCalib.bin", 513, 4, 0, 511);
  v5 = fdopen(v4, "wb");
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    fwrite(BytePtr, 1uLL, Length, v5);
    fclose(v7);
  }

  CFRelease(v1);
  return v6;
}

BOOL sub_10001CE4C(const void *a1)
{
  v2 = open_dprotected_np("/var/mobile/Library/ISP/Pearl/PCECalib.bin", 513, 4, 0, 511);
  v3 = fdopen(v2, "wb");
  if (v3)
  {
    fwrite(a1, 1uLL, 0x3400uLL, v3);
    fclose(v3);
  }

  return v3 != 0;
}

BOOL sub_10001CECC()
{
  sub_10001ED9C(&v2, "/var/mobile/Documents/Pearl", 9u);
  v0 = v3;
  v2 = off_1000A2130;
  if (v3)
  {
    fclose(v3);
  }

  return v0 != 0;
}

void *sub_10001CF84(void *a1)
{
  *a1 = off_1000A2130;
  v2 = a1[33];
  if (v2)
  {
    fclose(v2);
  }

  return a1;
}

uint64_t sub_10001CFD4()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = v2;
  NSLog(@"Pearl calibration\n");
  umask(0);
  if ((sub_10000B5C8("/var/mobile/Library/ISP/Pearl") & 1) == 0)
  {
    NSLog(@"\tCouldn't validate directories\n");
    return 0;
  }

  NSLog(@"\tLooking for local cache\n");
  v4 = fopen("/var/mobile/Library/ISP/Pearl/PCECalib.bin", "rb");
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  fread(v3, 1uLL, 0x3400uLL, v4);
  if (!v1)
  {
    goto LABEL_20;
  }

  NSLog(@"\tValidating Calibration UUID");
  sub_1000207A0(&v22);
  v22 = off_1000A22E0;
  v27 = 0;
  if ((sub_10001EFA0(&v22, &v28) & 1) == 0)
  {
    sub_10001C060(&v17);
    v17 = off_1000A1ED0;
    if (v20 == 1)
    {
      v20 = v19;
    }

    v21 = 0;
    if ((sub_10001F1FC(&v17, &v28) & 1) == 0)
    {
      NSLog(@"\tFailed to read UUID. Marking as invalid");
      v17 = off_1000A2218;
      sub_100020734(v18);
      v22 = off_1000A20A8;
      sub_10001E9B8(v23);
      goto LABEL_25;
    }

    v17 = off_1000A2218;
    sub_100020734(v18);
  }

  v6 = 0;
  v8 = *(v3 + 1) != v29[0] || *(v3 + 2) != v29[1];
  v9 = @"Cached UUID: 0x";
  do
  {
    v9 = [(__CFString *)v9 stringByAppendingFormat:@"%02X", *(v3 + v6++ + 8)];
  }

  while (v6 != 16);
  v10 = [(__CFString *)v9 stringByAppendingString:@", calibration: 0x"];
  for (i = 8; i != 24; ++i)
  {
    v10 = [v10 stringByAppendingFormat:@"%02X", *(&v29[-1] + i)];
  }

  NSLog(@"\t%@", v10);
  v22 = off_1000A20A8;
  sub_10001E9B8(v23);
  if (!v8)
  {
LABEL_20:
    if (*v3 == 8)
    {
      NSLog(@"\tFound\n");
      fclose(v5);
      return 1;
    }

    NSLog(@"\tIgnoring unexpected cached version (%d != %d)\n", *v3, 8);
    goto LABEL_26;
  }

LABEL_25:
  sub_10001D550("/var/mobile/Library/ISP/Pearl");
  NSLog(@"\tCalibration UUID mismatch, removing contents of directory\n");
LABEL_26:
  fclose(v5);
LABEL_27:
  NSLog(@"\tLooking for local override files\n");
  sub_1000207A0(&v28);
  v28 = off_1000A22E0;
  v30 = 1;
  sub_10001D6A4(&v28, v3);
  if (v13)
  {
    goto LABEL_31;
  }

  NSLog(@"\tLooking for FDR data\n");
  NSLog(@"\tReading from FDR\n");
  sub_10001C060(&v22);
  v22 = off_1000A1ED0;
  if (v25 == 1)
  {
    v25 = v24;
  }

  v26 = (dword_10041DE04 & 1) == 0;
  sub_10001D7EC(&v22, v3);
  v15 = v14;
  v22 = off_1000A2218;
  sub_100020734(v23);
  if (v15)
  {
LABEL_31:
    NSLog(@"Creating local cache\n");
    *v3 = 8;
    kdebug_trace();
    v12 = sub_10001CE4C(v3);
  }

  else
  {
    NSLog(@"\tDidn't find calibration\n");
    v12 = 0;
  }

  v28 = off_1000A20A8;
  sub_10001E9B8(v29);
  return v12;
}

void sub_10001D480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10001E9B8(va);
  _Unwind_Resume(a1);
}

id sub_10001D550(uint64_t a1)
{
  v2 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:[NSString stringWithUTF8String:a1], 0];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:[NSString stringWithFormat:@"%s/%@", a1, *(*(&v7 + 1) + 8 * v6)], 0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_10001D6A4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 1)
  {
    bzero(a2, 0x3400uLL);
    sub_10002123C(a1, a2);
    if (v4)
    {
      sub_100021388(a1);
      if (v5)
      {
        if ((dword_10041DE04 & 4) != 0 || (sub_100021480(a1, a2), v6) && (sub_10001CC80(a1), v7) && (sub_10001CB9C(a1, a2 + 8552) & 1) != 0 || (dword_10041DE04 & 0x10) != 0)
        {
          if (sub_100021594(a1, a2 + 8648) && sub_100021658(a1, a2 + 8672) && sub_100021724(a1, a2))
          {
            if (sub_10001EFA0(a1, a2))
            {
              sub_1000218A0(a1);
              (*(*(a1 + 8) + 32))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

void sub_10001D7EC(uint64_t a1, void *a2)
{
  if (*(a1 + 72) == 1)
  {
    bzero(a2, 0x3400uLL);
    sub_10002123C(a1, a2);
    if (v4)
    {
      sub_100021388(a1);
      if (v5)
      {
        if ((dword_10041DE04 & 4) != 0 || (sub_100021480(a1, a2), v6) && (sub_10001CC80(a1), v7) && (sub_10001CB9C(a1, a2 + 8552) & 1) != 0 || (dword_10041DE04 & 0x10) != 0)
        {
          if (sub_100021594(a1, a2 + 8648) && sub_100021658(a1, a2 + 8672) && sub_100021724(a1, a2))
          {
            if (sub_10001F1FC(a1, a2))
            {
              sub_1000218A0(a1);
              (*(*(a1 + 8) + 32))(a1 + 8, a2);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10001D934(uint64_t a1, const void *a2)
{
  if (*(a1 + 80) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (sub_1000220EC(a1, 0x13u, Mutable) && sub_1000220EC(a1, 0x14u, Mutable) && sub_1000220EC(a1, 0x15u, Mutable) && sub_1000220EC(a1, 0x16u, Mutable) && sub_1000220EC(a1, 0x17u, Mutable) && sub_1000220EC(a1, 0x11u, Mutable) && sub_1000220EC(a1, 0x12u, Mutable))
  {
    sub_1000220EC(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [NSString stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      sub_1000220EC(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

uint64_t sub_10001DAC4(uint64_t a1, const void *a2)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (sub_1000220EC(a1, 0x13u, Mutable) && sub_1000220EC(a1, 0x14u, Mutable) && sub_1000220EC(a1, 0x15u, Mutable) && sub_1000220EC(a1, 0x16u, Mutable) && sub_1000220EC(a1, 0x17u, Mutable) && sub_1000220EC(a1, 0x11u, Mutable) && sub_1000220EC(a1, 0x12u, Mutable))
  {
    sub_1000220EC(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [NSString stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      sub_1000220EC(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

void *sub_10001DC54(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);
  return a1;
}

uint64_t sub_10001DC98(uint64_t a1, const void *a2)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (sub_1000220EC(a1, 0x13u, Mutable) && sub_1000220EC(a1, 0x14u, Mutable) && sub_1000220EC(a1, 0x15u, Mutable) && sub_1000220EC(a1, 0x16u, Mutable) && sub_1000220EC(a1, 0x17u, Mutable) && sub_1000220EC(a1, 0x11u, Mutable) && sub_1000220EC(a1, 0x12u, Mutable))
  {
    sub_1000220EC(a1, 0x18u, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, [NSString stringWithUTF8String:"PrCL"], a2);
    }

    else
    {
      sub_1000220EC(a1, 0x1Au, Mutable);
    }

    v5 = PDPeridotCalibCreateWithCalibrationDictionary();
    if (v5)
    {
      (*(*(a1 + 8) + 24))(a1 + 8, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(Mutable);
  return v5;
}

void *sub_10001DE28(void *a1)
{
  *a1 = off_1000A21E8;
  sub_10001E3A8(a1 + 1);
  return a1;
}

void *sub_10001DE6C(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));
  return a1;
}

void sub_10001DEB0(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);

  operator delete();
}

void sub_10001DF14(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);

  operator delete();
}

void sub_10001DF78(void *a1)
{
  sub_10001E3A8(a1);

  operator delete();
}

uint64_t sub_10001E034(uint64_t a1, const __CFDictionary *a2, unsigned int a3)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *a1 = off_1000A1FF8;
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, &aPcic[256 * a3], 0x8000100u);
  Value = CFDictionaryGetValue(a2, v5);
  CFRelease(v5);
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFDataGetTypeID())
    {
      *(a1 + 264) = Value;
      CFRetain(Value);
      BytePtr = CFDataGetBytePtr(*(a1 + 264));
      *(a1 + 272) = BytePtr;
      *(a1 + 280) = BytePtr;
      *(a1 + 288) = CFDataGetLength(*(a1 + 264));
    }

    else
    {
      CFRelease(Value);
    }
  }

  return a1;
}

void *sub_10001E134(void *a1)
{
  *a1 = off_1000A2070;
  v2 = a1[33];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10001E188(void *a1)
{
  sub_10001E134(a1);

  operator delete();
}

void *sub_10001E1D0(uint64_t a1, void *__dst, int a3)
{
  result = memcpy(__dst, *(a1 + 280), a3);
  *(a1 + 280) += a3;
  return result;
}

void sub_10001E230(void *a1)
{
  sub_10001E134(a1);

  operator delete();
}

CFDataRef sub_10001E268(int a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5)
{
  LODWORD(length) = a5;
  bzero(a4, a5);
  v8 = sub_100054600(a2, a3, a4, 0, &length);
  if (v8 == -536870184)
  {
    sub_100054AA0();
    v8 = sub_100054600(a2, a3, a4, 0, &length);
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return CFDataCreate(kCFAllocatorDefault, a4, length);
  }
}

CFDataRef sub_10001E31C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  LODWORD(length) = a6;
  bzero(a5, a6);
  if (sub_1000549B4(a2, a3, a4, a5, 0, &length))
  {
    return 0;
  }

  else
  {
    return CFDataCreate(kCFAllocatorDefault, a5, length);
  }
}

uint64_t sub_10001E3A8(void *a1)
{
  *a1 = off_1000A1F50;
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_10001E408(a1);
}

uint64_t sub_10001E408(uint64_t a1)
{
  *a1 = off_1000A1FB8;
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  v4 = (a1 + 16);
  while (v3 != v4)
  {
    v5 = v3[5];
    sub_10001E4C4(v2, v3);
    operator delete(v3);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v3 = *v2;
  }

  sub_10001E8B8(v2, *(a1 + 16));
  return a1;
}

uint64_t *sub_10001E4C4(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_10001E538(v6, a2);
  return v3;
}

uint64_t *sub_10001E538(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_10001E8B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10001E8B8(a1, *a2);
    sub_10001E8B8(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_10001E910(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));
  return a1;
}

void sub_10001E954(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));

  operator delete();
}

uint64_t sub_10001E9B8(uint64_t a1)
{
  *a1 = off_1000A20D8;
  if (*(a1 + 40) == 1)
  {
    CFRelease(*(a1 + 48));
  }

  if (*(a1 + 56) == 1)
  {
    CFRelease(*(a1 + 64));
  }

  return sub_10001E408(a1);
}

void sub_10001EA34(uint64_t a1)
{
  sub_10001E9B8(a1);

  operator delete();
}

uint64_t sub_10001EA6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    result = sub_10001C288();
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 32);
  }

  if (!v2)
  {
    v2 = "/var/mobile/Documents/Pearl";
  }

  v4 = [[NSDictionary alloc] initWithContentsOfFile:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s.bin", v2, "PlCl")}];
  if (v4)
  {
    *(a1 + 40) = 1;
    *(a1 + 48) = v4;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = "/var/mobile/Documents/JasperL";
  }

  v6 = [[NSDictionary alloc] initWithContentsOfFile:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s.bin", v5, "JpCl")}];
  result = 1;
  if (v6)
  {
    *(a1 + 56) = 1;
    *(a1 + 64) = v6;
  }

  return result;
}

uint64_t sub_10001EB60(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10)
  {
    if (*(a1 + 40) == 1)
    {
      operator new();
    }

    operator new();
  }

  if (a2 - 17 <= 0xA)
  {
    if (*(a1 + 56) == 1)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t sub_10001ED9C(uint64_t a1, const char *a2, unsigned int a3)
{
  *a1 = off_1000A2130;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  snprintf((a1 + 8), 0x100uLL, "%s/%s.bin", a2, &aPcic[256 * a3]);
  *(a1 + 264) = fopen(v4, "rb");
  return a1;
}

void sub_10001EE6C(void *a1)
{
  *a1 = off_1000A2130;
  v1 = a1[33];
  if (v1)
  {
    fclose(v1);
  }

  operator delete();
}

uint64_t sub_10001EEEC(uint64_t a1)
{
  v2 = ftello(*(a1 + 264));
  fseeko(*(a1 + 264), 0, 2);
  v3 = ftello(*(a1 + 264));
  fseeko(*(a1 + 264), v2, 0);
  return (v3 - v2);
}

uint64_t sub_10001EF50(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *a1 = 1;
    dispatch_sync(v2, &stru_1000A2190);
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_10001EFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F8E0((a1 + 8), 9);
  result = (*(*v4 + 16))(v4);
  if (result)
  {
    (*(*v4 + 24))(v4, &v8, 4);
    if (v8 == 3)
    {
      (*(*v4 + 24))(v4, &v9, 19);
      v6 = v12;
      *(a2 + 8704) = v10;
      *(a2 + 8706) = v11;
      *(a2 + 8) = v9;
    }

    else
    {
      if (v8 == 2)
      {
        (*(*v4 + 24))(v4, &v9, 3);
        v6 = BYTE2(v9);
        *(a2 + 8704) = v9;
        *(a2 + 8706) = BYTE1(v9);
      }

      else
      {
        if (v8 != 1)
        {
          return 0;
        }

        (*(*v4 + 24))(v4, &v9, 1);
        v6 = v9;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 81) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*v4 + 24))(v4, &v9, 22);
        if (v9 > 3)
        {
          result = 1;
        }

        else
        {
          result = sub_10001F458(a1, v4, &v9);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10001F1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F8E0((a1 + 8), 9);
  result = (*(*v4 + 16))(v4);
  if (result)
  {
    (*(*v4 + 24))(v4, &v8, 4);
    if (v8 == 3)
    {
      (*(*v4 + 24))(v4, &v9, 19);
      v6 = v12;
      *(a2 + 8704) = v10;
      *(a2 + 8706) = v11;
      *(a2 + 8) = v9;
    }

    else
    {
      if (v8 == 2)
      {
        (*(*v4 + 24))(v4, &v9, 3);
        v6 = BYTE2(v9);
        *(a2 + 8704) = v9;
        *(a2 + 8706) = BYTE1(v9);
      }

      else
      {
        if (v8 != 1)
        {
          return 0;
        }

        (*(*v4 + 24))(v4, &v9, 1);
        v6 = v9;
        *(a2 + 8704) = 0;
      }

      bzero((a2 + 8), 0x10uLL);
    }

    result = 1;
    if (*(a1 + 73) == 1 && v6)
    {
      v7 = 1;
      do
      {
        (*(*v4 + 24))(v4, &v9, 22);
        if (v9 > 3)
        {
          result = 1;
        }

        else
        {
          result = sub_10001F458(a1, v4, &v9);
        }

        if (v7 >= v6)
        {
          break;
        }

        ++v7;
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_10001F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 4) <= 3u)
  {
    operator new[]();
  }

  return 0;
}

uint64_t sub_10001F8E0(void *a1, int a2)
{
  v7 = a2;
  v2 = a1[2];
  v3 = (a1 + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = a1 + 2;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v4 == a1 + 2 || *(v4 + 8) > a2)
  {
LABEL_8:
    v5 = (*(*a1 + 40))(a1);
    v8 = &v7;
    sub_10001F9C0(v3, &v7)[5] = v5;
  }

  v8 = &v7;
  return sub_10001F9C0(v3, &v7)[5];
}

uint64_t *sub_10001F9C0(uint64_t a1, int *a2)
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

uint64_t *sub_10001FA94(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_10001FAEC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_10001FAEC(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_10001FC88(uint64_t a1)
{
  v2 = *(a1 + 40);
  NSLog(@"Component Validation");
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*v2 == 1)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v8 = [*(*(&v11 + 1) + 8 * i) integerValue];
        v9 = CRGetComponentState();
        if ((v9 - 2) <= 2)
        {
          NSLog(@"Component Validation: component %d replacement detected (state %d)", v8, v9);
          v10 = 3;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 4;
LABEL_13:
  *v2 = v10;
}

__CFData *sub_10001FE08(uint64_t a1, int a2)
{
  v2 = sub_10001F8E0((a1 + 8), a2);
  if (!(*(*v2 + 16))(v2))
  {
    return 0;
  }

  v3 = (*(*v2 + 32))(v2);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, v3);
  v5 = (*(*v2 + 32))(v2);
  CFDataSetLength(Mutable, v5);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v7 = (*(*v2 + 32))(v2);
  (*(*v2 + 24))(v2, MutableBytePtr, v7);
  return Mutable;
}

void *sub_10001FF48(void *a1)
{
  *a1 = off_1000A21E8;
  sub_10001E3A8(a1 + 1);
  return a1;
}

void sub_10001FF8C(void *a1)
{
  *a1 = off_1000A21E8;
  sub_10001E3A8(a1 + 1);

  operator delete();
}

CFStringRef sub_10001FFF0(uint64_t a1)
{
  if ((dword_10041DE04 & 8) != 0)
  {
    return 0;
  }

  sub_1000204F0(a1);
  if (*(a1 + 33) == 1 && *(a1 + 32) == 1)
  {
    result = CFStringCreateWithCString(kCFAllocatorDefault, "PlCl", 0x8000100u);
    if (!result)
    {
      return result;
    }

    v3 = result;
    *(a1 + 40) = AMFDRSealingMapCopyLocalDictForClass();
    CFRelease(v3);
  }

  if (*(a1 + 49) == 1 && *(a1 + 48) == 1)
  {
    result = CFStringCreateWithCString(kCFAllocatorDefault, "JpCl", 0x8000100u);
    if (!result)
    {
      return result;
    }

    v4 = result;
    *(a1 + 56) = AMFDRSealingMapCopyLocalDictForClass();
    CFRelease(v4);
  }

  return 1;
}

void *sub_100020190(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);
  return a1;
}

void sub_1000201D4(void *a1)
{
  *a1 = off_1000A2218;
  sub_100020734(a1 + 1);

  operator delete();
}

void sub_100020238(void *a1)
{
  sub_100020734(a1);

  operator delete();
}

void sub_100020270(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x10 && (*(a1 + 32) & 1) != 0)
  {
    operator new();
  }

  if (a2 - 17 <= 0xA && (*(a1 + 48) & 1) != 0)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_10002039C(uint64_t a1, unsigned int a2)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *a1 = &off_1000A2290;
  strcpy((a1 + 8), &aPcic[256 * a2]);
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, (a1 + 8), 0x8000100u);
  *(a1 + 264) = AMFDRSealingMapCopyLocalDataForClass();
  CFRelease(v3);
  v4 = *(a1 + 264);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    *(a1 + 272) = BytePtr;
    *(a1 + 280) = BytePtr;
    *(a1 + 288) = CFDataGetLength(*(a1 + 264));
  }

  return a1;
}

void sub_1000204B8(void *a1)
{
  sub_10001E134(a1);

  operator delete();
}

void sub_1000204F0(uint64_t a1)
{
  if ((byte_10041DF90 & 1) == 0)
  {
    byte_10041DF90 = 1;
    byte_10041DF92 = 0;
    byte_10041DF91 = 0;
    byte_10041DF94 = 0;
    byte_10041DF93 = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 56) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }

    v4 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", kCFAllocatorDefault, 3u);
    if (v6)
    {
      byte_10041DF94 = 1;
      CFRelease(v6);
    }

    v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", kCFAllocatorDefault, 3u);
    if (v7)
    {
      byte_10041DF93 = 1;
      CFRelease(v7);
    }

    if (byte_10041DF93 == 1)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, "PlCl", 0x8000100u);
      if (v8)
      {
        v9 = v8;
        v10 = AMFDRSealingMapCopyLocalDictForClass();
        CFRelease(v9);
        byte_10041DF91 = v10 != 0;
        if (v10)
        {
          CFRelease(v10);
        }
      }
    }

    if (byte_10041DF94 == 1)
    {
      v11 = CFStringCreateWithCString(kCFAllocatorDefault, "JpCl", 0x8000100u);
      if (v11)
      {
        v12 = v11;
        v13 = AMFDRSealingMapCopyLocalDictForClass();
        CFRelease(v12);
        byte_10041DF92 = v13 != 0;
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  v14 = byte_10041DF91;
  *(a1 + 32) = byte_10041DF91;
  v15 = byte_10041DF92;
  *(a1 + 48) = byte_10041DF92;
  v16 = byte_10041DF93;
  *(a1 + 33) = byte_10041DF93;
  v17 = byte_10041DF94;
  *(a1 + 49) = byte_10041DF94;
  if (v14)
  {
    v18 = "unified";
  }

  else
  {
    v18 = "not unified";
  }

  if (!v16)
  {
    v18 = "unavailable";
  }

  if (v15)
  {
    v19 = "unified";
  }

  else
  {
    v19 = "not unified";
  }

  if (!v17)
  {
    v19 = "unavailable";
  }

  NSLog(@"Pearl FDR is %s, ToF FDR is %s", v18, v19);
}

uint64_t sub_100020734(void *a1)
{
  *a1 = off_1000A2238;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_10001E408(a1);
}

uint64_t sub_1000207A0(uint64_t a1)
{
  *a1 = off_1000A20A8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = off_1000A20D8;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 80) = sub_10001EA6C(a1 + 8);
  return a1;
}

void sub_100020838(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));

  operator delete();
}

uint64_t sub_10002089C(uint64_t a1, _WORD *a2)
{
  v3 = sub_10001F8E0((a1 + 8), 14);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v6, 4);
    if (v6 == 0x1000000)
    {
      result = sub_10002095C(v3, v5);
      if (result)
      {
        *a2 = v5[3];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10002095C(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 8)
  {
    (*(*a1 + 24))(a1, a2, 8);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 8, v4);
  }

  return v5 == 8;
}

uint64_t sub_100020A18(uint64_t a1, void *a2)
{
  v3 = sub_10001F8E0((a1 + 8), 13);
  if ((*(*v3 + 16))(v3))
  {
    (*(*v3 + 24))(v3, &v5, 4);
    if (v5 == 50331648)
    {
      (*(*v3 + 24))(v3, v6, 125);
      *a2 = bswap32(v7) >> 16;
      operator new[]();
    }
  }

  return 0;
}

BOOL sub_100020B84(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 96)
  {
    (*(*a1 + 24))(a1, a2, 96);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 96, v4);
  }

  return v5 == 96;
}

BOOL sub_100020C40()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = sub_100020EDC(v2, &v9);
  if (v3)
  {
    v4 = 0;
    v5 = *v1;
    *(v1 + 8) = vmulq_n_f64(v9, *v1);
    *(v1 + 24) = v5 * v10;
    v6 = v1;
    do
    {
      v7 = &v11[v4];
      v12 = vld2q_f64(v7);
      v6[2] = vmulq_n_f64(v12.val[0], v5);
      v6[130] = vmulq_n_f64(v12.val[1], v5);
      v4 += 32;
      ++v6;
    }

    while (v4 != 4096);
    bzero((v1 + 4128), 0x40uLL);
    bzero((v1 + 4192), 0x40uLL);
  }

  return v3;
}

BOOL sub_100020D18()
{
  __chkstk_darwin();
  v1 = v0;
  v3 = sub_100020EDC(v2, &v9);
  if (v3)
  {
    v4 = *v1;
    *(v1 + 8) = vmulq_n_f64(v9, *v1);
    *(v1 + 24) = v4 * v10;
    v5 = &v9;
    v6 = 256;
    v7 = v1;
    do
    {
      v7[2] = vmulq_n_f64(*(v5 + 24), v4);
      v7[130] = vmulq_n_f64(*(v5++ + 2072), v4);
      ++v7;
      v6 -= 2;
    }

    while (v6);
    bzero((v1 + 4128), 0x40uLL);
    bzero((v1 + 4192), 0x40uLL);
  }

  return v3;
}

double sub_100020DF0()
{
  __chkstk_darwin();
  v1 = v0;
  if (sub_100020FA0(v2, &v12))
  {
    v4 = *v1;
    *(v1 + 8) = vmulq_n_f64(v12, *v1);
    *(v1 + 24) = v4 * v13;
    v5 = &v12;
    v6 = 256;
    v7 = v1;
    do
    {
      v7[2] = vmulq_n_f64(*(v5 + 24), v4);
      v7[130] = vmulq_n_f64(*(v5++ + 2072), v4);
      ++v7;
      v6 -= 2;
    }

    while (v6);
    v8 = v15;
    *(v1 + 4128) = v14;
    *(v1 + 4144) = v8;
    v9 = v17;
    *(v1 + 4160) = v16;
    *(v1 + 4176) = v9;
    v10 = v19;
    *(v1 + 4192) = v18;
    *(v1 + 4208) = v10;
    result = *&v20;
    v11 = v21;
    *(v1 + 4224) = v20;
    *(v1 + 4240) = v11;
  }

  return result;
}