void sub_10068D2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a19 == 1 && a17)
  {
    operator delete[]();
  }

  if (a23 == 1 && a21)
  {
    operator delete[]();
  }

  if (a27 == 1)
  {
    if (a25)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10068D364(uint64_t a1, int a2)
{
  v4 = *(a1 + 12);
  if (v4 < a2)
  {
    if (v4 <= 16)
    {
      v5 = 16;
    }

    else
    {
      v5 = *(a1 + 12);
    }

    if (a2 >= 17)
    {
      do
      {
        if (v5 <= 0x3FFFFFFF)
        {
          v5 *= 2;
        }

        else
        {
          v5 = 0x7FFFFFFF;
        }
      }

      while (v5 < a2);
    }

    sub_10068D3E4(a1, v5);
  }

  return sub_10068D4AC(a1, a2);
}

uint64_t sub_10068D3E4(uint64_t result, int a2)
{
  if (*(result + 12) < a2)
  {
    operator new[]();
  }

  return result;
}

uint64_t sub_10068D4AC(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = sub_10068D3E4(result, a2);
    *(v3 + 8) = a2;
    if (*v3)
    {
      if (a2 >= v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = a2;
      }

      if (v6 >= 1)
      {
        v7 = a2 - v6;
        v8 = (*v3 + 16 * v7);
        do
        {
          *v8 = 0;
          v8[1] = 0;
          v8 += 2;
          ++v7;
        }

        while (v7 < *(v3 + 8));
      }
    }
  }

  return result;
}

uint64_t sub_10068D534(void *__src, unsigned int *a2, uint64_t a3, unsigned int *a4)
{
  v6 = a2;
  memset(__dst, 0, sizeof(__dst));
  v8 = *a2;
  v7 = a2[1];
  v108[0] = v8;
  v108[1] = v7;
  v9 = v7 * v8;
  v106 = v7 * v8;
  if (v7 * v8 < 1)
  {
    v12 = 0.0;
  }

  else
  {
    memcpy(__dst, __src, 8 * (v7 * v8));
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = fabs(*(__src + v11));
      if (v13 <= v12)
      {
        v13 = v12;
      }

      v12 = v13;
      ++v11;
    }

    while (v11 < v9);
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *a4 = v8;
    v14 = *v6;
    if (v14 >= 1)
    {
      v15 = (a3 + 8);
      do
      {
        *(v15 - 1) = qword_100B54DC0;
        *v15 = 0;
        v15 += 2;
        --v14;
      }

      while (v14);
    }

    return 0;
  }

  if (v12 > 0.0 && v12 < 6.71787611e-139)
  {
    v18 = 6.71787611e-139;
  }

  else
  {
    v18 = 1.48856571e138;
    if (v12 <= 1.48856571e138)
    {
      v19 = 0;
      v18 = v12;
      goto LABEL_35;
    }
  }

  v20 = v18;
  v21 = v12;
  do
  {
    v22 = 2.00416836e-292;
    if (v21 * 2.00416836e-292 <= v20 || v20 == 0.0)
    {
      if (v20 * 2.00416836e-292 <= v21)
      {
        v23 = 0;
        v22 = v20 / v21;
      }

      else
      {
        v23 = 1;
        v22 = 4.98960077e291;
        v20 = v20 * 2.00416836e-292;
      }
    }

    else
    {
      v23 = 1;
      v21 = v21 * 2.00416836e-292;
    }

    if (v8 >= 1)
    {
      v24 = 0;
      for (i = 0; i != v8; ++i)
      {
        v26 = i * v8;
        v27 = v8;
        v28 = v24;
        do
        {
          *(__dst + (v28 >> 29)) = v22 * *(__dst + (v28 >> 29));
          v28 += &_mh_execute_header;
          --v27;
        }

        while (v27);
        v24 += v8 << 32;
      }

      v9 = v26 - 1;
    }
  }

  while (v23);
  v106 = v9;
  v19 = 1;
LABEL_35:
  v110 = 0;
  v111 = 0;
  __b[0] = 0;
  __b[1] = 0;
  v107 = 0;
  v29 = sub_10068888C(__dst, v108, &v107, __b, a4);
  v30 = v29;
  v31 = v107;
  if (v107 > v29)
  {
    v99 = v19;
    v102 = v29;
    v100 = v6;
    v101 = a3;
    v32 = v108[0];
    v33 = v108[0];
    v105 = v108[0] - 1;
    v106 = v108[0];
    if (v108[0] >= 1)
    {
      bzero(__b, 8 * v108[0]);
    }

    v103 = v32 + 1;
    v34 = *(__dst + 1);
    v35 = v102;
    v104 = v31;
    do
    {
      if (v107 < 2 || (v36 = sub_10068B530(0, __dst, v32, 1), v36 == 0.0))
      {
        v38 = v34;
      }

      else
      {
        v37 = sub_10068B384(*(__dst + 1), v36);
        if (*(__dst + 1) >= 0.0)
        {
          v38 = -v37;
        }

        else
        {
          v38 = v37;
        }

        if (fabs(v37) >= 1.00208418e-292)
        {
          v45 = (v38 - *(__dst + 1)) / v38;
        }

        else
        {
          v39 = -1;
          v40 = 1;
          do
          {
            v41 = v40;
            ++v39;
            v38 = v38 * 9.97920155e291;
            v34 = v34 * 9.97920155e291;
            ++v40;
          }

          while (fabs(v38) < 1.00208418e-292 && v39 < 0x13);
          v106 = v39 + 1;
          v43 = sub_10068B530(0, __dst, v32, 1);
          v44 = sub_10068B384(v34, v43);
          if (v34 >= 0.0)
          {
            v38 = -v44;
          }

          else
          {
            v38 = v44;
          }

          v45 = (v38 - v34) / v38;
          do
          {
            v38 = v38 * 1.00208418e-292;
            --v41;
          }

          while (v41);
        }

        *(&__dst[0] + 1) = 0x3FF0000000000000;
        if (v45 != 0.0)
        {
          v46 = v107;
          v47 = v107 - 1;
          v48 = (&v111 + v107);
          v49 = v48;
          v50 = v107 - 1;
          do
          {
            v51 = v50;
            v52 = v50 - 1;
            if (v50 < 1)
            {
              break;
            }

            v50 = 0;
            v53 = *v49--;
          }

          while (v53 == 0.0);
          v54 = v107;
          if (v107 >= 1)
          {
            v55 = v52 * v32;
            v54 = v107;
            while (v32 < 1 || v55 < 0)
            {
LABEL_72:
              v57 = __OFSUB__(v54--, 1);
              if ((v54 < 0) ^ v57 | (v54 == 0))
              {
                goto LABEL_74;
              }
            }

            v56 = v54 + v32;
            while (*(&v111 + v56) == 0.0)
            {
              v56 += v33;
              if (v56 > v54 + v32 + v55)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_74:
          if (v51 >= 1 && v54)
          {
            bzero(__b, 8 * v54);
            v106 = 1;
            v58 = 1;
            v59 = v103;
            do
            {
              if (v54 >= 1)
              {
                v60 = *(__dst + v58);
                v61 = __b;
                v62 = v59;
                do
                {
                  *v61 = *v61 + *(&v111 + v62) * v60;
                  ++v61;
                  ++v62;
                }

                while (v62 < v59 + v54);
              }

              ++v58;
              v63 = v59 > 0;
              v64 = v59 < 2;
              v59 += v33;
              v65 = v64;
              if (v32 >= 0)
              {
                v63 = v65;
              }
            }

            while (v63);
            if (v54 >= 1)
            {
              v66 = 0;
              v67 = v103 - 1;
              do
              {
                *(__dst + v67) = *(__dst + v67) + *&__b[v66] * -v45;
                ++v67;
                ++v66;
              }

              while (v67 < v54 + v32);
            }
          }

          do
          {
            v68 = v47;
            v69 = v46;
            if (v47 < 1)
            {
              break;
            }

            v47 = 0;
            v70 = *v48--;
            --v46;
          }

          while (v70 == 0.0);
          v106 = v69;
          LODWORD(v71) = v105;
          v31 = v104;
          if (v32 > 1)
          {
            v72 = __dst + v32 + 1;
            v73 = v32 + 1;
            while (v68 + v32 >= v73)
            {
              v74 = *v72++;
              ++v73;
              if (v74 != 0.0)
              {
                LODWORD(v71) = v105;
                goto LABEL_97;
              }
            }

            LODWORD(v71) = 0;
          }

LABEL_97:
          if (v68 >= 1)
          {
            v75 = v32 + 2;
            if (v71)
            {
              __b[0] = 0;
              v76 = __b;
              v77 = *(__dst + 1);
              v78 = v32 + 2;
              do
              {
                *v76 = *(&v111 + v78) * v77 + 0.0 + *v76;
                ++v76;
                v79 = v78 > 1;
                v64 = v78 < 3;
                v78 += v33;
                v80 = v64;
                if (v32 >= 0)
                {
                  v79 = v80;
                }
              }

              while (v79);
              v75 = v32 + 2;
              v71 = v71;
              if (v71)
              {
                v75 = v32 + v32 * v71 + 2;
                v81 = __b;
                v82 = (&v111 + v32 + 2);
                do
                {
                  if (*v81 != 0.0)
                  {
                    *v82 = *v82 + *(__dst + 1) * (*v81 * -v45);
                  }

                  ++v81;
                  v82 += v33;
                  --v71;
                }

                while (v71);
              }
            }

            v106 = v75;
          }
        }
      }

      *(__dst + 1) = v38;
      ++v35;
      v34 = v38;
    }

    while (v35 != v31);
    v31 = v107;
    a3 = v101;
    v6 = v100;
    v30 = v102;
    v19 = v99;
  }

  v83 = sub_10068DD94(v30, v31, __dst, v108, __b, a4, &v110, &v106);
  v16 = v83;
  if (!v19)
  {
    goto LABEL_115;
  }

  v84 = (*v6 - v83);
  sub_10068E2AC(v84, __b, v83 + 1, v18, v12);
  sub_10068E2AC(v84, &v110, v16 + 1, v18, v12);
  if (v16)
  {
    sub_10068E2AC((v30 - 1), __b, 1, v18, v12);
    sub_10068E2AC((v30 - 1), &v110, 1, v18, v12);
LABEL_115:
    if (v16)
    {
      v85 = (v16 - v30);
      if (v16 >= v30)
      {
        v86 = qword_100B54DC0;
        bzero(&v110 + v30 - 1, 8 * (v16 - v30) + 8);
        v87 = 0;
        v88 = vdupq_n_s64(v85);
        v89 = &__b[v30];
        do
        {
          v90 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(vdupq_n_s64(v87), xmmword_1008A49A0)));
          if (v90.i8[0])
          {
            v89[v87 - 1] = v86;
          }

          if (v90.i8[4])
          {
            v89[v87] = v86;
          }

          v87 += 2;
        }

        while (((v85 + 2) & 0x1FFFFFFFELL) != v87);
      }
    }
  }

  v91 = *a4;
  if (v91 >= 1)
  {
    v92 = (a3 + 8);
    v93 = &v110;
    v94 = __b;
    do
    {
      v95 = *v94++;
      v96 = v95;
      v97 = *v93++;
      *(v92 - 1) = v96;
      *v92 = v97;
      v92 += 2;
      --v91;
    }

    while (v91);
  }

  return v16;
}

uint64_t sub_10068DD14(uint64_t *a1, float64x2_t *a2)
{
  result = *(a1 + 6);
  if (result)
  {
    if (result >= 1)
    {
      for (i = 0; i != result; ++i)
      {
        a2[i] = *(*a1 + i * 16);
      }
    }

    v5 = 0;
    v6 = *a1;
    v7 = result;
    do
    {
      if (result >= 1)
      {
        v8 = (v6 + 16 * v7);
        v9 = result;
        v10 = a2;
        do
        {
          v11 = *v8++;
          *v10 = vaddq_f64(v11, *v10);
          ++v10;
          --v9;
        }

        while (v9);
      }

      ++v5;
      v7 += result;
    }

    while (v5 != 79);
  }

  return result;
}

uint64_t sub_10068DD94(int a1, int a2, double *a3, int *a4, uint64_t a5, _DWORD *a6, void *a7, _DWORD *a8)
{
  v13 = *a4;
  *a6 = *a4;
  *a8 = v13;
  v14 = a1 - 1;
  v15 = *a4;
  v16 = (a1 - 1);
  if (a1 != 1)
  {
    v17 = 0;
    v18 = a5;
    v19 = a7;
    do
    {
      *v18++ = *&a3[v17];
      *v19++ = 0;
      v17 += v15 + 1;
      --v16;
    }

    while (v16);
  }

  if (v15 > a2)
  {
    *(a5 + 8) = a3[v15 + 1];
    a7[1] = 0;
  }

  if (a2 != a1)
  {
    if (a2 < a1)
    {
      return 0;
    }

    v21 = (a2 - a1 + 1) * 4.50359963e15 * 2.22507386e-308;
    v22 = a2 - 1;
    v23 = 0.5;
    while (a2 > a1)
    {
      v24 = fabs(a3[1]);
      v25 = a2;
      do
      {
        if (v24 <= v21)
        {
          break;
        }

        v26 = &a3[*a4];
        v27 = v26[1];
        v28 = fabs(v27);
        if (v24 <= (v28 + fabs(*a3)) * 2.22044605e-16)
        {
          v29 = fabs(*v26);
          v30 = vabdd_f64(*a3, v27);
          v31 = fmax(v28, v30);
          v32 = fmin(v28, v30);
          if (fmin(v24, v29) * (fmax(v24, v29) / (v31 + v32)) <= fmax(v21, v32 * (v31 / (v31 + v32)) * 2.22044605e-16))
          {
            break;
          }

          v25 = 1;
        }

        else
        {
          v25 = 1;
        }
      }

      while (a1 < 1);
      if (v25 > a1)
      {
        a3[1] = 0.0;
      }

      if (v25 == a2)
      {
        goto LABEL_27;
      }

      if (v25 == v22)
      {
        v33 = *a4 * v22;
        v34 = a3[v33];
        v35 = a3[v22];
        v36 = *a3;
        v37 = v33 + v22;
        v38 = a3[v37];
        if (v35 == 0.0)
        {
          goto LABEL_24;
        }

        if (v34 == 0.0)
        {
          v34 = -v35;
          goto LABEL_32;
        }

        v42 = v36 - v38;
        if (v36 - v38 == 0.0 && v34 < 0.0 == v35 >= 0.0)
        {
          goto LABEL_24;
        }

        v43 = v42 * v23;
        v44 = fabs(v34);
        v45 = fabs(v35);
        v46 = fmax(v44, v45);
        v47 = fmin(v44, v45);
        if (v34 < 0.0)
        {
          v47 = -v47;
        }

        if (v35 < 0.0)
        {
          v47 = -v47;
        }

        v48 = fmax(fabs(v43), v46);
        v49 = v47 * (v46 / v48) + v43 / v48 * v43;
        if (v49 >= 8.8817842e-16)
        {
          v53 = sqrt(v48) * sqrt(v49);
          v54 = -v53;
          if (v43 >= 0.0)
          {
            v54 = v53;
          }

          v55 = v43 + v54;
          v36 = v38 + -v46 / v55 * v47;
LABEL_47:
          v38 = v38 + v55;
          v34 = v34 - v35;
        }

        else
        {
          v50 = v34 + v35;
          v51 = fmax(fabs(v42), fabs(v34 + v35));
          if (v51 >= 7.44282854e137)
          {
            v56 = 0;
            do
            {
              v50 = v50 * 1.34357522e-138;
              v42 = v42 * 1.34357522e-138;
              v51 = fmax(fabs(v42), fabs(v50));
              v52 = v56 + 1;
            }

            while (v51 >= 7.44282854e137 && v56++ < 0x14);
          }

          else
          {
            v52 = 0;
          }

          if (v51 > 1.34357522e-138 || v52 > 0x14)
          {
            v59 = fabs(v50);
          }

          else
          {
            do
            {
              v50 = v50 * 7.44282854e137;
              v42 = v42 * 7.44282854e137;
              v59 = fabs(v50);
            }

            while (fmax(fabs(v42), v59) <= 1.34357522e-138 && v52++ < 0x14);
          }

          v61 = sub_10068B384(v50, v42);
          v23 = 0.5;
          v62 = sqrt((v59 / v61 + 1.0) * 0.5);
          v63 = v42 * -0.5 / (v61 * v62);
          if (v50 < 0.0)
          {
            v63 = -v63;
          }

          v64 = v34 * v63 + v36 * v62;
          v65 = v34 * v62 - v36 * v63;
          v66 = v38 * v63 + v35 * v62;
          v67 = v38 * v62 - v35 * v63;
          v34 = v63 * v67 + v65 * v62;
          v35 = v62 * v66 - v64 * v63;
          v38 = (v62 * v67 - v65 * v63 + v63 * v66 + v64 * v62) * 0.5;
          if (v35 == 0.0)
          {
            v36 = (v62 * v67 - v65 * v63 + v63 * v66 + v64 * v62) * 0.5;
            goto LABEL_24;
          }

          if (v34 != 0.0)
          {
            if (v34 >= 0.0 != v35 < 0.0)
            {
              v68 = sqrt(fabs(v34)) * sqrt(fabs(v35));
              v55 = -v68;
              if (v35 >= 0.0)
              {
                v55 = v68;
              }

              v36 = v38 - v55;
              goto LABEL_47;
            }

            v36 = (v62 * v67 - v65 * v63 + v63 * v66 + v64 * v62) * 0.5;
LABEL_24:
            *a5 = v36;
            *(a5 + 8 * v22) = v38;
            v39 = 0.0;
            if (v35 != 0.0)
            {
              v39 = sqrt(fabs(v35)) * sqrt(fabs(v34));
              v40 = -v39;
LABEL_34:
              *a7 = v39;
              *&a7[v22] = v40;
              *a3 = v36;
              a3[v33] = v34;
              a3[v22] = v35;
              a3[v37] = v38;
              goto LABEL_28;
            }

LABEL_33:
            v40 = 0.0;
            goto LABEL_34;
          }

          v34 = -v35;
          v36 = (v62 * v67 - v65 * v63 + v63 * v66 + v64 * v62) * 0.5;
        }

LABEL_32:
        v41 = v38;
        *a5 = v38;
        *(a5 + 8 * v22) = v36;
        v35 = 0.0;
        v38 = v36;
        v36 = v41;
        v39 = 0.0;
        goto LABEL_33;
      }

LABEL_28:
      v22 = v25 - 2;
      a2 = v25 - 1;
      if (v25 <= a1)
      {
        return 0;
      }
    }

    v25 = a2;
LABEL_27:
    *(a5 + 8 * v22) = a3[v22 + v22 * *a4];
    a7[v22] = 0;
    goto LABEL_28;
  }

  *(a5 + 8 * v14) = a3[a1 - 1 + v15 * v14];
  a7[v14] = 0;
  return 0;
}

uint64_t sub_10068E2AC(uint64_t result, uint64_t a2, int a3, double a4, double a5)
{
  do
  {
    v5 = 2.00416836e-292;
    if (fabs(a4 * 2.00416836e-292) <= fabs(a5) || a5 == 0.0)
    {
      if (fabs(a5 * 2.00416836e-292) <= fabs(a4))
      {
        v6 = 0;
        v5 = a5 / a4;
      }

      else
      {
        v6 = 1;
        v5 = 4.98960077e291;
        a5 = a5 * 2.00416836e-292;
      }
    }

    else
    {
      v6 = 1;
      a4 = a4 * 2.00416836e-292;
    }

    if (result >= 1)
    {
      v7 = result;
      v8 = (a2 + 8 * a3 - 8);
      do
      {
        *v8 = v5 * *v8;
        ++v8;
        --v7;
      }

      while (v7);
    }
  }

  while (v6);
  return result;
}

uint64_t sub_10068E34C(uint64_t a1)
{
  *sub_100589578(a1, "MapService", 512) = &off_100B054A8;
  if (qword_100B54DB8 != -1)
  {
    sub_10085C2C8();
  }

  sub_100589880(a1, qword_100B54DB0);
  return a1;
}

void sub_10068E3E0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10068E420(uint64_t a1, uint64_t a2)
{
  result = sub_1000DFB74(a2, *(a1 + 32));
  if (!result)
  {
    v5 = *(a1 + 32);
    v7 = 0;
    sub_100016250(&v7);
    *&v6 = v7;
    *(&v6 + 1) = SWORD2(v7);
    return sub_100539554(a2, v5, 0, &v6, 0);
  }

  return result;
}

uint64_t sub_10068E494(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v7 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = a3;
    v14 = 2080;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In MapService::setServiceSetting with key: %s and value: %s", &v12, 0x16u);
  }

  result = 3;
  if (a2 && a3 && a4)
  {
    if (!strncmp(a3, "BT_KEY_MAP_ENABLED", 0x13uLL))
    {
      v9 = strncmp(a4, "BT_VALUE_MAP_ENABLED", 0x15uLL);
      v10 = qword_100BCEAA8;
      v11 = os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting mapEnabled to False", &v12, 2u);
        }

        sub_100541370(a2, 0);
        if (qword_100B54DB8 != -1)
        {
          sub_10085C2DC();
        }

        sub_10057D5F0(qword_100B54DB0, a2);
      }

      else
      {
        if (v11)
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting mapEnabled to True", &v12, 2u);
        }

        sub_100541370(a2, 1);
      }

      return 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_10068E658(uint64_t a1, uint64_t a2, const char *a3, char *a4)
{
  v7 = qword_100BCEAA8;
  if (os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In MapService::getServiceSetting with key: %s", &v12, 0xCu);
  }

  result = 3;
  if (a2 && a3 && a4)
  {
    if (!strncmp(a3, "BT_KEY_MAP_ENABLED", 0x13uLL))
    {
      v9 = sub_1005412C4(a2);
      v10 = qword_100BCEAA8;
      v11 = os_log_type_enabled(qword_100BCEAA8, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning mapEnabled as True", &v12, 2u);
        }

        result = 0;
        strcpy(a4, "BT_VALUE_MAP_ENABLED");
      }

      else
      {
        if (v11)
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning mapEnabled as False", &v12, 2u);
        }

        result = 0;
        strcpy(a4, "BT_VALUE_MAP_DISABLED");
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_10068E860(uint64_t a1)
{
  *a1 = off_100B055C8;
  *(a1 + 8) = off_100B05670;
  *(a1 + 16) = off_100B056D0;
  *(a1 + 24) = off_100B05790;
  *(a1 + 32) = &off_100B057B0;
  sub_100044BBC(a1 + 40);
  *(a1 + 174) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  mach_timebase_info((a1 + 176));
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  return a1;
}

void sub_10068E978(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10085C304();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 8);
  if (qword_100B508B0 != -1)
  {
    sub_10085C32C();
  }

  sub_100749B80(off_100B508A8, a1 + 16, 0);
  if (qword_100B50AA0 != -1)
  {
    sub_10085C340();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 32);

  sub_10068EA5C(a1);
}

void sub_10068EA5C(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  sub_100007E30(__p, "com.apple.bluetooth.Server.FastconnectACL");
  if (qword_100B50B88 != -1)
  {
    sub_10085C354();
  }

  if (sub_100044414(qword_100B50B80, __p))
  {
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C37C();
    }
  }

  else
  {
    if (qword_100B50B88 != -1)
    {
      sub_10085C354();
    }

    *(a1 + 120) = sub_1000117DC(qword_100B50B80, *(a1 + 112));
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10068EB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10068EB50(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10085C340();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  sub_10007A3F0(off_100B51070 + 1896, a1 + 8);
  if (qword_100B50B88 != -1)
  {
    sub_10085C304();
  }

  sub_100079604(qword_100B50B80, *(a1 + 112));
  if (qword_100B50B88 != -1)
  {
    sub_10085C304();
  }

  v2 = qword_100B50B80 + 8;

  sub_10007A3F0(v2, a1 + 24);
}

uint64_t sub_10068EC28(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 40);
  if (*(a1 + 120) && *(a1 + 128) && *(a1 + 104) == 1)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10085C3B0();
    }

    if (*(off_100B50A98 + 60) == 1)
    {
      v4 = *(a1 + 136);
      if (v4)
      {
        if (v4 == a2)
        {
          v5 = qword_100BCEAB8;
          if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(*(a1 + 120), __p);
            v6 = v12 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v15 = v6;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LE Scan timeout for session%{public}s ", buf, 0xCu);
            if (v12 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else if (*(a1 + 144) != a2)
        {
          return sub_1000088CC(v13);
        }

        *(a1 + 136) = 0;
        sub_10000801C(v13);
        *(a1 + 192) = mach_absolute_time();
        (*(*a1 + 8))(a1, *(a1 + 128));
        sub_10068EEB0(a1);
        if (qword_100B50C68 != -1)
        {
          sub_10085C3D8();
        }

        sub_10072D454(off_100B50C60, 0);
        v7 = qword_100BCEAB8;
        if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_INFO))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Resume leScan", __p, 2u);
        }

        v8 = sub_100007EE8();
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10068EF2C;
        v10[3] = &unk_100ADF8F8;
        v10[4] = a1;
        sub_10000CA94(v8, v10);
      }
    }
  }

  return sub_1000088CC(v13);
}

void sub_10068EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10068EEB0(uint64_t a1)
{
  v2 = sub_100017F4C();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10068F6B8;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_10068EF2C(uint64_t a1)
{
  *(*(a1 + 32) + 108) = 1;
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  v2 = off_100B51070;

  return sub_1007ADB50(v2, @"com.apple.bluetooth.fastConnect");
}

uint64_t sub_10068EF84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) || (v4 = qword_100BCEAB8, !os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_FAULT)))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_16:
    v16 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_FAULT))
    {
      sub_10085C64C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    return 1;
  }

  sub_10085C400(v4, v5, v6, v7, v8, v9, v10, v11);
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (!*(a1 + 120))
  {
    return 1;
  }

  if (*(a1 + 128))
  {
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C478();
    }

    return 303;
  }

  v13 = mach_absolute_time();
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = v13;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v14 = sub_10000E92C();
  if ((*(*v14 + 8))(v14) && *(a1 + 175) == 1 && (*(a1 + 174) & 1) == 0)
  {
    sub_1000031B0();
    v15 = sub_10023D9E0(sub_10068F2A4);
    sub_10000C198();
    if (v15)
    {
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10085C4AC();
      }
    }

    else
    {
      *(a1 + 174) = 1;
    }
  }

  if ((*(a1 + 104) & 1) != 0 || (*(a1 + 105) & 1) != 0 || (*(a1 + 107) & 1) != 0 || (*(a1 + 106) & 1) != 0 || *(a1 + 108) == 1)
  {
    v24 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C598(a2, v24);
    }

    return 400;
  }

  *(a1 + 128) = a2;
  v25 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Start BBFC", v29, 2u);
  }

  v26 = mach_absolute_time();
  *(a1 + 208) = v26;
  if (*(a1 + 109))
  {
    v27 = sub_10068F3F8(v26, (a1 + 152), (a1 + 168));
  }

  else
  {
    if (qword_100B50AB0 != -1)
    {
      sub_10085C4E0();
    }

    if (sub_10055C0F4(off_100B50AA8, (a1 + 152), a1 + 168))
    {
      goto LABEL_38;
    }

    v27 = sub_10068F3F8(0, (a1 + 152), (a1 + 168));
    *(a1 + 109) = 1;
  }

  if (v27)
  {
LABEL_38:
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C508();
    }

    v28 = 2;
LABEL_41:
    *(a1 + 232) = v28;
    sub_10068EEB0(a1);
    return 0;
  }

  *(a1 + 105) = 1;
  if (qword_100B508B0 != -1)
  {
    sub_10085C53C();
  }

  result = sub_10076B770(off_100B508A8);
  if (result)
  {
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C564();
    }

    *(a1 + 105) = 0;
    v28 = 3;
    goto LABEL_41;
  }

  return result;
}

void sub_10068F2A4(int a1)
{
  if (qword_100B54380 != -1)
  {
    sub_10085C6C4();
  }

  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = 0;
  (*(*off_100B54378 + 24))(off_100B54378, &v8, &v7, &v6, &v5);
  v2 = sub_10000E92C();
  v3 = (*(*v2 + 8))(v2);
  if (!a1 && v3)
  {
    v4 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v10 = v8;
      v11 = 2048;
      v12 = v7;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BBFC scanprep_time = %llums, scan_time = %llums, page_time = %llums, connection_time = %llums", buf, 0x2Au);
    }
  }
}

uint64_t sub_10068F3F8(int a1, __int128 *a2, _BYTE *__buf)
{
  do
  {
    do
    {
      arc4random_buf(__buf, 3uLL);
    }

    while (!(*__buf | __buf[2]));
  }

  while (!(*__buf ^ 0xFF | __buf[2]));
  *__buf = *__buf & 0x3F | 0x40;
  if (*a2 == 0)
  {
    return 103;
  }

  if (!(*__buf | __buf[2]))
  {
    return 101;
  }

  return sub_1000457E4(a2, __buf, (__buf + 3));
}

void sub_10068F4AC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 || (v6 = qword_100BCEAB8, os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_FAULT)) && (*__p = 136446210, *&__p[4] = "m_Session", _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", __p, 0xCu), (v2 = *(a1 + 120)) != 0))
  {
    v3 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v2, __p);
      v4 = v9 >= 0 ? __p : *__p;
      *buf = 136446210;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LE stop scanning for session %{public}s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }

    if (*(a1 + 104) == 1)
    {
      v5 = sub_100007EE8();
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10068F658;
      v7[3] = &unk_100ADF8F8;
      v7[4] = a1;
      sub_10000D334(v5, v7);
      *(a1 + 104) = 0;
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }
}

uint64_t sub_10068F658(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  v2 = off_100B51070;
  v3 = *(v1 + 120);

  return sub_100023EC0(v2, v3, 1, 1, 0);
}

void sub_10068F6B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 224) = mach_absolute_time();
  if (*(v1 + 128))
  {
    if (qword_100B50AC0 != -1)
    {
      sub_10085C6D8();
    }

    v2 = off_100B50AB8;
    v3 = *(v1 + 128);
    if (sub_1000295DC(v3))
    {
      v4 = sub_1000E2140(*(v1 + 128), 21);
    }

    else
    {
      v4 = 0;
    }

    sub_100594D24(v2, v3, v4);
    *(v1 + 128) = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
    {
      sub_10085C6EC();
    }

    *(v1 + 232) = 4;
  }
}

void sub_10068F780(uint64_t a1)
{
  if (qword_100BC6F18 != -1)
  {
    sub_10085C748();
  }

  if (*(a1 + 120) || (v6 = qword_100BCEAB8, os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_FAULT)) && !sub_10085C75C(v6, (a1 + 120), v7, v8, v9, v10, v11, v12))
  {
    if (*(a1 + 106) == 1)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 1;
      v2 = qword_100BCEAB8;
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "leScanPaused", buf, 2u);
        v2 = qword_100BCEAB8;
      }

      *(a1 + 106) = 0;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "add EventListener In Paused", buf, 2u);
      }

      if (qword_100B51078 != -1)
      {
        sub_10085C7EC();
      }

      sub_1000DB5D8(off_100B51070 + 1928, a1 + 8);
      if (qword_100B50C68 != -1)
      {
        sub_10085C3D8();
      }

      v3 = sub_10072D454(off_100B50C60, (*(a1 + 169) << 32) | (*(a1 + 168) << 40) | (*(a1 + 170) << 24) | (*(a1 + 171) << 16) | (*(a1 + 172) << 8) | *(a1 + 173) | 0x1000000000000);
      *(v16 + 6) = v3;
      if (!v3)
      {
        operator new();
      }

      v4 = qword_100BCEAB8;
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fail to set RPA, skip BBFC", buf, 2u);
      }

      *(a1 + 232) = 5;
      v5 = sub_100007EE8();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10068FC1C;
      v13[3] = &unk_100ADF8F8;
      v13[4] = a1;
      sub_10000CA94(v5, v13);
      sub_10068EEB0(a1);
      _Block_object_dispose(&v15, 8);
    }
  }
}

void sub_10068FAA8(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BBFC");
  sub_100007E30(__p, "ScanTimeOut");
  v2 = (*(*v1 + 88))(v1, buf, __p, &dword_100BC6F10);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = dword_100BC6F10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: BBFC: ScanTimeOut overriden %d", buf, 8u);
  }
}

void sub_10068FBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10068FC1C(uint64_t a1)
{
  *(*(a1 + 32) + 108) = 1;
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  v2 = off_100B51070;

  return sub_1007ADB50(v2, @"com.apple.bluetooth.fastConnect");
}

void sub_10068FC74(void *a1)
{
  v2 = a1[5];
  *(v2 + 216) = mach_absolute_time();
  v3 = a1[6];
  *(v3 + 3) = 1;
  v4 = [NSSet setWithObject:@"com.apple.bluetoothd.FastConnectManager"];
  v5 = *(v3 + 176);
  *(v3 + 176) = v4;

  v6 = a1[6];
  *(v6 + 192) = 265;
  v7 = *(v6 + 200);
  *(v6 + 200) = 0;

  v8 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(*(v2 + 120), __p);
    v9 = v20 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start LE scanning for session %{public}s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B51078 != -1)
  {
    sub_10085C7EC();
  }

  *(*(a1[4] + 8) + 24) = sub_10006E2A0(off_100B51070, *(v2 + 120), a1[6]);
  if (!*(*(a1[4] + 8) + 24))
  {
    *(v2 + 184) = mach_absolute_time();
    *(v2 + 104) = 1;
    if (dword_100BC6F10 < 1)
    {
      v12 = sub_10000C798();
      if ((*(*v12 + 352))(v12) & 1) != 0 || (v13 = sub_10000C798(), ((*(*v13 + 416))(v13)) || (v14 = sub_10000C798(), (*(*v14 + 1000))(v14)))
      {
        v15 = sub_10000C798();
        (*(*v15 + 872))(v15);
      }
    }

    operator new();
  }

  v10 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
  {
    sub_100018384(*(v2 + 120), __p);
    v16 = v20 >= 0 ? __p : __p[0];
    v17 = *(*(a1[4] + 8) + 24);
    *buf = 136446466;
    v22 = v16;
    v23 = 1024;
    v24 = v17;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Fail LE scan for session %{public}s with error %d, skipp BBFC", buf, 0x12u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(v2 + 232) = 6;
  if (qword_100B50C68 != -1)
  {
    sub_10085C3D8();
  }

  sub_10072D454(off_100B50C60, 0);
  v11 = sub_100007EE8();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100690078;
  v18[3] = &unk_100ADF8F8;
  v18[4] = v2;
  sub_10000CA94(v11, v18);
  sub_10068EEB0(v2);
}

uint64_t sub_100690078(uint64_t a1)
{
  *(*(a1 + 32) + 108) = 1;
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  v2 = off_100B51070;

  return sub_1007ADB50(v2, @"com.apple.bluetooth.fastConnect");
}

uint64_t sub_1006900D8(uint64_t result)
{
  if (*(result + 108) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "leScanResumed", v5, 2u);
    }

    *(v3 + 108) = 0;
    if (qword_100B51078 != -1)
    {
      sub_10085C7EC();
    }

    sub_10007A3F0(off_100B51070 + 1928, v3 + 8);
    *(v3 + 107) = 1;
    if (qword_100B508B0 != -1)
    {
      sub_10085C53C();
    }

    return sub_100768CC0(off_100B508A8);
  }

  return result;
}

void sub_1006901B8(uint64_t a1)
{
  if (*(a1 + 105) == 1)
  {
    v8 = v1;
    v9 = v2;
    *(a1 + 105) = 0;
    v4 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "leConnectionManagerPaused", v7, 2u);
    }

    v5 = sub_100007EE8();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10069028C;
    v6[3] = &unk_100ADF8F8;
    v6[4] = a1;
    sub_10000CA94(v5, v6);
  }
}

void sub_10069028C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[106] = 1;
  if (qword_100B51078 != -1)
  {
    sub_10085C318();
  }

  v2 = sub_1007AD898(off_100B51070, @"com.apple.bluetooth.fastConnect");
  v3 = qword_100BCEAB8;
  if (v2)
  {
    if (v2 == 401)
    {
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10085C814();
      }

      (*(*v1 + 72))(v1);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10085C848();
      }

      v1[232] = 7;
      v1[106] = 0;
      v4 = sub_100007EE8();
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100690408;
      v6[3] = &unk_100ADF8F8;
      v6[4] = v1;
      sub_10000CA94(v4, v6);
      sub_10068EEB0(v1);
    }
  }

  else if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pause LEObserver", v5, 2u);
  }
}

uint64_t sub_100690408(uint64_t a1)
{
  *(*(a1 + 32) + 107) = 1;
  if (qword_100B508B0 != -1)
  {
    sub_10085C32C();
  }

  v2 = off_100B508A8;

  return sub_100768CC0(v2);
}

void sub_100690460(uint64_t a1)
{
  if (*(a1 + 107) == 1)
  {
    v6 = v1;
    v7 = v2;
    v4 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "leConnectionManagerResumed", v5, 2u);
    }

    *(a1 + 107) = 0;
  }
}

void sub_1006904E8(uint64_t a1)
{
  v2 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "stackDidStart", v5, 2u);
  }

  *(a1 + 109) = 0;
  *(a1 + 174) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  v3 = sub_10000E92C();
  if ((*(*v3 + 8))(v3) && *(a1 + 175) == 1 && (*(a1 + 174) & 1) == 0)
  {
    sub_1000031B0();
    v4 = sub_10023D9E0(sub_10068F2A4);
    sub_10000C198();
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10085C87C();
      }
    }

    else
    {
      *(a1 + 174) = 1;
    }
  }
}

uint64_t sub_10069060C(uint64_t result)
{
  *(result + 174) = 0;
  *(result + 104) = 0;
  *(result + 108) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 128) = 0;
  return result;
}

uint64_t sub_100690624(uint64_t result)
{
  *(result + 142) = 0;
  *(result + 72) = 0;
  *(result + 76) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  return result;
}

void sub_10069063C(uint64_t a1, int a2)
{
  v4 = qword_100BCEAB8;
  if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "disabled";
    if (a2)
    {
      v5 = "enabled";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BBFC TimeLogging is %s", &v7, 0xCu);
  }

  *(a1 + 175) = a2;
  if (*(a1 + 174) == 1)
  {
    sub_1000031B0();
    v6 = sub_10023DAC0(sub_10068F2A4);
    sub_10000C198();
    if (v6)
    {
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_ERROR))
      {
        sub_10085C8B0();
      }
    }

    else
    {
      *(a1 + 174) = 0;
    }
  }
}

void sub_10069075C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = mach_absolute_time();
  v11 = v10;
  v12 = *(a1 + 184);
  if (v12)
  {
    v13 = v12 - *(a1 + 200);
    v14 = *(a1 + 176);
    v15 = *(a1 + 180);
    *a2 = v13 * v14 / v15 / 0xF4240;
    *a3 = (*(a1 + 192) - *(a1 + 184)) * v14 / v15 / 0xF4240;
    v16 = (v10 - *(a1 + 192)) * v14 / v15 / 0xF4240;
  }

  else
  {
    v17 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BBFC wasn't started", v18, 2u);
    }

    v16 = 0;
    *a2 = 0;
    *a3 = 0;
    v14 = *(a1 + 176);
    v15 = *(a1 + 180);
  }

  *a4 = v16;
  *a5 = (v11 - *(a1 + 200)) * v14 / v15 / 0xF4240;
}

std::string *sub_100690898(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, _BYTE *a5, std::string *this)
{
  if (*(a1 + 184))
  {
    v6 = *(a1 + 176);
    v7 = *(a1 + 180);
    *a2 = (*(a1 + 216) - *(a1 + 208)) * v6 / v7 / 0xF4240;
    *a3 = (*(a1 + 192) - *(a1 + 216)) * v6 / v7 / 0xF4240;
    *a4 = (*(a1 + 224) - *(a1 + 208)) * v6 / v7 / 0xF4240;
    v8 = *(a1 + 232);
    *a5 = v8;
    if (v8 > 7)
    {
      v9 = "Invalid BBFC Status";
    }

    else
    {
      v9 = (&off_100B05948)[v8];
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    v9 = "Unknown";
    *a5 = 0;
  }

  return std::string::assign(this, v9);
}

void sub_10069095C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    if (v5 >= v4)
    {
      v7 = (v5 - *a2) >> 3;
      if ((v7 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v8 = v4 - *a2;
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
        sub_100008108(a2, v10);
      }

      v11 = (8 * v7);
      *v11 = v2;
      v6 = 8 * v7 + 8;
      v12 = *(a2 + 8) - *a2;
      v13 = v11 - v12;
      memcpy(v11 - v12, *a2, v12);
      v14 = *a2;
      *a2 = v13;
      *(a2 + 8) = v6;
      *(a2 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5 = v2;
      v6 = (v5 + 1);
    }

    *(a2 + 8) = v6;
  }
}

void sub_100690A38(void *a1)
{
  sub_100690AFC(a1);

  operator delete();
}

uint64_t sub_100690AA8(uint64_t a1)
{
  if (qword_100B54380 != -1)
  {
    sub_10085C6C4();
  }

  v2 = off_100B54378;

  return sub_10068EC28(v2, a1);
}

void *sub_100690AFC(void *a1)
{
  *a1 = off_100B055C8;
  a1[1] = off_100B05670;
  a1[2] = off_100B056D0;
  a1[3] = off_100B05790;
  a1[4] = &off_100B057B0;
  sub_10007A068(a1 + 5);
  return a1;
}

void sub_100691484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_100691500(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] deviceDidStartScanning with error %@\n", &v6, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[3] enumerateKeysAndObjectsUsingBlock:&stru_100B059A8];
    }
  }
}

void sub_100691610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 UUIDString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Found device %@ with advertisementData %@\n", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1006917D0;
      v10[3] = &unk_100B059F8;
      v10[4] = WeakRetained;
      v11 = v5;
      [v6 enumerateObjectsUsingBlock:v10];
    }
  }
}

void sub_1006917D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v9 = v3;
  v6 = [v3 objectForKeyedSubscript:@"BTVCBonjourLinkType"];
  v7 = [v6 unsignedIntValue];
  v8 = [v9 objectForKeyedSubscript:@"BTVCBonjourPayloadKey"];
  [v5 btvcBonjourLink:v4 didDiscoverType:v7 withData:v8 fromPeer:*(a1 + 40) peerInfo:0];
}

void sub_1006918B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 UUIDString];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Lost device %@\n", buf, 0xCu);
  }

  if (WeakRetained)
  {
    if (v6)
    {
      [v6 valueForKey:@"BTVCBonjourLinkType"];
    }

    else
    {
      [WeakRetained[3] allKeys];
    }
    v10 = ;
    if (objc_opt_respondsToSelector())
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100691AA0;
      v11[3] = &unk_100B059F8;
      v11[4] = WeakRetained;
      v12 = v5;
      [v10 enumerateObjectsUsingBlock:v11];
    }
  }
}

void sub_100691AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 40) btvcBonjourLink:*(a1 + 32) didLosePeer:*(a1 + 40) type:{objc_msgSend(v3, "unsignedIntValue")}];
}

void sub_100691B20(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v13 = a2;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Advertising state update isStarted %d with error %@\n", buf, 0x12u);
    }

    v8 = WeakRetained[3];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100691C90;
    v9[3] = &unk_100B05A48;
    v11 = a2;
    v9[4] = WeakRetained;
    v10 = v5;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void sub_100691C90(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 40) btvcBonjourLink:*(a1 + 32) didStartAdvertisingType:{objc_msgSend(v6, "unsignedIntValue")}];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 40) btvcBonjourLink:*(a1 + 32) didStopAdvertisingType:objc_msgSend(v6 withError:{"unsignedIntValue"), *(a1 + 40)}];
  }
}

void sub_100691D80(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Device didConnect \n", &v16, 2u);
  }

  if (WeakRetained)
  {
    v14 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138413058;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2048;
      v21 = a4;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Device didConnect %@ with parameter %@ role %ld error %@\n", &v16, 0x2Au);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] btvcBonjourLink:WeakRetained didConnectToPeer:v9 parameters:v10 role:a4 error:v11];
    }

    else
    {
      v15 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Device didConnect respondsToSelector failed\n", &v16, 2u);
      }
    }
  }
}

void sub_100691F70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Device didDisConnect %@ with parameter %@\n", &v9, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] btvcBonjourLink:WeakRetained didDisconnectFromPeer:v5 parameters:v6 error:0];
    }
  }
}

void sub_1006920A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BTVCBonjourLink] Device didReceiveData from %@ with data %@\n", &v9, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[5] btvcBonjourLink:WeakRetained didReceiveData:v6 fromPeer:v5];
    }
  }
}

void sub_100692470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));

  objc_destroyWeak(&location);
  objc_sync_exit(v17);

  _Unwind_Resume(a1);
}

void sub_1006924D0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v7 = *(a1 + 40);
    if (v8)
    {
      [v6 btvcBonjourLink:v5 didFailToStartAdvertisingOfType:v7 withError:v8];
    }

    else
    {
      [v6 btvcBonjourLink:v5 didStartAdvertisingType:v7];
    }
  }
}

void sub_100692844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);

  objc_sync_exit(v19);
  _Unwind_Resume(a1);
}

void sub_1006928C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] btvcBonjourLink:WeakRetained didStopAdvertisingType:*(a1 + 40) withError:v6];
  }
}

void sub_100692BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_100692D54(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100693088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006930BC(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained[5] btvcBonjourLink:WeakRetained didSendData:*(a1 + 32) toPeer:*(a1 + 40) error:v4];
  }
}

uint64_t sub_1006931D0(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  *(a1 + 72) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_100693218(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  *(a1 + 80) = a2;
  return sub_1000088CC(v5);
}

void sub_100693260(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  __dst = 0uLL;
  v22 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(&__dst, *a3, *(a3 + 8));
  }

  else
  {
    __dst = *a3;
    v22 = *(a3 + 16);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006934D0;
  block[3] = &unk_100AE0880;
  v20 = a2;
  block[4] = a1;
  block[5] = v8;
  dispatch_async(global_queue, block);
  v10 = dispatch_time(0, 15000000000);
  if (dispatch_group_wait(v8, v10))
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Timed out printing all debug logs during force restart", buf, 2u);
    }
  }

  v12 = sub_10000F034();
  (*(*v12 + 120))(v12, a2, v5);
  if (a2 == 132)
  {
    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100B05B50);
    }

    v13 = qword_100B53FE0;
    sub_100007E30(buf, "Restart");
    sub_100007E30(__p, "OI_STATUS_INVALID_ROLE");
    sub_1005780BC(v13, buf, __p, 0.0);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *(v5 + 23);
  if (a4)
  {
    if (v14 < 0)
    {
      v5 = *v5;
    }

    sub_1001BAA68(a2, v5);
  }

  if (v14 < 0)
  {
    v5 = *v5;
  }

  sub_1001BAB98(a2, v5);
}

void sub_100693480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006934D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_10000EFCC())
  {
    sub_100693520(v2, *(a1 + 48), 0);
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_100693520(uint64_t a1, unsigned int a2, int a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_10085C8E4();
  }

  sub_10057670C();
  if (qword_100B512C8 != -1)
  {
    sub_10085C8F8();
  }

  sub_10057BF4C(off_100B512C0);
  if (qword_100B50AC0 != -1)
  {
    sub_10085C90C();
  }

  sub_100597E08(off_100B50AB8);
  if (qword_100B50B88 != -1)
  {
    sub_10085C920();
  }

  sub_1006197A0(qword_100B50B80);
  if (qword_100B512E8 != -1)
  {
    sub_10085C934();
  }

  sub_1006E9C24(off_100B512E0);
  if (qword_100B50F68 != -1)
  {
    sub_10085C948();
  }

  sub_100531D74(off_100B50F60);
  if (qword_100B508F0 != -1)
  {
    sub_10085C95C();
  }

  sub_10056E250(off_100B508E8);
  if (qword_100B50940 != -1)
  {
    sub_10085C970();
  }

  sub_100636CCC(off_100B50938);
  if (qword_100B50950 != -1)
  {
    sub_10085C984();
  }

  sub_10033E9E4(off_100B50948);
  if (qword_100B54220 != -1)
  {
    sub_10085C998();
  }

  sub_1003C63E4(qword_100B54218);
  v3 = sub_1000154A8();
  (*(*v3 + 152))(v3);
  v4 = sub_10000C7D0();
  nullsub_21(v4);
  if (qword_100B50F88 != -1)
  {
    sub_10085C9AC();
  }

  sub_1006E2B60(off_100B50F80, &__p);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (qword_100B50AB0 != -1)
  {
    sub_10085C9C0();
  }

  sub_100566D78(off_100B50AA8);
  if (qword_100B540F0 != -1)
  {
    sub_10085C9E8();
  }

  sub_10036E828(qword_100B540E8);
  if (qword_100B53FD8 != -1)
  {
    sub_10085CA10();
  }

  sub_1004CCEC0(qword_100B53FD0);
  if (qword_100B512F8 != -1)
  {
    sub_10085CA38();
  }

  sub_1003C1C04(off_100B512F0);
  if (qword_100B541E8 != -1)
  {
    sub_10085CA60();
  }

  sub_1004EFF08(qword_100B541E0);
  if (qword_100B50900 != -1)
  {
    sub_10085CA88();
  }

  sub_100712354(qword_100B508F8);
  if (qword_100B50C68 != -1)
  {
    sub_10085CAB0();
  }

  sub_10072ECA4(off_100B50C60);
  if (qword_100B508B0 != -1)
  {
    sub_10085CAD8();
  }

  sub_100770FCC(off_100B508A8);
  if (qword_100B51078 != -1)
  {
    sub_10085CB00();
  }

  sub_1007AE08C(off_100B51070);
  if (qword_100B508C0 != -1)
  {
    sub_10085CB28();
  }

  sub_1007CF204(off_100B508B8);
  if (qword_100B508D0 != -1)
  {
    sub_10085CB50();
  }

  sub_100797C68(off_100B508C8);
  if (qword_100B54208 != -1)
  {
    sub_10085CB78();
  }

  sub_1007F16C8(qword_100B54200);
  if (qword_100B51088 != -1)
  {
    sub_10085CBA0();
  }

  sub_1006A5078(qword_100B51080);
  if (qword_100B54110 != -1)
  {
    sub_10085CBC8();
  }

  sub_1006E62B4(qword_100B54108);
  if (qword_100B54CA0 != -1)
  {
    sub_10085CBF0();
  }

  sub_1006D5FE4(off_100B54C98);
  v5 = sub_10000C798();
  if ((*(*v5 + 384))(v5))
  {
    if (qword_100B54770 != -1)
    {
      sub_10085CC18();
    }

    sub_1005131C0(off_100B54768);
    if (qword_100B547B0 != -1)
    {
      sub_10085CC40();
    }

    sub_100612570(off_100B547A8);
  }

  sub_1000D660C();
  context = objc_autoreleasePoolPush();
  v6 = CFPreferencesCopyKeyList(@"com.apple.BTServer", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v49 = "com.apple.BTServer";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ %s -------------------", buf, 0xCu);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v8 = [(__CFArray *)obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v8)
  {
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = CFPreferencesCopyValue(v11, @"com.apple.BTServer", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
        v13 = [v12 description];
        v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v49 = v11;
          *&v49[8] = 2112;
          v50 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump: \t%@ -> %@", buf, 0x16u);
        }
      }

      v8 = [(__CFArray *)obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v8);
  }

  v16 = CFPreferencesCopyKeyList(@"com.apple.MobileBluetooth.debug", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v49 = "com.apple.MobileBluetooth.debug";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ %s -------------------", buf, 0xCu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = v16;
  v18 = [(__CFArray *)v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v18)
  {
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v35);
        }

        v21 = *(*(&v37 + 1) + 8 * j);
        v22 = CFPreferencesCopyValue(v21, @"com.apple.MobileBluetooth.debug", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
        v23 = [v22 description];
        v24 = [v23 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

        v25 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v49 = v21;
          *&v49[8] = 2112;
          v50 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump: \t%@ -> %@", buf, 0x16u);
        }
      }

      v18 = [(__CFArray *)v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(context);
  v26 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v49 = "os_log state";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ %s -------------------", buf, 0xCu);
    v26 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
    v28 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    *buf = 67109376;
    *v49 = v27;
    *&v49[4] = 1024;
    *&v49[6] = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "statedump: os_log settings: info %d, debug %d", buf, 0xEu);
  }

  sub_1000E771C(a2);
  if (a3)
  {
    if ((*(*a1 + 464))(a1))
    {
      v29 = sub_1000CDD74(a2);
      (*(*a1 + 504))(a1, v30, v29);
    }
  }
}

uint64_t sub_100693F88(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100693520(a1, 0xE79u, 1);
    a1 = sub_1001BA814(3705);
    v2 = vars8;
  }

  return sub_1001BA810(a1);
}

void sub_100693FC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (qword_100BC6F28 != -1)
  {
    sub_10085CC68();
  }

  v5 = off_100BC6F20;
  if (off_100BC6F20)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v7 = [NSString stringWithUTF8String:a2];
    v6 = getpid();
    v5(v7, a3, v6);
  }
}

void sub_100694550()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 48) = v3;
    operator delete(v3);
  }

  sub_1003C95E8(v1, *(v0 + 16));

  operator delete();
}

void sub_100694CE0()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BCE8B8 = os_log_create("com.apple.bluetooth", "Server.A2DP");
  qword_100BCE8C0 = os_log_create("com.apple.bluetooth", "Server.AACP");
  qword_100BCE8C8 = os_log_create("com.apple.bluetooth", "Server.Accessory");
  qword_100BCE8D0 = os_log_create("com.apple.bluetooth", "Server.Audio");
  qword_100BCE8D8 = os_log_create("com.apple.bluetooth", "Server.Core");
  qword_100BCE8E0 = os_log_create("com.apple.bluetooth", "Server.Coex");
  qword_100BCE8E8 = os_log_create("com.apple.bluetooth", "Server.CloudPairing");
  qword_100BCE8F0 = os_log_create("com.apple.bluetooth", "Server.Discovery");
  qword_100BCE8F8 = os_log_create("com.apple.bluetooth", "Server.Handsfree");
  qword_100BCE900 = os_log_create("com.apple.bluetooth", "Server.LE");
  qword_100BCE908 = os_log_create("com.apple.bluetooth", "Server.LE.Security");
  qword_100BCE910 = os_log_create("com.apple.bluetooth", "Server.GATT");
  qword_100BCE918 = os_log_create("com.apple.bluetooth", "Server.LE.Scan");
  qword_100BCE920 = os_log_create("com.apple.bluetooth", "Server.NVRAM");
  qword_100BCE928 = os_log_create("com.apple.bluetooth", "Server.ScalablePipe");
  qword_100BCE930 = os_log_create("com.apple.bluetooth", "Server.Remote");
  qword_100BCE938 = os_log_create("com.apple.bluetooth", "Server.SDP");
  qword_100BCE940 = os_log_create("com.apple.bluetooth", "Server.Security");
  qword_100BCE948 = os_log_create("com.apple.bluetooth", "Server.Telephony");
  qword_100BCE950 = os_log_create("com.apple.bluetooth", "Server.XPC");
  qword_100BCE958 = os_log_create("com.apple.bluetooth", "Server.PipeMgr");
  qword_100BCE960 = os_log_create("com.apple.bluetooth", "Server.MagicPairing");
  qword_100BCE968 = os_log_create("com.apple.bluetooth", "Server.MobileAsset");
  qword_100BCE970 = os_log_create("com.apple.bluetooth", "Server.L2CAPChannel");
  qword_100BCE978 = os_log_create("com.apple.bluetooth", "Server.Phonebook");
  qword_100BCE980 = os_log_create("com.apple.bluetooth", "Server.LE.Connection");
  qword_100BCE988 = os_log_create("com.apple.bluetooth", "Server.App");
  qword_100BCE990 = os_log_create("com.apple.magnetpacketlog", "bluetooth");
  qword_100BCE9A0 = os_log_create("com.apple.bluetooth", "Server.ANCSAuthorization");
  qword_100BCE9A8 = os_log_create("com.apple.bluetooth", "Server.LE.Advertise");
  qword_100BCE9B0 = os_log_create("com.apple.bluetooth", "Server.LE.AdvertiseEx");
  qword_100BCE9B8 = os_log_create("com.apple.bluetooth", "Server.TimeLine.App");
  qword_100BCE9C0 = os_log_create("com.apple.bluetooth", "Server.TimeLine.Device");
  qword_100BCE9C8 = os_log_create("com.apple.bluetooth", "Server.TimeLine.Power");
  qword_100BCE9D0 = os_log_create("com.apple.bluetooth", "Server.TimeLine.Error");
  qword_100BCE9D8 = os_log_create("com.apple.bluetooth", "Server.TimeLine.Local");
  qword_100BCE9E0 = os_log_create("com.apple.bluetooth", "Server.AppRestoration");
  qword_100BCE9E8 = os_log_create("com.apple.bluetooth", "Server.USBPairing");
  qword_100BCE9F0 = os_log_create("com.apple.bluetooth", "Server.SonyGamepadPairing");
  qword_100BCE9F8 = os_log_create("com.apple.bluetooth", "Server.BTResourceManager");
  qword_100BCEA00 = os_log_create("com.apple.bluetooth", "Server.LinkQuality");
  qword_100BCEA08 = os_log_create("com.apple.bluetooth", "Server.RFCOMMChannel");
  qword_100BCEA10 = os_log_create("com.apple.bluetooth", "Server.MacCoex");
  qword_100BCEA18 = os_log_create("com.apple.bluetooth", "ExposureNotification");
  qword_100BCEA20 = os_log_create("com.apple.ExposureNotification", "Crypto");
  qword_100BCEA28 = os_log_create("com.apple.ExposureNotification", "Manager");
  qword_100BCEA30 = os_log_create("com.apple.ExposureNotification", "Database");
  qword_100BCEA38 = os_log_create("com.apple.ExposureNotification", "Scanning");
  qword_100BCEA40 = os_log_create("com.apple.ExposureNotification", "Advertising");
  qword_100BCEA48 = os_log_create("com.apple.bluetooth", "SensorTracking");
  qword_100BCEA50 = os_log_create("com.apple.bluetooth", "Server.LEAudio");
  qword_100BCEA58 = os_log_create("com.apple.bluetooth", "Server.BandSwitchManager");
  qword_100BCEA60 = os_log_create("com.apple.bluetooth", "Server.EventDispatcher");
  qword_100BCEA68 = os_log_create("com.apple.bluetooth", "AOPInterfaceManager");
  qword_100BCEA70 = os_log_create("com.apple.bluetooth", "Server.VirtualController");
  qword_100BCEA78 = os_log_create("com.apple.bluetooth", "Server.XPCParameters");
  if (sub_100067238())
  {
    v1 = ct_green_tea_logger_create();
  }

  else
  {
    v1 = 0;
  }

  qword_100BCEA80 = v1;
  qword_100BCEA88 = os_log_create("com.apple.bluetooth", "Server.NetSharing");
  qword_100BCEA90 = os_log_create("com.apple.bluetooth", "Server.LEA");
  qword_100BCEA98 = os_log_create("com.apple.bluetooth", "Server.Gaming");
  qword_100BCEAA0 = os_log_create("com.apple.bluetooth", "Server.HID");
  qword_100BCEAA8 = os_log_create("com.apple.bluetooth", "Server.MAP");
  qword_100BCEAB0 = os_log_create("com.apple.bluetooth", "Server.Braille");
  qword_100BCEAB8 = os_log_create("com.apple.bluetooth", "Server.FastconnectACL");
  qword_100BCEAC0 = os_log_create("com.apple.bluetooth", "Server.FastConnect");
  qword_100BCEAC8 = os_log_create("com.apple.bluetooth", "Server.LPM");
  qword_100BCEAD0 = os_log_create("com.apple.bluetooth", "Server.BTDaemon");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100695388(uint64_t a1)
{
  v2 = sub_100589578(a1, "NetworkConsumerService", 4096);
  *v2 = &off_100B05F00;
  v2[41] = &off_100B06008;
  if (qword_100B54DD8 != -1)
  {
    sub_10085CC7C();
  }

  sub_100589880(a1, off_100B54DD0);
  return a1;
}

uint64_t sub_100695438(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 56))(v2, 256))
  {
    v3 = sub_100017E6C();
    sub_1005AAE0C(v3 + 264, a1 + 328);
  }

  return sub_100589A28(a1);
}

uint64_t sub_1006954AC(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 56))(v2, 256))
  {
    v3 = sub_100017E6C();
    sub_1005AB34C(v3 + 264, a1 + 328);
  }

  return sub_100589D2C(a1);
}

uint64_t sub_100695520(uint64_t a1, uint64_t a2)
{
  v13 = xmmword_1008C4B00;
  v14 = xmmword_1008C4AF0;
  memset(v16, 0, sizeof(v16));
  v12 = 0;
  v11 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v14, 4u))
    {
      v4 = 4;
    }

    else if (sub_10053A020(a2, &v13, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v5 = sub_10054BE34(a2, v16, &v12);
    if (v12)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = sub_10024A9C0(v16, 4374, &v11) == 0;
      if (sub_10024A9C0(v16, 4375, &v11) == 0 || v7)
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v8 = *(a1 + 32);
  v15 = 0;
  sub_100016250(&v15);
  *&v10 = v15;
  *(&v10 + 1) = SWORD2(v15);
  return sub_100539554(a2, v8, v4, &v10, 0);
}

uint64_t sub_1006956B8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9 = xmmword_1008C4B00;
  v10 = xmmword_1008C4AF0;
  v8 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = 0;
  v6 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v10, 4u);
    if ((result & 1) == 0)
    {
      result = sub_10053A020(a2, &v9, 4u);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (sub_10054BE34(a2, v11, &v7) && v7)
  {
    result = sub_10024A9C0(v11, 4374, &v6);
    if (!result)
    {
      goto LABEL_13;
    }

    result = sub_10024A9C0(v11, 4375, &v6);
    if (!result)
    {
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      return result;
    }
  }

  result = sub_1005379CC(a2, &v8);
  if (result)
  {
    if ((v8 & 0x20000) != 0)
    {
      result = sub_1000DEB14(a2);
      if (result != 21)
      {
LABEL_13:
        *a3 = 1;
      }
    }
  }

  return result;
}

BOOL sub_100695824(uint64_t a1, uint64_t a2)
{
  v12 = xmmword_1008C4AF0;
  v11 = xmmword_1008C4B00;
  __p = 0;
  v9 = 0;
  v10 = 0;
  if ((sub_10053BFB4(a2, &v12, 8u, &__p) & 1) != 0 || sub_10053BFB4(a2, &v11, 8u, &__p))
  {
    v4 = __p;
    v3 = v9;
    v6 = v9 - __p != 16 || *__p != 1 || *(__p + 2) != 0;
    while (v4 != v3)
    {
      sub_10037D4F4(v4);
      v4 += 16;
      v3 = v9;
    }
  }

  else
  {
    v6 = 1;
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_100695908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100695928(uint64_t result, int a2, int a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      v3 = result;
      result = (*(*result + 112))(result);
      if (result)
      {
        v4 = *(*v3 + 96);

        return v4(v3);
      }
    }
  }

  return result;
}

uint64_t sub_1006959BC(uint64_t result, int a2, int a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      v3 = result - 328;
      result = (*(*(result - 328) + 112))(result - 328);
      if (result)
      {
        v4 = *(*v3 + 96);

        return v4(v3);
      }
    }
  }

  return result;
}

void sub_100695A58(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_100695AF8(uint64_t a1)
{
  *a1 = off_100B06040;
  *(a1 + 8) = off_100B06088;
  sub_100044BBC(a1 + 24);
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 16) = 0;
  *(a1 + 88) = 0;
  *(a1 + 91) = 0;
  return a1;
}

uint64_t sub_100695B80(uint64_t a1)
{
  *a1 = off_100B06040;
  *(a1 + 8) = off_100B06088;
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  sub_10000CEDC(a1 + 96, *(a1 + 104));
  sub_10007A068(a1 + 24);
  return a1;
}

void sub_100695C08(uint64_t a1)
{
  sub_100695B80(a1);

  operator delete();
}

void sub_100695C40(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10085CC90();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  *(a1 + 16) = 0;
}

void sub_100695C90(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10085CC90();
  }

  v2 = off_100B50A98 + 64;

  sub_10007A3F0(v2, a1 + 8);
}

uint64_t sub_100695CE8(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 24);
  if ((*(a1 + 88) & 1) == 0)
  {
    *(a1 + 88) = 1;
    v4 = 0;
    v3 = 0;
    if (qword_100B50AA0 != -1)
    {
      sub_10085CCA4();
    }

    sub_10009BE34(off_100B50A98, &v3);
    *(a1 + 89) = v3;
    *(a1 + 93) = v4;
    sub_100695D94(a1);
  }

  return sub_1000088CC(v5);
}

void sub_100695D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100695D94(IOHIDManagerRef *a1)
{
  v2 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up USB Listener for USB Pairing", buf, 2u);
  }

  sub_1006968C4(a1);
  strcpy(buf, "\v");
  v33 = CFNumberCreate(0, kCFNumberShortType, buf);
  valuePtr = 1452;
  v32 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  v46 = 615;
  v3 = CFNumberCreate(0, kCFNumberShortType, &v46);
  v45 = 620;
  v4 = CFNumberCreate(0, kCFNumberShortType, &v45);
  v44 = 668;
  v5 = CFNumberCreate(0, kCFNumberShortType, &v44);
  v43 = 666;
  v6 = CFNumberCreate(0, kCFNumberShortType, &v43);
  v42 = 671;
  v7 = CFNumberCreate(0, kCFNumberShortType, &v42);
  v41 = 800;
  v31 = CFNumberCreate(0, kCFNumberShortType, &v41);
  v40 = 801;
  v30 = CFNumberCreate(0, kCFNumberShortType, &v40);
  v39 = 802;
  v29 = CFNumberCreate(0, kCFNumberShortType, &v39);
  v38 = 617;
  cf = CFNumberCreate(0, kCFNumberShortType, &v38);
  v37 = 613;
  v28 = CFNumberCreate(0, kCFNumberShortType, &v37);
  v36 = 803;
  v25 = CFNumberCreate(0, kCFNumberShortType, &v36);
  v35 = 804;
  v26 = CFNumberCreate(0, kCFNumberShortType, &v35);
  if (!a1[2])
  {
    v8 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    a1[2] = v8;
    if (v8)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v19 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v21 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v23 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v24 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v15 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      CFDictionaryAddValue(Mutable, @"Transport", @"USB");
      CFDictionaryAddValue(Mutable, @"VendorID", v32);
      CFDictionaryAddValue(Mutable, @"ProductID", v3);
      CFDictionaryAddValue(Mutable, @"PrimaryUsage", v33);
      CFDictionaryAddValue(theDict, @"Transport", @"USB");
      CFDictionaryAddValue(theDict, @"VendorID", v32);
      CFDictionaryAddValue(theDict, @"ProductID", v4);
      CFDictionaryAddValue(theDict, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v18, @"Transport", @"USB");
      CFDictionaryAddValue(v18, @"VendorID", v32);
      CFDictionaryAddValue(v18, @"ProductID", v5);
      CFDictionaryAddValue(v18, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v19, @"Transport", @"USB");
      CFDictionaryAddValue(v19, @"VendorID", v32);
      CFDictionaryAddValue(v19, @"ProductID", v6);
      CFDictionaryAddValue(v19, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v20, @"Transport", @"USB");
      CFDictionaryAddValue(v20, @"VendorID", v32);
      CFDictionaryAddValue(v20, @"ProductID", v7);
      CFDictionaryAddValue(v20, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v21, @"Transport", @"USB");
      CFDictionaryAddValue(v21, @"VendorID", v32);
      CFDictionaryAddValue(v21, @"ProductID", v31);
      CFDictionaryAddValue(v21, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v22, @"Transport", @"USB");
      CFDictionaryAddValue(v22, @"VendorID", v32);
      CFDictionaryAddValue(v22, @"ProductID", v30);
      CFDictionaryAddValue(v22, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v23, @"Transport", @"USB");
      CFDictionaryAddValue(v23, @"VendorID", v32);
      CFDictionaryAddValue(v23, @"ProductID", v29);
      CFDictionaryAddValue(v23, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v24, @"Transport", @"USB");
      CFDictionaryAddValue(v24, @"VendorID", v32);
      CFDictionaryAddValue(v24, @"ProductID", cf);
      CFDictionaryAddValue(v24, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v14, @"Transport", @"USB");
      CFDictionaryAddValue(v14, @"VendorID", v32);
      CFDictionaryAddValue(v14, @"ProductID", v25);
      CFDictionaryAddValue(v14, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v15, @"Transport", @"USB");
      CFDictionaryAddValue(v15, @"VendorID", v32);
      CFDictionaryAddValue(v15, @"ProductID", v28);
      CFDictionaryAddValue(v15, @"PrimaryUsage", v33);
      CFDictionaryAddValue(v16, @"Transport", @"USB");
      CFDictionaryAddValue(v16, @"VendorID", v32);
      CFDictionaryAddValue(v16, @"ProductID", v26);
      CFDictionaryAddValue(v16, @"PrimaryUsage", v33);
      CFArrayAppendValue(v13, Mutable);
      CFArrayAppendValue(v13, theDict);
      CFArrayAppendValue(v13, v18);
      CFArrayAppendValue(v13, v19);
      CFArrayAppendValue(v13, v20);
      CFArrayAppendValue(v13, v21);
      CFArrayAppendValue(v13, v22);
      CFArrayAppendValue(v13, v23);
      CFArrayAppendValue(v13, v24);
      CFArrayAppendValue(v13, v14);
      CFArrayAppendValue(v13, v15);
      CFArrayAppendValue(v13, v16);
      IOHIDManagerSetDeviceMatchingMultiple(a1[2], v13);
      if (IOHIDManagerOpen(a1[2], 0))
      {
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
        {
          sub_10085CCCC();
        }
      }

      else
      {
        IOHIDManagerRegisterDeviceMatchingCallback(a1[2], sub_100696930, a1);
        IOHIDManagerRegisterDeviceRemovalCallback(a1[2], sub_1006969B8, a1);
        v10 = a1[2];
        Main = CFRunLoopGetMain();
        IOHIDManagerScheduleWithRunLoop(v10, Main, kCFRunLoopCommonModes);
        v12 = qword_100BCE9E8;
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created USB HIDManager", v34, 2u);
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
    {
      sub_10085CD08();
    }
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

uint64_t sub_1006967DC(uint64_t a1)
{
  v2 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "USBPairingManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v7 = 0;
  sub_100007F88(buf, a1 + 24);
  *(a1 + 88) = 0;
  sub_1006968C4(a1);
  v3 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "USBPairingManager::stackWillStop exit", v5, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_1006968B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006968C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    Main = CFRunLoopGetMain();
    IOHIDManagerUnscheduleFromRunLoop(v1, Main, kCFRunLoopCommonModes);
    IOHIDManagerClose(*(a1 + 16), 0);
    CFRelease(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_100696930(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100698BE8;
  v7[3] = &unk_100AE0860;
  v7[4] = a1;
  v7[5] = v5;
  sub_10000CA94(v6, v7);
}

void sub_1006969B8(uint64_t a1, int a2, int a3, CFTypeRef cf)
{
  v5 = CFRetain(cf);
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100698D0C;
  v7[3] = &unk_100AE0860;
  v7[4] = a1;
  v7[5] = v5;
  sub_10000CA94(v6, v7);
}

void sub_100696A40(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v5 = sub_100696BF8(a1, a3);
  v6 = qword_100BCE9E8;
  v7 = os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      sub_1000DEEA4(v5, __p);
      v8 = v11 >= 0 ? __p : *__p;
      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting USB device to initiate Bluetooth Connection to device %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AC0 != -1)
    {
      sub_10085CD44();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100696DE4;
    v9[3] = &unk_100ADF8F8;
    v9[4] = v5;
    sub_100592E70(off_100B50AB8, v9);
    *(v5 + 1360) = 0;
    sub_100696E74(a1, v5);
    sub_100697030(a1, v5);
  }

  else if (v7)
  {
    *__p = 134217984;
    *&__p[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Can't find device with ioHIDRef %p", __p, 0xCu);
  }
}

uint64_t sub_100696BF8(uint64_t a1, __IOHIDDevice *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 24);
  if (a2)
  {
    v4 = IOHIDDeviceGetProperty(a2, @"LocationID");
    v5 = *(a1 + 96);
    v6 = (a1 + 104);
    if (v5 == v6)
    {
LABEL_10:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 10);
        if (v7 == [v4 intValue])
        {
          break;
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
        if (v9 == v6)
        {
          goto LABEL_10;
        }
      }

      v12 = qword_100BCE9E8;
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(v5[4], __p);
        v13 = v19;
        v14 = __p[0];
        v15 = [v4 intValue];
        v16 = __p;
        if (v13 < 0)
        {
          v16 = v14;
        }

        *buf = 136315394;
        v22 = v16;
        v23 = 1024;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found HID device %s with location ID %d", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = v5[4];
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000088CC(v20);
  return v11;
}

void sub_100696DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_100696DE4(uint64_t a1)
{
  if (qword_100B50AC0 != -1)
  {
    sub_10085CD6C();
  }

  v2 = *(a1 + 32);
  memset(&__p, 0, sizeof(__p));
  sub_10059234C(off_100B50AB8, v2, 32, &__p, 2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100696E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100696E74(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 24);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_100007F20(&v11, (a1 + 120));
  sub_10000801C(v14);
  v4 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v5 = v10 >= 0 ? __p : __p[0];
    v6 = *(a2 + 1360);
    *buf = 136446466;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device %{public}s reported a USB State changed to %d", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = v11;
  if (v11 != v12)
  {
    do
    {
      (*(**v7 + 16))(*v7, a2);
      ++v7;
    }

    while (v7 != v12);
    v7 = v11;
  }

  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }

  return sub_1000088CC(v14);
}

void sub_100696FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100697030(uint64_t a1, unint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 24);
  if (a2)
  {
    v6 = *(a1 + 104);
    v5 = (a1 + 104);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = (v5 - 1);
    v8 = v5;
    do
    {
      v9 = v4[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v4;
      }

      v4 = v4[v11];
    }

    while (v4);
    if (v8 != v5 && v8[4] <= a2)
    {
      v13 = qword_100BCE9E8;
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, __p);
        v14 = v17 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing HID device %s from map", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10002717C(v7, v8);
      operator delete(v8);
    }

    else
    {
LABEL_10:
      v12 = qword_100BCE9E8;
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
      {
        sub_1000DEEA4(a2, __p);
        sub_10085CD80(__p, buf, v12);
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_1006971C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006971E0(uint64_t a1, io_registry_entry_t a2)
{
  v2 = sub_100697290(a1, a2, "IOService", "AppleDeviceManagementHIDEventService");
  v3 = v2;
  if (!v2)
  {
    CFProperty = 0;
    goto LABEL_5;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, @"ColorID", kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (!CFProperty)
  {
LABEL_5:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v5 = [CFProperty unsignedIntValue];
LABEL_6:

  return v5;
}

uint64_t sub_100697290(uint64_t a1, io_registry_entry_t a2, const char *a3, const char *a4)
{
  iterator = 0;
  IORegistryEntryGetChildIterator(a2, a3, &iterator);
  v7 = iterator;
  if (!iterator)
  {
    return 0;
  }

  while (1)
  {
    v8 = IOIteratorNext(v7);
    v9 = v8;
    if (!v8 || IOObjectConformsTo(v8, a4))
    {
      break;
    }

    v10 = sub_100697290(a1, v9, a3, a4);
    if (v10)
    {
      v9 = v10;
      break;
    }

    IOObjectRelease(0);
    v7 = iterator;
  }

  IOObjectRelease(iterator);
  return v9;
}

void sub_10069733C(uint64_t a1, uint64_t a2, __IOHIDDevice *a3)
{
  v6 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = os_variant_is_recovery();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleIncomingUSBDevice called isBaseSystem %d", &buf, 8u);
  }

  v7 = qword_100BCE9E8;
  if (a2 && a3)
  {
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found USB Device", &buf, 2u);
    }

    bytes = 0uLL;
    if (IOHIDDeviceOpen(a3, 0))
    {
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
      {
        sub_10085CE7C();
      }

      return;
    }

    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    buf = 0u;
    v60 = 0u;
    pReportLength = 77;
    Report = IOHIDDeviceGetReport(a3, kIOHIDReportTypeFeature, 52, &buf, &pReportLength);
    v9 = qword_100BCE9E8;
    if (Report)
    {
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
      {
        sub_10085CEB8();
      }

      v10 = sub_100017F4C();
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1006989C8;
      v36[3] = &unk_100ADF8F8;
      v36[4] = a1;
      sub_10008E008(v10, 5000, v36);
      return;
    }

    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully got device report", v53, 2u);
    }

    v46 = DWORD1(buf);
    v47 = WORD4(buf);
    if (DWORD1(buf) | WORD4(buf))
    {
      v43 = DWORD1(buf);
      v44 = WORD4(buf);
      __dst = 0uLL;
      v42 = 0;
      v11 = strlen((&buf | 0xD));
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000C7698();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v42) = v11;
      if (v11)
      {
        memcpy(&__dst, (&buf | 0xD), v11);
      }

      *(&__dst + v12) = 0;
      v13 = qword_100BCE9E8;
      v14 = os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        sub_1000BE6F8(&v43, v53);
        if (v53[23] >= 0)
        {
          v15 = v53;
        }

        else
        {
          v15 = *v53;
        }

        p_dst = &__dst;
        if (v42 < 0)
        {
          p_dst = __dst;
        }

        *v49 = 136315394;
        *&v49[4] = v15;
        v50 = 2082;
        v51 = p_dst;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BT ADDR %s for device name: %{public}s", v49, 0x16u);
        if ((v53[23] & 0x80000000) != 0)
        {
          operator delete(*v53);
        }
      }

      v17 = sub_100697CFC(v14, &v46);
      if (v17)
      {
        sub_100697E2C(a1, a3, v17);
        if (sub_1006980EC(a1, a3))
        {
          if (_os_feature_enabled_impl())
          {
            if (SHIBYTE(v42) < 0)
            {
              sub_100008904(__p, __dst, *(&__dst + 1));
            }

            else
            {
              *__p = __dst;
              v40 = v42;
            }

            sub_10069830C(a1, a3, v17, 1, __p);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v17[85].n128_u8[0] = 1;
          }

          sub_100696E74(a1, v17);
LABEL_89:
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__dst);
          }

          return;
        }

        v18 = qword_100BCE9E8;
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
        {
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Did not find existing link key. Must generate new one", v53, 2u);
        }
      }

      v19 = CCRandomGenerateBytes(&bytes, 0x10uLL);
      v20 = qword_100BCE9E8;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
        {
          sub_10085CF28();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
        {
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully generated Link Key preparing it to send to device", v53, 2u);
        }

        if (sub_100698534(a1, a3, &bytes))
        {
          if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
          {
            sub_10085CF64();
          }
        }

        else
        {
          v57 = 0uLL;
          v58 = 0;
          sub_1006D1BB0(&v57, &bytes, 5u);
          if (!v17)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10085CFE8();
            }

            v17 = sub_1000E6554(off_100B508E8, &v43, 1);
          }

          *v49 = 0;
          sub_100016250(v49);
          *v53 = *v49;
          *&v53[8] = *&v49[4];
          sub_100538494(v17, &__dst, v53);
          v17[36].n128_u8[7] = 1;
          sub_100548A1C(v17, 1);
          v21 = BYTE10(buf);
          v22 = BYTE11(buf);
          v35 = BYTE12(buf);
          v38 = 0;
          valuePtr = 0;
          Property = IOHIDDeviceGetProperty(a3, @"ProductID");
          v24 = IOHIDDeviceGetProperty(a3, @"VendorID");
          v25 = IOHIDDeviceGetProperty(a3, @"VersionNumber");
          if (Property)
          {
            CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
          }

          if (v24)
          {
            CFNumberGetValue(v24, kCFNumberIntType, &v38);
          }

          if (v25)
          {
            CFNumberGetValue(v25, kCFNumberIntType, &v38 + 4);
          }

          if (qword_100B508F0 != -1)
          {
            sub_10085CFE8();
          }

          sub_10056B7FC(off_100B508E8, v17, (v21 << 16) | (v22 << 8) | v35);
          if (qword_100B508F0 != -1)
          {
            sub_10085CFE8();
          }

          v26 = (*(*off_100B508E8 + 48))(off_100B508E8, v17, 1);
          sub_1006986AC(v26, v17, &v57);
          v17[85].n128_u8[0] = 1;
          v27 = qword_100BCE9E8;
          if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v17, v49);
            v28 = v52 >= 0 ? v49 : *v49;
            *v53 = 136447234;
            *&v53[4] = v28;
            *&v53[12] = 1024;
            *&v53[14] = 76;
            *&v53[18] = 1024;
            *&v53[20] = v38;
            *v54 = 1024;
            *&v54[2] = valuePtr;
            v55 = 1024;
            v56 = HIDWORD(v38);
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "handleIncomingUSBDevice %{public}s deviceId information: vidSrc 0x%x vid 0x%x pid 0x%x version 0x%x", v53, 0x24u);
            if (v52 < 0)
            {
              operator delete(*v49);
            }
          }

          sub_10053D890(v17, 1, 76, valuePtr, SHIDWORD(v38));
          Service = IOHIDDeviceGetService(a3);
          v30 = sub_1006971E0(a1, Service);
          if (v30 != -1)
          {
            v31 = qword_100BCE9E8;
            if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v17, v49);
              v32 = v52 >= 0 ? v49 : *v49;
              *v53 = 136446722;
              *&v53[4] = "void BT::USBPairingManager::handleIncomingUSBDevice(void *, IOHIDDeviceRef)";
              *&v53[12] = 2080;
              *&v53[14] = v32;
              *&v53[22] = 1024;
              *v54 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: “%s” has colorID %d", v53, 0x1Cu);
              if (v52 < 0)
              {
                operator delete(*v49);
              }
            }

            sub_10054AE4C(v17, v30);
          }

          v33 = sub_10000C798();
          v34 = (*(*v33 + 392))(v33);
          if (v34)
          {
            sub_100698818(v34, v17, v38, valuePtr, v30);
          }

          sub_100696E74(a1, v17);
          sub_100697E2C(a1, a3, v17);
          if (qword_100B50F88 != -1)
          {
            sub_10085D010();
          }

          sub_1006E1E34(off_100B50F80, v17);
          sub_1006D1B80(&v48, &v57);
          nullsub_21(&v48);
          nullsub_21(&v57);
        }
      }

      goto LABEL_89;
    }

    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
    {
      sub_10085D038();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
  {
    sub_10085CDF4(a2, a3, v7);
  }
}

void sub_100697C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  nullsub_21(&a44);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100697CFC(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (qword_100B512E8 != -1)
  {
    sub_10085D074();
  }

  v3 = sub_10009DF08(off_100B512E0, &__p);
  v4 = __p;
  if (v3 || __p == v15)
  {
LABEL_4:
    v5 = 0;
  }

  else
  {
    v7 = __p;
    while (1)
    {
      v5 = *v7;
      v12 = *(*v7 + 128);
      v8 = *(v5 + 132);
      v13 = *(v5 + 132);
      if (v12 == *a2 && v8 == *(a2 + 4))
      {
        break;
      }

      v7 += 8;
      if (v7 == v15)
      {
        goto LABEL_4;
      }
    }

    v10 = qword_100BCE9E8;
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Already paired", v11, 2u);
      v4 = __p;
    }
  }

  if (v4)
  {
    v15 = v4;
    operator delete(v4);
  }

  return v5;
}

void sub_100697E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100697E2C(uint64_t a1, __IOHIDDevice *a2, unint64_t a3)
{
  v28[1] = 0;
  v29 = a3;
  v28[0] = 0;
  sub_100007F88(v28, a1 + 24);
  if (a2 && a3)
  {
    v6 = IOHIDDeviceGetProperty(a2, @"LocationID");
    if (v6)
    {
      v9 = *(a1 + 104);
      v8 = a1 + 104;
      v7 = v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v8;
      do
      {
        v11 = *(v7 + 32);
        v12 = v11 >= a3;
        v13 = v11 < a3;
        if (v12)
        {
          v10 = v7;
        }

        v7 = *(v7 + 8 * v13);
      }

      while (v7);
      if (v10 != v8 && *(v10 + 32) <= a3)
      {
        v20 = qword_100BCE9E8;
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEEA4(a3, __p);
          v22 = v27;
          v23 = __p[0];
          v24 = [v6 intValue];
          v25 = __p;
          if (v22 < 0)
          {
            v25 = v23;
          }

          *buf = 136315394;
          v31 = v25;
          v32 = 1024;
          v33 = v24;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Already have a USB HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
LABEL_12:
        v14 = qword_100BCE9E8;
        if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000DEEA4(a3, __p);
          v15 = v27;
          v16 = __p[0];
          v17 = [v6 intValue];
          v18 = __p;
          if (v15 < 0)
          {
            v18 = v16;
          }

          *buf = 136315394;
          v31 = v18;
          v32 = 1024;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adding HID device %s with location ID %d", buf, 0x12u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = [v6 intValue];
        __p[0] = &v29;
        *(sub_1005C468C(v8 - 8, &v29) + 10) = v19;
      }
    }

    else if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
    {
      sub_10085D088();
    }
  }

  return sub_1000088CC(v28);
}

void sub_1006980A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1006980EC(uint64_t a1, __IOHIDDevice *a2)
{
  v4 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134217984;
    *&__p[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Seeing if paired device Link Key already exists for iohid ref %p", __p, 0xCu);
  }

  v5 = sub_100696BF8(a1, a2);
  if (v5)
  {
    v14 = 0uLL;
    v15 = 0;
    sub_1006D1B74(&v14);
    if (qword_100B512E8 != -1)
    {
      sub_10085D0C4();
    }

    if (sub_1006E7E2C(off_100B512E0, v5, &v14))
    {
      goto LABEL_7;
    }

    v7 = qword_100BCE9E8;
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v5, __p);
      if (v11 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      *buf = 136315138;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Preparing to send existing Link Key to %s", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(*__p);
      }
    }

    v9 = nullsub_21(&v14);
    if (sub_100698534(a1, a2, v9))
    {
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
      {
        sub_10085D0EC();
      }

LABEL_7:
      nullsub_21(&v14);
      return 0;
    }

    nullsub_21(&v14);
  }

  else if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
  {
    sub_10085D128();
  }

  return 1;
}

void sub_1006982EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nullsub_21(va);
  _Unwind_Resume(a1);
}

void sub_10069830C(uint64_t a1, IOHIDDeviceRef device, uint64_t a3, int a4, uint64_t a5)
{
  *(a3 + 1360) = a4;
  Service = IOHIDDeviceGetService(device);
  v11 = sub_1006971E0(a1, Service);
  if (v11 != -1)
  {
    v12 = v11;
    v13 = qword_100BCE9E8;
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a3, __p);
      v14 = v23 >= 0 ? __p : __p[0];
      *buf = 136446722;
      *&buf[4] = "void BT::USBPairingManager::setEarlyReturnDeviceProperties(IOHIDDeviceRef, Device *, BOOL, std::string)";
      *&buf[12] = 2080;
      *&buf[14] = v14;
      v25 = 1024;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: “%s” has colorID %d", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10054AE4C(a3, v12);
  }

  __p[0] = 0;
  sub_100016250(__p);
  *buf = SLODWORD(__p[0]);
  *&buf[8] = SWORD2(__p[0]);
  sub_100538494(a3, a5, buf);
  *buf = 0;
  valuePtr = 0;
  LODWORD(__p[0]) = 0;
  Property = IOHIDDeviceGetProperty(device, @"ProductID");
  v16 = IOHIDDeviceGetProperty(device, @"VendorID");
  v17 = IOHIDDeviceGetProperty(device, @"VersionNumber");
  if (Property)
  {
    CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
  }

  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberIntType, __p);
  }

  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberIntType, buf);
    v18 = *buf;
  }

  else
  {
    v18 = 0;
  }

  if (a4)
  {
    v19 = 1452;
  }

  else
  {
    v19 = 76;
  }

  if (a4)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  sub_10053D890(a3, v20, v19, valuePtr, v18);
}

uint64_t sub_100698534(uint64_t a1, IOHIDDeviceRef device, int8x16_t *a3)
{
  v4 = vrev64q_s8(*a3);
  v12 = 1;
  *report = 309;
  pReportLength = 25;
  v13 = *(a1 + 89);
  v14 = *(a1 + 93);
  v15 = vextq_s8(v4, v4, 8uLL);
  v5 = IOHIDDeviceSetReport(device, kIOHIDReportTypeFeature, 53, report, 25);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
    {
      sub_10085D19C();
    }
  }

  else
  {
    v6 = IOHIDDeviceGetReport(device, kIOHIDReportTypeFeature, 53, report, &pReportLength);
    v7 = qword_100BCE9E8;
    if (v6 || pReportLength != 25)
    {
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
      {
        sub_10085D20C();
      }
    }

    else
    {
      v6 = 0;
      if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully resent Link Key to paired device", v9, 2u);
        return 0;
      }
    }
  }

  return v6;
}

void sub_1006986AC(uint64_t a1, unsigned __int8 *a2, __n128 *a3)
{
  v5 = qword_100BCE9E8;
  if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting To Pair device", __p, 2u);
  }

  if (qword_100B512E8 != -1)
  {
    sub_10085D0C4();
  }

  v6 = sub_1006E7F2C(off_100B512E0, a2, a3, 1);
  v7 = qword_100BCE9E8;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_ERROR))
    {
      sub_10085D27C();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a2 + 128, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136446210;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SUCCESSFULLY PAIRED ADDR: %{public}s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100698818(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, unsigned __int16 a5)
{
  v9 = objc_alloc_init(CBUserController);
  v10 = objc_alloc_init(CBUserNotificationRequest);
  [v10 setEvent:2];
  v11 = objc_alloc_init(CBDevice);
  [v11 setProductID:a4];
  [v11 setVendorID:a3];
  [v11 setColorInfo:a5];
  v12 = [[NSData alloc] initWithBytes:a2 + 128 length:6];
  [v11 setBtAddressData:v12];

  [v10 setDevice:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100698BA4;
  v15[3] = &unk_100B060B0;
  v13 = v10;
  v16 = v13;
  v14 = v9;
  v17 = v14;
  [v14 userNotificationEvent:v13 completion:v15];
}

uint64_t sub_1006989D0(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 3));
  v4 = a1[15];
  v5 = a1[16];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[17];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 15), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[15];
      v15 = a1[16] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[15];
      a1[15] = v16;
      a1[16] = v8;
      a1[17] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[16] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_100698B00(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 24);
  v5 = *(a1 + 120);
  v4 = *(a1 + 128);
  if (v5 != v4)
  {
    v6 = *(a1 + 120);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 128);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 128) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

id sub_100698BA4(uint64_t a1)
{
  [*(a1 + 32) device];

  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void sub_100698BE8(uint64_t a1)
{
  if (qword_100B50F98 != -1)
  {
    sub_10085D2B8();
  }

  sub_10069733C(off_100B50F90, *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void sub_100698D0C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F98 != -1)
  {
    sub_10085D2B8();
  }

  sub_100696A40(off_100B50F90, a2, *(a1 + 40));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

void *sub_100698F70(uint64_t a1, uint64_t a2, _xpc_connection_s *a3, uint64_t a4)
{
  result = sub_100012460(a1, a2, a3, a4);
  *result = &off_100B06248;
  result[18] = off_100B062D8;
  return result;
}

void sub_100698FC8(uint64_t a1)
{
  sub_10007A588(a1);

  operator delete();
}

void (*sub_100699000(uint64_t a1, int a2))(uint64_t a1, xpc_object_t xdict)
{
  v3 = sub_100699128;
  if (a2 <= 10)
  {
    switch(a2)
    {
      case 1:
        return v3;
      case 2:
        return sub_1006995DC;
      case 10:
        return sub_100699644;
    }
  }

  else
  {
    if (a2 <= 12)
    {
      if (a2 == 11)
      {
        return sub_1006999F0;
      }

      else
      {
        return sub_100699B48;
      }
    }

    if (a2 == 13)
    {
      return sub_100699E18;
    }

    if (a2 == 14)
    {
      return sub_10069A030;
    }
  }

  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085D2CC(a2, v4);
  }

  return 0;
}

void sub_100699128(void *a1, xpc_object_t xdict)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgType") || !v4)
  {
    v12 = a1[16];
    if (v12)
    {
      if (qword_100B512C8 != -1)
      {
        sub_10085D448();
      }

      v13 = sub_10000EE78(off_100B512C0);
      (*(*a1 + 112))(a1, v12, v13);
    }

    else
    {
      sub_100063710(a1, 2u);
    }
  }

  else
  {
    v11 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085D344(v4, v11);
    }
  }
}

void sub_100699588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, ...)
{
  va_start(va, a17);

  std::ios::~ios();

  _Unwind_Resume(a1);
}

void sub_1006995DC(uint64_t a1)
{
  (*(*a1 + 24))(a1, 1);

  sub_10004DFB8(a1, 5, 0, 0);
}

void sub_100699644(uint64_t a1, xpc_object_t xdict)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = sub_100013CA4(v6, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgType");
  *(v38 + 6) = v13;
  if (v30)
  {
    v14 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ScalablePipeTrace set. Parse metadata", buf, 2u);
    }
  }

  if (v34 == 2 && (*(a1 + 85) & 1) == 0)
  {
    *(v38 + 6) = 13;
    v15 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failing registration of endpoint %{public}@ due to insufficient entitlements", buf, 0xCu);
    }
  }

  if (*(a1 + 80) != 2)
  {
    v32 = 0;
    v33 = 1;
  }

  v16 = *(v38 + 6);
  if (v16 || !v5)
  {
    goto LABEL_17;
  }

  v17 = sub_100007EE8();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10069A3B4;
  v20[3] = &unk_100B06318;
  v22 = &v37;
  v23 = a1;
  v18 = v5;
  v21 = v18;
  v24 = v36;
  v25 = v35;
  v26 = v34;
  v27 = v33;
  v28 = v32;
  v29 = v31;
  sub_10000D334(v17, v20);
  if (*(v38 + 6) != 10)
  {

    v16 = *(v38 + 6);
LABEL_17:
    sub_1005B2CE4(a1, 15, xdict, v16);
    goto LABEL_18;
  }

  v19 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delaying registration of endpoint %{public}@ as it is currently being unregistered", buf, 0xCu);
  }

LABEL_18:
  _Block_object_dispose(&v37, 8);
}

void sub_1006999F0(uint64_t a1, xpc_object_t xdict)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  if (!v5 || (v6 = sub_100007EE8(), v7[0] = _NSConcreteStackBlock, v7[1] = 3221225472, v7[2] = sub_10069A49C, v7[3] = &unk_100AF5598, v9 = &v11, v10 = a1, v8 = v5, sub_10000D334(v6, v7), LODWORD(v6) = *(v12 + 6), v8, v6 != 10))
  {
    sub_1005B2CE4(a1, 16, xdict, *(v12 + 6));
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100699B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100699B48(uint64_t a1, xpc_object_t xdict)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = sub_100013C04(value, "kCBMsgArgClientName");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgPacketsPerSecond");
  if (![(__CFString *)v5 length])
  {

    v5 = @"default";
  }

  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SetLinkRequirementsForPeer received for %{public}@", buf, 0xCu);
  }

  if (!v12 && v4)
  {
    v14 = sub_100007EE8();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10069A554;
    v15[3] = &unk_100B06340;
    v18 = a1;
    v16 = v4;
    v19 = v24;
    v20 = v23;
    v21 = v22;
    v5 = v5;
    v17 = v5;
    sub_10000D334(v14, v15);
  }
}

void sub_100699E18(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgLatencyInMs") && v4)
  {
    v11 = sub_100007EE8();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10069A5BC;
    v12[3] = &unk_100B04A18;
    v14 = a1;
    v13 = v4;
    v15 = v18;
    v16 = v20;
    v17 = v19;
    sub_10000D334(v11, v12);
  }
}

_BYTE *sub_10069A030(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  sub_1000216B4(&v9);
  sub_10023130C(&v15 + 1, &v15, &v14 + 1, &v14, &v13, 0, &v11, &v12, &v10);
  sub_100022214(&v9);
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v17 = HIDWORD(v15);
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = HIDWORD(v14);
    v22 = 1024;
    v23 = v14;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PipeStatistics:connected:%d start:%d stop:%d upCount:%d upDuration:%d tech:%d timSpentInThisTransportMS:%llu", buf, 0x30u);
  }

  v5 = v13;
  if (v11 == 2)
  {
    v5 = v13 + v12 / 0x3E8;
  }

  reply = xpc_dictionary_create_reply(a2);
  v7 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBLePipeStatisticsTotalTimeSpentUpgraded", v5);
    xpc_connection_send_message(*(a1 + 16), v7);
    xpc_release(v7);
  }

  return sub_10002249C(&v9);
}

void sub_10069A220(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(v2 + 128) = sub_100366C08(v3, v2 + 144, __p, v2 + 56);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A2D4(uint64_t a1)
{
  if (*(a1 + 128))
  {
    v2 = sub_100007EE8();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10069A360;
    v3[3] = &unk_100ADF8F8;
    v3[4] = a1;
    sub_10000D334(v2, v3);
    *(a1 + 128) = 0;
  }
}

uint64_t sub_10069A360(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v2 = qword_100B540E8;

  return sub_100366FA0(v2, v1 + 144);
}

void sub_10069A3B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(*(*(a1 + 40) + 8) + 24) = sub_1003676B0(v3, v4, __p, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) != 0, *(a1 + 88) != 0, *(a1 + 96) != 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A49C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(*(*(a1 + 40) + 8) + 24) = sub_1003682E4(v3, v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A554(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  sub_1003687B8(v3, v4, v8, v5, v6, v7, v9);
}

void sub_10069A5BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  sub_100368D34(v3, v4, v5, v6, v7, v8);
}

void sub_10069A624(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned int a8, int64_t value)
{
  v16 = a3;
  v17 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v17, v16);
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  xpc_dictionary_set_string(v17, "kCBMsgArgName", v18);
  xpc_dictionary_set_int64(v17, "kCBMsgArgType", a4);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPriority", a5);
  xpc_dictionary_set_fd(v17, "kCBLePipeMsgArgSocket", a6);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgReliable", a7 ^ 1u);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLVersion", a8);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLFeatures", value);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerType", HIDWORD(value));
  v20 = 0;
  v19 = 0;
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  sub_10036E814(qword_100B540E8, &v20, &v19);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLVersion", v20);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLFeatures", v19);
  sub_10004DFB8(a1, 17, v17, 1);
}

void sub_10069A7F4(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, const unsigned __int8 *a6, int a7, unsigned int a8, int64_t value)
{
  v16 = a3;
  v17 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v17, v16);
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  xpc_dictionary_set_string(v17, "kCBMsgArgName", v18);
  xpc_dictionary_set_int64(v17, "kCBMsgArgType", a4);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPriority", a5);
  xpc_dictionary_set_uuid(v17, "kCBLePipeMsgArgSocket", a6);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgReliable", a7 ^ 1u);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLVersion", a8);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLFeatures", value);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerType", HIDWORD(value));
  v20 = 0;
  v19 = 0;
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  sub_10036E814(qword_100B540E8, &v20, &v19);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLVersion", v20);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLFeatures", v19);
  sub_10004DFB8(a1, 17, v17, 1);
}

void sub_10069A9C4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v9 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v7, v9);
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v7, "kCBMsgArgName", v8);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
  sub_10004DFB8(a1, 18, v7, 1);
}

void sub_10069AAA0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v6, "kCBMsgArgName", v8);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a3);

  sub_10004DFB8(a1, 15, v7, 1);
}

void sub_10069AB3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = @"kCBMsgArgName";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  sub_100052EE4(a1, 16, v4);
}

void sub_10069AC10(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 2) >= 3)
  {
    if (a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    if (a3 == 1)
    {
      v3 = 5;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = *(a1 + 136);
  }

  sub_100063710(a1, v3);
}

void sub_10069AC48(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v13[0] = @"kCBMsgArgName";
  v13[1] = @"kCBMsgArgDeviceUUID";
  v14[0] = v7;
  v14[1] = v8;
  v13[2] = @"kCBMsgArgState";
  v11 = [NSNumber numberWithLongLong:v10];
  v14[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  sub_100052EE4(a1, 19, v12);
}

uint64_t sub_10069AE70(uint64_t a1)
{
  *sub_100589578(a1, "NetworkProviderService", 256) = &off_100B063B0;
  if (qword_100B54DE8 != -1)
  {
    sub_10085D484();
  }

  sub_100589880(a1, off_100B54DE0);
  return a1;
}

void sub_10069AF04(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10069AFA8(uint64_t a1, __int16 a2, uint64_t a3, int *a4, uint64_t a5)
{
  v10 = sub_1003A1C64(a1, 1953719151);
  *v10 = &off_100B064D0;
  sub_100320A6C((v10 + 50), a3, a2, a4);
  *(a1 + 592) = a5;
  *(a1 + 600) = 0;
  *(a1 + 616) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_10069B054(void *a1)
{
  *a1 = &off_100B064D0;
  if (a1[75])
  {
    sub_10069B0E8(a1);
  }

  sub_100320A70((a1 + 50));

  return sub_1003A1D74(a1);
}

void sub_10069B0BC(_Unwind_Exception *a1)
{
  sub_100320A70(v1 + 400);
  sub_1003A1D74(v1);
  _Unwind_Resume(a1);
}

void sub_10069B0E8(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (!v2)
  {
LABEL_8:
    *(a1 + 600) = 0;
    v6 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "HF Sendthread stopped";
    v8 = &v9;
    goto LABEL_14;
  }

  v3 = (*(*v2 + 24))(v2);
  v4 = *(a1 + 600);
  if (v3)
  {
    if (v4)
    {
      if ((*(*v4 + 72))(v4) == 2)
      {
        v5 = *(a1 + 600);
        if (v5)
        {
          if (sub_100376210(*(a1 + 600)))
          {
            *(v5 + 113) = 1;
            sub_1003764E4(v5);
          }
        }
      }
    }

    goto LABEL_8;
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 600) = 0;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "HF Sendthread stopped & destoryed before start";
    v8 = buf;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }
}

void sub_10069B24C(void *a1)
{
  sub_10069B054(a1);

  operator delete();
}

void sub_10069B284(uint64_t a1, char *__s1, const __CFBoolean *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyAllowSCOForTBT"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 592) + 64);

    v6();
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyScoSampleRate"))
  {
    valuePtr = 8000;
    CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
    (*(**(a1 + 592) + 72))(*(a1 + 592), a1, valuePtr);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyScoCodecTypeChanged"))
  {
    number = 0;
    value = 0;
    v16 = 0;
    v17 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyScoChannelFormat", &value) && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyScoSampleRate", &number) && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyTransportType", &v17))
    {
      v15 = 8000;
      v14 = 0;
      CFNumberGetValue(value, kCFNumberIntType, &v15 + 4);
      CFNumberGetValue(number, kCFNumberIntType, &v15);
      CFNumberGetValue(v17, kCFNumberIntType, &v14);
      if (_os_feature_enabled_impl() && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyInputConfig", &v16))
      {
        valuePtr = 0;
        CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
        (*(**(a1 + 592) + 104))(*(a1 + 592), a1, valuePtr);
      }

      (*(**(a1 + 592) + 88))(*(a1 + 592), a1, v15, 1, HIDWORD(v15));
      (*(**(a1 + 592) + 96))(*(a1 + 592), a1, v14 != 0);
      v7 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        valuePtr = 67109632;
        v21 = HIDWORD(v15);
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 1024;
        *&v23[6] = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "propertyDidUpdate codecID:%d, sampleRate:%u advancedTransport:%u", &valuePtr, 0x14u);
      }
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyExpanseInA2DP"))
  {
    v8 = CFBooleanGetValue(a3);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109120;
      v21 = v8 != 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "kBTAudioMsgPropertyExpanseInA2DP: %d", &valuePtr, 8u);
    }

    (*(**(a1 + 592) + 120))(*(a1 + 592), a1, v8 != 0);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyCallScreening"))
  {
    v10 = CFBooleanGetValue(a3);
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109120;
      v21 = v10 != 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "kBTAudioMsgPropertyCallScreening: %d", &valuePtr, 8u);
    }

    (*(**(a1 + 592) + 128))(*(a1 + 592), a1, v10 != 0);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyManualVolumeUpdate"))
  {
    number = 0;
    value = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateNewVolume", &v17))
    {
      CFNumberGetValue(v17, kCFNumberSInt32Type, &v15 + 4);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentVolume", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v15);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateRampInProgress", &v16))
    {
      CFNumberGetValue(v16, kCFNumberSInt32Type, &v14);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentAudioCategory", &number))
    {
      v12 = [(__CFNumber *)number copy];
    }

    else
    {
      v12 = 0;
    }

    v13 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109890;
      v21 = v15;
      v22 = 2112;
      *v23 = v12;
      *&v23[8] = 1024;
      v24 = BYTE4(v15);
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Manual Volume update received currentVolume: %d audioCategory %@ newVolume %d isRampInProgress %d", &valuePtr, 0x1Eu);
    }

    (*(**(a1 + 592) + 112))(*(a1 + 592), a1, v15, v12, HIDWORD(v15), v14 != 0);
  }

  else
  {

    sub_1003A432C(a1, __s1, a3);
  }
}

void sub_10069B92C(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2 == 11)
  {
    value = 0;
    v8 = 0;
    number = 0;
    valuePtr = 0;
    v6 = 8000;
    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoDataSource", &value))
    {
      CFNumberGetValue(value, kCFNumberIntType, &valuePtr + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoRouteReason", &number))
    {
      CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoSampleRate", &v8))
    {
      CFNumberGetValue(v8, kCFNumberIntType, &v6);
      v5 = v6;
    }

    else
    {
      v5 = 8000;
    }

    (*(**(a1 + 592) + 48))(*(a1 + 592), a1, HIDWORD(valuePtr), valuePtr, v5);
  }

  else
  {

    sub_1003A48A8();
  }
}

__n128 sub_10069BBBC(__n128 *a1, __n128 *a2)
{
  result = a1[38];
  a2[1].n128_u32[0] = a1[39].n128_u32[0];
  *a2 = result;
  return result;
}

double sub_10069BBD0(uint64_t a1)
{
  *(a1 + 624) = 0;
  result = 0.0;
  *(a1 + 608) = 0u;
  return result;
}

uint64_t sub_10069BBE0(uint64_t a1, int a2)
{
  v4 = sub_100320FF4(a1 + 400);
  ++*(a1 + 608);
  if (v4 != a2 && a2 != 0 && v4 != 0)
  {
    ++*(a1 + 616);
  }

  result = sub_100320FA4(a1 + 400);
  if (result)
  {
    *(a1 + 624) = 1;
  }

  return result;
}

void sub_10069BC6C(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  *keys = *off_100B065E0;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!a2)
  {
    v7 = &kCFBooleanFalse;
  }

  values[0] = *v7;
  values[1] = v5;
  v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertyScoIsEnabled", v8);
  CFRelease(v6);
  CFRelease(v8);
}

void sub_10069BE3C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setUWBSStereoSupport: %d", v5, 8u);
  }

  sub_1003A32F8(a1, "kBTAudioMsgPropertyUWBSStereoSupport", a2);
}

void sub_10069BF00(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setIncompatibleHidConnected: %d", v5, 8u);
  }

  sub_1003A32F8(a1, "kBTAudioMsgPropertyIncompatibleHidConnected", a2);
}

void sub_10069C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HFPAudioDevice readHandler called on data of size %lu", &v5, 0xCu);
  }
}

uint64_t sub_10069C0F0(uint64_t a1)
{
  result = *(a1 + 600);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_10069C120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 > 129)
  {
    if ((a7 - 255) < 2 || a7 == 130)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((a7 - 127) < 2)
    {
      goto LABEL_9;
    }

    if (a7 == 129)
    {
      if (_os_feature_enabled_impl())
      {
        v7 = sub_10000C798();
        if ((*(*v7 + 352))(v7))
        {
          operator new();
        }
      }

LABEL_9:
      operator new();
    }
  }

  operator new();
}

void sub_10069C2E8(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (v2 && (*(*v2 + 64))(v2) && ((*(**(a1 + 600) + 24))(*(a1 + 600)) & 1) == 0)
  {
    sub_10036470C(*(a1 + 600));
    (*(**(a1 + 600) + 32))(*(a1 + 600), 1);
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HF Sendthread started", &v9, 2u);
    }
  }

  else
  {
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 600);
      v6 = "Doesn't";
      if (v5)
      {
        if ((*(*v5 + 64))(v5))
        {
          v6 = "Does";
        }

        v8 = *(a1 + 600);
        v7 = "Not Running";
        if (v8)
        {
          if ((*(*v8 + 24))(v8))
          {
            v7 = "Running";
          }
        }
      }

      else
      {
        v7 = "Not Running";
      }

      v9 = 136315394;
      v10 = v6;
      v11 = 2080;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "HF Sendthread %s have an associated connection handle, Thread already %s: not starting", &v9, 0x16u);
    }
  }
}

uint64_t sub_10069C510(uint64_t a1)
{
  result = *(a1 + 600);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void *sub_10069C540(uint64_t a1)
{
  result = sub_10032F49C(a1, 17);
  *result = &off_100B06600;
  result[32] = 0;
  result[33] = 0;
  return result;
}

uint64_t sub_10069C57C(void *a1)
{
  *a1 = &off_100B06600;
  v2 = a1[33];
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10032F580(a1);
}

void sub_10069C5DC(void *a1)
{
  sub_10069C57C(a1);

  operator delete();
}

uint64_t sub_10069C624(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  return 0;
}

uint64_t sub_10069C664(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_100227254(2, 8, a2 + 128, 15, sub_10069C764, sub_10069C80C, sub_10069C860, sub_10069C89C, sub_10069C910, sub_10069C964);
  if (v3)
  {
    v4 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D498(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v3 = 305;
  }

  sub_10002249C(&v12);
  return v3;
}

void sub_10069C764(__int16 a1, int *a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085D504();
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (qword_100B54DD8 != -1)
  {
    sub_10085D518();
  }

  sub_10069CA74(off_100B54DD0, v6, a1, a3);
}

void sub_10069C80C()
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  sub_10069CB70();
}

uint64_t sub_10069C860()
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  sub_10069CC04(off_100B54DD0);
  return 0;
}

uint64_t sub_10069C89C(const void *a1, unsigned int a2)
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  v4 = *(off_100B54DD0 + 32);
  if (!v4)
  {
    return 3400;
  }

  return sub_10042CE6C(v4, a1, a2);
}

pthread_cond_t *sub_10069C910()
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  result = *(off_100B54DD0 + 32);
  if (result)
  {

    return sub_10042CDF8(result);
  }

  return result;
}

uint64_t sub_10069C964(int a1)
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  v2 = off_100B54DD0;
  v3 = sub_10057E420(off_100B54DD0, a1);

  return sub_10057E710(v2, v3, 0);
}

uint64_t sub_10069C9DC(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_100227434(v2);
  if (v3)
  {
    v4 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D554(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v3 = 306;
  }

  sub_10002249C(&v12);
  return v3;
}

void sub_10069CA74(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  if (a4)
  {
    v7 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D498(a4, v7, v8, v9, v10, v11, v12, v13);
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10085D5C0();
    }

    v14 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, a2, v14);
  }

  sub_10057E218(a1, a2, a3);
  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_10069CC04(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  return 0;
}

uint64_t sub_10069CDA0(uint64_t a1)
{
  result = sub_10032F49C(a1, 16);
  *result = off_100B066C8;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 256) = &off_100B06738;
  *(result + 280) = 0;
  return result;
}

uint64_t sub_10069CE00(void *a1)
{
  *a1 = off_100B066C8;
  a1[32] = &off_100B06738;
  v2 = a1[34];
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10032F580(a1);
}

void sub_10069CE80(void *a1)
{
  sub_10069CE00(a1);

  operator delete();
}

uint64_t sub_10069CEB8(uint64_t a1)
{
  v11 = off_100B06758;
  v10 = 0;
  sub_1000216B4(&v10);
  v2 = sub_100227F5C(sub_10069D020, sub_10069D08C, &off_100B06768, sub_10069D0E4, &off_100B06778, &v11, 1, 13, 256000, 1);
  sub_100022214(&v10);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D62C();
    }

    v3 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v4 = sub_100017E6C();
    sub_1005AAE0C(v4 + 264, a1 + 256);
    v5 = sub_100017E6C();
    v6 = (*(*v5 + 32))(v5, &v9, &v8 + 1, &v8);
    sub_10069D13C(v6, v9, HIBYTE(v8), v8);
    v3 = 0;
  }

  sub_10002249C(&v10);
  return v3;
}

void sub_10069D020(unsigned int a1, int *a2, int a3)
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v6 = off_100B54DE0;

  sub_10069D518(v6, a2, a1, a3);
}

void sub_10069D08C(unsigned int a1)
{
  if (sub_1002274C0(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D67C();
    }
  }
}

void sub_10069D0E4(unsigned int a1)
{
  if (sub_100227508(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D6F0();
    }
  }
}

_BYTE *sub_10069D13C(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a4 - a3;
      if (a4 < a3)
      {
        v4 = 0;
      }

      v5 = 255 * v4 / a4;
    }

    else
    {
      LOBYTE(v5) = -1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = 0;
  sub_1000216B4(&v8);
  v7 = 0;
  sub_100228684(&v7);
  sub_1002F7FB0(v7, v5);
  return sub_10002249C(&v8);
}

uint64_t sub_10069D1CC(uint64_t a1)
{
  v2 = sub_100017E6C();
  sub_1005AB34C(v2 + 264, a1 + 256);
  v5 = 0;
  sub_1000216B4(&v5);
  if (sub_100227438(8))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D764();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_10002249C(&v5);
  return v3;
}

uint64_t sub_10069D270(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  *(a1 + 280) = 0;
  return 0;
}

_BYTE *sub_10069D2B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  result = sub_10069D13C(a1, a2, a3, a4);
  if ((v4 & 1) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10069D354(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = v13;
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21(&v6 + 1);
  return v3 & v4;
}

BOOL sub_10069D4A4(void *a1, unint64_t a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v4 = sub_10057E30C(a1, a2);
  v5 = sub_100227434(v4) != 0;
  sub_10002249C(&v7);
  return v5;
}

void sub_10069D518(uint64_t a1, int *a2, unsigned int a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085D7A0();
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  v8 = sub_1000E6554(off_100B508E8, &v9, 1);
  if (sub_10057DFAC(a1, v8))
  {
    sub_10057D9B0(a1, v8);
  }

  if (sub_10022718C(a3, a4, sub_10069D67C, sub_10069D724, sub_10069D778, sub_10069D7B4, sub_10069D828, sub_10069D87C, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D7B4();
    }
  }
}

void sub_10069D67C(__int16 a1, int *a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085D7A0();
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (qword_100B54DE8 != -1)
  {
    sub_10085D828();
  }

  sub_10069D8D8(off_100B54DE0, v6, a1, a3);
}

uint64_t sub_10069D724()
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v0 = off_100B54DE0;

  return sub_10069DB6C(v0);
}

uint64_t sub_10069D778()
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  sub_10069DC84(off_100B54DE0);
  return 0;
}

uint64_t sub_10069D7B4(const void *a1, unsigned int a2)
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v4 = *(off_100B54DE0 + 33);
  if (!v4)
  {
    return 3402;
  }

  return sub_10042CE6C(v4, a1, a2);
}

pthread_cond_t *sub_10069D828()
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  result = *(off_100B54DE0 + 33);
  if (result)
  {

    return sub_10042CDF8(result);
  }

  return result;
}

void sub_10069D87C(int a1)
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v2 = off_100B54DE0;

  sub_10069DA4C(v2, a1);
}

void sub_10069D8D8(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D850();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10085D88C();
    }

    v7 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  if ((*(*(a1 + 264) + 24976) & 1) == 0 && sub_10069D354(a1, a2))
  {
    v9 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating Parrot hack", v10, 2u);
    }

    *(*(a1 + 264) + 24976) = 1;
  }

  sub_10057E218(a1, a2, a3);
  sub_10057DA84(a1, a2, 0);
}

void sub_10069DA4C(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  sub_10057E710(a1, v3, 0);
  v4 = a1[33];
  if (v4 && *(v4 + 24976) == 1)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    v5 = sub_10057DEF8(a1, &__p);
    v6 = __p;
    v7 = v12;
    if (__p == v12)
    {
      goto LABEL_7;
    }

    v8 = 0;
    do
    {
      v5 = sub_10069D354(v5, *v6);
      v8 |= v5;
      ++v6;
    }

    while (v6 != v7);
    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = qword_100BCEA88;
      if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deactivating Parrot hack", &v10, 2u);
      }

      *(a1[33] + 24976) = 0;
    }

    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }
}

void sub_10069DB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10069DB6C(uint64_t a1)
{
  v2 = *(a1 + 280);
  v3 = *(a1 + 264);
  if (!v2)
  {
    if (v3)
    {
      v5 = qword_100BCEA88;
      if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_FAULT))
      {
        sub_10085D8F0(v5);
      }
    }

    sub_1005CF720();
  }

  v4 = sub_10042CC9C(v3);
  if (!v4)
  {
    v4 = 0;
    ++*(a1 + 280);
  }

  return v4;
}

uint64_t sub_10069DC84(uint64_t a1)
{
  v2 = *(a1 + 280);
  v3 = *(a1 + 264);
  *(a1 + 280) = --v2;
  if (v2)
  {
    sub_10042CD40(v3);
  }

  else
  {
    sub_10042CAE8(v3);
    v4 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v4)
    {
      sub_100117644(v4);
    }
  }

  return 0;
}

void *sub_10069DE68(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_1005ADAE8(a1, a2, a3);
  *result = &off_100B067F8;
  return result;
}

void sub_10069DE9C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085DA98();
    }

    return;
  }

  v5 = *a2;
  if (!*(a1 + 216))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100817A60();
    }

    return;
  }

  if (*a2 > 0xBFu)
  {
    if (*a2 > 0xFBu)
    {
      if (v5 - 252 <= 2)
      {

        sub_1005AE1BC(a1, a2, a3);
        return;
      }

      goto LABEL_42;
    }

    if (v5 == 192)
    {
      v8 = -14;
LABEL_19:
      buf[0] = v8;
      if (sub_1000C0430((a1 + 192), buf))
      {
        v20 = v8;
        *buf = &v20;
        v9 = sub_100314704((a1 + 192), &v20)[3];
        if (v9)
        {
          v10 = mach_absolute_time();
          v11 = v9;
          v12 = a2;
          v13 = a3;
LABEL_22:
          IOHIDUserDeviceHandleReportWithTimeStamp(v11, v10, v12, v13);
          return;
        }
      }

      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_10085D9B0();
      }

      return;
    }

    if (v5 != 198 && v5 != 224)
    {
      goto LABEL_42;
    }

LABEL_18:
    v8 = -16;
    goto LABEL_19;
  }

  v7 = v5 - 96;
  if (v5 - 96 <= 0x3B)
  {
    if (((1 << v7) & 0x380001) != 0)
    {
LABEL_9:
      v8 = -15;
      goto LABEL_19;
    }

    if (((1 << v7) & 0xC01000000000000) != 0)
    {
      goto LABEL_18;
    }
  }

  if (v5 > 0x31)
  {
    goto LABEL_42;
  }

  if (((1 << v5) & 0x3000000040004) != 0)
  {
    goto LABEL_9;
  }

  if (*a2 == 19)
  {
    v19 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 19;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received power-off notice input report (ID %u)", buf, 8u);
    }

    return;
  }

  if (*a2 != 20)
  {
LABEL_42:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085DA24();
    }

    return;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40));
    *buf = 67109376;
    *&buf[4] = 20;
    v23 = 1024;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received exit suspend input report (ID %u), should undim %d", buf, 0xEu);
  }

  if ((*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40)))
  {
    v16 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waking screen with spoofed click", buf, 2u);
    }

    buf[0] = -15;
    if (sub_1000C0430((a1 + 192), buf))
    {
      v20 = -15;
      *buf = &v20;
      v17 = sub_100314704((a1 + 192), &v20)[3];
      *buf = 274;
      v18 = mach_absolute_time();
      IOHIDUserDeviceHandleReportWithTimeStamp(v17, v18, buf, 8);
      v21 = 18;
      v10 = mach_absolute_time();
      v12 = &v21;
      v11 = v17;
      v13 = 8;
      goto LABEL_22;
    }

    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D974();
    }
  }
}

uint64_t sub_10069E31C(uint64_t a1, void *a2)
{
  sub_1005AE020(a1, a2);
  sub_10069E3F4(a1, a2);
  sub_10069E568(a1, a2);
  v4 = a2;
  v5 = [v4 valueForKey:@"ProductID"];
  v6 = [v5 intValue];
  v9 = 21;
  v7 = *sub_1003141CC(qword_100BCE698, &v9);

  if (v6 != v7)
  {
    sub_10069E67C(a1, v4);
  }

  return 1;
}

uint64_t sub_10069E3F4(uint64_t a1, void *a2)
{
  v8 = xmmword_1008C4B40;
  v9 = unk_1008C4B50;
  *v10 = xmmword_1008C4B60;
  v6 = xmmword_1008C4B20;
  v7 = unk_1008C4B30;
  *&v10[15] = -1073577627;
  *(a1 + 304) = a1;
  *(a1 + 312) = -16;
  v3 = [a2 mutableCopy];
  [v3 setObject:@"Mouse" forKeyedSubscript:@"Accessory Category"];
  [v3 setObject:&off_100B34630 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 83, *(a1 + 312), 0);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DAD4();
  }

  return v4;
}

uint64_t sub_10069E568(uint64_t a1, void *a2)
{
  v4[4] = xmmword_1008C4BB3;
  v4[5] = unk_1008C4BC3;
  v5[0] = xmmword_1008C4BD3;
  *(v5 + 10) = *(&xmmword_1008C4BD3 + 10);
  v4[0] = xmmword_1008C4B73;
  v4[1] = unk_1008C4B83;
  v4[2] = xmmword_1008C4B93;
  v4[3] = unk_1008C4BA3;
  *(a1 + 320) = a1;
  *(a1 + 328) = -15;
  v2 = sub_1005ADE88(a1, a2, v4, 122, 241, 1);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DB10();
  }

  return v2;
}

uint64_t sub_10069E67C(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C4BED;
  *(v4 + 11) = *(&xmmword_1008C4BED + 11);
  *(a1 + 336) = a1;
  *(a1 + 344) = -14;
  v2 = sub_1005ADE88(a1, a2, v4, 27, 242, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DB4C();
  }

  return v2;
}

uint64_t sub_10069E7A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 178 && a1[8] == 240)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FW update detected; invalidating SDP cache", v12, 2u);
    }

    (*(**(*a1 + 8) + 24))(*(*a1 + 8));
  }

  return (*(**a1 + 120))(*a1, a2, a3, a4, a5, a1[8]);
}

void sub_10069E8B4(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

id sub_10069E8EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 72);
  sub_1000088CC(v4);

  return v2;
}

double sub_10069EDF0(uint64_t a1)
{
  *a1 = off_100B06888;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  return result;
}

uint64_t sub_10069EE54(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B06888;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 112) = 0u;
  v5 = (a1 + 112);
  *(a1 + 160) = 0u;
  v6 = (a1 + 160);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = a1 + 232;
  v8 = (a1 + 256);
  v9 = (a1 + 280);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=(v4, (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=(v5, (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  std::string::operator=(v6, (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  if (a1 != a2)
  {
    sub_10068010C(v7, *(a2 + 232), *(a2 + 240), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 240) - *(a2 + 232)) >> 3));
    sub_100680498(v8, *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 7);
    sub_1006807AC(v9, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 3));
  }

  std::string::operator=((a1 + 304), (a2 + 304));
  std::string::operator=((a1 + 328), (a2 + 328));
  std::string::operator=((a1 + 352), (a2 + 352));
  std::string::operator=((a1 + 400), (a2 + 400));
  return a1;
}

void sub_10069F020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 423) < 0)
  {
    operator delete(*(v2 + 400));
  }

  sub_1000161FC(va);
  if (*(v2 + 375) < 0)
  {
    operator delete(*(v2 + 352));
  }

  if (*(v2 + 351) < 0)
  {
    operator delete(*(v2 + 328));
  }

  if (*(v2 + 327) < 0)
  {
    operator delete(*(v2 + 304));
  }

  sub_1000161FC(va);
  sub_1006A1BEC(va);
  sub_1006A1B64(va);
  if (*(v2 + 231) < 0)
  {
    operator delete(*(v2 + 208));
  }

  if (*(v2 + 207) < 0)
  {
    operator delete(*(v2 + 184));
  }

  if (*(v2 + 183) < 0)
  {
    operator delete(*v6);
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*v5);
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069F130(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *a1 = off_100B06888;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  sub_10067EF60(a1, a2);
  return a1;
}

void sub_10069F1E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 423) < 0)
  {
    operator delete(*(v2 + 400));
  }

  sub_1000161FC(va);
  if (*(v2 + 375) < 0)
  {
    operator delete(*(v2 + 352));
  }

  if (*(v2 + 351) < 0)
  {
    operator delete(*(v2 + 328));
  }

  if (*(v2 + 327) < 0)
  {
    operator delete(*(v2 + 304));
  }

  sub_1000161FC(va);
  sub_1006A1BEC(va);
  sub_1006A1B64(va);
  if (*(v2 + 231) < 0)
  {
    operator delete(*(v2 + 208));
  }

  if (*(v2 + 207) < 0)
  {
    operator delete(*(v2 + 184));
  }

  if (*(v2 + 183) < 0)
  {
    operator delete(*(v2 + 160));
  }

  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069F2F4(uint64_t a1)
{
  *a1 = off_100B06888;
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v3 = (a1 + 376);
  sub_1000161FC(&v3);
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v3 = (a1 + 280);
  sub_1000161FC(&v3);
  v3 = (a1 + 256);
  sub_1006A1BEC(&v3);
  v3 = (a1 + 232);
  sub_1006A1B64(&v3);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10069F450(uint64_t a1)
{
  sub_10069F2F4(a1);

  operator delete();
}

std::string *sub_10069F488@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((a1 - 1) < 6)
  {
    result = std::string::append(a2, off_100B068C8[a1 - 1]);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    return std::string::insert(a2, 0, ";TYPE=");
  }

  return result;
}

void sub_10069F4FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069F518(std::string *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  memset(&v22, 0, sizeof(v22));
  sub_100007E30(&v22, ";\n\");
  if (a2 == 1)
  {
    std::string::append(&v22, ",");
  }

  for (i = 0; ; i = v19 + 2)
  {
    v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v8 = a1->__r_.__value_.__r.__words[0];
      size = a1->__r_.__value_.__l.__size_;
    }

    else
    {
      v8 = a1;
      size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    v10 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    v11 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v12 = v22.__r_.__value_.__r.__words[0];
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v22;
    }

    else
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v22.__r_.__value_.__l.__size_;
    }

    if (size <= i || v10 == 0)
    {
      break;
    }

    v15 = (v8 + size);
    v16 = &i[v8];
LABEL_17:
    v17 = v10;
    v18 = v13;
    while (*v16 != v18->__r_.__value_.__s.__data_[0])
    {
      v18 = (v18 + 1);
      if (!--v17)
      {
        if (++v16 != v15)
        {
          goto LABEL_17;
        }

        goto LABEL_31;
      }
    }

    if (v16 == v15)
    {
      break;
    }

    v19 = &v16[-v8];
    if (&v16[-v8] == -1)
    {
      break;
    }

    v20 = a1;
    if ((v7 & 0x80000000) != 0)
    {
      v20 = a1->__r_.__value_.__r.__words[0];
    }

    if (v19[v20] == 10)
    {
      v21 = a1;
      if ((v7 & 0x80000000) != 0)
      {
        v21 = a1->__r_.__value_.__r.__words[0];
      }

      v19[v21] = 110;
    }

    std::string::insert(a1, &v16[-v8], 1uLL, 92);
  }

LABEL_31:
  *a3 = *&a1->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&a1->__r_.__value_.__l + 2);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(v12);
  }
}

void sub_10069F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10069F6A4@<Q0>(std::string *this@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v8 = this;
    size = v6;
    if ((v6 & 0x80) != 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (v7 == (v8 + size))
    {
      break;
    }

    v10 = v7->__r_.__value_.__s.__data_[0];
    if (v10 < 0)
    {
      if (!__maskrune(v7->__r_.__value_.__s.__data_[0], 0x100uLL))
      {
        goto LABEL_13;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v10] & 0x100) == 0)
    {
      goto LABEL_13;
    }

    v11 = __tolower(v7->__r_.__value_.__s.__data_[0]);
    v12 = 0;
    do
    {
      v13 = byte_1008C4C08[v12++];
    }

    while (v13 < v11);
    v7->__r_.__value_.__s.__data_[0] = v12 + 49;
LABEL_13:
    v7 = (v7 + 1);
    v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v14 = this;
  if (a2)
  {
    v15 = v6;
    if (v6 < 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
      v15 = this->__r_.__value_.__l.__size_;
    }

    if (v15)
    {
      do
      {
        if (v14->__r_.__value_.__s.__data_[0] == 44)
        {
          v14->__r_.__value_.__s.__data_[0] = 112;
        }

        v14 = (v14 + 1);
        --v15;
      }

      while (v15);
      v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    v16 = this;
    if ((v6 & 0x80) != 0)
    {
      v16 = this->__r_.__value_.__r.__words[0];
      v6 = this->__r_.__value_.__l.__size_;
    }

    for (; v6; --v6)
    {
      if (v16->__r_.__value_.__s.__data_[0] == 59)
      {
        v16->__r_.__value_.__s.__data_[0] = 119;
      }

      v16 = (v16 + 1);
    }
  }

  else
  {
    if (v6 < 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
      v6 = this->__r_.__value_.__l.__size_;
    }

    if (v6)
    {
      v17 = 0;
      while (1)
      {
        v18 = v14->__r_.__value_.__s.__data_[v17];
        if (v18 == 44 || v18 == 59)
        {
          break;
        }

        if (v6 == ++v17)
        {
          goto LABEL_40;
        }
      }

      if (v6 != v17 && v17 != -1)
      {
        std::string::erase(this, v17, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

LABEL_40:
  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void sub_10069F854(uint64_t a1, uint64_t a2, unsigned int a3, int a4, char a5)
{
  v8 = sub_100007774(a2);
  strlen(off_100B54DF0);
  sub_100007774(v8);
  if (a4)
  {
    sub_100007774(a2);
    if (a3 <= 1)
    {
      sub_100007774(a2);
    }

    strlen(off_100B54DF0);
    sub_100007774(a2);
  }

  if ((a4 & 2) != 0)
  {
    v9 = sub_100007774(a2);
    if (a3)
    {
      v10 = "";
    }

    else
    {
      v10 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v150, v10);
    v11 = sub_100007774(v9);
    sub_100007774(v11);
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 39) < 0)
    {
      sub_100008904(&__dst, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      __dst = *(a1 + 16);
    }

    sub_10069F518(&__dst, a3, &v150);
    sub_100007774(a2);
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    strlen(off_100B54DF0);
    sub_100007774(a2);
  }

  if ((a4 & 4) == 0)
  {
    goto LABEL_123;
  }

  v12 = sub_100007774(a2);
  if (a3)
  {
    v13 = "";
  }

  else
  {
    v13 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v150, v13);
  v14 = sub_100007774(v12);
  sub_100007774(v14);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100008904(&v148, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v148 = *(a1 + 40);
  }

  sub_10069F518(&v148, a3, &v150);
  sub_100007774(a2);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 87) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 72))
    {
      goto LABEL_46;
    }
  }

  else if (*(a1 + 87))
  {
    goto LABEL_46;
  }

  if ((*(a1 + 111) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_46;
    }
  }

  else if (*(a1 + 111))
  {
    goto LABEL_46;
  }

  v15 = *(a1 + 135);
  if (v15 < 0)
  {
    v15 = *(a1 + 120);
  }

  if (!v15)
  {
    v16 = *(a1 + 159);
    if (v16 < 0)
    {
      v16 = *(a1 + 144);
    }

    if (!v16)
    {
      goto LABEL_97;
    }
  }

LABEL_46:
  v17 = sub_100007774(a2);
  if (*(a1 + 87) < 0)
  {
    sub_100008904(&v147, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v147 = *(a1 + 64);
  }

  sub_10069F518(&v147, a3, &v150);
  sub_100007774(v17);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 111) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_64;
    }
  }

  else if (*(a1 + 111))
  {
    goto LABEL_64;
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 120))
    {
      goto LABEL_64;
    }
  }

  else if (*(a1 + 135))
  {
    goto LABEL_64;
  }

  v18 = *(a1 + 159);
  if (v18 < 0)
  {
    v18 = *(a1 + 144);
  }

  if (!v18)
  {
    goto LABEL_97;
  }

LABEL_64:
  v19 = sub_100007774(a2);
  if (*(a1 + 111) < 0)
  {
    sub_100008904(&v146, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v146 = *(a1 + 88);
  }

  sub_10069F518(&v146, a3, &v150);
  sub_100007774(v19);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 120))
    {
      goto LABEL_75;
    }
  }

  else if (!*(a1 + 135))
  {
LABEL_75:
    if ((*(a1 + 159) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 144))
      {
        goto LABEL_97;
      }
    }

    else if (!*(a1 + 159))
    {
      goto LABEL_97;
    }
  }

  v20 = sub_100007774(a2);
  if (*(a1 + 135) < 0)
  {
    sub_100008904(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
  }

  sub_10069F518(&__p, a3, &v150);
  sub_100007774(v20);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 159) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_97;
    }
  }

  else if (!*(a1 + 159))
  {
    goto LABEL_97;
  }

  v21 = sub_100007774(a2);
  if (*(a1 + 159) < 0)
  {
    sub_100008904(&v144, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    v144 = *(a1 + 136);
  }

  sub_10069F518(&v144, a3, &v150);
  sub_100007774(v21);
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

LABEL_97:
  strlen(off_100B54DF0);
  sub_100007774(a2);
  if ((*(a1 + 183) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_110;
    }
  }

  else if (!*(a1 + 183))
  {
    goto LABEL_110;
  }

  v22 = sub_100007774(a2);
  sub_100007E30(&v150, v13);
  v23 = sub_100007774(v22);
  v24 = sub_100007774(v23);
  if (*(a1 + 183) < 0)
  {
    sub_100008904(&v142, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    v142 = *(a1 + 160);
  }

  sub_10069F518(&v142, a3, &v143);
  v25 = sub_100007774(v24);
  strlen(off_100B54DF0);
  sub_100007774(v25);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

LABEL_110:
  if ((*(a1 + 207) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 207))
    {
      goto LABEL_123;
    }

LABEL_114:
    v26 = sub_100007774(a2);
    sub_100007E30(&v150, v13);
    v27 = sub_100007774(v26);
    v28 = sub_100007774(v27);
    if (*(a1 + 207) < 0)
    {
      sub_100008904(&v141, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v141 = *(a1 + 184);
    }

    sub_10069F518(&v141, a3, &v143);
    v29 = sub_100007774(v28);
    strlen(off_100B54DF0);
    sub_100007774(v29);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    goto LABEL_123;
  }

  if (*(a1 + 192))
  {
    goto LABEL_114;
  }

LABEL_123:
  v115 = a3;
  v112 = a4;
  if ((a4 & 0x80) != 0)
  {
    if (*(a1 + 240) == *(a1 + 232))
    {
      v38 = sub_100007774(a2);
      strlen(off_100B54DF0);
      sub_100007774(v38);
    }

    else
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = sub_100007774(a2);
        sub_10069F488(*(*(a1 + 232) + v30 + 24), &v150);
        v33 = sub_100007774(v32);
        v34 = sub_100007774(v33);
        v35 = (*(a1 + 232) + v30);
        if (*(v35 + 23) < 0)
        {
          sub_100008904(&v140, *v35, *(v35 + 1));
        }

        else
        {
          v36 = *v35;
          v140.__r_.__value_.__r.__words[2] = *(v35 + 2);
          *&v140.__r_.__value_.__l.__data_ = v36;
        }

        sub_10069F6A4(&v140, a5, &v143);
        v37 = sub_100007774(v34);
        strlen(off_100B54DF0);
        sub_100007774(v37);
        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v140.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        ++v31;
        v30 += 56;
      }

      while (v31 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
    }
  }

  if ((a4 & 8) == 0)
  {
    goto LABEL_162;
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 216))
    {
      goto LABEL_162;
    }
  }

  else if (!*(a1 + 231))
  {
    goto LABEL_162;
  }

  memset(&v150, 0, sizeof(v150));
  if (a3)
  {
    v39 = "b";
  }

  else
  {
    v39 = "BASE64";
  }

  sub_100007E30(&v150, v39);
  v40 = sub_100007774(a2);
  if (a3)
  {
    v41 = "";
  }

  else
  {
    v41 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v143, v41);
  v42 = sub_100007774(v40);
  v43 = sub_100007774(v42);
  v44 = sub_100007774(v43);
  sub_100007774(v44);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  v45 = 0;
  while (1)
  {
    v46 = *(a1 + 231);
    if ((v46 & 0x8000000000000000) != 0)
    {
      v46 = *(a1 + 216);
    }

    if (v45 >= v46)
    {
      break;
    }

    std::string::basic_string(&v143, (a1 + 208), v45, 0x4BuLL, &v136);
    v47 = sub_100007774(a2);
    strlen(off_100B54DF0);
    sub_100007774(v47);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    v48 = *(a1 + 231);
    if ((v48 & 0x8000000000000000) != 0)
    {
      v48 = *(a1 + 216);
    }

    v45 += 75;
    if (v45 < v48)
    {
      sub_100007774(a2);
    }
  }

  if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_162:
    if ((v112 & 0x20) != 0)
    {
      goto LABEL_163;
    }

    goto LABEL_225;
  }

  operator delete(v150.__r_.__value_.__l.__data_);
  if ((v112 & 0x20) != 0)
  {
LABEL_163:
    if (*(a1 + 264) != *(a1 + 256))
    {
      v49 = 0;
      v50 = 0;
      v51 = "";
      if (!a3)
      {
        v51 = ";CHARSET=UTF-8";
      }

      __sa = v51;
      do
      {
        v52 = sub_100007774(a2);
        sub_100007E30(&v150, __sa);
        v53 = sub_100007774(v52);
        sub_10069F488(*(*(a1 + 256) + v49 + 120), &v143);
        v54 = sub_100007774(v53);
        sub_100007774(v54);
        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        memset(&v150, 0, sizeof(v150));
        *(v139 + 3) = 0;
        v139[0] = 0;
        v55 = std::string::find((*(a1 + 256) + v49), 10, 0);
        if (v55 == -1)
        {
          v58 = 0;
          v59 = 0;
          std::string::operator=(&v150, (*(a1 + 256) + v49));
          size = 0;
        }

        else
        {
          v56 = v55;
          std::string::basic_string(&v143, (*(a1 + 256) + v49), 0, v55, &v136);
          if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v150.__r_.__value_.__l.__data_);
          }

          v150 = v143;
          std::string::basic_string(&v143, (*(a1 + 256) + v49), v56 + 1, 0xFFFFFFFFFFFFFFFFLL, &v136);
          size = v143.__r_.__value_.__l.__size_;
          v58 = v143.__r_.__value_.__r.__words[0];
          v139[0] = v143.__r_.__value_.__r.__words[2];
          *(v139 + 3) = *(&v143.__r_.__value_.__r.__words[2] + 3);
          v59 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
        }

        v60 = sub_100007774(a2);
        if (v59 < 0)
        {
          sub_100008904(&v138, v58, size);
        }

        else
        {
          v138.__r_.__value_.__r.__words[0] = v58;
          v138.__r_.__value_.__l.__size_ = size;
          LODWORD(v138.__r_.__value_.__r.__words[2]) = v139[0];
          *(&v138.__r_.__value_.__r.__words[2] + 3) = *(v139 + 3);
          *(&v138.__r_.__value_.__s + 23) = v59;
        }

        sub_10069F518(&v138, a3, &v143);
        v61 = sub_100007774(v60);
        v62 = sub_100007774(v61);
        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v135, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
        }

        else
        {
          v135 = v150;
        }

        sub_10069F518(&v135, a3, &v136);
        v63 = sub_100007774(v62);
        v64 = sub_100007774(v63);
        v65 = *(a1 + 256) + v49;
        if (*(v65 + 47) < 0)
        {
          sub_100008904(&v132, *(v65 + 24), *(v65 + 32));
        }

        else
        {
          v66 = *(v65 + 24);
          v132.__r_.__value_.__r.__words[2] = *(v65 + 40);
          *&v132.__r_.__value_.__l.__data_ = v66;
        }

        sub_10069F518(&v132, a3, &v133);
        v67 = sub_100007774(v64);
        v68 = sub_100007774(v67);
        v69 = *(a1 + 256) + v49;
        if (*(v69 + 71) < 0)
        {
          sub_100008904(&v129, *(v69 + 48), *(v69 + 56));
        }

        else
        {
          v70 = *(v69 + 48);
          v129.__r_.__value_.__r.__words[2] = *(v69 + 64);
          *&v129.__r_.__value_.__l.__data_ = v70;
        }

        sub_10069F518(&v129, a3, &v130);
        v71 = sub_100007774(v68);
        v72 = sub_100007774(v71);
        v73 = *(a1 + 256) + v49;
        if (*(v73 + 95) < 0)
        {
          sub_100008904(&v126, *(v73 + 72), *(v73 + 80));
        }

        else
        {
          v74 = *(v73 + 72);
          v126.__r_.__value_.__r.__words[2] = *(v73 + 88);
          *&v126.__r_.__value_.__l.__data_ = v74;
        }

        sub_10069F518(&v126, a3, &v127);
        v75 = sub_100007774(v72);
        v76 = sub_100007774(v75);
        v77 = *(a1 + 256) + v49;
        if (*(v77 + 119) < 0)
        {
          sub_100008904(&v123, *(v77 + 96), *(v77 + 104));
        }

        else
        {
          v78 = *(v77 + 96);
          v123.__r_.__value_.__r.__words[2] = *(v77 + 112);
          *&v123.__r_.__value_.__l.__data_ = v78;
        }

        sub_10069F518(&v123, a3, &v124);
        v79 = sub_100007774(v76);
        strlen(off_100B54DF0);
        sub_100007774(v79);
        if (v125 < 0)
        {
          operator delete(v124);
        }

        if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v123.__r_.__value_.__l.__data_);
        }

        if (v128 < 0)
        {
          operator delete(v127);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (v131 < 0)
        {
          operator delete(v130);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (v134 < 0)
        {
          operator delete(v133);
        }

        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (v137 < 0)
        {
          operator delete(v136);
        }

        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v143.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
          if (v59 < 0)
          {
LABEL_223:
            operator delete(v58);
          }
        }

        else if (v59 < 0)
        {
          goto LABEL_223;
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
        }

        ++v50;
        v49 += 128;
      }

      while (v50 < (*(a1 + 264) - *(a1 + 256)) >> 7);
    }
  }

LABEL_225:
  if ((v112 & 0x100) != 0 && *(a1 + 288) != *(a1 + 280))
  {
    v80 = 0;
    v81 = 0;
    if (a3)
    {
      v82 = "";
    }

    else
    {
      v82 = ";CHARSET=UTF-8";
    }

    do
    {
      v83 = sub_100007774(a2);
      sub_100007E30(&v150, v82);
      v84 = sub_100007774(v83);
      v85 = sub_100007774(v84);
      v86 = (*(a1 + 280) + v80);
      if (*(v86 + 23) < 0)
      {
        sub_100008904(&v122, *v86, *(v86 + 1));
      }

      else
      {
        v87 = *v86;
        v122.__r_.__value_.__r.__words[2] = *(v86 + 2);
        *&v122.__r_.__value_.__l.__data_ = v87;
      }

      sub_10069F518(&v122, a3, &v143);
      v88 = sub_100007774(v85);
      strlen(off_100B54DF0);
      sub_100007774(v88);
      if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v143.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v122.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      ++v81;
      v80 += 24;
    }

    while (v81 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 288) - *(a1 + 280)) >> 3));
  }

  if ((v112 & 0x1000) == 0)
  {
    goto LABEL_256;
  }

  if ((*(a1 + 327) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 312))
    {
      goto LABEL_256;
    }
  }

  else if (!*(a1 + 327))
  {
    goto LABEL_256;
  }

  v89 = sub_100007774(a2);
  if (a3)
  {
    v90 = "";
  }

  else
  {
    v90 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v150, v90);
  v91 = sub_100007774(v89);
  v92 = sub_100007774(v91);
  if (*(a1 + 327) < 0)
  {
    sub_100008904(&v121, *(a1 + 304), *(a1 + 312));
  }

  else
  {
    v121 = *(a1 + 304);
  }

  sub_10069F518(&v121, a3, &v143);
  v93 = sub_100007774(v92);
  strlen(off_100B54DF0);
  sub_100007774(v93);
  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_256:
    if ((v112 & 0x10000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_257;
  }

  operator delete(v150.__r_.__value_.__l.__data_);
  if ((v112 & 0x10000) == 0)
  {
    goto LABEL_277;
  }

LABEL_257:
  if ((*(a1 + 351) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_277;
    }

LABEL_261:
    v94 = sub_100007774(a2);
    if (a3)
    {
      v95 = "";
    }

    else
    {
      v95 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v150, v95);
    v96 = sub_100007774(v94);
    v97 = sub_100007774(v96);
    if (*(a1 + 351) < 0)
    {
      sub_100008904(&v120, *(a1 + 328), *(a1 + 336));
    }

    else
    {
      v120 = *(a1 + 328);
    }

    sub_10069F518(&v120, a3, &v143);
    sub_100007774(v97);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 375) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 360))
      {
        goto LABEL_287;
      }
    }

    else if (!*(a1 + 375))
    {
      goto LABEL_287;
    }

    v98 = sub_100007774(a2);
    if (*(a1 + 375) < 0)
    {
      sub_100008904(&v119, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      v119 = *(a1 + 352);
    }

    sub_10069F518(&v119, a3, &v150);
    sub_100007774(v98);
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v119.__r_.__value_.__l.__data_);
    }

LABEL_287:
    strlen(off_100B54DF0);
    sub_100007774(a2);
    if ((v112 & 0x100000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_288;
  }

  if (*(a1 + 351))
  {
    goto LABEL_261;
  }

LABEL_277:
  if ((v112 & 0x100000) == 0)
  {
    goto LABEL_298;
  }

LABEL_288:
  if (*(a1 + 384) != *(a1 + 376))
  {
    v99 = 0;
    v100 = 0;
    do
    {
      v101 = sub_100007774(a2);
      v102 = (*(a1 + 376) + v99);
      if (*(v102 + 23) < 0)
      {
        sub_100008904(&v118, *v102, *(v102 + 1));
      }

      else
      {
        v103 = *v102;
        v118.__r_.__value_.__r.__words[2] = *(v102 + 2);
        *&v118.__r_.__value_.__l.__data_ = v103;
      }

      sub_10069F518(&v118, v115, &v150);
      v104 = sub_100007774(v101);
      strlen(off_100B54DF0);
      sub_100007774(v104);
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      ++v100;
      v99 += 24;
    }

    while (v100 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 384) - *(a1 + 376)) >> 3));
  }

LABEL_298:
  if ((v112 & 0x200000) != 0 && *(a1 + 8) != -1)
  {
    v105 = sub_100007774(a2);
    *(v105 + *(*v105 - 24) + 8) = *(v105 + *(*v105 - 24) + 8) & 0xFFFFFFB5 | 8;
    v106 = std::ostream::operator<<();
    *(v106 + *(*v106 - 24) + 8) = *(v106 + *(*v106 - 24) + 8) & 0xFFFFFFB5 | 2;
    strlen(off_100B54DF0);
    sub_100007774(v106);
  }

  if ((v112 & 0x800000) != 0)
  {
    if ((*(a1 + 423) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 408))
      {
        return;
      }
    }

    else if (!*(a1 + 423))
    {
      return;
    }

    v107 = sub_100007774(a2);
    if (v115)
    {
      v108 = "";
    }

    else
    {
      v108 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v150, v108);
    v109 = sub_100007774(v107);
    v110 = sub_100007774(v109);
    if (*(a1 + 423) < 0)
    {
      sub_100008904(&v117, *(a1 + 400), *(a1 + 408));
    }

    else
    {
      v117 = *(a1 + 400);
    }

    sub_10069F518(&v117, v115, &v143);
    v111 = sub_100007774(v110);
    strlen(off_100B54DF0);
    sub_100007774(v111);
    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v143.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v117.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1006A11BC(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1006A160C()
{
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    JUMPOUT(0x1006A1588);
  }

  JUMPOUT(0x1006A15F4);
}

uint64_t sub_1006A1630(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007774(a2);
  strlen(off_100B54DF0);

  return sub_100007774(v2);
}

uint64_t sub_1006A1690(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_100008760(&v10);
  sub_10069F854(a1, &v10, a2, a3, a4);
  sub_1006A1630(v8, &v10);
  std::stringbuf::str();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006A1844(uint64_t a1, unsigned int a2, int a3, char a4)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_100008760(&v12);
  sub_10069F854(a1, &v12, a2, a3, a4);
  sub_100007774(&v12);
  if (*(a1 + 424) < 3u)
  {
    sub_100007774(&v12);
  }

  v8 = sub_100007774(&v12);
  v9 = sub_100007774(v8);
  strlen(off_100B54DF0);
  v10 = sub_100007774(v9);
  sub_1006A1630(v10, &v12);
  std::stringbuf::str();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006A1A90(uint64_t a1)
{
  *a1 = off_100B068B0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  return sub_10069F2F4(a1);
}

void sub_1006A1AF0(uint64_t a1)
{
  *a1 = off_100B068B0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  sub_10069F2F4(a1);

  operator delete();
}

void sub_1006A1B64(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_100437FA4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1006A1BEC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100680710(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double sub_1006A2000(uint64_t a1)
{
  *a1 = off_100B06920;
  *(a1 + 8) = off_100B06968;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1006A2058(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeSensorTrackingManager: initialize", v3, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10085DCE0();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  if (qword_100B51078 != -1)
  {
    sub_10085DD08();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 8);
}

void sub_1006A211C(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 19);
    v4 = *(a1 + 20);
    v12[0] = 67109376;
    v12[1] = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack will start: ftotalTrackingCapacity: %d, fremainingTrackingCapacity: %d", v12, 0xEu);
  }

  *(a1 + 64) = 0;
  v5 = sub_10000C7D0();
  if ((*(*v5 + 2792))(v5))
  {
    *(a1 + 16) = 1;
    v6 = sub_10000C7D0();
    if ((*(*v6 + 2800))(v6))
    {
      *(a1 + 17) = 1;
    }

    v7 = sub_10000C7D0();
    if ((*(*v7 + 2808))(v7))
    {
      *(a1 + 18) = 1;
    }

    v8 = +[NSMutableDictionary dictionary];
    v9 = *(a1 + 48);
    *(a1 + 48) = v8;

    v10 = +[NSMutableSet set];
    v11 = *(a1 + 56);
    *(a1 + 56) = v10;

    *(a1 + 19) = 25700;
  }
}

void sub_1006A22C8(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) count];
    v4 = [*(a1 + 48) count];
    v5 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *buf = 134218496;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack did stop fcurrentlyTrackedDevices: %lu, fsensorTrackingRequests: %lu, fsensorTrackingSessions: %lu", buf, 0x20u);
  }

  v6 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006A2438;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a1;
  sub_10000D334(v6, v8);
  v7 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeSensorTrackingManager::stackWillStop exit", buf, 2u);
  }
}

void *sub_1006A2438(void *result)
{
  v1 = result[4];
  if ((*(v1 + 16) & 1) != 0 || *(v1 + 18) == 1)
  {
    *(v1 + 19) = 0;
    *(v1 + 32) = *(v1 + 24);
    [*(v1 + 56) removeAllObjects];
    v2 = *(v1 + 48);

    return [v2 removeAllObjects];
  }

  return result;
}

uint64_t sub_1006A24A0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 a8, int a9, unsigned __int8 a10, char a11, char a12, __int16 a13, unsigned __int16 a14, unsigned __int16 a15, __int16 a16)
{
  v23 = a3;
  v24 = v23;
  if (*(a1 + 16) & 1) != 0 || (*(a1 + 18))
  {
    if (!a2)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DFF4();
      }

      goto LABEL_32;
    }

    if (!v23)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DFC0();
      }

      goto LABEL_32;
    }

    if (a4 >= 0x65)
    {
      v25 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DF54(a4, v25, v26, v27, v28, v29, v30, v31);
      }

LABEL_32:
      v32 = 3;
      goto LABEL_33;
    }

    if ((a5 & 0x80) != 0)
    {
      v41 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DEE8(a5, v41, v42, v43, v44, v45, v46, v47);
      }

      goto LABEL_32;
    }

    sub_100018384(a2, __p);
    if (v82[9] >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = *__p;
    }

    v78 = [NSString stringWithUTF8String:v33];
    if ((v82[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v34 = qword_100BCEA48;
    if (!v78)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DEB4();
      }

      v32 = 1;
      goto LABEL_80;
    }

    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138545410;
      *&__p[4] = v78;
      *&__p[12] = 2114;
      *v82 = v24;
      *&v82[8] = 1024;
      *&v82[10] = a4;
      *&v82[14] = 1024;
      *&v82[16] = a5;
      *v83 = 1024;
      *&v83[2] = a7;
      v84 = 1024;
      v85 = a9;
      v86 = 1024;
      v87 = BYTE1(a9);
      v88 = 1024;
      v89 = HIBYTE(a9);
      v90 = 1024;
      v91 = a10;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "startTracking for session: %{public}@ for device %{public}@ for type %d with timeout value %d rssi:%d:%d:%d eCfg:%d:%d", __p, 0x40u);
    }

    v77 = [*(a1 + 48) objectForKeyedSubscript:v78];
    v79 = sub_1006A3020(v77, v77, v24);
    v35 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEBUG))
    {
      v69 = *(a1 + 48);
      *__p = 138543874;
      *&__p[4] = v69;
      *&__p[12] = 2114;
      *v82 = v77;
      *&v82[8] = 2114;
      *&v82[10] = v79;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Current sensor tracking requests: %{public}@, tracking devices set %{public}@ for foundDevice %{public}@", __p, 0x20u);
    }

    sub_1006A31A8(a1);
    if (v79)
    {
      v36 = [v79 appleTypes];
      v37 = [NSNumber numberWithUnsignedChar:a4];
      v38 = [v36 containsObject:v37];

      if (v38)
      {
        v39 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v79 appleTypes];
          *__p = 138543874;
          *&__p[4] = v24;
          *&__p[12] = 1024;
          *v82 = a4;
          *&v82[4] = 2114;
          *&v82[6] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Already tracking same device %{public}@ and same type: %d, %{public}@", __p, 0x1Cu);
        }
      }

      else
      {
        v56 = [v79 appleTypes];
        v57 = v56 == 0;

        if (v57)
        {
          v58 = +[NSMutableSet set];
          [v79 setAppleTypes:v58];
        }

        v59 = [v79 appleTypes];
        v60 = [NSNumber numberWithUnsignedChar:a4];
        [v59 addObject:v60];

        v61 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEBUG))
        {
          v62 = [v79 appleTypes];
          sub_10085DD64(v62, buf, v61);
        }

        if ([v79 currentState] == 1 || objc_msgSend(v79, "currentState") == 3)
        {
          if (qword_100B512F8 != -1)
          {
            sub_10085DDBC();
          }

          sub_1003B73C8(off_100B512F0, a2, v24, [v79 currentState], a4);
        }
      }

      if (sub_1006A3268(a1, v79))
      {
        v32 = sub_1006A34AC(a1, 0, [v79 rssiIncreaseScanThreshold], objc_msgSend(v79, "rssiIncreaseScanWindowThreshold"), objc_msgSend(v79, "rssiIncreaseScanIntervalThreshold"), objc_msgSend(v79, "rssiIncreaseScanTimeoutThreshold"), objc_msgSend(v79, "sensorTimeoutBetweenIncreaseScan"));
        if (v32)
        {
          if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085DDE4();
          }

          goto LABEL_79;
        }
      }

LABEL_77:
      v71 = qword_100BCEA48;
      v32 = 0;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(a1 + 48);
        v73 = *(a1 + 56);
        *__p = 138543618;
        *&__p[4] = v72;
        *&__p[12] = 2114;
        *v82 = v73;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Now tracking requests: %{public}@ with currently tracking devices: %{public}@", __p, 0x16u);
        v32 = 0;
      }

      goto LABEL_79;
    }

    v49 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "New session or new device to add in trackign list", __p, 2u);
    }

    WORD2(v75) = a16;
    LODWORD(v75) = __PAIR32__(a15, a14);
    HIWORD(v74) = a13;
    BYTE5(v74) = a12;
    BYTE4(v74) = a10;
    LODWORD(v74) = a9;
    v50 = [TrackingDevice initWithDevice:"initWithDevice:type:timeoutValue:targetCore:rssiThreshold:rssiThresholdGone:invalidRssiHandling:rssiPrecision:rssiPrecisionGone:eventConfiguration:vseBuffering:rssiIncreaseScanThreshold:rssiIncreaseScanWindowThreshold:rssiIncreaseScanIntervalThreshold:rssiIncreaseScanTimeoutThreshold:sensorTimeoutBetweenIncreaseScan:" type:v24 timeoutValue:a4 targetCore:a5 rssiThreshold:a6 rssiThresholdGone:a7 invalidRssiHandling:a8 rssiPrecision:v74 rssiPrecisionGone:v75 eventConfiguration:? vseBuffering:? rssiIncreaseScanThreshold:? rssiIncreaseScanWindowThreshold:? rssiIncreaseScanIntervalThreshold:? rssiIncreaseScanTimeoutThreshold:? sensorTimeoutBetweenIncreaseScan:?];
    v51 = sub_1006A3648(a1, v24);
    v52 = qword_100BCEA48;
    v53 = os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT);
    v76 = v51;
    if (v51)
    {
      if (v53)
      {
        v54 = [v51 currentState] - 1;
        if (v54 > 2)
        {
          v55 = @"Not Set";
        }

        else
        {
          v55 = off_100B06BE8[v54];
        }

        *__p = 138543362;
        *&__p[4] = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Some other sesssion is tracking this device with state: %{public}@", __p, 0xCu);
      }

      -[TrackingDevice setCurrentState:](v50, "setCurrentState:", [v51 currentState]);
      if ([(TrackingDevice *)v50 currentState]== 1 || [(TrackingDevice *)v50 currentState]== 3)
      {
        if (qword_100B512F8 != -1)
        {
          sub_10085DDBC();
        }

        sub_1003B73C8(off_100B512F0, a2, v24, [(TrackingDevice *)v50 currentState], a4);
      }
    }

    else
    {
      if (v53)
      {
        v63 = [(TrackingDevice *)v50 timeoutValue];
        v64 = [(TrackingDevice *)v50 rssiThreshold];
        v65 = [(TrackingDevice *)v50 rssiPrecision];
        v66 = [(TrackingDevice *)v50 invalidRssiHandling];
        v67 = [(TrackingDevice *)v50 eventConfiguration];
        v68 = [(TrackingDevice *)v50 vseBuffering];
        *__p = 67110400;
        *&__p[4] = v63;
        *&__p[8] = 1024;
        *&__p[10] = v64;
        *v82 = 1024;
        *&v82[2] = v65;
        *&v82[6] = 1024;
        *&v82[8] = v66;
        *&v82[12] = 1024;
        *&v82[14] = v67;
        *&v82[18] = 1024;
        *v83 = v68;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "No other session is tracking this device - start tracking with timeout: %d rssi:%d:%d handling:%d eventCfg:%d vseBuf:%d", __p, 0x26u);
      }

      v32 = sub_1006A3824(a1, v24, [(TrackingDevice *)v50 timeoutValue], [(TrackingDevice *)v50 targetCore], [(TrackingDevice *)v50 rssiThreshold], [(TrackingDevice *)v50 rssiThresholdGone], [(TrackingDevice *)v50 invalidRssiHandling], [(TrackingDevice *)v50 rssiPrecision], [(TrackingDevice *)v50 rssiPrecisionGone], [(TrackingDevice *)v50 eventConfiguration], [(TrackingDevice *)v50 vseBuffering]);
      if (v32)
      {
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
        {
          sub_10085DE4C();
        }

        goto LABEL_75;
      }
    }

    if (v77)
    {
      [v77 addObject:v50];
    }

    else
    {
      v70 = [NSMutableSet setWithObject:v50];
      [*(a1 + 48) setObject:v70 forKeyedSubscript:v78];

      sub_1006A3AA4(a1, a2);
    }

    if (!sub_1006A3268(a1, v50) || (v32 = sub_1006A34AC(a1, 0, [(TrackingDevice *)v50 rssiIncreaseScanThreshold], [(TrackingDevice *)v50 rssiIncreaseScanWindowThreshold], [(TrackingDevice *)v50 rssiIncreaseScanIntervalThreshold], [(TrackingDevice *)v50 rssiIncreaseScanTimeoutThreshold], [(TrackingDevice *)v50 sensorTimeoutBetweenIncreaseScan]), !v32))
    {

      goto LABEL_77;
    }

    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      sub_10085DDE4();
    }

LABEL_75:

LABEL_79:
LABEL_80:

    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
  {
    sub_10085DD30();
  }

  v32 = 11;
LABEL_33:

  return v32;
}