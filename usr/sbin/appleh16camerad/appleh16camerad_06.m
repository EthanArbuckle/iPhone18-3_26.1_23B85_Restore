uint64_t sub_100061858(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 14);
  if (*(a3 + 14))
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 12);
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          *(result + 2 * (v8 + v5 * v7)) = llround(fmin((*(a2 + 8 * (v8 + v5 * v7)) + 1.0) * (1 << a4), 65535.0));
          v7 = *(a3 + 12);
          ++v8;
        }

        while (v8 < v7);
        v4 = *(a3 + 14);
      }

      ++v6;
      ++v5;
    }

    while (v6 < v4);
  }

  return result;
}

uint64_t sub_1000618D4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, unsigned __int16 *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, float a16, uint64_t a17)
{
  if (a3)
  {
    v21 = 0;
    do
    {
      v60[v21] = *(a5 + 4 * v21);
      ++v21;
    }

    while (a3 > v21);
  }

  if (a4)
  {
    v22 = 0;
    do
    {
      v60[v22 + 71] = *(a6 + 4 * v22);
      ++v22;
    }

    while (a4 > v22);
  }

  v23 = a3 - 1;
  v54 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v24 = a4 - 1;
  v64[0] = a1 + 18;
  v64[1] = a1 + 36;
  v64[2] = a1 + 54;
  v64[3] = a1 + 72;
  v53[0] = *(a1 + 14) >> 1;
  v25 = *(a1 + 16) >> 1;
  v53[1] = *(a1 + 16) >> 1;
  v57 = a3;
  v58 = a4;
  v55 = 0.98 / (a3 - 1);
  v56 = 0.98 / (a4 - 1);
  v59 = 0x406F400000000000;
  v61[0] = v53[0];
  v61[1] = v25;
  v62 = *(a1 + 20);
  v63 = *(a1 + 28);
  v52 = HIDWORD(v63);
  sub_1000613FC(a17, a2, v61, v53, v63, v55, (a4 - 1), a12, a13, a14, a15, a16);
  if (HIWORD(v52))
  {
    v27 = 0;
    v28 = (a8 + (a4 & 0xFFFE));
    v29 = a17;
    do
    {
      if (v52)
      {
        v30 = 0;
        do
        {
          if (v30 < *a7 - 1 || v30 >= a7[v23] || v27 > *(v28 - 1) && v27 < *v28)
          {
            *(v29 + 2 * v30) = 4096;
          }

          ++v30;
        }

        while (v52 != v30);
      }

      ++v27;
      v29 += 2 * v52;
    }

    while (v27 != HIWORD(v52));
  }

  v31 = *a8;
  if (v31 > 1)
  {
    v32 = (v31 - 2);
    v33 = (a17 + 2 * v52 * v32);
    v34 = (a17 + 2 * (v52 + v52 * v32));
    do
    {
      v35 = v52;
      v36 = v34;
      v37 = v33;
      if (v52)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
      }

      v33 -= v52;
      v34 -= v52;
    }

    while (v32-- > 0);
  }

  v40 = a8[v24];
  if (v40 < a4)
  {
    v41 = (a17 + 2 * v52 * a8[v24]);
    v42 = 2 * v52;
    v43 = (a17 + 2 * (v40 - 1) * v52);
    do
    {
      v44 = v52;
      v45 = v43;
      v46 = v41;
      if (v52)
      {
        do
        {
          v47 = *v45++;
          *v46++ = v47;
          --v44;
        }

        while (v44);
      }

      ++v40;
      v41 = (v41 + v42);
      v43 = (v43 + v42);
    }

    while (v40 != a4);
  }

  v48 = 0;
  v49 = a1 + 92;
  do
  {
    v50 = v64[v48];
    v62 = *(v50 + 2);
    v63 = *(v50 + 10);
    result = sub_100061720(v49 + 2 * *(v50 + 6), v50, a17, v61, v63, v26);
    ++v48;
  }

  while (v48 != 4);
  return result;
}

uint64_t sub_100061BEC(uint64_t result)
{
  v1 = 0;
  v9[0] = result + 18;
  v9[1] = result + 36;
  v9[2] = result + 54;
  v9[3] = result + 72;
  do
  {
    v2 = v9[v1];
    v3 = (((*(v2 + 14) * *(v2 + 16)) << 32) - 0x100000000) >> 31;
    if (v3 >= 1)
    {
      v4 = *(v2 + 6);
      v5 = (result + 92 + 2 * v4);
      v6 = result + 90 + v3 + 2 * v4;
      do
      {
        v7 = *(v6 + 2);
        *(v6 + 2) = *v5;
        *v5++ = v7;
        v8 = v6 > v5;
        v6 -= 2;
      }

      while (v8);
    }

    ++v1;
  }

  while (v1 != 4);
  return result;
}

unint64_t sub_100061CBC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1[1] * *a1;
  v5 = a1 + 264;
  v6 = (v4 - 1);
  v7 = a2 + v6;
  v8 = &a1[v6 + 264];
  do
  {
    v9 = v5;
    v10 = v8;
    v11 = a2;
    v12 = v7;
    do
    {
      *(v11 + v2) = v10[v2];
      result = v11 + v2 + 1;
      *(v12 + v2) = v9[v2];
      --v12;
      ++v11;
      --v10;
      ++v9;
    }

    while (v12 + v2 >= result);
    ++v3;
    v2 += v4;
  }

  while (v3 != 4);
  return result;
}

uint64_t sub_100061D34(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != *(result + 86))
  {
    sub_100084EFC();
  }

  v2 = *(result + 34);
  if (v2 != *(result + 88))
  {
    sub_100084F28();
  }

  v3 = v2 * v1;
  if (v3)
  {
    v4 = 0;
    v5 = (result + 92 + 2 * *(result + 78));
    v6 = (result + 92 + 2 * *(result + 24));
    do
    {
      v7 = (*v5 + *v6) >> 1;
      *v6++ = v7;
      *v5++ = v7;
      ++v4;
    }

    while (v3 > v4);
  }

  return result;
}

uint64_t sub_100061DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = 0;
  v9 = *(a3 + 14);
  v10 = *(a3 + 16);
  v86[0] = a3 + 18;
  v86[1] = a3 + 36;
  v86[2] = a3 + 54;
  v86[3] = a3 + 72;
  memset(v85, 0, 32);
  do
  {
    v85[v8] = a3 + 92 + 2 * *(v86[v8] + 6);
    ++v8;
  }

  while (v8 != 4);
  v11 = 0;
  v12 = vcvtd_n_f64_u32(v9, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = a5 + v12;
  v15 = a6 + v13;
  v84[0] = 0;
  v84[1] = v9;
  v84[2] = 0;
  v84[3] = v9;
  v81 = 0;
  v82 = v10;
  v83 = v10;
  v80[0] = 0;
  v80[1] = 0;
  v16 = 0.0;
  do
  {
    v17 = (v14 - v84[v11]);
    v18 = (v15 - *(&v81 + v11 * 4));
    v19 = sqrt(v17 * v17 + v18 * v18);
    *(v80 + v11 * 4) = v19;
    if (v16 < v19)
    {
      v16 = v19;
    }

    ++v11;
  }

  while (v11 != 4);
  bzero(v79, 0x808uLL);
  bzero(v78, 0x404uLL);
  v20 = log2f(v16 * 0.0039062);
  v21 = 0;
  v22 = vcvtps_s32_f32(v20);
  *(a1 + 12) = v22;
  v23 = 256 << v22;
  do
  {
    v24 = 0;
    v25 = v86[v21];
    v26 = v25[1];
    v27 = v25[2];
    result = v25[7];
    v29 = v25[8] - 2;
    v30 = v85[v21];
    do
    {
      v31 = 0;
      v32 = 0;
      v33 = v84[v24] - v14;
      v34 = *(v80 + v24);
      v35 = *(&v81 + v24) - v15;
      do
      {
        v36 = vcvts_n_f32_u32(v31, 8uLL);
        if (v36 >= v16)
        {
          v36 = v16;
        }

        v37 = (v14 + ((v36 * v33) / v34)) * 0.5;
        v38 = (v15 + ((v36 * v35) / v34)) * 0.5;
        v39 = (v37 / v26) & ~((v37 / v26) >> 31);
        v40 = (v38 / v27) & ~((v38 / v27) >> 31);
        if (v39 >= result - 2)
        {
          v39 = result - 2;
        }

        if (v40 >= v29)
        {
          v40 = v29;
        }

        v41 = (v30 + 2 * v40 * result + 2 * v39);
        v42 = vcvts_n_f32_u32(*v41, 0xCuLL);
        v43 = vcvts_n_f32_u32(v41[1], 0xCuLL);
        v44 = (v30 + 2 * (v40 + 1) * result + 2 * v39);
        v45 = v39 * v26;
        v46 = v37 - v45;
        v47 = (v26 + v45) - v37;
        v48 = v78[v32];
        v79[v32] = v79[v32] + ((((v40 + 1) * v27) - v38) * ((v47 * v42 + v46 * v43) / (v46 + v47)) + (v38 - (v40 * v27)) * ((v47 * vcvts_n_f32_u32(*v44, 0xCuLL) + v46 * vcvts_n_f32_u32(v44[1], 0xCuLL)) / (v46 + v47))) / (v38 - (v40 * v27) + ((v40 + 1) * v27) - v38);
        v78[v32++] = v48 + 1;
        v31 += v23;
      }

      while (v32 != 257);
      ++v24;
    }

    while (v24 != 4);
    ++v21;
  }

  while (v21 != 4);
  for (i = 0; i != 257; ++i)
  {
    v50 = v78[i];
    v51 = v79[i];
    if (v50 >= 1)
    {
      v51 = v51 / v50;
      v79[i] = v51;
    }

    *(a1 + 14 + 2 * i) = vcvtd_n_s64_f64(1.0 / v51, 0xCuLL);
  }

  if (a2)
  {
    v52 = 0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v86[v52];
      v56 = *(v55 + 14);
      v57 = v85[v52];
      LODWORD(v55) = *(v55 + 16);
      v54 = v54 + vcvts_n_f32_u32(*(v57 + 2 * (v56 >> 1)), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * ((v56 >> 1) + (v55 - 1) * v56)), 0xCuLL);
      v53 = v53 + vcvts_n_f32_u32(*(v57 + 2 * (v55 >> 1) * v56), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * (v56 + (v55 >> 1) * v56 - 1)), 0xCuLL);
      ++v52;
    }

    while (v52 != 4);
    v58 = 0;
    v59 = 0;
    v60 = v54 * 0.125;
    v61 = v53 * 0.125;
    v62 = v79;
    while (*v62 <= v61)
    {
      ++v62;
      --v59;
      v58 -= v23;
      if (v59 == -257)
      {
        v63 = v12;
        goto LABEL_34;
      }
    }

    v64 = ~v59;
    v63 = v12;
    if (v64 <= 0xFF)
    {
      v65 = vcvts_n_f32_u32(-v58, 8uLL);
      v66 = vcvts_n_f32_u32(-(v23 + v58), 8uLL);
      v67 = v79[v64];
      v68 = 0.5;
      if (vabdd_f64(*v62, v67) > 1.0e-10)
      {
        v68 = (v61 - v67) / (*v62 - v67);
      }

      v63 = v68 * v65 + (1.0 - v68) * v66;
    }

LABEL_34:
    v69 = 0;
    v70 = 0;
    v71 = v79;
    while (*v71 <= v60)
    {
      ++v71;
      --v70;
      v69 -= v23;
      if (v70 == -257)
      {
        v72 = v13;
        goto LABEL_42;
      }
    }

    v73 = ~v70;
    v72 = v13;
    if (v73 <= 0xFF)
    {
      v74 = vcvts_n_f32_u32(-v69, 8uLL);
      v75 = vcvts_n_f32_u32(-(v23 + v69), 8uLL);
      v76 = v79[v73];
      v77 = 0.5;
      if (vabdd_f64(*v71, v76) > 1.0e-10)
      {
        v77 = (v60 - v76) / (*v71 - v76);
      }

      v72 = v77 * v74 + (1.0 - v77) * v75;
    }

LABEL_42:
    *(a2 + 12) = llround(fmin(v63 / v12 * 4096.0 + 0.5, 65535.0));
    *(a2 + 14) = llround(fmin(v72 / v13 * 4096.0 + 0.5, 65535.0));
  }

  return result;
}

void sub_100062380()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v9 = 0;
  v10 = *(v1 + 14);
  v11 = *(v1 + 16);
  v89[0] = v1 + 18;
  v89[1] = v1 + 36;
  v89[2] = v1 + 54;
  v89[3] = v1 + 72;
  memset(v88, 0, 32);
  do
  {
    v88[v9] = v1 + 92 + 2 * *(v89[v9] + 6);
    ++v9;
  }

  while (v9 != 4);
  v12 = vcvtd_n_f64_u32(v11, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = v2 + v13;
  v15 = v3;
  bzero(v87, 0x808uLL);
  bzero(v86, 0x808uLL);
  v16 = (v10 >> 1);
  v17 = log2f(vcvts_n_f32_u32(v10 >> 1, 8uLL));
  v18 = 0;
  v19 = vcvtps_s32_f32(v17);
  *(v8 + 12) = v19;
  v20 = 256 << v19;
  do
  {
    v21 = 0;
    v22 = v89[v18];
    v23 = v22[1];
    v24 = v22[7];
    v25 = v24 - 2;
    v26 = v22[8];
    v27 = 2 * v24;
    do
    {
      v28 = 0;
      v29 = vcvts_n_f32_u32(v20 * v21, 8uLL);
      if (v29 >= v16)
      {
        v30 = v16;
      }

      else
      {
        v30 = v29;
      }

      v31 = v87[v21];
      v32 = 1;
      do
      {
        v33 = *(&unk_10008D948 + v28);
        v34 = v32;
        v35 = (v14 + (v33 * v30)) * 0.5;
        v36 = (v35 / v23);
        if (v36 <= 1)
        {
          v36 = 1;
        }

        if (v36 >= v25)
        {
          v36 = v25;
        }

        if (v26)
        {
          v37 = (v88[v18] + 2 * v36);
          v38 = 0.0;
          v39 = v26;
          v40 = 0.0;
          do
          {
            v38 = v38 + vcvts_n_f32_u32(*v37, 0xCuLL);
            v40 = v40 + vcvts_n_f32_u32(v37[v33], 0xCuLL);
            v37 = (v37 + v27);
            --v39;
          }

          while (v39);
        }

        else
        {
          v40 = 0.0;
          v38 = 0.0;
        }

        v32 = 0;
        v31 = ((((v36 + v33) * v23) - v35) * v38 + (v35 - (v36 * v23)) * v40) / (v35 - (v36 * v23) + ((v36 + v33) * v23) - v35) / v26 + v31;
        v28 = 1;
      }

      while ((v34 & 1) != 0);
      v87[v21++] = v31;
    }

    while (v21 != 257);
    ++v18;
  }

  while (v18 != 4);
  for (i = 0; i != 257; ++i)
  {
    v43 = v87[i] * 0.125;
    v87[i] = v43;
    if (v43 <= 0.0)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 1.0 / v43;
    }

    v86[i] = v44;
    *(v8 + 14 + 2 * i) = vcvtd_n_s64_f64(v44, 0xCuLL);
  }

  v42 = v12;
  v45 = v15 + v42;
  bzero(v85, 0x408uLL);
  v46 = v11;
  v47 = v11 - v45;
  if (v45 > v47)
  {
    v47 = v45;
  }

  v48 = log2f((v47 + v47) * 0.0078125);
  v49 = 0;
  v50 = 128 << vcvtps_u32_f32(v48);
  do
  {
    v51 = 0;
    v52 = v89[v49];
    v53 = v52[2];
    v54 = v52[8] - 2;
    v55 = v52[7];
    do
    {
      v56 = v45 + (vcvts_n_f32_u32(v50 * v51, 7uLL) - (v50 >> 1));
      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      if (v56 > v46)
      {
        v56 = v46;
      }

      v57 = v56 * 0.5;
      v58 = (v57 / v53) & ~((v57 / v53) >> 31);
      if (v58 >= v54)
      {
        v58 = v54;
      }

      if (v55)
      {
        v59 = 0;
        v60 = v88[v49];
        v61 = (v60 + 2 * v58 * v55);
        v62 = v58 + 1;
        v63 = (v60 + 2 * (v58 + 1) * v55);
        v64 = 0.0;
        v65 = v55;
        v66 = 0.0;
        do
        {
          v67 = v59 - v14;
          if (v67 < 0.0)
          {
            v67 = -v67;
          }

          if (v67 > v20)
          {
            v67 = v20;
          }

          v68 = v67 / (1 << v19);
          v69 = v68 & ~(v68 >> 31);
          if (v69 >= 127)
          {
            v69 = 127;
          }

          v70 = (v86[v69] * ((v69 + 1) - v68) + (v68 - v69) * v86[v69 + 1]) / (v68 - v69 + (v69 + 1) - v68);
          v71 = *v61++;
          v72 = vcvts_n_f32_u32(v71, 0xCuLL);
          v73 = *v63++;
          v66 = v66 + v72 * v70;
          v64 = v64 + vcvts_n_f32_u32(v73, 0xCuLL) * v70;
          v59 += 2 * v52[1];
          --v65;
        }

        while (v65);
      }

      else
      {
        v62 = v58 + 1;
        v66 = 0.0;
        v64 = 0.0;
      }

      v85[v51] = (((v62 * v53) - v57) * v66 + (v57 - (v58 * v53)) * v64) / (v57 - (v58 * v53) + (v62 * v53) - v57) / v55 + v85[v51];
      ++v51;
    }

    while (v51 != 129);
    ++v49;
  }

  while (v49 != 4);
  v74 = 0;
  v75 = 0.0;
  do
  {
    v76 = v85[v74] * 0.25;
    v85[v74] = v76;
    if (v76 <= 0.0)
    {
      v77 = 0.0;
    }

    else
    {
      v77 = 1.0 / v76;
    }

    if (v77 > v75)
    {
      v75 = v77;
    }

    ++v74;
  }

  while (v74 != 129);
  v78 = 0;
  v79 = 255.0 / v75;
  if (v75 <= 0.0)
  {
    v79 = 1.0;
  }

  do
  {
    v80 = v85[v78];
    if (v80 <= 0.0)
    {
      v81 = 1.0;
    }

    else
    {
      v81 = 1.0 / v80;
    }

    *(v7 + 14 + 2 * v78++) = (v79 * v81);
  }

  while (v78 != 129);
  v82 = 128.0;
  v83 = 14;
  v84 = 128.0 / v79;
  do
  {
    LOWORD(v82) = *(v8 + v83);
    v82 = v84 * *&v82;
    *(v8 + v83) = v82;
    v83 += 2;
  }

  while (v83 != 528);
  if (v5)
  {
    *(v5 + 12) = 4096;
  }

  else
  {
    if (off_10041DCF0 == &_os_log_default)
    {
      off_10041DCF0 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100084F54();
    }
  }
}

uint64_t sub_100062954()
{
  v0 = __chkstk_darwin();
  v5 = v4;
  v6 = v0;
  v7 = 0;
  v8 = *(v1 + 14);
  v9 = *(v1 + 16);
  v94[0] = v1 + 18;
  v94[1] = v1 + 36;
  v94[2] = v1 + 54;
  v94[3] = v1 + 72;
  memset(v93, 0, 32);
  do
  {
    v93[v7] = v1 + 92 + 2 * *(v94[v7] + 6);
    ++v7;
  }

  while (v7 != 4);
  v10 = vcvtd_n_f64_u32(v9, 1uLL);
  v11 = vcvtd_n_f64_u32(v8, 1uLL);
  v12 = v2 + v11;
  v13 = v3;
  bzero(v92, 0x808uLL);
  bzero(v91, 0x808uLL);
  v14 = (v8 >> 1);
  v15 = log2f(vcvts_n_f32_u32(v8 >> 1, 8uLL));
  v16 = 0;
  v17 = vcvtps_s32_f32(v15);
  v18 = 256 << v17;
  v19 = vcvtd_n_f64_u32(v5, 8uLL);
  do
  {
    v20 = 0;
    v21 = v94[v16];
    v22 = v21[1];
    v23 = v21[7];
    v24 = v23 - 2;
    v25 = v21[8];
    v26 = 2 * v23;
    do
    {
      v27 = 0;
      v28 = vcvts_n_f32_u32(v18 * v20, 8uLL);
      if (v28 >= v14)
      {
        v29 = v14;
      }

      else
      {
        v29 = v28;
      }

      v30 = v92[v20];
      v31 = 1;
      do
      {
        v32 = *(&unk_10008D948 + v27);
        v33 = v31;
        v34 = (v12 + (v32 * v29)) * 0.5;
        v35 = (v34 / v22);
        if (v35 <= 1)
        {
          v35 = 1;
        }

        if (v35 >= v24)
        {
          v35 = v24;
        }

        if (v25)
        {
          v36 = (v93[v16] + 2 * v35);
          v37 = 0.0;
          v38 = v25;
          v39 = 0.0;
          do
          {
            v37 = v37 + v19 * (vcvts_n_f32_u32(*v36, 0xCuLL) + -1.0) + 1.0;
            v39 = v39 + v19 * (vcvts_n_f32_u32(v36[v32], 0xCuLL) + -1.0) + 1.0;
            v36 = (v36 + v26);
            --v38;
          }

          while (v38);
        }

        else
        {
          v39 = 0.0;
          v37 = 0.0;
        }

        v31 = 0;
        v30 = ((((v35 + v32) * v22) - v34) * v37 + (v34 - (v35 * v22)) * v39) / (v34 - (v35 * v22) + ((v35 + v32) * v22) - v34) / v25 + v30;
        v27 = 1;
      }

      while ((v33 & 1) != 0);
      v92[v20++] = v30;
    }

    while (v20 != 257);
    ++v16;
  }

  while (v16 != 4);
  v40 = 0;
  v41 = v10;
  v42 = v13 + v41;
  do
  {
    v43 = v92[v40] * 0.125;
    v92[v40] = v43;
    if (v43 <= 0.0)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 1.0 / v43;
    }

    v91[v40++] = v44;
  }

  while (v40 != 257);
  v45 = 1 << v17;
  bzero(v90, 0x408uLL);
  v46 = v9;
  v47 = v9 - v42;
  if (v42 > v47)
  {
    v47 = v42;
  }

  v48 = log2f((v47 + v47) * 0.0078125);
  v49 = 0;
  v50 = 128 << vcvtps_u32_f32(v48);
  do
  {
    v51 = 0;
    v52 = v94[v49];
    v53 = v52[2];
    v54 = v52[8] - 2;
    result = v52[7];
    do
    {
      v56 = v42 + (vcvts_n_f32_u32(v50 * v51, 7uLL) - (v50 >> 1));
      if (v56 < 0.0)
      {
        v56 = 0.0;
      }

      if (v56 > v46)
      {
        v56 = v46;
      }

      v57 = v56 * 0.5;
      v58 = (v57 / v53) & ~((v57 / v53) >> 31);
      if (v58 >= v54)
      {
        v58 = v54;
      }

      if (result)
      {
        v59 = 0;
        v60 = v93[v49];
        v61 = (v60 + 2 * v58 * result);
        v62 = v58 + 1;
        v63 = (v60 + 2 * (v58 + 1) * result);
        v64 = 0.0;
        v65 = result;
        v66 = 0.0;
        do
        {
          v67 = v59 - v12;
          if (v67 < 0.0)
          {
            v67 = -v67;
          }

          if (v67 > v18)
          {
            v67 = v18;
          }

          v68 = v67 / v45;
          v69 = v68 & ~(v68 >> 31);
          if (v69 >= 127)
          {
            v69 = 127;
          }

          v70 = v69;
          v71 = v91[v69];
          v72 = v69 + 1;
          v73 = v68;
          v74 = v73 - v70;
          v75 = v72 - v73;
          v76 = v71 * v75 + v74 * v91[v72];
          v77 = *v61++;
          v78 = v74 + v75;
          *&v74 = vcvts_n_f32_u32(v77, 0xCuLL);
          v79 = v76 / v78;
          v80 = *v63++;
          v66 = v66 + (v19 * (*&v74 + -1.0) + 1.0) * v79;
          v64 = v64 + (v19 * (vcvts_n_f32_u32(v80, 0xCuLL) + -1.0) + 1.0) * v79;
          v59 += 2 * v52[1];
          --v65;
        }

        while (v65);
      }

      else
      {
        v62 = v58 + 1;
        v66 = 0.0;
        v64 = 0.0;
      }

      v90[v51] = (((v62 * v53) - v57) * v66 + (v57 - (v58 * v53)) * v64) / (v57 - (v58 * v53) + (v62 * v53) - v57) / result + v90[v51];
      ++v51;
    }

    while (v51 != 129);
    ++v49;
  }

  while (v49 != 4);
  v81 = 0;
  v82 = 0.0;
  do
  {
    v83 = v90[v81] * 0.25;
    v90[v81] = v83;
    if (v83 <= 0.0)
    {
      v84 = 0.0;
    }

    else
    {
      v84 = 1.0 / v83;
    }

    if (v84 > v82)
    {
      v82 = v84;
    }

    ++v81;
  }

  while (v81 != 129);
  v85 = 0;
  v86 = 255.0 / v82;
  if (v82 <= 0.0)
  {
    v86 = 1.0;
  }

  do
  {
    v87 = v90[v85];
    if (v87 <= 0.0)
    {
      v88 = 1.0;
    }

    else
    {
      v88 = 1.0 / v87;
    }

    *(v6 + 14 + 2 * v85++) = (v86 * v88);
  }

  while (v85 != 129);
  for (i = 0; i != 257; ++i)
  {
    *(v6 + 272 + 2 * i) = (v91[i] * 4096.0 * 128.0 / v86);
  }

  *(v6 + 12) = v5;
  return result;
}

void sub_100062F08(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t sub_1000631CC(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v69 = result;
  v70 = a3[7];
  if (a3[7])
  {
    v68 = a3[3];
    v15 = a3[2];
    v67 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v73 = a2 - 2;
    v18 = a3[4];
    v19 = a3[6];
    v71 = 0;
    v72 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v71 == v70)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v67 + v71 * v68);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v69 + 8 * v71 * v19;
    v75 = result;
    while (1)
    {
      v25 = (v18 + v20 * v15);
      if (v22)
      {
        v26 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v25 >= (*(v16 + 4 * v26) * *&v24))
        {
          if (v22 == ++v26)
          {
            LOWORD(v26) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v23)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v27) * *&v24))
          {
            if (v23 == ++v27)
            {
              v28 = v23;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v22 + -3.0 >= v31 ? (v36 = a5 == 0) : (v36 = 1), !v36 ? (v37 = v23 + -3.0 < v34) : (v37 = 1), v37))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v22 - 2))
        {
          v31 = (v22 - 2);
        }

        v52 = vcvtmd_u64_f64(v31);
        if (v34 >= (v23 - 2))
        {
          v53 = (v23 - 2);
        }

        else
        {
          v53 = v34;
        }

        v54 = vcvtmd_u64_f64(v53);
        v55 = v52 + v54 * v22;
        LOBYTE(v53) = *(a2 + v55);
        v56 = *(a4 + 48);
        LOBYTE(a9) = *(a2 + v55 + 1);
        v57 = v52 + (v54 + 1) * v22;
        LOBYTE(a10) = *(a2 + v57);
        LOBYTE(a11) = *(a2 + v57 + 1);
        LOWORD(a13) = *a4;
        v58 = LODWORD(a13);
        v59 = roundf(*(v16 + 4 * v52) * v58);
        LOWORD(v13) = *(a4 + 2);
        v60 = LODWORD(v13);
        v61 = roundf(*(v17 + 4 * v54) * v60);
        a13 = roundf(*(v16 + 4 * (v52 + 1)) * v58);
        v13 = roundf(*(v17 + 4 * (v54 + 1)) * v60);
        v62 = v25 - v59;
        v63 = a13 - v25;
        v64 = *&a10 / v56 * v63 + v62 * (*&a11 / v56);
        a11 = v62 + v63;
        a10 = v64 / (v62 + v63);
        v65 = (*&v53 / v56 * v63 + v62 * (*&a9 / v56)) / (v62 + v63);
        a9 = v13 - v21;
        v66 = fmin(((v13 - v21) * v65 + (v21 - v61) * a10) / (v21 - v61 + v13 - v21), 1.0);
        v24 = 1.0 / v56;
        if (v66 <= 1.0 / v56)
        {
          v66 = 1.0 / v56;
        }

        *(result + 8 * v20) = v66;
      }

      else
      {
        v38 = 0;
        v39 = *(a4 + 48);
        v40 = v35;
        v41 = (v73 + v29 + v22 * v35);
        v42 = v79;
        do
        {
          v43 = 0;
          v78[v38] = *(v16 + 4 * (v38 + v29 - 2));
          v44 = *(v17 + 4 * (v38 + v40));
          v77[v38] = v44;
          v45 = v41;
          do
          {
            LOBYTE(v44) = *v45;
            v44 = *&v44 / v39;
            v42[v43] = v44;
            v45 += v22;
            ++v43;
          }

          while (v43 != 4);
          ++v38;
          ++v41;
          v42 += 4;
        }

        while (v38 != 4);
        LOWORD(v44) = *a4;
        v46 = v25 / *&v44;
        v47 = *(v16 + 4 * v30);
        v48 = v46 - v47;
        *&v49 = (*(v16 + 4 * v29) - v47);
        v50 = v48 / *&v49;
        LOWORD(v49) = *(a4 + 2);
        sub_100061198(v79, v78, v77, v50, (v21 / v49 - *(v17 + 4 * v33)) / (*(v17 + 4 * v32) - *(v17 + 4 * v33)));
        v24 = 1.0 / v39;
        if (v51 >= 1.0)
        {
          v19 = v72;
          result = v75;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v72;
          result = v75;
          if (v51 > v24)
          {
            v24 = v51;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void sub_100063638(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a1 + 14) >> 1;
  v15 = *(a1 + 16) >> 1;
  v18 = a8 / 2;
  v19 = a9 / 2;
  if (a3)
  {
    v11 = 0;
    do
    {
      v13[v11] = *(a10 + 4 * v11);
      ++v11;
    }

    while (a3 > v11);
  }

  if (a4)
  {
    v12 = 0;
    do
    {
      v13[v12 + 27] = *(a11 + 4 * v12);
      ++v12;
    }

    while (a4 > v12);
  }

  v20 = a1 + 18;
  v21 = a1 + 36;
  v22 = a1 + 54;
  v23 = a1 + 72;
  v16 = *(a1 + 20);
  v17 = *(a1 + 28);
  operator new[]();
}

uint64_t sub_1000638FC(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v70 = result;
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v15 = a3[2];
    v68 = a3[5];
    v16 = a4 + 56;
    v17 = a4 + 164;
    v18 = a3[4];
    v19 = a3[6];
    v74 = v18;
    v75 = a2 - 4;
    v72 = 0;
    v73 = v19;
    while (!v19)
    {
LABEL_51:
      if (++v72 == v71)
      {
        return result;
      }
    }

    v20 = 0;
    v21 = (v68 + v72 * v69);
    v22 = *(a4 + 40);
    v23 = *(a4 + 42);
    v24 = -3.0;
    result = v70 + 8 * v72 * v19;
    v25 = 2 * v22;
    v77 = result;
    while (1)
    {
      v26 = (v18 + v20 * v15);
      if (v22)
      {
        v27 = 0;
        LOWORD(v24) = *a4;
        *&v24 = LODWORD(v24);
        while (v26 >= (*(v16 + 4 * v27) * *&v24))
        {
          if (v22 == ++v27)
          {
            LOWORD(v27) = v22;
            if (v23)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        if (v23)
        {
LABEL_12:
          v28 = 0;
          LOWORD(v24) = *(a4 + 2);
          *&v24 = LODWORD(v24);
          while (v21 >= (*(v17 + 4 * v28) * *&v24))
          {
            if (v23 == ++v28)
            {
              v29 = v23;
              goto LABEL_19;
            }
          }

          v29 = v28;
          goto LABEL_19;
        }
      }

LABEL_17:
      v29 = 0;
LABEL_19:
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      v33 = v29;
      v34 = v29 - 1;
      v35 = v34;
      if (v30 < 2 || (v36 = v33 - 2, v33 < 2) || (v22 + -3.0 >= v32 ? (v37 = a5 == 0) : (v37 = 1), !v37 ? (v38 = v23 + -3.0 < v35) : (v38 = 1), v38))
      {
        if (!v30)
        {
          v32 = 0.0;
        }

        if (!v33)
        {
          v35 = 0.0;
        }

        if (v32 >= (v22 - 2))
        {
          v32 = (v22 - 2);
        }

        v53 = vcvtmd_u64_f64(v32);
        if (v35 >= (v23 - 2))
        {
          v54 = (v23 - 2);
        }

        else
        {
          v54 = v35;
        }

        v55 = vcvtmd_u64_f64(v54);
        v56 = v53 + v55 * v22;
        LOWORD(v54) = *(a2 + 2 * v56);
        v57 = *(a4 + 48);
        LOWORD(a9) = *(a2 + 2 * (v56 + 1));
        v58 = v53 + (v55 + 1) * v22;
        LOWORD(a10) = *(a2 + 2 * v58);
        LOWORD(a11) = *(a2 + 2 * (v58 + 1));
        LOWORD(a13) = *a4;
        v59 = LODWORD(a13);
        v60 = roundf(*(v16 + 4 * v53) * v59);
        LOWORD(v13) = *(a4 + 2);
        v61 = LODWORD(v13);
        v62 = roundf(*(v17 + 4 * v55) * v61);
        a13 = roundf(*(v16 + 4 * (v53 + 1)) * v59);
        v13 = roundf(*(v17 + 4 * (v55 + 1)) * v61);
        v63 = v26 - v60;
        v64 = a13 - v26;
        v65 = *&a10 / v57 * v64 + v63 * (*&a11 / v57);
        a11 = v63 + v64;
        a10 = v65 / (v63 + v64);
        v66 = (*&v54 / v57 * v64 + v63 * (*&a9 / v57)) / (v63 + v64);
        a9 = v13 - v21;
        v67 = fmin(((v13 - v21) * v66 + (v21 - v62) * a10) / (v21 - v62 + v13 - v21), 1.0);
        v24 = 1.0 / v57;
        if (v67 <= 1.0 / v57)
        {
          v67 = 1.0 / v57;
        }

        *(result + 8 * v20) = v67;
      }

      else
      {
        v39 = 0;
        v40 = *(a4 + 48);
        v41 = v36;
        v42 = (v75 + 2 * v30 + v25 * v36);
        v43 = v81;
        do
        {
          v44 = 0;
          v80[v39] = *(v16 + 4 * (v39 + (v30 - 2)));
          v45 = *(v17 + 4 * (v39 + v41));
          v79[v39] = v45;
          v46 = v42;
          do
          {
            LOWORD(v45) = *v46;
            v45 = *&v45 / v40;
            v43[v44] = v45;
            v46 = (v46 + v25);
            ++v44;
          }

          while (v44 != 4);
          ++v39;
          ++v42;
          v43 += 4;
        }

        while (v39 != 4);
        LOWORD(v45) = *a4;
        v47 = v26 / *&v45;
        v48 = *(v16 + 4 * v31);
        v49 = v47 - v48;
        *&v50 = (*(v16 + 4 * v30) - v48);
        v51 = v49 / *&v50;
        LOWORD(v50) = *(a4 + 2);
        sub_100061198(v81, v80, v79, v51, (v21 / v50 - *(v17 + 4 * v34)) / (*(v17 + 4 * v33) - *(v17 + 4 * v34)));
        v24 = 1.0 / v40;
        if (v52 >= 1.0)
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v24 < 1.0)
          {
            v24 = 1.0;
          }
        }

        else
        {
          v19 = v73;
          v18 = v74;
          result = v77;
          if (v52 > v24)
          {
            v24 = v52;
          }
        }

        *(result + 8 * v20) = v24;
      }

      if (++v20 == v19)
      {
        goto LABEL_51;
      }
    }
  }

  return result;
}

void sub_100063D70(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void sub_1000640A4(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v13 = a3[2];
    v14 = a4 + 56;
    v15 = a4 + 124;
    v68 = a3[5];
    v16 = a3[4];
    v17 = a3[6];
    v75 = v16;
    v76 = a2 - 4;
    v74 = v17;
    v72 = 0;
    v73 = v13;
    while (!v17)
    {
LABEL_43:
      if (++v72 == v71)
      {
        return;
      }
    }

    v18 = 0;
    v19 = (v68 + v72 * v69);
    v20 = *(a4 + 40);
    v21 = *(a4 + 42);
    v22 = -3.0;
    v23 = a1 + 8 * v72 * v17;
    v24 = 2 * v20;
    while (1)
    {
      v25 = (v16 + v18 * v13);
      if (v20)
      {
        v26 = 0;
        LOWORD(v22) = *a4;
        *&v22 = LODWORD(v22);
        while (v25 >= (*(v14 + 4 * v26) * *&v22))
        {
          if (v20 == ++v26)
          {
            LOWORD(v26) = v20;
            if (v21)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if (v21)
        {
LABEL_12:
          v27 = 0;
          LOWORD(v22) = *(a4 + 2);
          *&v22 = LODWORD(v22);
          while (v19 >= (*(v15 + 4 * v27) * *&v22))
          {
            if (v21 == ++v27)
            {
              v28 = v21;
              goto LABEL_19;
            }
          }

          v28 = v27;
          goto LABEL_19;
        }
      }

LABEL_17:
      v28 = 0;
LABEL_19:
      v29 = v26;
      v30 = v26 - 1;
      v31 = v30;
      v32 = v28;
      v33 = v28 - 1;
      v34 = v33;
      if (v29 < 2 || (v35 = v32 - 2, v32 < 2) || (v20 + -3.0 >= v31 ? (v36 = v21 + -3.0 < v34) : (v36 = 1), v36))
      {
        if (!v29)
        {
          v31 = 0.0;
        }

        if (!v32)
        {
          v34 = 0.0;
        }

        if (v31 >= (v20 - 2))
        {
          v31 = (v20 - 2);
        }

        if (v34 >= (v21 - 2))
        {
          v34 = (v21 - 2);
        }

        v51 = vcvtmd_u64_f64(v31);
        v52 = vcvtmd_u64_f64(v34);
        v53 = v51 + v52 * v20;
        LOWORD(v31) = *(a2 + 2 * v53);
        v54 = *(a4 + 48);
        v55 = *&v31 / v54;
        LOWORD(a8) = *(a2 + 2 * (v53 + 1));
        v56 = *&a8 / v54;
        v57 = v51 + (v52 + 1) * v20;
        LOWORD(a9) = *(a2 + 2 * v57);
        v58 = *&a9 / v54;
        LOWORD(a10) = *(a2 + 2 * (v57 + 1));
        v59 = *&a10 / v54;
        LOWORD(a11) = *a4;
        v60 = LODWORD(a11);
        v61 = roundf(*(v14 + 4 * v51) * v60);
        LOWORD(v11) = *(a4 + 2);
        v62 = LODWORD(v11);
        v63 = roundf(*(v15 + 4 * v52) * v62);
        a11 = roundf(*(v14 + 4 * (v51 + 1)) * v60);
        v11 = roundf(*(v15 + 4 * (v52 + 1)) * v62);
        a10 = v25 - v61;
        v64 = a11 - v25;
        v65 = v58 * v64 + a10 * v59;
        a9 = a10 + v64;
        v66 = v65 / (a10 + v64);
        v67 = (v55 * v64 + a10 * v56) / (a10 + v64);
        a8 = v11 - v19;
        v22 = v19 - v63 + v11 - v19;
        *(v23 + 8 * v18) = fmax(fmin(((v11 - v19) * v67 + (v19 - v63) * v66) / v22, 2.0), 0.5);
      }

      else
      {
        v37 = 0;
        v38 = *(a4 + 48);
        v39 = v35;
        v40 = (v76 + 2 * v29 + v24 * v35);
        v41 = v80;
        do
        {
          v42 = 0;
          v79[v37] = *(v14 + 4 * (v37 + (v29 - 2)));
          v43 = *(v15 + 4 * (v37 + v39));
          v78[v37] = v43;
          v44 = v40;
          do
          {
            LOWORD(v43) = *v44;
            v43 = *&v43 / v38;
            v41[v42] = v43;
            v44 = (v44 + v24);
            ++v42;
          }

          while (v42 != 4);
          ++v37;
          ++v40;
          v41 += 4;
        }

        while (v37 != 4);
        LOWORD(v38) = *a4;
        v45 = v25 / *&v38;
        v46 = *(v14 + 4 * v30);
        v47 = v45 - v46;
        *&v48 = (*(v14 + 4 * v29) - v46);
        v49 = v47 / *&v48;
        LOWORD(v48) = *(a4 + 2);
        sub_100061198(v80, v79, v78, v49, (v19 / v48 - *(v15 + 4 * v33)) / (*(v15 + 4 * v32) - *(v15 + 4 * v33)));
        v22 = 2.0;
        if (v50 < 2.0)
        {
          v22 = 0.5;
          if (v50 > 0.5)
          {
            v22 = v50;
          }
        }

        *(v23 + 8 * v18) = v22;
        v13 = v73;
        v17 = v74;
        v16 = v75;
      }

      if (++v18 == v17)
      {
        goto LABEL_43;
      }
    }
  }
}

void sub_1000644F4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v12 = *(a1 + 14) >> 1;
  v13 = *(a1 + 16) >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v11[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v11[v10 + 17] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v16 = a1 + 18;
  v17 = a1 + 36;
  v18 = a1 + 54;
  v19 = a1 + 72;
  v20 = a1 + 90;
  v21 = a1 + 108;
  v22 = a1 + 126;
  v23 = a1 + 144;
  v24 = a1 + 162;
  v25 = a1 + 180;
  v26 = a1 + 198;
  v27 = a1 + 216;
  v28 = a1 + 234;
  v29 = a1 + 252;
  v30 = a1 + 270;
  v31 = a1 + 288;
  ldexp(1.0, __e);
  ldexp(1.0, a7 - 1);
  ldexp(1.0, a7);
  v14 = *(v16 + 2);
  v15 = *(v16 + 10);
  operator new[]();
}

void sub_10006482C(_WORD *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, int __e)
{
  v19 = a1[7] >> 1;
  v20 = a1[8] >> 1;
  if (a3)
  {
    v9 = 0;
    do
    {
      v18[v9] = *(a5 + 4 * v9);
      ++v9;
    }

    while (a3 > v9);
  }

  if (a4)
  {
    v10 = 0;
    do
    {
      v18[v10 + 27] = *(a6 + 4 * v10);
      ++v10;
    }

    while (a4 > v10);
  }

  v11 = a1 + 9;
  v12 = a1[16];
  v13 = a1[17];
  if (((v12 * v13) & 0xFFFF0000) == 0)
  {
    a1[13] = 0;
    a1[22] = 0;
  }

  v14 = 1;
  v15 = a1 + 9;
  while (1)
  {
    v16 = v14;
    v17 = v15[7];
    if (v17 != v12)
    {
      break;
    }

    if (v15[8] != v13)
    {
      sub_100085008();
    }

    if (*(v15 + 3) % (v13 * v17))
    {
      sub_100085034();
    }

    v14 = 0;
    v15 = a1 + 18;
    if ((v16 & 1) == 0)
    {
      ldexp(1.0, __e);
      ldexp(1.0, a7 - 1);
      ldexp(1.0, a7);
      v21 = *(v11 + 1);
      v22 = *(v11 + 5);
      operator new[]();
    }
  }

  sub_100084FDC();
}

uint64_t sub_100064B34(uint64_t result, uint64_t a2, unsigned __int16 *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v88 = result;
  v89 = a3[7];
  if (a3[7])
  {
    v90 = 0;
    v87 = a3[3];
    v13 = a3[2];
    v14 = (a4 + 7);
    v15 = a4 + 82;
    v94 = a2 - 4;
    v95 = a2 + 2;
    v86 = a3[5];
    v16 = a3[4];
    result = a3[6];
    v96 = a2;
    v92 = result;
    v93 = v16;
    v91 = v13;
    while (!result)
    {
LABEL_77:
      if (++v90 == v89)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = (v86 + v90 * v87);
    v19 = *(a4 + 20);
    v20 = *(a4 + 21);
    v21 = v20;
    v22 = v19 - 1;
    v23 = v88 + 8 * v90 * result;
    v97 = v20 - 1;
    v24 = 2 * v19;
    while (1)
    {
      v25 = (v16 + v17 * v13);
      if (v19)
      {
        break;
      }

      LOWORD(v26) = 0;
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_12:
      v27 = 0;
      LOWORD(v21) = *(a4 + 1);
      *&v21 = LODWORD(v21);
      while (v18 >= (*&v15[2 * v27] * *&v21))
      {
        if (v20 == ++v27)
        {
          LOWORD(v27) = v20;
          break;
        }
      }

LABEL_18:
      v28 = v26 - 1;
      v29 = v28;
      v30 = v27;
      v31 = v27 - 1;
      v32 = v31;
      if (v26 && v27 && (v19 + -2.0 >= v29 ? (v33 = v20 + -2.0 < v32) : (v33 = 1), !v33))
      {
        if (v26 >= 2u)
        {
          v34 = v27 - 2;
          if (v27 >= 2u && v19 + -3.0 >= v29 && v20 + -3.0 >= v32)
          {
            v36 = 0;
            v37 = a4[6];
            v38 = v34;
            v39 = (v94 + 2 * v26 + v24 * v34);
            v40 = v100;
            do
            {
              v41 = 0;
              v99[v36] = *&v14[2 * v36 - 4 + 2 * v26];
              v98[v36] = *&v15[2 * v36 + 2 * v38];
              v42 = v39;
              do
              {
                v40[v41] = *v42 / v37;
                v42 = (v42 + v24);
                ++v41;
              }

              while (v41 != 4);
              ++v36;
              ++v39;
              v40 += 4;
            }

            while (v36 != 4);
            LOWORD(v37) = *a4;
            v43 = v25 / *&v37;
            v44 = *&v14[2 * v28];
            v45 = v43 - v44;
            *&v46 = (*&v14[2 * v26] - v44);
            v47 = v45 / *&v46;
            LOWORD(v46) = *(a4 + 1);
            sub_100061198(v100, v99, v98, v47, (v18 / v46 - *&v15[2 * v31]) / (*&v15[2 * v30] - *&v15[2 * v31]));
            v21 = 0.125;
            if (v48 < 0.125)
            {
              v21 = -0.125;
              if (v48 > -0.125)
              {
                v21 = v48;
              }
            }

            *(v23 + 8 * v17) = v21;
            v13 = v91;
            result = v92;
            a2 = v96;
            v16 = v93;
            v22 = v19 - 1;
            goto LABEL_71;
          }
        }

        if (v29 >= (v19 - 2))
        {
          v29 = (v19 - 2);
        }

        if (v32 >= (v20 - 2))
        {
          v32 = (v20 - 2);
        }

        v55 = vcvtmd_u64_f64(v29);
        v56 = vcvtmd_u64_f64(v32);
        v57 = v55 + v56 * v19;
        v58 = a4[6];
        v59 = *(a2 + 2 * v57) / v58;
        v60 = *(a2 + 2 * (v57 + 1)) / v58;
        LOWORD(a11) = *a4;
        v61 = LODWORD(a11);
        v62 = roundf(*&v14[2 * v55] * v61);
        LOWORD(v11) = *(a4 + 1);
        v63 = LODWORD(v11);
        v64 = roundf(*&v15[2 * v56] * v63);
        a11 = roundf(*&v14[2 * v55 + 2] * v61);
        v11 = roundf(*&v15[2 * v56 + 2] * v63);
        v65 = v25 - v62;
        v66 = a11 - v25;
        v67 = (*(a2 + 2 * (v55 + (v56 + 1) * v19)) / v58 * v66 + v65 * (*(a2 + 2 * (v55 + (v56 + 1) * v19 + 1)) / v58)) / (v65 + v66);
        v68 = (v59 * v66 + v65 * v60) / (v65 + v66);
        v69 = v18 - v64;
        v70 = v11 - v18;
      }

      else
      {
        if (!v26)
        {
          v29 = 0.0;
        }

        if (!v27)
        {
          v32 = 0.0;
        }

        if (v29 >= (v19 - 1))
        {
          v29 = (v19 - 1);
        }

        if (v32 >= (v20 - 1))
        {
          v32 = (v20 - 1);
        }

        v49 = vcvtmd_u64_f64(v29);
        v50 = vcvtmd_u64_f64(v32);
        if (!(v49 | v50))
        {
          v51 = *(v95 + 2 * v19);
LABEL_69:
          v21 = a4[6];
          v74 = v51 / v21;
          goto LABEL_70;
        }

        if (v49)
        {
          v52 = 0;
        }

        else
        {
          v52 = v97 == v50;
        }

        if (v52)
        {
          v54 = (v20 - 1) * v19 + 1;
          goto LABEL_68;
        }

        if (v22 == v49 && v50 == 0)
        {
          v54 = v19 - 1 + v19;
          goto LABEL_68;
        }

        if (v22 == v49)
        {
          if (v97 == v50)
          {
            v54 = (v20 - 1) * v19 + v19 - 1;
LABEL_68:
            v51 = *(a2 + 2 * v54);
            goto LABEL_69;
          }

          v75 = *a4;
          v76 = *(a4 + 1);
        }

        else
        {
          v75 = *a4;
          v76 = *(a4 + 1);
          if (v49)
          {
            v77 = roundf(*&v14[2 * v49] * v75);
            v78 = roundf(*&v15[2 * v50] * v76);
            v79 = roundf(*&v14[2 * v49 + 2] * v75);
            a11 = roundf(*&v15[2 * v50 + 2] * v76);
            v80 = (*(a2 + 2 * (v49 + v50 * v19)) / a4[6] * (v79 - v25) + (v25 - v77) * (*(a2 + 2 * (v49 + v50 * v19 + 1)) / a4[6])) / (v25 - v77 + v79 - v25);
            v71 = (a11 - v18) * v80 + (v18 - v78) * v80;
            v72 = v18 - v78 + a11 - v18;
            goto LABEL_65;
          }
        }

        v81 = a4[6];
        v82 = *(a2 + 2 * (v49 + (v50 + 1) * v19));
        v83 = *(a2 + 2 * (v49 + v50 * v19)) / v81;
        a11 = roundf(*&v15[2 * v50 + 2] * v76);
        v84 = v25 - roundf(*&v14[2 * v49] * v75);
        v85 = roundf(*&v14[2 * v49 + 2] * v75) - v25;
        v67 = (v82 / v81 * v85 + v84 * (v82 / v81)) / (v84 + v85);
        v68 = (v83 * v85 + v84 * v83) / (v84 + v85);
        v69 = v18 - roundf(*&v15[2 * v50] * v76);
        v70 = a11 - v18;
      }

      v71 = v70 * v68 + v69 * v67;
      v72 = v69 + v70;
LABEL_65:
      v73 = fmin(v71 / v72, 0.125);
      v21 = -0.125;
      v74 = fmax(v73, -0.125);
LABEL_70:
      *(v23 + 8 * v17) = v74;
LABEL_71:
      if (++v17 == result)
      {
        goto LABEL_77;
      }
    }

    v26 = 0;
    LOWORD(v21) = *a4;
    *&v21 = LODWORD(v21);
    while (v25 >= (*&v14[2 * v26] * *&v21))
    {
      if (v19 == ++v26)
      {
        LOWORD(v26) = v19;
        if (v20)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    if (v20)
    {
      goto LABEL_12;
    }

LABEL_17:
    LOWORD(v27) = 0;
    goto LABEL_18;
  }

  return result;
}

void sub_1000651CC(CFDictionaryRef *a1)
{
  if (*a1)
  {
    CFDictionaryGetCount(*a1);
  }

  malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  operator new();
}

void sub_10006B344(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *v2;
      v4 = (*(v2 + 8) - *v2) >> 3;
      if (v4 < 1)
      {
        goto LABEL_6;
      }

      do
      {
        v5 = *v3++;
        CFRelease(v5);
        --v4;
      }

      while (v4);
      v2 = *a1;
      if (*a1)
      {
LABEL_6:
        v6 = *v2;
        if (*v2)
        {
          *(v2 + 8) = v6;
          operator delete(v6);
        }

        operator delete();
      }

      *a1 = 0;
    }

    v7 = a1[1];
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v8;
        operator delete(v8);
      }

      operator delete();
    }

    free(a1);
  }
}

void sub_10006B4F0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000251B8();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10006B698(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_10006B5C4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000251B8();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10006B6E0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_10006B698(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000196F4();
}

void sub_10006B6E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000196F4();
}

void *sub_10006B728(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_10006B698(result, a2);
    }

    sub_1000251B8();
  }

  return result;
}

void *sub_10006B7C8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_10006B6E0(result, a2);
    }

    sub_1000251B8();
  }

  return result;
}

void sub_10006B868(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = off_1000A1CE0;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 4 * (v4 * a3);
  v7 = off_1000A1CE0;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

uint64_t sub_10006B954(uint64_t result, int a2, int a3)
{
  *result = off_1000A1CE0;
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

uint64_t sub_10006B9E0(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (!v8)
  {
    v20 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v20 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10008523C(a2, v20);
    }

    return 0;
  }

  v9 = v8;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v57[0] = v9;
  v56[0] = UnsafePointer;
  v56[1] = UnsafePointer;
  v57[1] = [NSNumber numberWithInt:getpid()];
  v56[2] = UnsafePointer;
  v57[2] = [NSNumber numberWithBool:has_internal_diagnostics ^ 1u];
  v57[3] = &__kCFBooleanTrue;
  v56[3] = UnsafePointer;
  v56[4] = UnsafePointer;
  v57[4] = &__kCFBooleanTrue;
  v57[5] = &__kCFBooleanTrue;
  v56[5] = UnsafePointer;
  v56[6] = UnsafePointer;
  v56[7] = UnsafePointer;
  v57[6] = &__kCFBooleanTrue;
  v57[7] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:8];
  CFRelease(v9);
  v12 = off_10041DCF8;
  if (off_10041DCF8 == &_os_log_default)
  {
    v12 = os_log_create("com.apple.isp", "services");
    off_10041DCF8 = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v66 = a1;
    v67 = 2112;
    v68 = v11;
    v69 = 2048;
    v70 = a3;
    v71 = 2048;
    v72 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "dumpTailspinWithOptionsOnQueue %s %@ %p %p\n", buf, 0x2Au);
  }

  v13 = strlen(a1);
  if (v13 >= 0x401)
  {
    v21 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v21 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100085060(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    return 0;
  }

  v14 = v13;
  v15 = strrchr(a1, 47);
  if (v15)
  {
    v16 = v15;
    v17 = v11;
    v18 = v15 - a1;
    __strncpy_chk();
    buf[v18] = 0;
    v19 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v19 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v58) = 136315138;
      *(&v58 + 4) = buf;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "creating directory %s\n", &v58, 0xCu);
    }

    if (mkdir(buf, 0x1EDu) && *__error() != 17)
    {
      v43 = off_10041DCF8;
      if (off_10041DCF8 == &_os_log_default)
      {
        v43 = os_log_create("com.apple.isp", "services");
        off_10041DCF8 = v43;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100085098();
      }

      return 0;
    }

    strncpy(&buf[v18], v16, v14 - v18);
    v11 = v17;
  }

  else
  {
    strncpy(buf, a1, 0x400uLL);
  }

  v55 = 0;
  if (time(&v55) == -1)
  {
    v35 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v35 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v35;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_100085204(v35, v36, v37, v38, v39, v40, v41, v42);
    }

    return 0;
  }

  v29 = localtime(&v55);
  v30 = strftime(&buf[v14], 1024 - v14, "_%Y.%m.%d_%H-%M-%S%z.tailspin", v29);
  v31 = off_10041DCF8;
  if (!v30)
  {
    if (off_10041DCF8 == &_os_log_default)
    {
      v31 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v31;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000851CC(v31, v44, v45, v46, v47, v48, v49, v50);
    }

    return 0;
  }

  if (off_10041DCF8 == &_os_log_default)
  {
    v31 = os_log_create("com.apple.isp", "services");
    off_10041DCF8 = v31;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v58) = 136315138;
    *(&v58 + 4) = buf;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "creating tailspin file %s\n", &v58, 0xCu);
  }

  v32 = open(buf, 514, 420);
  if (v32 < 0)
  {
    v51 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v51 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v51;
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_100085130();
    }

    return 0;
  }

  v33 = v32;
  if (a3)
  {
    *&v58 = _NSConcreteStackBlock;
    *(&v58 + 1) = 3221225472;
    v59 = sub_10006C148;
    v60 = &unk_1000AC9A0;
    v64 = v32;
    v62 = a4;
    v63 = a1;
    v61 = v11;
    tailspin_dump_output_with_options();
    return 1;
  }

  else
  {
    v53 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v53 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v53;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v58) = 136315138;
      *(&v58 + 4) = buf;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Dump tailspin to %s begin ...\n", &v58, 0xCu);
    }

    v34 = tailspin_dump_output_with_options_sync();
    v54 = off_10041DCF8;
    if (off_10041DCF8 == &_os_log_default)
    {
      v54 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v54;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v58) = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Dump tailspin end ...\n", &v58, 2u);
    }

    fsync(v33);
    close(v33);
  }

  return v34;
}

uint64_t sub_10006C0EC(char *a1, const char *a2, uint64_t a3)
{
  global_queue = dispatch_get_global_queue(9, 0);

  return sub_10006B9E0(a1, a2, global_queue, a3);
}

uint64_t sub_10006C148(uint64_t a1, uint64_t a2)
{
  fsync(*(a1 + 56));
  close(*(a1 + 56));
  v4 = off_10041DCF8;
  if (a2)
  {
    if (off_10041DCF8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:UnsafePointer];
      v6 = *(a1 + 48);
      v8 = 138412546;
      v9 = v5;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tailspin with reason '%@' stored at path %s\n", &v8, 0x16u);
    }
  }

  else
  {
    if (off_10041DCF8 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "services");
      off_10041DCF8 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000852B4(a1);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t sub_10006C2B4(uint64_t a1, char *label, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a3;
  *(a1 + 40) = 1;
  if (!a3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v11 = 136315394;
    v12 = "ISPTimer";
    v13 = 1024;
    v14 = 71;
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: ISPTimer %s:%d ", &v11, 0x12u);
    return a1;
  }

  if (!a5)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v11 = 136315394;
    v12 = "ISPTimer";
    v13 = 1024;
    v14 = 72;
    goto LABEL_15;
  }

  v8 = dispatch_queue_create(label, 0);
  *(a1 + 8) = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v11 = 136315394;
    v12 = "ISPTimer";
    v13 = 1024;
    v14 = 75;
    goto LABEL_15;
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
  *a1 = v9;
  if (!v9)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return a1;
    }

    v11 = 136315394;
    v12 = "ISPTimer";
    v13 = 1024;
    v14 = 78;
    goto LABEL_15;
  }

  if (a6)
  {
    *(a1 + 40) = 0;
    sub_10006C4E0(a1);
  }

  return a1;
}

void sub_10006C4E0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_set_timer(v2, 0, 1000000 * *(a1 + 32), 0xF4240uLL);
    v3 = *a1;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000029C8;
    handler[3] = &unk_1000AC9C0;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_resume(*a1);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "Start";
    v7 = 1024;
    v8 = 104;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Assert: ISPTimer %s:%d ", buf, 0x12u);
  }
}

NSObject **sub_10006C624(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*a1);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
    a1[1] = 0;
  }

  return a1;
}

BOOL sub_10006C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, double *a6)
{
  bzero(*(a4 + 8), (*(a4 + 20) * *(a4 + 16)));
  *a5 = 0;
  v12 = *(a3 + 16);
  v13 = *(a3 + 20);
  v14 = v13 * v12;
  if (!(v13 * v12))
  {
    sub_10007EBF0();
  }

  if (v14 <= 2)
  {
    sub_10007EBF0();
  }

  if (v14 == 3)
  {
    sub_10007EBF0();
  }

  v15 = *(a1 + 20);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a3 + 8);
    v19 = *v18 + v18[2];
    v20 = v18[1] + v18[3];
    v21 = 0.0;
    v22 = 1.0e10;
    v23 = 1.0e10;
    v24 = 0.0;
    do
    {
      v25 = *(a1 + 16);
      if (!v25)
      {
        sub_10007CEF4();
      }

      v26 = *(a3 + 20) * *(a3 + 16);
      if (!v26)
      {
        sub_10007EBF0();
      }

      v27 = *(a1 + 8);
      v28 = *(v27 + 8 * v17);
      v29 = *(a3 + 8);
      if (v28 > *v29 && v28 < v19)
      {
        if (v25 == 1)
        {
          sub_10007CEF4();
        }

        if (v26 == 1)
        {
          sub_10007EBF0();
        }

        v31 = *(v27 + 8 * v15 + 8 * v17);
        if (v31 > v29[1] && v31 < v20)
        {
          if (v17 >= (*(a4 + 20) * *(a4 + 16)))
          {
            sub_10007EC1C();
          }

          *(*(a4 + 8) + v17) = 1;
          v33 = (*(a1 + 8) + 8 * v17);
          if (*v33 < v22)
          {
            v22 = *v33;
          }

          if (*v33 > v24)
          {
            v24 = *v33;
          }

          v34 = v33[v15];
          if (v34 < v23)
          {
            v23 = v33[v15];
          }

          if (v34 > v21)
          {
            v21 = v33[v15];
          }

          *a5 = ++v16;
          v15 = *(a1 + 20);
        }
      }

      ++v17;
    }

    while (v17 < v15);
    v12 = *(a3 + 16);
    v13 = *(a3 + 20);
    v35 = (v21 - v23) * (v24 - v22);
  }

  else
  {
    v16 = 0;
    v35 = 1.0e20;
  }

  v36 = v13 * v12;
  if (v36 <= 2)
  {
    sub_10007EBF0();
  }

  if (v36 == 3)
  {
    sub_10007EBF0();
  }

  v37 = v35 / (*(*(a3 + 8) + 16) * *(*(a3 + 8) + 24));
  *a6 = v37;
  return v37 > *(a2 + 712) && v16 > *(a2 + 720);
}

void sub_10006DF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  sub_100016068(&a53);
  sub_100016068(&a57);
  sub_100016068(&a61);
  sub_100016068(&a65);
  sub_10006DFD0(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DFD0(uint64_t a1)
{
  sub_100016068(a1 + 872);
  sub_100016068(a1 + 840);
  sub_100016068(a1 + 808);
  sub_100016068(a1 + 776);
  sub_100016068(a1 + 744);
  sub_100016068(a1 + 256);
  sub_100016068(a1 + 224);
  sub_100016068(a1 + 192);
  sub_100016068(a1 + 160);
  sub_100016068(a1 + 128);
  return a1;
}

void GridArea::PrepareGrid(_DWORD *a1, float *a2, uint64_t a3, float *a4, int a5)
{
  v5 = ((a4[1] - *a4) / a4[2]);
  v6 = ((((a2[1] - *a2) / a2[2]) + 1.0) + (2 * a5));
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v6 * v6;
  a1[5] = v6 * v6 + v6 * v6 * v5;
  operator new[]();
}

void GridArea::~GridArea(GridArea *this)
{
  if (*this)
  {
    operator delete[]();
  }
}

uint64_t GridArea::GetMinimalCostEntryIdx(uint64_t this, int a2)
{
  v2 = *(this + 20);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  LODWORD(this) = 0;
  v5 = *v3;
  v6 = 16;
  if (a2)
  {
    v6 = 24;
  }

  v7 = (v5 + v6);
  v8 = 1.79769313e308;
  do
  {
    v9 = *v7;
    v7 += 4;
    v10 = v9;
    v11 = v9 < v8;
    if (v9 >= v8)
    {
      this = this;
    }

    else
    {
      this = v4;
    }

    if (v11)
    {
      v8 = v10;
    }

    ++v4;
  }

  while (v2 != v4);
  return this;
}

uint64_t *GridArea::NormalizeGrid(uint64_t *result, int a2, int a3, _DWORD *a4)
{
  v4 = a4[4];
  v5 = a4[5];
  if (v4 > v5)
  {
    return result;
  }

  v6 = a4[3];
  v7 = 1.79769313e308;
  v8 = 2.22507386e-308;
  v9 = a4[4];
  do
  {
    if (a4[2] <= v6)
    {
      v10 = v7;
      for (i = a4[2]; i <= v6; ++i)
      {
        v12 = *result + 32 * (a2 + *(result + 2) * v9 + i);
        if (a3)
        {
          if (*v12 == 1)
          {
            v7 = *(v12 + 24);
            goto LABEL_10;
          }
        }

        else if (*(v12 + 1) == 1)
        {
          v7 = *(v12 + 16);
LABEL_10:
          if (v7 > v8)
          {
            v8 = v7;
          }

          if (v7 < v10)
          {
            goto LABEL_14;
          }
        }

        v7 = v10;
LABEL_14:
        v10 = v7;
      }
    }

    ++v9;
  }

  while (v9 <= v5);
  v13 = v8 - v7;
  v14 = a4[2];
  v15 = a4[3];
  do
  {
    if (v14 <= v15)
    {
      v16 = *result;
      v17 = a2 + *(result + 2) * v4;
      v18 = v14;
      do
      {
        if (a3)
        {
          v19 = 24;
        }

        else
        {
          v19 = 16;
        }

        *(v16 + 32 * (v17 + v18) + v19) = (*(v16 + 32 * (v17 + v18) + v19) - v7) / v13;
        ++v18;
      }

      while (v18 <= v15);
    }

    ++v4;
  }

  while (v4 <= v5);
  return result;
}

void GridArea::CalcNewConfidence(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) * a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    if (a3)
    {
      v8 = 24;
    }

    v9 = (*a1 + v8);
    v10 = 1.79769313e308;
    do
    {
      v11 = *v9;
      v9 += 4;
      v12 = v11;
      if (v11 < v10)
      {
        v7 = v6;
        v10 = v12;
      }

      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(a1 + 8);
  v14 = v7 / v13;
  v15 = v7 % v13;
  *a4 = v15;
  a4[1] = v14;
  v16 = v13 - 1;
  v17 = (v16 >> 1) - 1;
  v18 = (v15 - v17) & ~((v15 - v17) >> 31);
  v19 = v15 + v17;
  if (v19 >= v16)
  {
    v19 = v16;
  }

  a4[2] = v18;
  a4[3] = v19;
  v20 = v17 + v14;
  if (v17 + v14 >= v16)
  {
    v20 = v16;
  }

  a4[4] = (v14 - v17) & ~((v14 - v17) >> 31);
  a4[5] = v20;
  GridArea::NormalizeGrid(a1, v5, a3, a4);
  operator new[]();
}

void GridArea::FitParabolaModel(GridArea *this, double *a2, double *a3)
{
  v3 = a3;
  sub_100016114(v15, a3, 3);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v17;
    v9 = v18;
    do
    {
      if (v7 >= v8 || !v9 || (*(v16 + 8 * v6) = a2[v7] * a2[v7], v9 == 1) || (*(v16 + 8 * v6 + 8) = a2[v7], v9 <= 2))
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      *(v16 + 8 * v6 + 16) = 0x3FF0000000000000;
      ++v7;
      v6 += v9;
    }

    while (v3 != v7);
  }

  v10 = off_1000A1C28;
  v11 = this;
  v12 = v3;
  v13 = 1;
  v14 = 0;
  sub_10003C670(v15);
}

void sub_10006E8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_100016068(&a25);
  sub_100016068(&a9);
  sub_100016068(&a21);
  sub_100016068(&a17);
  sub_100016068(&a13);
  sub_100016068(v25 - 112);
  sub_100016068(v25 - 80);
  _Unwind_Resume(a1);
}

void sub_10006E920(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == 2)
  {
    if (*(a1 + 20) == 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_10006F044();
  }

  if (v6 != 3 || *(a1 + 20) != 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_100016114(a3, v6, v6);
  v7 = sub_10006EFB0(a1);
  if (v7 == 0.0)
  {
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 1;
    }

    if (*(a1 + 16) == 2)
    {
      **(a3 + 8) = *(*(a1 + 8) + 24) / v7;
      *(*(a3 + 8) + 8) = -*(*(a1 + 8) + 8) / v7;
      *(*(a3 + 8) + 16) = -*(*(a1 + 8) + 16) / v7;
      *(*(a3 + 8) + 24) = **(a1 + 8) / v7;
    }

    else
    {
      v8 = *(a1 + 20);
      if (v8)
      {
        v9 = 0;
        v10 = *(a3 + 16);
        v11 = 5;
        v12 = 1;
        v13 = 8;
        v14 = 2;
        v15 = 7;
        v16 = 4;
        do
        {
          v17 = 0;
          v18 = 0;
          v19 = 9 * (v12 / 3);
          v20 = 9 * (v14 / 3);
          v21 = v9 + 1;
          v22 = *(a3 + 20);
          v23 = v11 - v19;
          v24 = v13 - v20;
          v25 = v15 - v20;
          v26 = v16 - v19;
          v27 = 2;
          v28 = 1;
          do
          {
            if (v18 >= v10 || v9 >= v22)
            {
              __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
            }

            v29 = *(a1 + 8);
            *(*(a3 + 8) + 8 * v9 + 8 * v17) = (*(v29 + 8 * (v18 + v26 - 3 * (v28 / 3))) * *(v29 + 8 * (v18 + v24 - 3 * (v27 / 3))) - *(v29 + 8 * (v18 + v23 - 3 * (v27 / 3))) * *(v29 + 8 * (v18 + v25 - 3 * (v28 / 3)))) / v7;
            v17 += v22;
            ++v27;
            ++v28;
            ++v18;
          }

          while (v8 != v18);
          v11 += 3;
          ++v12;
          v13 += 3;
          ++v14;
          v15 += 3;
          v16 += 3;
          ++v9;
        }

        while (v21 != v8);
      }
    }
  }
}

void GridArea::SaveToDictionary()
{
  if (gDbgLvl)
  {
    operator new[]();
  }
}

void sub_10006EDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10006EE44(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10006EFA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

BOOL GridArea::isMinimumOnBorder(float *a1, int a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  if (v4)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 16;
    if (a2)
    {
      v7 = 24;
    }

    v8 = (v3 + v7);
    v9 = 1.79769313e308;
    do
    {
      v10 = *v8;
      v8 += 4;
      v11 = v10;
      v12 = v10 < v9;
      if (v10 >= v9)
      {
        v6 = v6;
      }

      else
      {
        v6 = v5;
      }

      if (v12)
      {
        v9 = v11;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = v3 + 32 * v6;
  *a3 = v13;
  v14 = *(v13 + 4);
  result = 1;
  if (v14 != a1[6] && v14 != a1[7])
  {
    v15 = *(v13 + 8);
    if (v15 != a1[8] && v15 != a1[9])
    {
      return 0;
    }
  }

  return result;
}

double sub_10006EFB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 != 2)
  {
    if (v1 == 3 && *(a1 + 20) == 3)
    {
      v2 = *(a1 + 8);
      return *v2 * (v2[4] * v2[8] - v2[5] * v2[7]) - v2[1] * (v2[3] * v2[8] - v2[5] * v2[6]) + v2[2] * (v2[3] * v2[7] - v2[4] * v2[6]);
    }

LABEL_7:
    sub_10006F070();
  }

  if (*(a1 + 20) != 2)
  {
    goto LABEL_7;
  }

  return **(a1 + 8) * *(*(a1 + 8) + 24) - *(*(a1 + 8) + 8) * *(*(a1 + 8) + 16);
}

void MetalMgt::MetalMgt(MetalMgt *this)
{
  *(this + 3) = 850045863;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 13) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *this;
  *this = v2;

  v4 = [*this newCommandQueue];
  v5 = *(this + 1);
  *(this + 1) = v4;

  v6 = [*this newDefaultLibrary];
  v7 = *(this + 2);
  *(this + 2) = v6;

  *(this + 12) = 0;
  v8 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/H16ISPServices.framework/CalibrateRgbIr.metallib"];
  v9 = *this;
  v21 = 0;
  v10 = [v9 newLibraryWithURL:v8 error:&v21];
  v11 = v21;
  v12 = *(this + 2);
  *(this + 2) = v10;

  v13 = [*(this + 2) newFunctionWithName:@"Algo_DistortRadialLiteInternal"];
  v14 = *(this + 11);
  *(this + 11) = v13;

  v15 = *(this + 11);
  if (!v15)
  {
    __assert_rtn("MetalMgt", "MetalObjects.mm", 42, "m_algo_DistortRadialLiteInternal_func != 0");
  }

  v16 = *this;
  v20 = 0;
  v17 = [v16 newComputePipelineStateWithFunction:v15 error:&v20];
  v18 = v20;
  v19 = *(this + 13);
  *(this + 13) = v17;
}

void sub_10006F20C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);

  _Unwind_Resume(a1);
}

uint64_t MetalObjects::init(MetalObjects *this)
{
  *this = objc_opt_new();

  return _objc_release_x1();
}

void MetalObjects::createTextureMedian(void *a1, void *a2, int *a3, int a4, int a5, int a6, int a7)
{
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  if (a7)
  {
    v17 = 0;
    MetalObjects::createBuffer(a1, &v17, a4, a6);
    v15 = v17;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:3];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:a6];
  }

  else
  {
    v16 = 0;
    MetalObjects::createBuffer(a1, &v16, a3, a6 * a4);
    v15 = v16;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:1];
    [*a1 setResourceOptions:*(a1[2] + 96)];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:a6];
  }

  *a2 = v14;
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int a3, int a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  *a2 = [**(a1 + 16) newBufferWithLength:4 * a4 * a3 options:*(*(a1 + 16) + 96)];
  v8 = (*(a1 + 16) + 24);

  std::mutex::unlock(v8);
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int *a3, unint64_t a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  v8 = *(a1 + 16);
  v9 = *v8;
  if (a4 < 0x14)
  {
    v10 = [v9 newBufferWithLength:20 options:*(v8 + 96)];
    *a2 = v10;
    v11 = [v10 contents];
    if (a4 >= 4)
    {
      v12 = a4 >> 2;
      do
      {
        v13 = *a3++;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    *a2 = [v9 newBufferWithBytes:a3 length:a4 options:*(v8 + 96)];
  }

  v14 = (*(a1 + 16) + 24);

  std::mutex::unlock(v14);
}

void MetalObjects::createTexture(id *a1, void *a2, int *a3, int a4, int a5)
{
  v15 = 0;
  MetalObjects::createBuffer(a1, &v15, a3, 4 * a5 * a4);
  v10 = v15;
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  if (*a1 && [*a1 width] && (v11 = objc_msgSend(*a1, "height"), a3) && v11)
  {
    *a2 = [v10 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a5];
  }

  else
  {
    v12 = off_10041DD00;
    if (off_10041DD00 == &_os_log_default)
    {
      v13 = os_log_create("com.apple.isp", "general");
      v14 = off_10041DD00;
      off_10041DD00 = v13;

      v12 = off_10041DD00;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "createTexture";
      v18 = 1024;
      v19 = a4;
      v20 = 1024;
      v21 = a5;
      v22 = 2048;
      v23 = a3;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Aborting texture creation rows: %d, cols: %d, buffer: %p\n", buf, 0x22u);
    }
  }
}

void MetalObjects::Algo_DistortRadialLiteInternal(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15)
{
  v30 = a2;
  v29 = a3;
  v38 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v37 = a9;
  v32 = a10;
  v31 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  std::mutex::lock((*(a1 + 16) + 24));
  v25 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  v26 = [v25 computeCommandEncoder];
  [v26 setComputePipelineState:*(*(a1 + 16) + 104)];
  [v26 setTexture:v30 atIndex:0];
  [v26 setTexture:v29 atIndex:1];
  [v26 setTexture:v38 atIndex:2];
  [v26 setTexture:v37 atIndex:3];
  [v26 setTexture:v24 atIndex:4];
  [v26 setBuffer:v36 offset:0 atIndex:0];
  [v26 setBuffer:v35 offset:0 atIndex:1];
  [v26 setBuffer:v34 offset:0 atIndex:2];
  [v26 setBuffer:v33 offset:0 atIndex:3];
  [v26 setBuffer:v32 offset:0 atIndex:4];
  [v26 setBuffer:v31 offset:0 atIndex:5];
  [v26 setBuffer:v22 offset:0 atIndex:6];
  [v26 setBuffer:v23 offset:0 atIndex:7];
  v27 = [*(*(a1 + 16) + 104) threadExecutionWidth];
  v28 = [*(*(a1 + 16) + 104) maxTotalThreadsPerThreadgroup];
  v40[0] = ([v30 width] + v27 - 1) / v27;
  v40[1] = ([v30 height] + v28 / v27 - 1) / (v28 / v27);
  v40[2] = 1;
  v39[0] = v27;
  v39[1] = v28 / v27;
  v39[2] = 1;
  [v26 dispatchThreadgroups:v40 threadsPerThreadgroup:v39];
  [v26 endEncoding];
  [v25 commit];
  if (a15)
  {
    [v25 waitUntilCompleted];
  }
}

void MetalObjects::medianFilter(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v12 = a2;
  v9 = a3;
  std::mutex::lock((*(a1 + 16) + 24));
  v10 = [[MPSImageMedian alloc] initWithDevice:**(a1 + 16) kernelDiameter:a4];
  v11 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  [v10 encodeToCommandBuffer:v11 sourceTexture:v12 destinationTexture:v9];
  [v11 commit];
  if (a5)
  {
    [v11 waitUntilCompleted];
  }
}

void RgbIrCalibration::RgbIrCalibration(RgbIrCalibration *this, int a2)
{
  *this = 0;
  gDbgLvl = a2;
  operator new();
}

void RgbIrCalibration::~RgbIrCalibration(RgbIrCalibration *this)
{
  if (*this == 1)
  {
    *(this + 1) = 1;
    CalibrateRgbIr::abort(*(this + 1));
  }

  else
  {
    v1 = *(this + 1);
    if (v1)
    {
      sub_100070098(v1);
      operator delete();
    }
  }
}

uint64_t RgbIrCalibration::Calibrate(uint64_t a1, int a2, const __CFDictionary *a3, int a4, int a5, int a6, unsigned int a7, const __CFBoolean *a8, double *a9, const __CFArray *a10, __int16 a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  context = objc_autoreleasePoolPush();
  *a1 = 1;
  v20 = CalibrateRgbIr::Calibrate(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a15);
  *a1 = 0;
  if (*(a1 + 1))
  {
    v21 = 4102;
  }

  else
  {
    v21 = v20;
    v22 = *(a1 + 8);
    *a16 = *(v22 + 984);
    *(a16 + 8) = *(v22 + 992);
    *(a16 + 12) = *(v22 + 996);
    *(a16 + 16) = *(v22 + 1000);
    v23 = *(v22 + 1004);
    *a13 = v23;
    if (v23 <= 2)
    {
      *(a16 + 20) = v23;
    }
  }

  objc_autoreleasePoolPop(context);
  return v21;
}

uint64_t sub_10006FE0C(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 488) = 0;
  *(a1 + 492) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  MetalMgt::MetalMgt((a1 + 496));
  for (i = 0; i != 144; i += 24)
  {
    sub_100070050((a1 + i + 608));
  }

  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0x7FF8000000000000;
  *(a1 + 992) = 0u;
  CalibrateRgbIr::Init(a1);
  return a1;
}

void sub_10006FEE8(_Unwind_Exception *a1)
{
  sub_10006FFA8(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = sub_10006FF74(v3) - 3;
    v4 += 24;
  }

  while (v4);
  sub_10006FFFC((v1 + 62));
  _Unwind_Resume(a1);
}

uint64_t sub_10006FFFC(uint64_t a1)
{
  std::mutex::~mutex((a1 + 24));

  return a1;
}

MetalObjects *sub_100070050(MetalObjects *a1)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  MetalObjects::init(a1);
  return a1;
}

uint64_t sub_100070098(uint64_t a1)
{
  if (gDbgLvl)
  {
    CFRelease(*(a1 + 1008));
  }

  for (i = 0; i != -144; i -= 24)
  {
  }

  std::mutex::~mutex((a1 + 520));
  return a1;
}

void sub_100070190(_Unwind_Exception *a1)
{
  sub_10006FFA8(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = sub_10006FF74(v3) - 3;
    v4 += 24;
  }

  while (v4);
  sub_10006FFFC((v1 + 62));
  _Unwind_Resume(a1);
}

void sub_1000701F4()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(&std::string::~string, &gOutputDirName, &_mh_execute_header);
  __cxa_atexit(&std::string::~string, &gCurrFrameId, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *GrayScaleImage::save(int a1, CVPixelBufferRef pixelBuffer)
{
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PlaneCount)
  {
    CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    if (PixelFormatType == 2037741158)
    {
      CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
LABEL_8:
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferGetBaseAddress(pixelBuffer);

      return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  else
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
    if (PixelFormatType == 825306677 || PixelFormatType == 1278226742 || PixelFormatType == 825437747)
    {
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      goto LABEL_8;
    }
  }

  sub_10007043C(&std::cout, "Unsupported CVPixelBuffer pixel format: ", 40);
  v6 = std::ostream::operator<<();

  return sub_10007043C(v6, " (see CVPixelBufferPrivate.h). Please contact PortableBuffer support.\n", 70);
}

uint64_t sub_1000703B0(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10006EFA0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *sub_10007043C(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1000705A4(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

uint64_t sub_1000705A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10006EFA0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100070770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007078C()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(&std::string::~string, &PortableBuffer::m_outputDir, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t CalibrateRgbIr::Init(CalibrateRgbIr *this)
{
  if (gDbgLvl)
  {
    *(this + 126) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v2 = *(this + 1);
  v18 = *this;
  v19 = v2;
  v20 = *(this + 2);
  v21 = *(this + 6);
  v22 = *(this + 56);
  v23 = *(this + 9);
  v24 = *(this + 5);
  v25 = *(this + 12);
  v26 = *(this + 104);
  v3 = *(this + 120);
  v4 = *(this + 136);
  v5 = *(this + 152);
  v30 = *(this + 21);
  v29 = v5;
  v28 = v4;
  v27 = v3;
  v6 = *(this + 11);
  v7 = *(this + 12);
  v8 = *(this + 13);
  v34 = *(this + 28);
  v32 = v7;
  v33 = v8;
  v31 = v6;
  InitCamParams(&v18);
  v9 = *(this + 248);
  v18 = *(this + 232);
  v19 = v9;
  v20 = *(this + 264);
  v21 = *(this + 35);
  v22 = *(this + 18);
  v23 = *(this + 38);
  v24 = *(this + 312);
  v25 = *(this + 41);
  v10 = *(this + 22);
  v26 = *(this + 21);
  v11 = *(this + 23);
  v12 = *(this + 24);
  v30 = *(this + 50);
  v29 = v12;
  v28 = v11;
  v27 = v10;
  v13 = *(this + 408);
  v14 = *(this + 424);
  v15 = *(this + 440);
  v34 = *(this + 57);
  v32 = v14;
  v33 = v15;
  v31 = v13;
  result = InitCamParams(&v18);
  for (i = 0; i != 144; i += 24)
  {
    *(this + i + 624) = this + 496;
  }

  return result;
}

void sub_100070C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_100017658(va);
  sub_100017658(va1);
  _Unwind_Resume(a1);
}

uint64_t OneDimensionHorizontalFilterWithPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 1)
  {
    sub_100077A64();
  }

  v4 = *(a2 + 20);
  if ((v4 & 1) == 0)
  {
    sub_100077A90();
  }

  result = sub_100017508(a1, a2, a3);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v4 >> 1;
    do
    {
      if (v4 >= 2)
      {
        v11 = 0;
        v12 = *(a1 + 20);
        v13 = *(a2 + 16);
        v14 = *(a2 + 20);
        LODWORD(result) = v12 - 1;
        v15 = *(a3 + 16);
        v16 = ~(v4 >> 1) + v4;
        v17 = v4 >> 1;
        v18 = 4 * v12 * v9;
        v19 = v4 >> 1;
        do
        {
          if (v15 <= v9 || (v20 = *(a3 + 20), v11 >= v20))
          {
            sub_10007C618();
          }

          v21 = v12 + ~v11;
          if (v20 <= v21)
          {
            sub_10007C618();
          }

          if (v11 == v12)
          {
            sub_10007C618();
          }

          if (v12 <= v21)
          {
            sub_10007C618();
          }

          v22 = *(a3 + 8);
          v23 = v22 + 4 * v11;
          v24 = v20 * v9;
          v25 = v22 + 4 * v21;
          v26 = *(a1 + 8);
          *(v23 + 4 * v24) = 0;
          *(v25 + 4 * v24) = 0;
          if (v11 > (v10 - v14))
          {
            if (v13)
            {
              v27 = (v26 + v18 + 4 * result);
              v28 = (v26 + 4 * v12 * v9);
              v29 = v16;
              v30 = v17;
              v31 = v19;
              while (v14 > v30)
              {
                *(v23 + 4 * v24) = *(v23 + 4 * v24) + (*v28 * *(*(a2 + 8) + 4 * v30));
                if (v14 <= v29)
                {
                  sub_10007C618();
                }

                v32 = *v27--;
                *(v25 + 4 * v24) = *(v25 + 4 * v24) + (v32 * *(*(a2 + 8) + 4 * v29));
                ++v31;
                ++v30;
                ++v28;
                --v29;
                if (v31 >= v14)
                {
                  goto LABEL_18;
                }
              }
            }

            sub_10007C618();
          }

LABEL_18:
          ++v11;
          --v19;
          v18 += 4;
          result = (result - 1);
          LODWORD(v17) = v17 - 1;
          ++v16;
        }

        while (v11 != v10);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

void OneDimensionVerticalFilterWithPadding(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 20))
    {
      sub_10006B418(a2);
    }

    sub_100077AE8();
  }

  sub_100077ABC();
}

uint64_t CalibrateRgbIr::SampleWorldPointsOnCam(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v13 = 0;
  MetalObjects::createBuffer(a4, &v13, (a1 + 784), 0x6CuLL);
  v8 = v13;
  v12 = 0;
  MetalObjects::createBuffer(a4, &v12, a2, 0x6CuLL);
  v9 = v12;
  v10 = *(a4 + 8);
  *a3 = v10;
  MetalObjects::Algo_DistortRadialLiteInternal(a4, *(a1 + 752), *(a1 + 760), *(a1 + 768), *(a1 + 920), *(a1 + 912), *(a1 + 904), *(a1 + 896), *(a1 + 776), *(a1 + 928), v8, v9, *(a1 + 936), v10, 1);

  return 0;
}

void CalibrateRgbIr::CostFmi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 16);
  v33 = *a1;
  v34 = v8;
  v35 = *(a1 + 32);
  v9 = *(a1 + 48);
  *&v36[8] = *(a1 + 56);
  v10 = *(a1 + 72);
  *v36 = v9;
  *&v36[24] = v10;
  v37 = *(a1 + 80);
  v11 = *(a1 + 96);
  *&v38[8] = *(a1 + 104);
  v12 = *(a1 + 120);
  v13 = *(a1 + 136);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  *v38 = v11;
  *&v38[72] = v15;
  *&v38[56] = v14;
  *&v38[40] = v13;
  *&v38[24] = v12;
  v16 = *(a1 + 192);
  v39[0] = *(a1 + 176);
  v39[1] = v16;
  v39[2] = *(a1 + 208);
  v40 = *(a1 + 224);
  v37 = vaddq_f64(v37, vcvtq_f64_f32(*(a2 + 4)));
  *v38 = v11 + *(a2 + 12);
  sub_100018B48(v37.f64, &v38[8]);
  v22 = vcvt_f32_f64(v33);
  v17 = *&v34;
  v23 = v17;
  v24 = DWORD2(v34);
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(*v36), *&v36[16]);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), *v38);
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v38[16]), *&v38[32]);
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v38[48]), *&v38[64]);
  v18 = *v39;
  v29 = v18;
  v30 = *(v39 + 8);
  v31 = 0;
  v32 = 0;
  v21 = 0;
  CalibrateRgbIr::SampleWorldPointsOnCam(a1, &v22, &v21, a4);
  v19 = v21;
  [v19 width];
  [v19 height];
  v20 = [v19 buffer];
  [v20 contents];

  operator new[]();
}

void sub_1000714F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100017658(va);
  sub_100017658(va1);

  _Unwind_Resume(a1);
}

void CalibrateRgbIr::CalculateGrid(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    v5 = a3;
    v6 = *(a2 + 8);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7 * v7 * v5;
        do
        {
          if (v6)
          {
            v10 = 0;
            v11 = v9 + v7 * v8;
            do
            {
              if (*(a1 + 976) == 1)
              {
                break;
              }

              ++v10;
              ++v11;
            }

            while (v10 < v6);
          }

          ++v8;
          v7 = *(a2 + 8);
        }

        while (v8 < v6);
      }
    }

    while (v5++ != a4);
  }

  for (i = 0; i != 6; ++i)
  {
    v14 = [*(a1 + 968) objectAtIndexedSubscript:i];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t CalibrateRgbIr::PrepareGridCalculation(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4 && a5)
  {
    v105[0] = 0;
    MetalObjects::createTexture((a1 + 608), v105, *(a2 + 8), a5, a4);
    v10 = v105[0];
    v11 = v105[0];
    objc_storeStrong((a1 + 752), v10);
    v104 = 0;
    MetalObjects::createTexture((a1 + 608), &v104, (*(a2 + 8) + 4 * *(a2 + 20)), a5, a4);
    v12 = v104;
    v13 = v104;
    objc_storeStrong((a1 + 760), v12);
    v103 = 0;
    MetalObjects::createTexture((a1 + 608), &v103, (*(a2 + 8) + 4 * (2 * *(a2 + 20))), a5, a4);
    v14 = v103;
    v15 = v103;
    objc_storeStrong((a1 + 768), v14);
    if (*(a1 + 752) && *(a1 + 760) && *(a1 + 768))
    {
      *(a1 + 784) = vcvt_f32_f64(*(a1 + 232));
      v16 = *(a1 + 248);
      *(a1 + 792) = v16;
      v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 312)), *(a1 + 328));
      *(a1 + 800) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 280)), *(a1 + 296));
      *(a1 + 816) = v17;
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 344)), *(a1 + 360));
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 376)), *(a1 + 392));
      *(a1 + 796) = *(a1 + 256);
      *(a1 + 832) = v18;
      *(a1 + 848) = v19;
      v20 = *(a1 + 408);
      *(a1 + 864) = v20;
      *(a1 + 868) = *(a1 + 416);
      *(a1 + 884) = a4;
      *(a1 + 888) = a5;
      v102 = 0;
      v78 = v11;
      MetalObjects::createBuffer(a1 + 608, &v102, *(a1 + 272), 4 * *(a1 + 256));
      v21 = v102;
      v22 = v102;
      v101 = 0;
      MetalObjects::createBuffer(a1 + 608, &v101, *(a1 + 264), 4 * *(a1 + 256));
      v77 = v22;
      v23 = v101;
      v76 = v101;
      objc_storeStrong((a1 + 912), v21);
      objc_storeStrong((a1 + 920), v23);
      sub_10006B954(v99, 1, *(a1 + 420));
      v24 = *(a1 + 420);
      if (v24)
      {
        v25 = 0;
        if ((v24 + 1) > 2)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = 2;
        }

        v27 = (v26 - 1);
        v28 = vdupq_n_s64(v27 - 1);
        v29 = (v27 + 3) & 0x1FFFFFFFCLL;
        v30 = (v100 + 2);
        do
        {
          v31 = vdupq_n_s64(v25);
          v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_10008B050)));
          if (vuzp1_s16(v32, *v28.i8).u8[0])
          {
            *(v30 - 2) = (v25 + 1) + -0.5;
          }

          if (vuzp1_s16(v32, *&v28).i8[2])
          {
            *(v30 - 1) = (v25 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_10008D130)))).i32[1])
          {
            *v30 = (v25 + 3) + -0.5;
            v30[1] = (v25 + 4) + -0.5;
          }

          v25 += 4;
          v30 += 4;
        }

        while (v29 != v25);
      }

      sub_10006B954(v97, 1, *(a1 + 416));
      v33 = *(a1 + 416);
      if (v33)
      {
        v34 = 0;
        if ((v33 + 1) > 2)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = 2;
        }

        v36 = (v35 - 1);
        v37 = vdupq_n_s64(v36 - 1);
        v38 = (v36 + 3) & 0x1FFFFFFFCLL;
        v39 = (v98 + 2);
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_10008B050)));
          if (vuzp1_s16(v41, *v37.i8).u8[0])
          {
            *(v39 - 2) = (v34 + 1) + -0.5;
          }

          if (vuzp1_s16(v41, *&v37).i8[2])
          {
            *(v39 - 1) = (v34 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_10008D130)))).i32[1])
          {
            *v39 = (v34 + 3) + -0.5;
            v39[1] = (v34 + 4) + -0.5;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      v96 = 0;
      MetalObjects::createBuffer(a1 + 608, &v96, v100, 4 * *(a1 + 420));
      v42 = v96;
      v79 = v96;
      v95 = 0;
      MetalObjects::createBuffer(a1 + 608, &v95, v98, 4 * *(a1 + 416));
      v43 = v95;
      v44 = v95;
      objc_storeStrong((a1 + 904), v43);
      objc_storeStrong((a1 + 896), v42);
      *(a1 + 944) = v97;
      *(a1 + 952) = v99;
      v45 = (a1 + 616);
      v46 = 6;
      do
      {
        obj = 0;
        sub_100071FE0(v45 - 1, &obj, a5, a4);
        objc_storeStrong(v45, obj);
        v45 += 3;
        --v46;
      }

      while (v46);
      v47 = objc_alloc_init(NSMutableArray);
      v48 = *(a1 + 960);
      *(a1 + 960) = v47;

      v49 = objc_alloc_init(NSMutableArray);
      v50 = *(a1 + 968);
      *(a1 + 968) = v49;

      v51 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v52 = 6;
      do
      {
        v53 = *(a1 + 960);
        v54 = dispatch_queue_create("com.gmcRgbIr.CPU_GPU", v51);
        [v53 addObject:v54];

        v55 = *(a1 + 968);
        v56 = dispatch_group_create();
        [v55 addObject:v56];

        --v52;
      }

      while (v52);
      v93 = *(a1 + 256);
      v57 = *(a1 + 264);
      v92 = *v57;
      v91 = v57[1] - v92;
      v90 = 0;
      MetalObjects::createBuffer(a1 + 608, &v90, &v91, 0x1CuLL);
      v58 = v90;
      v59 = v90;
      v60 = *(a1 + 420);
      v87 = *(a1 + 416);
      v88 = v60;
      v89 = 2143289344;
      v61 = *(*(a1 + 952) + 8);
      v85 = *v61;
      v86 = v61[v60 - 1];
      v62 = *(*(a1 + 944) + 8);
      v83 = *v62;
      v84 = v62[v87 - 1];
      *&v82[1] = v83;
      v63 = v62[1] - v83;
      *&v82[3] = v85;
      v64 = v61[1];
      *v82 = v63;
      *&v82[2] = v64 - v85;
      v81 = 0;
      MetalObjects::createBuffer(a1 + 608, &v81, v82, 0x2CuLL);
      v65 = v81;
      v66 = v81;
      objc_storeStrong((a1 + 928), v58);
      objc_storeStrong((a1 + 936), v65);
      v80 = 0;
      MetalObjects::createTexture((a1 + 608), &v80, *(a3 + 8), *(a3 + 16), *(a3 + 20));
      objc_storeStrong((a1 + 776), v80);

      sub_100017658(v97);
      sub_100017658(v99);

      v67 = 1;
      v68 = v78;
    }

    else
    {
      v68 = v11;
      v72 = off_10041DD08;
      if (off_10041DD08 == &_os_log_default)
      {
        v73 = os_log_create("com.apple.isp", "general");
        v74 = off_10041DD08;
        off_10041DD08 = v73;

        v72 = off_10041DD08;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_100077B14(v72);
      }

      v67 = 0;
    }
  }

  else
  {
    v69 = off_10041DD08;
    if (off_10041DD08 == &_os_log_default)
    {
      v70 = os_log_create("com.apple.isp", "general");
      v71 = off_10041DD08;
      off_10041DD08 = v70;

      v69 = off_10041DD08;
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_100077B98();
    }

    return 0;
  }

  return v67;
}

void sub_100071F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100017658(&a29);
  sub_100017658(v35 - 160);

  _Unwind_Resume(a1);
}

void sub_100071FE0(void *a1, void *a2, int a3, int a4)
{
  std::mutex::lock((a1[2] + 24));
  v8 = [*a1[2] newBufferWithLength:4 * a4 * a3 options:*(a1[2] + 96)];
  std::mutex::unlock((a1[2] + 24));
  [*a1 setResourceOptions:*(a1[2] + 96)];
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setUsage:3];
  [*a1 setHeight:a3];
  [*a1 setWidth:a4];
  *a2 = [v8 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a4];
}

uint64_t CalibrateRgbIr::LocalValidationSelect(uint64_t a1, float *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  isMinimumOnBorder = GridArea::isMinimumOnBorder(a2, 1, &v11);
  v6 = GridArea::isMinimumOnBorder(a2, 0, &v10);
  if (!isMinimumOnBorder || (v7 = v6, result = 0, !v7))
  {
    if (isMinimumOnBorder)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (isMinimumOnBorder)
    {
      v9 = &v10;
    }

    else
    {
      v9 = &v11;
    }

    *a3 = *v9;
  }

  return result;
}

void sub_1000727D0(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CalibrateRgbIr::ScanCostGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  v11 = sqrtf(*(a2 + 20));
  if (CalibrateRgbIr::PrepareGridCalculation(a1, a2, a3, v11 & 0xFFFFFFF0, v11 * v11 / (v11 & 0xFFFFFFF0)))
  {
    v12 = *(a6 + 4);
    v24[1] = v12 + 6.0;
    v24[2] = 3.0;
    v23[0] = v12 + -6.0;
    v23[1] = v12 + 6.0;
    v23[2] = 3.0;
    v24[0] = -6.0;
    v22 = 1065353216;
    v21 = 0;
    v19[6] = -1061158912;
    *&v19[7] = v12 + 6.0;
    *&v19[8] = v12 + -6.0;
    *&v19[9] = v12 + 6.0;
    __asm { FMOV            V0.2S, #3.0 }

    v20 = _D0;
    GridArea::PrepareGrid(v19, v24, v23, &v21, 0);
  }

  NSLog(@"RGB-IR Calib: %s", "PrepareGridCalculation failed.");
  objc_autoreleasePoolPop(v10);
  return 4097;
}

void sub_100073258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  GridArea::~GridArea(&a22);
  GridArea::~GridArea(&a61);
  GridArea::~GridArea((v61 - 176));
  _Unwind_Resume(a1);
}

void sub_10007333C(__CFDictionary *a1, const void *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CalibrateRgbIr::CheckPceCalibValid(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_PracticalFocalLength);
    if (Value)
    {
      valuePtr = 0.0;
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      if (vabdd_f64(valuePtr, *(a3 + 8936)) < 0.00001)
      {
        v6 = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_ExtrinsicMatrix);
        if (v6)
        {
          CFDataGetBytePtr(v6);
          operator new[]();
        }
      }
    }
  }

  return 0;
}

void CalibrateRgbIr::GetCommonCamParams(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 8);
  *(a2 + 8) = *(a1 + 16);
  *(a2 + 16) = *(a1 + 24);
  v2 = *(a1 + 4258);
  *(a2 + 184) = *(a1 + 4256);
  *(a2 + 188) = v2;
  operator new[]();
}

void CalibrateRgbIr::GetTargetCam(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(a4 + 12);
  v13 = *(a4 + 14);
  *(a5 + 184) = a2;
  *(a5 + 188) = a3;
  v21 = xmmword_10008DA10;
  v20 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 4288);
  v15 = v14 * v12 / a3;
  *(a5 + 48) = v15;
  LOWORD(a10) = *(a1 + 8544);
  v16 = *(a1 + 4304) + *&a10 * -0.5 * v14 + vcvtd_n_f64_u32(v12, 1uLL) * v14;
  LOWORD(a12) = *(a1 + 8546);
  v17 = *(a1 + 4312) + *&a12 * -0.5 * v14;
  v25 = 0x3FF0000000000000;
  v18 = v16 + a3 * -0.5 * v15;
  v19 = v17 + vcvtd_n_f64_u32(v13, 1uLL) * v14 + a2 * -0.5 * v15;
  *(a5 + 8) = vcvtd_n_f64_u32(a2, 1uLL) * v15 - (v19 - v18 * 0.0);
  *(a5 + 16) = v18 + v19 * 0.0 + vcvtd_n_f64_u32(a3, 1uLL) * v15;
  *a5 = *(a1 + 4296);
  *(a5 + 24) = 256;
  operator new[]();
}

void CalibrateRgbIr::PrepareColorImage(int a1, __CVBuffer *a2)
{
  memset(&src, 0, sizeof(src));
  PrepareVImgBuffersFromCVPixBuffer(a2, &src);
  operator new[]();
}

void sub_100073E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100017658(&a14);
  sub_100017658(&a27);
  sub_100017658(&a31);
  _Unwind_Resume(a1);
}

void sub_100073F24(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  if (byte_10041DFC7 >= 0)
  {
    v15 = byte_10041DFC7;
  }

  else
  {
    v15 = *(&gCurrFrameId + 1);
  }

  v16 = &v24;
  sub_1000703B0(&v24, v15 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v24.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (byte_10041DFC7 >= 0)
    {
      v17 = &gCurrFrameId;
    }

    else
    {
      v17 = gCurrFrameId;
    }

    memmove(v16, v17, v15);
  }

  *(&v16->__r_.__value_.__l.__data_ + v15) = 95;
  v18 = *(a5 + 23);
  if (v18 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = *a5;
  }

  if (v18 >= 0)
  {
    v20 = *(a5 + 23);
  }

  else
  {
    v20 = *(a5 + 8);
  }

  v21 = std::string::append(&v24, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v26 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_100076F54(a1, a2, a3, a4, __p, a6, a7, a8);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_10007406C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1000740A0(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, float *a5)
{
  v8 = __chkstk_darwin();
  v10 = &v20 - v9;
  v13 = (v12 * v11);
  sub_100077738(v8, (&v20 - v9), v14, v13);
  if (v13)
  {
    v15 = v13;
    do
    {
      v16 = *a1++;
      v17 = v16 / (1.0 / a4);
      v18 = vcvtmd_u64_f64(v17);
      if (v18 >= a4)
      {
        v18 = a4 - 1;
      }

      LODWORD(v17) = *&v10[4 * v18];
      v19 = *&v17 / v15;
      *a5++ = v19;
      --v13;
    }

    while (v13);
  }
}

uint64_t CalibrateRgbIr::ApplyGaussian2DFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 20);
  if (v4 != *(a3 + 20) || (v7 = *(a2 + 16), v7 != *(a3 + 16)))
  {
    sub_100077C24();
  }

  v8 = a4;
  if (a4)
  {
    if (v4 < a4)
    {
      sub_100077C50();
    }
  }

  else
  {
    v8 = *(a2 + 20);
  }

  sub_1000777E0(v26, v7 + 4, v8 + 4);
  v9 = v7 + 2;
  if ((v7 + 2) >= 3)
  {
    v10 = 0;
    do
    {
      if (v28 <= v10 + 2 || v29 < 3 || (v11 = v10, *(a2 + 16) <= v10) || (v12 = *(a2 + 20)) == 0)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((v27 + 4 * v29 * (v10 + 2) + 8), (*(a2 + 8) + 4 * v12 * v10), 4 * v8);
      ++v10;
    }

    while (v11 + 3 != v9);
  }

  sub_10006B954(v22, v7 + 4, v8 + 4);
  v31 = 1019113512;
  v30[2] = xmmword_10008DAC0;
  v30[3] = unk_10008DAD0;
  v30[4] = xmmword_10008DAE0;
  v30[5] = unk_10008DAF0;
  v30[0] = xmmword_10008DAA0;
  v30[1] = unk_10008DAB0;
  v20[0] = off_1000A1CE0;
  v20[1] = v30;
  v20[2] = 0x500000005;
  v21 = 0;
  sub_100017508(v26, v20, v22);
  v13 = *(a3 + 20) * *(a3 + 16);
  if (v13 >= 1)
  {
    v14 = *(a3 + 8);
    v15 = v14 + 4 * v13;
    if (v15 <= v14 + 4)
    {
      v15 = v14 + 4;
    }

    bzero(v14, ((v15 + ~v14) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  if (v9 >= 3)
  {
    v16 = 0;
    v17 = 4 * v8;
    do
    {
      if (*(a3 + 16) <= v16 || (v18 = *(a3 + 20)) == 0 || v24 <= v16 + 2 || v25 <= 2)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((*(a3 + 8) + 4 * v18 * v16), (v23 + 4 * v25 * (v16 + 2) + 8), v17);
      ++v16;
    }

    while (v7 != v16);
  }

  sub_100017658(v20);
  sub_100017658(v22);
  sub_100017658(v26);
  return 0;
}

void sub_10007446C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_100017658(&a9);
  sub_100017658(&a13);
  sub_100017658(&a17);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::InitDebugDictionary(CFMutableDictionaryRef *this)
{
  CFDictionaryRemoveAllValues(this[126]);
  CFDictionarySetValue(this[126], @"choice", @"None");
  CFDictionarySetValue(this[126], @"resultValid", kCFBooleanFalse);
  v2 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d", 1, 12, 0);
  CFDictionarySetValue(this[126], @"AlgoVersion", v2);
  CFRelease(v2);
  return 0;
}

void CalibrateRgbIr::ScaleImage(uint64_t a1, void *a2, vImagePixelCount a3, vImagePixelCount a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  src.data = a2;
  src.height = a4;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v8 = 4 * a5;
  if ((a5 & 0xF) != 0)
  {
    v8 = ((4 * a5) & 0xFFFFFFFFFFFFFFC0) + 64;
  }

  *a8 = v8 >> 2;
  operator new[]();
}

uint64_t CalibrateRgbIr::MedianFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = (a3 + 63) & 0xFFFFFFFFFFFFFFC0;
  sub_100077930(v35, *(a2 + 16), (a3 + 63) & 0xFFFFFFC0);
  sub_1000176C8(a5, *(a2 + 16), *(a2 + 20));
  if (*(a2 + 16))
  {
    v11 = 0;
    do
    {
      LODWORD(v12) = *(a2 + 20);
      if (v12)
      {
        v13 = 0;
        do
        {
          if (*(a2 + 16) <= v11 || ((v14 = *(*(a2 + 8) + 4 * v11 * v12 + 4 * v13), v14 <= 1.0) ? (v15 = v14 * 255.0) : (v15 = 255.0), v37 <= v11 || v13 >= v38))
          {
            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          *(v36 + v11 * v38 + v13++) = llroundf(v15);
          v12 = *(a2 + 20);
        }

        while (v13 < v12);
      }

      if (v37 <= v11 || v38 <= a3)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      bzero(v36 + a3 + v38 * v11++, v10 - a3);
    }

    while (v11 < *(a2 + 16));
  }

  sub_10006EE44(v33, "irSamplesBeforeMedianU8.pb");
  sub_10006EE44(__p, "IR samples before Median Filter");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v30 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v30, v36, v37, v38, v10, 0);
  v16 = v30;
  v29 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v29, 0, v37, v38, v10, 1);
  v17 = v29;
  MetalObjects::medianFilter(a1 + 608, v16, v17, a4, 1);
  v18 = [v17 buffer];
  v19 = [v18 contents];

  sub_10006EE44(v33, "irSamplesAfterMedianU8.pb");
  sub_10006EE44(__p, "IR samples after Median Filter (uint8)");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v10 - *(a2 + 20);
    v23 = *(a5 + 8);
    v24 = *(a5 + 20);
    do
    {
      for (i = v24; i; --i)
      {
        v26 = *v19++;
        v27 = v26 / 255.0;
        *v23++ = v27;
      }

      ++v21;
      v19 += v22;
    }

    while (v21 != v20);
  }

  sub_1000779F4(v35);
  return 0;
}

void sub_100074954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1000779F4(&a20);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::PrepareIrImage(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, size_t *a4, size_t *a5)
{
  *a4 = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *a5 = Height;
  if (gDbgLvl)
  {
    v10 = *(a1 + 1008);
    v15.width = *a4;
    v15.height = Height;
    sub_100074FAC(v10, @"IrResolution", &v15);
  }

  sub_10006EE44(&v15, "OrigIrFromCVPixB.pb");
  sub_10006EE44(&__p, "Original IR frame from CVPixelBuffer");
  GrayScaleImage::save(&v15, pixelBuffer);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(*&v15.width);
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226742)
  {
    CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      CVPixelBufferGetBaseAddress(pixelBuffer);
      if (*a5 == 1315)
      {
        *a5 = 1312;
      }

      operator new[]();
    }

    return 4098;
  }

  else
  {
    NSLog(@"RGB-IR Calib: %s", "IR buffer is not in a supported format.");
    return 12290;
  }
}

void sub_100074EA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100017658(&a13);
  sub_100017658(&a26);
  sub_100017658(&a33);
  if (v38)
  {
    operator delete[]();
  }

  operator delete[]();
}

void sub_100074FAC(__CFDictionary *a1, const void *a2, CGSize *a3)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*a3);
  CFDictionarySetValue(a1, a2, DictionaryRepresentation);

  CFRelease(DictionaryRepresentation);
}

uint64_t CalibrateRgbIr::PrepareDepthImage(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v5 = *(a1 + 464);
  if (v5 == 1 && PixelFormatType != 825306677)
  {
    v7 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned11_5 if it is normalized dx";
LABEL_9:
    NSLog(@"RGB-IR Calib: %s", v7);
    return 12291;
  }

  if ((v5 & 1) == 0 && PixelFormatType != 825437747)
  {
    v7 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned13_3 if they are absolute values (not normalized dx)";
    goto LABEL_9;
  }

  if (gDbgLvl)
  {
    if (*(a1 + 464))
    {
      v9 = &kCFBooleanTrue;
    }

    else
    {
      v9 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(*(a1 + 1008), @"isNormalizedDx", *v9);
  }

  CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    operator new[]();
  }

  return 4099;
}

void sub_100075288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CalibrateRgbIr::RetrieveRoiInfo(uint64_t a1, CFArrayRef theArray, unint64_t a3, unint64_t a4, CGRect *a5)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, kFigCaptureStreamMetadata_Rect);
      if (Value)
      {
        if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
        {
          x = rect.origin.x;
          y = rect.origin.y;
          a5->origin.x = rect.origin.x;
          a5->origin.y = y;
          width = rect.size.width;
          height = rect.size.height;
          a5->size.width = rect.size.width;
          a5->size.height = height;
          NSLog(@"RGB-IR Calib: ROI is: origin (x=%f, y=%f), size (h=%f, w=%f)", *&x, *&y, *&height, *&width);
          if (gDbgLvl)
          {
            v16 = *(a1 + 1008);
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a5);
            CFDictionarySetValue(v16, @"faceRoi", DictionaryRepresentation);
            CFRelease(DictionaryRepresentation);
          }

          result = 0;
          v20 = a5->size.width;
          v19 = a5->size.height;
          v21 = round(a5->origin.x * a4);
          a5->origin.x = round((1.0 - a5->origin.y - v19) * a3);
          a5->origin.y = v21;
          a5->size.width = round(v19 * a3);
          a5->size.height = round(v20 * a4);
          return result;
        }

        v22 = "Could not retrieve ROI information from detected faces array.";
      }

      else
      {
        v22 = "Could not find ROI element in detected faces array.";
      }
    }

    else
    {
      v22 = "Could not retrieve any element from detected faces array.";
    }

    NSLog(@"RGB-IR Calib: %s", v22);
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Could not retrieve face ROI information. Check detectedFaces argument.");
    }

    return 8193;
  }

  else
  {
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"No face ROI specified.");
    }

    NSLog(@"RGB-IR Calib: %s", "No detected faces provided. Calibration will not be performed.");
    return 16386;
  }
}

uint64_t CalibrateRgbIr::CalculateFinalResult(float64x2_t *a1, uint64_t a2, float32x2_t a3, float32_t a4, float a5)
{
  v28 = a1[5];
  v6 = a1[6].f64[0];
  a3.f32[1] = a4;
  v28 = vaddq_f64(v28, vcvtq_f64_f32(a3));
  v29 = v6 + a5;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v7 = v26;
  sub_100018B48(v28.f64, v26);
  v8 = 0;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_10008D4C0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  memset(v18, 0, sizeof(v18));
  do
  {
    v9 = 0;
    v10 = &v20;
    do
    {
      v11 = 0;
      v12 = 0.0;
      v13 = v10;
      do
      {
        v14 = *v13;
        v13 += 3;
        v12 = v12 + *(v7 + v11) * v14;
        v11 += 8;
      }

      while (v11 != 24);
      *(v18 + 3 * v8 + v9++) = v12;
      ++v10;
    }

    while (v9 != 3);
    ++v8;
    v7 = (v7 + 24);
  }

  while (v8 != 3);
  v16 = 0uLL;
  v17 = 0;
  sub_10001966C(v18, &v16);
  *a2 = v16;
  *(a2 + 16) = v17;
  return 0;
}

uint64_t CalibrateRgbIr::Calibrate(uint64_t a1, int a2, const __CFDictionary *a3, int a4, int a5, int a6, uint64_t a7, const __CFBoolean *a8, double *a9, CFArrayRef theArray, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a7;
  *(a1 + 976) = 0;
  NSLog(@"RGB-IR Calib: Starting Mutual Information v%d.%d.%d. NormalizedDX: %d, perception corrected: %@, shift offset: %d", 1, 12, 0, a7, a8, a11);
  v16 = sub_10006EE44(&valuePtr, "PCECalib.bin");
  SaveToFileWithPrefix(v16);
  if (v42 < 0)
  {
    operator delete(valuePtr);
  }

  if (gDbgLvl)
  {
    CalibrateRgbIr::InitDebugDictionary(a1);
    v39 = [NSNumber numberWithDouble:a9[1069]];
    v43 = v39;
    v44 = [NSNumber numberWithDouble:a9[1070]];
    v37 = v44;
    v36 = [NSNumber numberWithDouble:a9[1071]];
    v45 = v36;
    v17 = [NSNumber numberWithDouble:a9[1072]];
    v46 = v17;
    v18 = [NSNumber numberWithDouble:a9[1073]];
    v47 = v18;
    v19 = [NSNumber numberWithDouble:a9[1074]];
    v48 = v19;
    v20 = [NSNumber numberWithDouble:a9[1075]];
    v49 = v20;
    v21 = [NSNumber numberWithDouble:a9[1076]];
    v50 = v21;
    v22 = [NSNumber numberWithDouble:a9[1077]];
    v51 = v22;
    v23 = [NSArray arrayWithObjects:&v43 count:9];

    CFDictionarySetValue(*(a1 + 1008), @"colorRotationMatrix", v23);
  }

  Value = CFBooleanGetValue(a8);
  if (Value)
  {
    v25 = a1;
    *(a1 + 464) = v15;
    if (v15)
    {
      v26 = a9[1658];
      v27 = v26 > 0.0;
      v28 = 10.0;
      if (v26 > 0.0)
      {
        v28 = 0.0;
      }

      v29 = a9[1116] / 0.8;
      v30 = v26 * a9[1117];
      v31 = 1.0 / a9[1084];
      v32 = ceil(v30 / v29 * (dbl_10008DA80[v27] - v31));
      v33 = -v29 / v30;
      *(a1 + 472) = v33 * 0.03125;
      *(a1 + 480) = v31 - v33 * (v28 + v32);
    }

    if (*(a1 + 492) & 1) != 0 || (Value = CalibrateRgbIr::CheckPceCalibValid(Value, a3, a9), v25 = a1, (Value))
    {
      CalibrateRgbIr::GetCamParams(Value, a9, v25 + 232);
    }

    NSLog(@"RGB-IR Calib: %s", "PCECalib and IR metadata do not match. PCECalib is probably not valid anymore");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Calibration data not consistent.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 16385;
  }

  else
  {
    NSLog(@"RGB-IR Calib: %s", "depthPerspectiveCorrected is false. Currently, only perspective corrected depth is supported");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Depth perspective not corrected.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 12289;
  }
}

void sub_100076230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_100017658(&a51);
  if (*(v53 - 256))
  {
    operator delete[]();
  }

  sub_100017658(v53 - 248);
  _Unwind_Resume(a1);
}

void CalibrateRgbIr::SaveDebugPlist(id *this)
{
  if ((~gDbgLvl & 0x11) == 0)
  {
    v1 = this[126];
    if (byte_10041DFAF >= 0)
    {
      v2 = byte_10041DFAF;
    }

    else
    {
      v2 = qword_10041DFA0;
    }

    v3 = &v16;
    sub_1000703B0(&v16, v2 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v3 = v16.__r_.__value_.__r.__words[0];
    }

    if (v2)
    {
      if (byte_10041DFAF >= 0)
      {
        v4 = &gOutputDirName;
      }

      else
      {
        v4 = gOutputDirName;
      }

      memmove(v3, v4, v2);
    }

    *(&v3->__r_.__value_.__l.__data_ + v2) = 47;
    if (byte_10041DFC7 >= 0)
    {
      v5 = &gCurrFrameId;
    }

    else
    {
      v5 = gCurrFrameId;
    }

    if (byte_10041DFC7 >= 0)
    {
      v6 = byte_10041DFC7;
    }

    else
    {
      v6 = *(&gCurrFrameId + 1);
    }

    v7 = std::string::append(&v16, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v17, "_Debug.plist", 0xCuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v19 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    CreateDirForFile(__p);
    v11 = SHIBYTE(v19);
    v12 = __p[0];
    v13 = +[NSString defaultCStringEncoding];
    if (v11 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = v12;
    }

    v15 = [NSString stringWithCString:v14 encoding:v13];
    [v1 writeToFile:v15 atomically:1];

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1000765A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v29;

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::ReleaseLocalResources(CalibrateRgbIr *this)
{
  v2 = *(this + 248);
  v17 = *(this + 232);
  v18 = v2;
  v20 = *(this + 35);
  v19 = *(this + 264);
  v21 = *(this + 18);
  v22 = *(this + 38);
  v24 = *(this + 41);
  v23 = *(this + 312);
  v3 = *(this + 22);
  v25 = *(this + 21);
  v4 = *(this + 23);
  v5 = *(this + 24);
  v29 = *(this + 50);
  v28 = v5;
  v27 = v4;
  v26 = v3;
  v6 = *(this + 408);
  v7 = *(this + 424);
  v8 = *(this + 440);
  v33 = *(this + 57);
  v31 = v7;
  v32 = v8;
  v30 = v6;
  ReleaseCamParams(&v17);
  v9 = *(this + 1);
  v17 = *this;
  v18 = v9;
  v19 = *(this + 2);
  v20 = *(this + 6);
  v21 = *(this + 56);
  v22 = *(this + 9);
  v23 = *(this + 5);
  v24 = *(this + 12);
  v25 = *(this + 104);
  v10 = *(this + 120);
  v11 = *(this + 136);
  v12 = *(this + 152);
  v29 = *(this + 21);
  v28 = v12;
  v27 = v11;
  v26 = v10;
  v13 = *(this + 11);
  v14 = *(this + 12);
  v15 = *(this + 13);
  v33 = *(this + 28);
  v31 = v14;
  v32 = v15;
  v30 = v13;
  return ReleaseCamParams(&v17);
}

void sub_10007674C(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CalibrateRgbIr::PrepareXyzWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    if (a7)
    {
      v8 = *(a2 + 188) * *(a2 + 184);
      sub_10006B954(v44, 2, v8);
      if (v46 && v47)
      {
        if (v46 != 1)
        {
          v9 = *(a2 + 184);
          if (v9)
          {
            v10 = 0;
            v11 = __src;
            v12 = (__src + 4 * v47);
            v13 = *(a2 + 48);
            v14 = *(a2 + 8) / v13;
            v15 = *(a2 + 188);
            v16 = *(a2 + 16) / v13;
            do
            {
              if (v15)
              {
                v17 = 0;
                do
                {
                  v18 = v13 * (v10 + 0.5 - v14);
                  *v11++ = v18;
                  v19 = v13 * (v17 + 0.5 - v16);
                  *v12++ = v19;
                  ++v17;
                }

                while (v15 != v17);
              }

              ++v10;
            }

            while (v10 != v9);
          }

          sub_10006B954(&v40, 2, v8);
          v40 = &off_1000ACA78;
          memcpy(__dst, __src, 4 * v47 * v46);
          sub_10006B954(v36, *(a2 + 188), *(a2 + 184));
          sub_10006B954(v32, *(a2 + 188), *(a2 + 184));
          if (v42 && v43)
          {
            if (v42 != 1)
            {
              v20 = v39;
              if (v39)
              {
                v21 = 0;
                v22 = v38;
                v23 = __dst;
                v24 = __dst + 4 * v43;
                v25 = *(a2 + 48);
                v26 = v34;
                do
                {
                  if (v22)
                  {
                    v27 = 0;
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    v31 = v35;
                    do
                    {
                      *(v37 + 4 * v21 + 4 * v28) = v23[v30] / v25;
                      if (v30 >= v26 || v21 >= v31)
                      {
                        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
                      }

                      *(v33 + 4 * v21 + 4 * v29) = *&v24[4 * v30++] / v25;
                      v29 += v31;
                      v28 += v20;
                      v27 -= 4;
                    }

                    while (v22 != v30);
                    v24 -= v27;
                    v23 = (v23 - v27);
                  }

                  ++v21;
                }

                while (v21 != v20);
              }

              operator new[]();
            }

            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    sub_100077CFC();
  }

  sub_100077D28();
}

void sub_100076E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_100017658(va);
  sub_100017658(va1);
  sub_100017658(va2);
  _Unwind_Resume(a1);
}

BOOL sub_100076EAC(_DWORD *a1, double *a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *&a3;
  result = 0;
  if (*a2 <= v3 && *a2 + a2[2] > v3)
  {
    LODWORD(v3) = a1[1];
    v4 = *&v3;
    v5 = a2[1];
    if (v5 <= v4 && v5 + a2[3] > v4)
    {
      return 1;
    }
  }

  return result;
}

void sub_100076F10(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, int a5)
{
  *(a1 + 24) = *a2;
  v5 = *(a3 + 8);
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 44) = v5;
  GridArea::PrepareGrid(a1, a2, a3, a4, a5);
}

void sub_100076F54(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  if ((gDbgLvl & 4) != 0)
  {
    if (a8)
    {
      v14 = a8;
    }

    else
    {
      v14 = a3 * a2;
    }

    if (byte_10041DFAF >= 0)
    {
      v15 = byte_10041DFAF;
    }

    else
    {
      v15 = qword_10041DFA0;
    }

    v16 = &v50;
    sub_1000703B0(&v50, v15 + 1);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v50.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (byte_10041DFAF >= 0)
      {
        v17 = &gOutputDirName;
      }

      else
      {
        v17 = gOutputDirName;
      }

      memmove(v16, v17, v15);
    }

    *(&v16->__r_.__value_.__l.__data_ + v15) = 47;
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = *a5;
    }

    if (v18 >= 0)
    {
      v20 = *(a5 + 23);
    }

    else
    {
      v20 = *(a5 + 8);
    }

    v21 = std::string::append(&v50, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v48 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (CreateDirForFile(__p))
    {
      goto LABEL_59;
    }

    v53 = 0;
    *(v50.__r_.__value_.__r.__words + *(v50.__r_.__value_.__r.__words[0] - 24)) = v23;
    v24 = (&v50 + *(v50.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v24, &v50.__r_.__value_.__r.__words[1]);
    v24[1].__vftable = 0;
    v24[1].__fmtflags_ = -1;
    std::filebuf::basic_filebuf();
    if (a6)
    {
      std::ofstream::open();
      if (!v51)
      {
        goto LABEL_58;
      }

      if (a2 && v14)
      {
        LODWORD(v25) = 0;
        v26 = 0;
        v27 = (a4 >> 2) - a3;
        do
        {
          if (a3)
          {
            v28 = 1;
            do
            {
              LODWORD(v49.__locale_) = *a1;
              std::ostream::write();
              ++a1;
              v29 = v28 + 1;
              if (v28 >= a3)
              {
                break;
              }

              v30 = v26 + v28++;
            }

            while (v30 < v14);
            v26 = v26 + v29 - 1;
          }

          v25 = (v25 + 1);
          a1 += v27;
        }

        while (v25 < a2 && v26 < v14);
      }
    }

    else
    {
      std::ofstream::open();
      if (!v51)
      {
        goto LABEL_58;
      }

      *(&std::cout + std::cout.__vftable[-2].~basic_ostream_0 + 16) = 10;
      if (a2)
      {
        v32 = 0;
        LODWORD(v33) = 0;
        v34 = 0;
        v45 = a4 >> 2;
        v35 = a3 - 1;
        while (1)
        {
          v43 = v33;
          v44 = v32;
          if (v35)
          {
            break;
          }

LABEL_53:
          v41 = std::ostream::operator<<();
          std::ios_base::getloc((v41 + *(*v41 - 24)));
          v42 = std::locale::use_facet(&v49, &std::ctype<char>::id);
          (v42->__vftable[2].~facet_0)(v42, 10);
          std::locale::~locale(&v49);
          std::ostream::put();
          std::ostream::flush();
          ++v34;
          v33 = (v43 + 1);
          v32 = v44 + v45;
          if (v33 >= a2)
          {
            goto LABEL_54;
          }
        }

        if (v14 <= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v14;
        }

        v37 = 1;
        while (v36 != v34)
        {
          v38 = std::ostream::operator<<();
          if (a7)
          {
            std::ios_base::getloc((v38 + *(*v38 - 24)));
            v39 = std::locale::use_facet(&v49, &std::ctype<char>::id);
            (v39->__vftable[2].~facet_0)(v39, 10);
            std::locale::~locale(&v49);
            std::ostream::put();
            std::ostream::flush();
          }

          else
          {
            sub_10007043C(v38, ",", 1);
          }

          ++v34;
          ++v32;
          if (v35 <= v37++)
          {
            goto LABEL_53;
          }
        }

        if (std::filebuf::close())
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

LABEL_54:
    if (!std::filebuf::close())
    {
LABEL_57:
      std::ios_base::clear((&v50 + *(v50.__r_.__value_.__r.__words[0] - 24)), *(&v50 + *(v50.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
    }

LABEL_58:
    std::filebuf::~filebuf();
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_59:
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1000775A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::ios::~ios();
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100077638(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void sub_100077700(uint64_t a1)
{
  sub_100017658(a1);

  operator delete();
}

void sub_100077738(float *a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v6 = a2;
  if (a3)
  {
    bzero(a2, 4 * a3);
  }

  if (a4)
  {
    v8 = a4;
    do
    {
      v9 = *a1++;
      v10 = vcvtmd_u64_f64(v9 / (1.0 / (a3 - 1)));
      if (v10 >= a3)
      {
        v10 = a3 - 1;
      }

      ++v6[v10];
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += *v6;
      *v6++ = v11;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1000777E0(uint64_t result, int a2, int a3)
{
  *result = off_1000A1CE0;
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

uint64_t sub_100077930(uint64_t result, int a2, int a3)
{
  *result = off_1000ACA48;
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

void sub_1000779BC(uint64_t a1)
{
  sub_1000779F4(a1);

  operator delete();
}

uint64_t sub_1000779F4(uint64_t result)
{
  *result = off_1000ACA48;
  if (*(result + 8) && *(result + 24) == 1)
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  return result;
}

void sub_100077B14(os_log_t log)
{
  v1 = 136315138;
  v2 = "PrepareGridCalculation";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Error creating textures => Aborting Rgb-Ir run\n", &v1, 0xCu);
}

void sub_100077B98()
{
  v3[0] = 136315650;
  sub_10002777C();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "RGB-IR: %s: Invalid input: rows: %u, cols: %u.\n", v3, 0x18u);
}

void sub_100077C7C()
{
  v1[0] = 136315394;
  sub_10002777C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 numOfGoodPts is %d < 256 => Aborting Rgb-Ir run\n", v1, 0x12u);
}

uint64_t SaveToFile(uint64_t result)
{
  if ((gDbgLvl & 4) != 0)
  {
    v1 = result;
    v22 = 0;
    *(&v20[-1] + *(v19 - 3)) = v2;
    v3 = (&v20[-1] + *(v19 - 3));
    std::ios_base::init(v3, v20);
    v3[1].__vftable = 0;
    v3[1].__fmtflags_ = -1;
    std::filebuf::basic_filebuf();
    if (byte_10041DFAF >= 0)
    {
      v4 = byte_10041DFAF;
    }

    else
    {
      v4 = qword_10041DFA0;
    }

    v5 = &v16;
    sub_1000703B0(&v16, v4 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v16.__r_.__value_.__r.__words[0];
    }

    if (v4)
    {
      if (byte_10041DFAF >= 0)
      {
        v6 = &gOutputDirName;
      }

      else
      {
        v6 = gOutputDirName;
      }

      memmove(v5, v6, v4);
    }

    *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
    v7 = *(v1 + 23);
    if (v7 >= 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = *v1;
    }

    if (v7 >= 0)
    {
      v9 = *(v1 + 23);
    }

    else
    {
      v9 = *(v1 + 8);
    }

    v10 = std::string::append(&v16, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v18 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (!CreateDirForFile(__p))
    {
      std::ofstream::open();
      if (v20[15])
      {
        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v20[-1] + *(v19 - 3)), *(&v20[3] + *(v19 - 3)) | 4);
        }
      }

      else
      {
        v12 = sub_10007043C(&std::cout, "Could not open file [", 21);
        if (v18 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (v18 >= 0)
        {
          v14 = HIBYTE(v18);
        }

        else
        {
          v14 = __p[1];
        }

        v15 = sub_10007043C(v12, v13, v14);
        sub_10007043C(v15, "] for writing.\n", 15);
      }
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    std::filebuf::~filebuf();
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_10007810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000782C8(&a23);
  _Unwind_Resume(a1);
}

uint64_t CreateDirForFile(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v1, +[NSString defaultCStringEncoding]);
  v3 = +[NSFileManager defaultManager];
  v9 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v9])
  {
    goto LABEL_11;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:&stru_1000AF468];

  if (v5)
  {
LABEL_10:
    if (![v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
LABEL_13:
    v6 = v2;
    goto LABEL_14;
  }

  v6 = [v2 stringByDeletingLastPathComponent];

  if (![v3 fileExistsAtPath:v6 isDirectory:&v9] || (v9 & 1) == 0)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

void sub_10007829C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *sub_1000782C8(void *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void SaveToFileWithPrefix(uint64_t a1)
{
  if (byte_10041DFC7 >= 0)
  {
    v2 = byte_10041DFC7;
  }

  else
  {
    v2 = *(&gCurrFrameId + 1);
  }

  v3 = &v10;
  sub_1000703B0(&v10, v2 + 1);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if (byte_10041DFC7 >= 0)
    {
      v4 = &gCurrFrameId;
    }

    else
    {
      v4 = gCurrFrameId;
    }

    memmove(v3, v4, v2);
  }

  *(&v3->__r_.__value_.__l.__data_ + v2) = 95;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  SaveToFile(__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1000784A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t InitCamParams(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t ReleaseCamParams(uint64_t a1)
{
  if (*(a1 + 40))
  {
    operator delete();
  }

  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t PrepareVImgBuffersFromCVPixBuffer(__CVBuffer *a1, vImage_Buffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    return 0xFFFFFFFFLL;
  }

  a2->data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  a2->height = Height;
  a2->width = Width;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  result = 0;
  a2->rowBytes = BytesPerRowOfPlane;
  return result;
}

BOOL H16ISP::savePeridotCalib(H16ISP *this, H16ISPDevice *a2, H16ISPServicesRemote *a3, uint64_t a4, const void *a5)
{
  v6 = a3;
  v9 = off_10041DD70;
  if (off_10041DD70 == &_os_log_default)
  {
    v10 = os_log_create("com.apple.isp", "general");
    v11 = off_10041DD70;
    off_10041DD70 = v10;

    v9 = off_10041DD70;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "savePeridotCalib";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - saving calibration\n", &v26, 0xCu);
  }

  if (!a4)
  {
    return 0;
  }

  v12 = off_10041DD70;
  if (off_10041DD70 == &_os_log_default)
  {
    v13 = os_log_create("com.apple.isp", "general");
    v14 = off_10041DD70;
    off_10041DD70 = v13;

    v12 = off_10041DD70;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "savePeridotCalib";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s - updating firmware\n", &v26, 0xCu);
  }

  if (sub_100078A64(this, v6))
  {
    v15 = off_10041DD70;
    if (a2)
    {
      if (off_10041DD70 == &_os_log_default)
      {
        v16 = os_log_create("com.apple.isp", "general");
        v17 = off_10041DD70;
        off_10041DD70 = v16;

        v15 = off_10041DD70;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "savePeridotCalib";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s - sending to daemon to store\n", &v26, 0xCu);
      }

      BinaryRepresentation = PDPeridotCalibCreateBinaryRepresentation();
      if (BinaryRepresentation)
      {
        v19 = BinaryRepresentation;
        sub_10002C370();
        CFRelease(v19);
      }
    }

    else
    {
      if (off_10041DD70 == &_os_log_default)
      {
        v24 = os_log_create("com.apple.isp", "general");
        v25 = off_10041DD70;
        off_10041DD70 = v24;

        v15 = off_10041DD70;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "savePeridotCalib";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s - storing locally\n", &v26, 0xCu);
      }

      sub_10001CD84(a4);
    }

    return 1;
  }

  v20 = off_10041DD70;
  if (off_10041DD70 == &_os_log_default)
  {
    v21 = os_log_create("com.apple.isp", "general");
    v22 = off_10041DD70;
    off_10041DD70 = v21;

    v20 = off_10041DD70;
  }

  result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v26 = 136315138;
    v27 = "savePeridotCalib";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s - failed to update calibration in firmware\n", &v26, 0xCu);
    return 0;
  }

  return result;
}

BOOL sub_100078A64(uint64_t a1, int a2)
{
  sub_100017338();
  IspFirmwareCalibWithOptions = PDPeridotCalibCreateIspFirmwareCalibWithOptions();
  if (IspFirmwareCalibWithOptions)
  {
    v5 = IspFirmwareCalibWithOptions;
    if (CFDataGetLength(IspFirmwareCalibWithOptions) == 536)
    {
      bzero(buf, 0x228uLL);
      LOWORD(v24) = 14087;
      HIDWORD(v24) = a2;
      v29.location = 0;
      v29.length = 536;
      CFDataGetBytes(v5, v29, &Length + 2);
      v6 = sub_10000BE84(a1, buf, 0x228u, 0, 0xFFFFFFFF);
      v7 = off_10041DD70;
      if (off_10041DD70 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "general");
        v9 = off_10041DD70;
        off_10041DD70 = v8;

        v7 = off_10041DD70;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "savePeridotCalibToFW";
        v21 = 1024;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: %d\n", &v19, 0x12u);
      }

      CFRelease(v5);
      return v6 == 0;
    }

    v15 = off_10041DD70;
    if (off_10041DD70 == &_os_log_default)
    {
      v16 = os_log_create("com.apple.isp", "general");
      v17 = off_10041DD70;
      off_10041DD70 = v16;

      v15 = off_10041DD70;
    }

    v18 = v15;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "savePeridotCalibToFW";
      v25 = 2048;
      Length = CFDataGetLength(v5);
      v27 = 2048;
      v28 = 536;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: unexpected size: %ld != %lu\n", buf, 0x20u);
    }

    CFRelease(v5);
    return 0;
  }

  v11 = off_10041DD70;
  if (off_10041DD70 == &_os_log_default)
  {
    v12 = os_log_create("com.apple.isp", "general");
    v13 = off_10041DD70;
    off_10041DD70 = v12;

    v11 = off_10041DD70;
  }

  v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    *buf = 136315138;
    v24 = "savePeridotCalibToFW";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: bad input\n", buf, 0xCu);
    return 0;
  }

  return result;
}

void H16ISPRgbJRunner::init(H16ISPRgbJRunner *this, void *a2, H16ISPDevice *a3, char a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 7) = -1;
  *(this + 32) = a4;
  *(this + 33) = 0;
  sub_10000A4DC(a3, 0);
  operator new();
}

void H16ISPRgbJRunner::H16ISPRgbJRunner(H16ISPRgbJRunner *this, void *a2, H16ISPDevice *a3, const double *a4, const double *a5)
{
  *(this + 5) = 0;
  v10 = +[NSFileManager defaultManager];
  v11 = [NSString stringWithCString:"/var/mobile/Library/ISP/JasperL/JasperColorInterSessionData.plist" encoding:4];
  [v10 removeItemAtPath:v11 error:0];

  v12 = +[NSFileManager defaultManager];
  v13 = [NSString stringWithCString:"/var/mobile/Library/ISP/JasperL/rgbj-wide.plist" encoding:4];
  [v12 removeItemAtPath:v13 error:0];

  v14 = sub_10000A4DC(a3, 0);
  PDPeridotCalibGetOperationalWideToPeridotTransform();
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17.n128_u32[3] = 0;
  v18.n128_u32[3] = 0;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v21 = 0uLL;
  v22 = 0;
  sub_10003CD98(v23, &v21, v15, v16, v17, v18);
  v19 = *a4;
  v20 = *(a4 + 2);
  if (*a5 != 0.0 || a5[1] != 0.0 || a5[2] != 0.0)
  {
    v21 = *a5;
    v22 = *(a5 + 2);
  }

  sub_100018B48(&v19, v23);
  sub_10003CD30(v23);
  PDPeridotCalibSetOperationalWideToPeridotTransform();
  sub_10001CD84(v14);
  H16ISPRgbJRunner::init(this, a2, a3, 0);
}

void H16ISPRgbJRunner::~H16ISPRgbJRunner(H16ISPRgbJRunner *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    dispatch_sync(v2, &stru_1000ACAA0);
    v3 = *(this + 5);
    *(this + 5) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    sub_10007AAF0(v4);
    operator delete();
  }
}

uint64_t H16ISPRgbJRunner::setVerbose(uint64_t this, char a2)
{
  *(this + 24) = a2;
  *(*(this + 16) + 292) = a2;
  return this;
}

void *H16ISPRgbJRunner::readDictionary(H16ISPRgbJRunner *this, const __CFString *a2)
{
  v2 = [NSDictionary dictionaryWithContentsOfFile:this];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

id H16ISPRgbJRunner::writeDictionary(H16ISPRgbJRunner *this, const __CFDictionary *a2, const __CFString *a3)
{
  sub_1000791AC(a2);

  return [(H16ISPRgbJRunner *)this writeToFile:a2 atomically:1];
}

void sub_1000791AC(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [a1 stringByDeletingLastPathComponent];
  v4 = [v2 fileExistsAtPath:v3];

  if ((v4 & 1) == 0)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [a1 stringByDeletingLastPathComponent];
    v7 = 0;
    [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v7];
  }
}

void sub_100079268(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id H16ISPRgbJRunner::writeData(H16ISPRgbJRunner *this, const __CFData *a2, const __CFString *a3)
{
  sub_1000791AC(a2);

  return [(H16ISPRgbJRunner *)this writeToFile:a2 atomically:1];
}

uint64_t H16ISPRgbJRunner::runPipeline(uint64_t a1, __CVBuffer *a2, void *a3, void *a4, void *a5, void *a6, int a7, __int16 a8, int a9, int a10)
{
  if (*(a1 + 24) == 1)
  {
    v18 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v19 = os_log_create("com.apple.isp", "general");
      v20 = off_10041DD78;
      off_10041DD78 = v19;

      v18 = off_10041DD78;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: reached runPipeline\n", buf, 2u);
    }
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    if (*(a1 + 33))
    {
      return 3;
    }

    else if (a7)
    {
      v26 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v27 = os_log_create("com.apple.isp", "general");
        v28 = off_10041DD78;
        off_10041DD78 = v27;

        v26 = off_10041DD78;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10007B0D8();
      }

      return 2;
    }

    else
    {
      v22 = *(v21 + 280);
      if (!v22)
      {
        v22 = 2;
        if (a3)
        {
          if (a2 && a4)
          {
            v40 = a4;
            *buf = 0;
            v52 = buf;
            v53 = 0x3032000000;
            v54 = sub_1000054D0;
            v55 = sub_10000C208;
            v29 = 0;
            v56 = objc_alloc_init(NSMutableArray);
            while (1)
            {
              if (v29 >= [v40 count])
              {
                v33 = a5;
                v34 = a6;
                v49[0] = 0;
                v49[1] = v49;
                v49[2] = 0x3032000000;
                v49[3] = sub_1000054D0;
                v49[4] = sub_10000C208;
                v50 = [[ADCameraCalibration alloc] initWithDictionary:v33];
                v47[0] = 0;
                v47[1] = v47;
                v47[2] = 0x3032000000;
                v47[3] = sub_1000054D0;
                v47[4] = sub_10000C208;
                v48 = [[ADCameraCalibration alloc] initWithDictionary:v34];
                v45[0] = 0;
                v45[1] = v45;
                v45[2] = 0x3032000000;
                v45[3] = sub_1000054D0;
                v45[4] = sub_10000C208;
                v46 = a3;
                v44[0] = 0;
                v44[1] = v44;
                v44[2] = 0x2020000000;
                v44[3] = a2;
                CVPixelBufferRetain(a2);
                v35 = *(a1 + 40);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_1000798E8;
                block[3] = &unk_1000ACAC8;
                v42 = a10;
                block[4] = v44;
                block[5] = v45;
                block[6] = buf;
                block[7] = v49;
                block[8] = v47;
                block[9] = a1;
                v43 = a8;
                dispatch_async(v35, block);
                _Block_object_dispose(v44, 8);
                _Block_object_dispose(v45, 8);

                _Block_object_dispose(v47, 8);
                _Block_object_dispose(v49, 8);

                v22 = 0;
                goto LABEL_34;
              }

              v30 = [ADJasperPointCloud alloc];
              v31 = [v40 objectAtIndexedSubscript:v29];
              v32 = [v30 initWithDictionaryRepresentation:v31];

              if (!v32)
              {
                break;
              }

              [*(v52 + 5) addObject:v32];

              ++v29;
            }

            v36 = off_10041DD78;
            if (off_10041DD78 == &_os_log_default)
            {
              v37 = os_log_create("com.apple.isp", "general");
              v38 = off_10041DD78;
              off_10041DD78 = v37;

              v36 = off_10041DD78;
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_10007B10C();
            }

            v22 = 2;
LABEL_34:
            _Block_object_dispose(buf, 8);
          }
        }
      }
    }
  }

  else
  {
    v23 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v24 = os_log_create("com.apple.isp", "general");
      v25 = off_10041DD78;
      off_10041DD78 = v24;

      v23 = off_10041DD78;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10007B140();
    }

    return 1;
  }

  return v22;
}

void sub_1000797CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v40 - 208), 8);

  _Block_object_dispose((v40 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_100079880()
{
  v0 = off_10041DD78;
  if (off_10041DD78 == &_os_log_default)
  {
    v1 = os_log_create("com.apple.isp", "general");
    v2 = off_10041DD78;
    off_10041DD78 = v1;

    v0 = off_10041DD78;
  }

  return v0;
}

void sub_1000798E8(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(v2 + 33) = 1;
  v3 = *(v2 + 16);
  if (!*(v3 + 328))
  {
    if (sub_100079D70(v3, *(a1 + 80)))
    {
      v10 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v11 = os_log_create("com.apple.isp", "general");
        v12 = off_10041DD78;
        off_10041DD78 = v11;

        v10 = off_10041DD78;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10007B174();
      }

      *(*(v2 + 16) + 280) = 1;
      goto LABEL_47;
    }

    v3 = *(v2 + 16);
  }

  v4 = sub_10007A048(v3, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  if (!v4)
  {
    if (*(v2 + 24) == 1)
    {
      v13 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        v15 = off_10041DD78;
        off_10041DD78 = v14;

        v13 = off_10041DD78;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: PreProcessInputColorFrame done\n", buf, 2u);
      }
    }

    CVPixelBufferLockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    v17 = fmin((CVPixelBufferGetHeightOfPlane(*(*(*(a1 + 32) + 8) + 24), 0) * BytesPerRowOfPlane), 1000000.0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    v19 = v17;
    if (v17)
    {
      v20 = 0;
      v21 = 0xFFFF;
      do
      {
        v22 = 128;
        do
        {
          if ((v22 & *BaseAddressOfPlane) != 0)
          {
            v23 = ~v21;
          }

          else
          {
            v23 = v21;
          }

          if (v23 < 0)
          {
            v21 = (2 * v21) ^ 0x1021;
          }

          else
          {
            v21 *= 2;
          }

          v24 = v22 >= 2;
          v22 >>= 1;
        }

        while (v24);
        ++BaseAddressOfPlane;
        ++v20;
      }

      while (v20 < v19);
    }

    else
    {
      LOWORD(v21) = -1;
    }

    CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
    CVPixelBufferRelease(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (*(a1 + 84) == v21)
    {
      if (!sub_10007A394(*(v2 + 16), v2 + 48))
      {
        if (*(v2 + 24) == 1)
        {
          v32 = off_10041DD78;
          if (off_10041DD78 == &_os_log_default)
          {
            v33 = os_log_create("com.apple.isp", "general");
            v34 = off_10041DD78;
            off_10041DD78 = v33;

            v32 = off_10041DD78;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: execution success\n", v35, 2u);
          }
        }

        v31 = 0;
        goto LABEL_46;
      }

      v25 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v26 = os_log_create("com.apple.isp", "general");
        v27 = off_10041DD78;
        off_10041DD78 = v26;

        v25 = off_10041DD78;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10007B1DC();
      }
    }

    else
    {
      v28 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v29 = os_log_create("com.apple.isp", "general");
        v30 = off_10041DD78;
        off_10041DD78 = v29;

        v28 = off_10041DD78;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10007B1A8();
      }
    }

    v31 = 2;
LABEL_46:
    *(*(v2 + 16) + 280) = v31;
LABEL_47:
    *(v2 + 33) = 0;
    return;
  }

  if (v4 == -22966)
  {
    H16ISPRgbJRunner::saveNow(v2);
    v5 = *(v2 + 16);
    v6 = *(v5 + 328);
    *(v5 + 328) = 0;
  }

  v7 = off_10041DD78;
  if (off_10041DD78 == &_os_log_default)
  {
    v8 = os_log_create("com.apple.isp", "general");
    v9 = off_10041DD78;
    off_10041DD78 = v8;

    v7 = off_10041DD78;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10007B210();
  }

  *(*(v2 + 16) + 280) = 0;
  *(v2 + 33) = 0;
  CVPixelBufferRelease(*(*(*(a1 + 32) + 8) + 24));
}

uint64_t sub_100079D70(uint64_t a1, int a2)
{
  *(a1 + 336) = a2;
  *(a1 + 344) = 0;
  *(a1 + 264) = 0;
  *(a1 + 276) = 0;
  *(a1 + 312) = 4;
  v3 = [[ADJasperColorInFieldCalibrationExecutor alloc] initForEngineType:*(a1 + 312)];
  v4 = *(a1 + 328);
  *(a1 + 328) = v3;

  v5 = *(a1 + 336);
  v6 = [*(a1 + 328) pipeline];
  v7 = [v6 pipelineParameters];
  [v7 setFeaturesVectorAggregationSize:v5];

  v8 = objc_opt_new();
  v9 = *(a1 + 296);
  *(a1 + 296) = v8;

  if (!*(a1 + 296))
  {
    v17 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v18 = os_log_create("com.apple.isp", "general");
      v19 = off_10041DD78;
      off_10041DD78 = v18;

      v17 = off_10041DD78;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007B2EC();
    }

    return -22950;
  }

  v10 = *(a1 + 328);
  if (!v10)
  {
    v20 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v21 = os_log_create("com.apple.isp", "general");
      v22 = off_10041DD78;
      off_10041DD78 = v21;

      v20 = off_10041DD78;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10007B2B8();
    }

    return -22950;
  }

  if (*(a1 + 292) == 1)
  {
    v11 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v12 = os_log_create("com.apple.isp", "general");
      v13 = off_10041DD78;
      off_10041DD78 = v12;

      v11 = off_10041DD78;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: executore prepare\n", buf, 2u);
    }

    v10 = *(a1 + 328);
  }

  if ([v10 prepare])
  {
    v14 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v15 = os_log_create("com.apple.isp", "general");
      v16 = off_10041DD78;
      off_10041DD78 = v15;

      v14 = off_10041DD78;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007B284();
    }

    return -22950;
  }

  if (!sub_10007AB40(a1) || !sub_10007ADA4(a1))
  {
    return -22950;
  }

  if (*(a1 + 292) == 1)
  {
    v23 = sub_100079880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: loaded intersession data\n", v25, 2u);
    }
  }

  return 0;
}

uint64_t sub_10007A048(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (*(a1 + 292) == 1)
  {
    v15 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v16 = os_log_create("com.apple.isp", "general");
      v17 = off_10041DD78;
      off_10041DD78 = v16;

      v15 = off_10041DD78;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: reached PreProcess\n", v25, 2u);
    }
  }

  v18 = *(a1 + 328);
  if (v18)
  {
    v19 = matrix_identity_float4x4.columns[1];
    v25[0] = matrix_identity_float4x4.columns[0];
    v25[1] = v19;
    v28 = v25[0];
    v29 = v19;
    v32 = v25[0];
    v33 = v19;
    v36 = v25[0];
    v37 = v19;
    v20 = matrix_identity_float4x4.columns[3];
    v21 = matrix_identity_float4x4.columns[0];
    v22 = matrix_identity_float4x4.columns[1];
    v26 = matrix_identity_float4x4.columns[2];
    v27 = v20;
    v30 = v26;
    v31 = v20;
    v34 = v26;
    v35 = v20;
    v38 = v26;
    v39 = v20;
    v23 = [v18 preprocessInputColorFrame:a2 colorPose:v12 jasperPointClouds:v25 jasperPoses:v14 jasperCameraCalibration:v13 colorCameraCalibration:v11 colorMetadata:{*v21.i64, *v22.i64, *v26.i64, *matrix_identity_float4x4.columns[3].i64}];
  }

  else
  {
    v23 = -22970;
  }

  return v23;
}

void H16ISPRgbJRunner::saveNow(H16ISPRgbJRunner *this)
{
  if (*(*(this + 2) + 344))
  {
    v2 = sub_10000A4DC(*(this + 1), 0);
    PDPeridotCalibSetOperationalWideToPeridotTransform();
    if (sub_10001CD84(v2))
    {
      v3 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v4 = os_log_create("com.apple.isp", "general");
        v5 = off_10041DD78;
        off_10041DD78 = v4;

        v3 = off_10041DD78;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "rgbj calibration: saved peridotCalib\n", v9, 2u);
      }
    }

    else
    {
      *(*(this + 2) + 276) = 1;
      v6 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v7 = os_log_create("com.apple.isp", "general");
        v8 = off_10041DD78;
        off_10041DD78 = v7;

        v6 = off_10041DD78;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10007B320();
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_10007A394(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 272);
  v3 = *(a1 + 328);
  if (!v3)
  {
    return -22970;
  }

  v5 = [v3 executePreprocessedInputsWithInterSessionData:*(a1 + 320) outResult:*(a1 + 296)];
  if (v5)
  {
    v6 = v5;
    v7 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v8 = os_log_create("com.apple.isp", "general");
      v9 = off_10041DD78;
      off_10041DD78 = v8;

      v7 = off_10041DD78;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007B354();
    }
  }

  else
  {
    v10 = [*(a1 + 296) executed];
    v11 = *(a1 + 296);
    if (v10)
    {
      [v11 jasperToColorExtrinsics];
      *(a1 + 360) = v12;
      *(a1 + 352) = v13;
      *(a1 + 376) = v14;
      *(a1 + 392) = v15;
      *(a1 + 368) = v16;
      *(a1 + 384) = v17;
      *(a1 + 408) = v18;
      *(a1 + 400) = v19;
      ++*(a1 + 344);
      ++*(a1 + 264);
      if (a2 && *a2 == 1)
      {
        ++*(a2 + 4);
        [*(a1 + 296) deltaRotationX];
        *(a2 + 8) = *(a2 + 8) + v20;
        [*(a1 + 296) deltaRotationY];
        *(a2 + 16) = *(a2 + 16) + v21;
        [*(a1 + 296) deltaRotationZ];
        *(a2 + 24) = *(a2 + 24) + v22;
      }
    }

    else if ([v11 executionStatus] == -22976)
    {
      ++*(a1 + 268);
      v23 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v24 = os_log_create("com.apple.isp", "general");
        v25 = off_10041DD78;
        off_10041DD78 = v24;

        v23 = off_10041DD78;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10007B3C8();
      }
    }

    sub_10007ADA4(a1);
    return 0;
  }

  return v6;
}

void H16ISPRgbJRunner::finalize(H16ISPRgbJRunner *this)
{
  if ((*(this + 33) & 1) == 0)
  {
    if (*(this + 24) == 1)
    {
      v2 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v3 = os_log_create("com.apple.isp", "general");
        v4 = off_10041DD78;
        off_10041DD78 = v3;

        v2 = off_10041DD78;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: finalizing\n", v5, 2u);
      }
    }

    H16ISPRgbJRunner::saveNow(this);
  }
}

uint64_t H16ISPRgbJRunner::fillReport(uint64_t this, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(this + 16);
  if (v5)
  {
    *a2 = v5[66];
    *a3 = v5[67];
    v6 = v5[69];
  }

  else
  {
    v6 = 0;
    *a4 = 0;
    *a3 = 0;
    *a2 = 0;
  }

  *a5 = v6;
  *a4 = v5[68];
  return this;
}

BOOL H16ISPRgbJRunner::configureLowFrameIntervalMode(H16ISPRgbJRunner *this, char a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a2)
  {
    if (*(this + 48))
    {
      v7 = *(this + 13);
      if (v7 < a3)
      {
        return 1;
      }

      v11 = *(this + 7) / v7;
      v12 = fabsf(v11);
      v13 = *(this + 8) / v7;
      v14 = fabsf(v13);
      v15 = *(this + 9) / v7;
      v16 = fabsf(v15);
      if (*(this + 24) == 1)
      {
        v17 = off_10041DD78;
        if (off_10041DD78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          v19 = off_10041DD78;
          off_10041DD78 = v18;

          v17 = off_10041DD78;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(this + 13);
          v33 = 134219520;
          v34 = v12;
          v35 = 2048;
          v36 = v14;
          v37 = 2048;
          v38 = v16;
          v39 = 1024;
          v40 = a4;
          v41 = 1024;
          v42 = a5;
          v43 = 1024;
          v44 = a6;
          v45 = 1024;
          v46 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: configureLowFrameIntervalMode condX=%f, condY=%f, condZ=%f, X_th=%d, Y_th=%d, Z_th=%d, frames=%d\n", &v33, 0x38u);
        }
      }

      v21 = v12 <= a4 && v14 <= a5;
      if (!v21 || v16 > a6)
      {
        return 1;
      }

      if (*(this + 24) != 1)
      {
        return 0;
      }

      v30 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v31 = os_log_create("com.apple.isp", "general");
        v32 = off_10041DD78;
        off_10041DD78 = v31;

        v30 = off_10041DD78;
      }

      result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: enough data, and no angle is above threhsold - done with low frame interval mode\n", &v33, 2u);
        return 0;
      }
    }

    else
    {
      if (*(this + 24) == 1)
      {
        v27 = off_10041DD78;
        if (off_10041DD78 == &_os_log_default)
        {
          v28 = os_log_create("com.apple.isp", "general");
          v29 = off_10041DD78;
          off_10041DD78 = v28;

          v27 = off_10041DD78;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: switched to low frame interval mode\n", &v33, 2u);
        }
      }

      result = 1;
      *(this + 48) = 1;
    }
  }

  else
  {
    if (*(this + 24) == 1)
    {
      v24 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v25 = os_log_create("com.apple.isp", "general");
        v26 = off_10041DD78;
        off_10041DD78 = v25;

        v24 = off_10041DD78;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "RGBJ-Demon-Verbose: low frame interval mode not active\n", &v33, 2u);
      }
    }

    result = 0;
    *(this + 48) = 0;
    *(this + 52) = 0;
    *(this + 68) = 0;
    *(this + 60) = 0;
    *(this + 19) = 0;
  }

  return result;
}

uint64_t sub_10007AA20(uint64_t a1, CFTypeRef cf)
{
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = CFRetain(cf);
  *(a1 + 344) = 0;
  v3 = *(a1 + 328);
  *(a1 + 328) = 0;

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 256;
  *(a1 + 336) = 10;
  *(a1 + 264) = 0;
  *(a1 + 293) = sub_10002ECA4(@"rgbjDynamicFrameRate", @"com.apple.coremedia", 1) != 0;
  return a1;
}

uint64_t sub_10007AAF0(uint64_t a1)
{
  CFRelease(*(a1 + 304));

  return a1;
}

BOOL sub_10007AB40(uint64_t a1)
{
  if (*(a1 + 320))
  {
    return 1;
  }

  v2 = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/ISP/JasperL/JasperColorInterSessionData.plist"];
  v3 = [*(a1 + 328) pipeline];
  v4 = [v3 createInterSessionDataWithDictionaryRepresentation:v2];
  v5 = *(a1 + 320);
  *(a1 + 320) = v4;

  if (!*(a1 + 320))
  {
    v6 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "general");
      v8 = off_10041DD78;
      off_10041DD78 = v7;

      v6 = off_10041DD78;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "JasperColorInFieldCalibration could not initialize interSessionData from file, creating a new one\n", buf, 2u);
    }

    PDPeridotCalibGetOperationalWideToPeridotTransform();
    PDPeridotCalibGetFactoryWideToPeridotTransform();
    v9 = [*(a1 + 328) pipeline];
    v10 = [v9 createInterSessionDataWithFactoryJasperToColorTransform:? currentJasperToColorTransform:?];
    v11 = *(a1 + 320);
    *(a1 + 320) = v10;
  }

  if (*(a1 + 320))
  {
    return 1;
  }

  v13 = off_10041DD78;
  if (off_10041DD78 == &_os_log_default)
  {
    v14 = os_log_create("com.apple.isp", "general");
    v15 = off_10041DD78;
    off_10041DD78 = v14;

    v13 = off_10041DD78;
  }

  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10007B440();
    return 0;
  }

  return result;
}

id sub_10007ADA4(uint64_t a1)
{
  v2 = [*(a1 + 320) persistenceData];
  v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/ISP/JasperL/JasperColorInterSessionData.plist"];
  if (v3)
  {
    v22 = 0;
    v4 = [v2 writeToURL:v3 error:&v22];
    v5 = v22;
    if (v4)
    {
      v6 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v7 = os_log_create("com.apple.isp", "general");
        v8 = off_10041DD78;
        off_10041DD78 = v7;

        v6 = off_10041DD78;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = @"/var/mobile/Library/ISP/JasperL/JasperColorInterSessionData.plist";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving Intersession data to file has succeeded: %@\n", buf, 0xCu);
      }
    }

    else
    {
      *(a1 + 276) = 1;
      v12 = off_10041DD78;
      if (off_10041DD78 == &_os_log_default)
      {
        v13 = os_log_create("com.apple.isp", "general");
        v14 = off_10041DD78;
        off_10041DD78 = v13;

        v12 = off_10041DD78;
      }

      v15 = v12;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = [v5 localizedDescription];
        v17 = [v5 code];
        v18 = [v5 domain];
        v19 = [v5 userInfo];
        v20 = [v19 descriptionInStringsFileFormat];
        *buf = 138413314;
        v24 = @"/var/mobile/Library/ISP/JasperL/JasperColorInterSessionData.plist";
        v25 = 2112;
        v26 = v21;
        v27 = 2048;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = v20;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Jasper Calibration: Failed to save JPC intersession data using NSDictionary::writeToURL:withError.Path: %@ Error Description: %@ Error Code: %ldError Domain: %@Error UserInfo: %@\n", buf, 0x34u);
      }
    }
  }

  else
  {
    v9 = off_10041DD78;
    if (off_10041DD78 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "general");
      v11 = off_10041DD78;
      off_10041DD78 = v10;

      v9 = off_10041DD78;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007B474();
    }

    v4 = 0;
  }

  return v4;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10007B59C(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_10007B728(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_10007BA10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

void sub_10007C58C(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "SendDeviceImpacts_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s - Failed to send device impacts samples, res=0x%08X\n", &v2, 0x12u);
}

void sub_10007C6C4(os_log_t log)
{
  v1 = 136315138;
  v2 = "ReadCalibrationData";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s - Invalid buffer passed to read photon detector calibration data\n", &v1, 0xCu);
}

void sub_10007C92C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 136315394;
  v3 = "SetupDeviceController";
  v4 = 1024;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - Timed out waiting for the driver to register service, deviceArrived = %d\n", &v2, 0x12u);
}

void sub_10007C9C4()
{
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - IONotificationPortGetRunLoopSource returned NULL\n", &v0, 0xCu);
}

void sub_10007CA4C()
{
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s - IONotificationPortCreate returned NULL\n", &v0, 0xCu);
}

void sub_10007CF20()
{
  sub_1000082A0();
  sub_10002B7E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007CF5C()
{
  sub_1000082A0();
  sub_10002B7E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007CF98()
{
  sub_1000082A0();
  sub_10002B7E4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007CFD4()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D044()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D0B4()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D124()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D194()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D204()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D274()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D2B0()
{
  sub_10002B7C0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D330()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D3A0()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D4C8()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D578()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D5E8()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D624()
{
  sub_10002B7D4();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007D694()
{
  sub_1000082A0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10007D7D0()
{
  sub_10002B7C0();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007D850()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007D8CC()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007D948()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DA44()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DAC0()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007DB3C()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DC38()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DCB4()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007DDB0()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DE2C()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007DF28()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007DFA4()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007E0A0()
{
  sub_10002777C();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E11C()
{
  sub_10001414C(__stack_chk_guard);
  sub_10002B7A0();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007E218()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E288()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E470()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E560()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E5D0()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E640()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E6B0()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E720()
{
  sub_10000827C();
  sub_100014120();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007E790()
{
  sub_1000082AC();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007E80C(os_log_t log)
{
  v1 = 136315138;
  v2 = "sendMessageSync";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s - received reply\n", &v1, 0xCu);
}

void sub_10007E910()
{
  sub_1000082AC();
  sub_100008294();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007EB70(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "createXpcFromType got a dictionary with null value (for key %s)", &v1, 0xCu);
}

void sub_10007F3F8(uint64_t a1)
{
  v25 = 255;
  if (!a1)
  {
    return;
  }

  if (!sub_10005E5B8(a1, &v25))
  {
    goto LABEL_42;
  }

  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"LoadHPR", kCFAllocatorDefault, 0);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID() && !CFBooleanGetValue(v5))
    {
      CFRelease(v5);
      v24 = off_10041DCA8;
      if (off_10041DCA8 == &_os_log_default)
      {
        v24 = os_log_create("com.apple.isp", "general");
        off_10041DCA8 = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "LoadFrontIRHPRFile";
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s - noHPR boot-arg set\n", buf, 0xCu);
      }

LABEL_42:
      v15 = 0;
      goto LABEL_43;
    }
  }

  v7 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageChipID", kCFAllocatorDefault, 3u);
  if (v7)
  {
    v8 = v7;
    v9 = AMFDRCreateInstanceString();
    if (v9)
    {
      v10 = v9;
      v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageUID", kCFAllocatorDefault, 3u);
      if (v11)
      {
        v12 = v11;
        v13 = AMFDRCreateInstanceString();
        if (v13)
        {
          v14 = v13;
          v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%@", v10, v13);
          CFRelease(v12);
          CFRelease(v14);
          goto LABEL_11;
        }

        NSLog(@"Couldn't create SavageUID string ref");
        CFRelease(v12);
      }

      else
      {
        NSLog(@"Couldn't read SavageUID");
      }

      v15 = 0;
LABEL_11:
      CFRelease(v8);
      CFRelease(v10);
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    NSLog(@"Couldn't create SavageChipID string ref");
    CFRelease(v8);
  }

  else
  {
    NSLog(@"Couldn't read SavageChipID");
  }

  v15 = 0;
  if (v5)
  {
LABEL_12:
    CFRelease(v5);
  }

LABEL_13:
  if (!v15)
  {
    NSLog(@"Couldn't combine frontIR chipIDStr and uidStr");
LABEL_43:
    v21 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v16 = [NSData dataWithContentsOfFile:@"/usr/local/share/firmware/isp/Savage/FrontIRHPR.DER"];
  if (v16)
  {
    v17 = v16;
    NSLog(@"Found FrontIR override (has highest precedence) HPR file - camChannel = %d", v25);
    goto LABEL_16;
  }

  v17 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  if (v17)
  {
LABEL_16:
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v20 = sub_10005D4E0(a1, v25 | 0x80000000, BytePtr, Length, 0x501u);
    v21 = CFCopyDescription(v17);
    v22 = off_10041DCA8;
    if (off_10041DCA8 == &_os_log_default)
    {
      v22 = os_log_create("com.apple.isp", "general");
      off_10041DCA8 = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      CStringPtr = CFStringGetCStringPtr(v21, 0);
      *buf = 136315650;
      v27 = "LoadFrontIRHPRFile";
      v28 = 1024;
      v29[0] = v20;
      LOWORD(v29[1]) = 2080;
      *(&v29[1] + 2) = CStringPtr;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s - Status = %08x; HPR - %s\n", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  NSLog(@"No HPR file for frontIR found");
  v21 = 0;
LABEL_20:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}