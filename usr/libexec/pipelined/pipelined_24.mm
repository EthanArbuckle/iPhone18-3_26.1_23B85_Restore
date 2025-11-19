double sub_10016C010(double *a1, double **a2)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6 == v5)
  {
    return 0.0;
  }

  v21[3] = v2;
  v21[4] = v3;
  v19 = 0;
  v20 = 0;
  v21[0] = 0;
  sub_10016CB60(a1, v5, v6, &v18, v21, &v20, &v19);
  v8 = v20[1];
  v9 = *a1;
  v10 = a1[1];
  v11 = v21[0][1];
  v12 = *v20 - *v21[0];
  v13 = v8 - v11;
  v14 = *a1 - *v21[0];
  v15 = (v10 - v11) * (v8 - v11) + v14 * v12;
  if (v15 <= 0.0)
  {
    return sqrt(v14 * v14 + 0.0 + (v10 - v11) * (v10 - v11));
  }

  v16 = v13 * v13 + v12 * v12;
  if (v16 <= v15)
  {
    return sqrt((v9 - *v20) * (v9 - *v20) + 0.0 + (v10 - v8) * (v10 - v8));
  }

  else
  {
    return sqrt((v9 - (*v21[0] + v12 * (v15 / v16))) * (v9 - (*v21[0] + v12 * (v15 / v16))) + 0.0 + (v10 - (v11 + v13 * (v15 / v16))) * (v10 - (v11 + v13 * (v15 / v16))));
  }
}

uint64_t sub_10016C110(double *a1, double *a2, double *a3, uint64_t a4)
{
  v22 = 0;
  v8 = sub_10016C2B8(a1, a2, a3, a4, &v22 + 1, &v22);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v8)
  {
    if (v8 == -1)
    {
LABEL_4:
      if (HIBYTE(v22))
      {
        v9 = a2;
      }

      else
      {
        v9 = a3;
      }

      v10 = a1[1];
      v11 = v9[1];
      if (v10 == v11)
      {
        goto LABEL_37;
      }

      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v16 = fabs(v10);
        v17 = fabs(v11);
        v18 = vabdd_f64(v10, v11);
        if (v16 < v17)
        {
          v16 = v17;
        }

        if (v16 < 1.0)
        {
          v16 = 1.0;
        }

        if (v18 <= v16 * 2.22044605e-16)
        {
          goto LABEL_37;
        }
      }

      v13 = v10 >= v11 ? v8 : -v8;
      if (!v13)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (v13 * v8 >= 1)
      {
        *a4 += v8;
      }

      goto LABEL_36;
    }

    v14 = v8;
    v23 = 1.0;
    v15 = sub_10016C468(a2, a3, a1, &v23);
    if (v15 == 0.0)
    {
      goto LABEL_18;
    }

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v19 = fabs(v15);
      if (v15 > 0.0)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      if (v19 <= v23 * 2.22044605e-16)
      {
LABEL_18:
        v13 = 0;
      }
    }

    else if (v15 > 0.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }

    v8 = v14;
    if (!v13)
    {
LABEL_37:
      v20 = 0;
      *(a4 + 4) = 1;
      *a4 = 0;
      return v20 & 1;
    }

    goto LABEL_34;
  }

LABEL_36:
  v20 = *(a4 + 4) ^ 1;
  return v20 & 1;
}

uint64_t sub_10016C2B8(double *a1, double *a2, double *a3, uint64_t a4, BOOL *a5, _BYTE *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  if (*a2 != *a1)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v16 = fabs(v7);
      v17 = fabs(v6);
      v18 = vabdd_f64(v7, v6);
      if (v16 < v17)
      {
        v16 = v17;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      *a5 = v18 <= v16 * 2.22044605e-16;
      if (v8 != v6)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a5 = 0;
      if (v8 != v6)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    v9 = 1;
    *a6 = 1;
    v10 = *a5;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_46;
  }

  *a5 = 1;
  if (v8 == v6)
  {
    goto LABEL_3;
  }

LABEL_12:
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    *a6 = 0;
    if (!*a5)
    {
LABEL_20:
      if (v8 >= v6 || v7 <= v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }

      if (v7 >= v6 || v8 <= v6)
      {
        return v14;
      }

      else
      {
        return 2;
      }
    }

LABEL_17:
    if (v8 > v6)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v19 = fabs(v8);
  v20 = fabs(v6);
  v21 = vabdd_f64(v8, v6);
  if (v19 < v20)
  {
    v19 = v20;
  }

  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  v9 = v21 <= v19 * 2.22044605e-16;
  *a6 = v9;
  v10 = *a5;
  if (!v10 || v21 > v19 * 2.22044605e-16)
  {
LABEL_4:
    if (!v10)
    {
      if (v9)
      {
        if (v7 <= v6)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_46:
  v23 = a1[1];
  v24 = a2[1];
  v25 = a3[1];
  if ((v24 > v23 || v25 < v23) && (v24 < v23 || v25 > v23))
  {
    return 0;
  }

  result = 0;
  *(a4 + 4) = 1;
  return result;
}

double sub_10016C468(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v20[0] = *a1;
  v20[1] = v4;
  v5 = a2[1];
  v19[0] = *a2;
  v19[1] = v5;
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  v7 = v20[0] - v18[0];
  v27[0] = v20[0] - v18[0];
  v8 = v5 - v6;
  v26[0] = v5 - v6;
  v9 = v4 - v6;
  v25[0] = v4 - v6;
  v10 = v19[0] - v18[0];
  v24[0] = v19[0] - v18[0];
  v11 = vabdd_f64(v20[0], v18[0]);
  v12 = vabdd_f64(v5, v6);
  v13 = vabdd_f64(v4, v6);
  v14 = vabdd_f64(v19[0], v18[0]);
  if (v11 < v12)
  {
    v11 = v12;
  }

  if (v11 < v13)
  {
    v11 = v13;
  }

  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a4 = v11;
  v15 = v7 * v8;
  v23[0] = v7 * v8;
  v16 = v10 * v9;
  result = v7 * v8 - v10 * v9;
  v21 = fabs(v7 * v8) + fabs(v10 * v9);
  v22[0] = v10 * v9;
  if (vabdd_f64(v7 * v8, v10 * v9) < v21 * 3.33066907e-16 && (v15 <= 0.0 || v16 > 0.0) && (v15 >= 0.0 || v16 < 0.0))
  {
    return sub_10016C58C(v20, v19, v18, v27, v26, v25, v24, v23, v22, &v21);
  }

  return result;
}

double sub_10016C58C(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, double *a10)
{
  a8[1] = -(*a8 - *a4 * *a5);
  v10 = *a9;
  v11 = -(*a9 - *a6 * *a7);
  a9[1] = v11;
  v12 = a8[1];
  v13 = v12 - v11;
  v14 = v12 - (v12 - v11) - v11 + v12 - (v12 - v11 + v12 - (v12 - v11));
  v15 = *a8 + v13;
  v16 = v13 - (v15 - *a8) + *a8 - (v15 - (v15 - *a8));
  v66 = v14;
  v67 = v16 - (v16 - v10) - v10 + v16 - (v16 - v10 + v16 - (v16 - v10));
  v68 = v16 - v10 - (v15 + v16 - v10 - v15) + v15 - (v15 + v16 - v10 - (v15 + v16 - v10 - v15));
  v69 = v15 + v16 - v10;
  result = v14 + 0.0 + v67 + v68 + v69;
  v18 = fabs(result);
  if (v18 < *a10 * 2.22044605e-16)
  {
    a4[1] = *a1 - *a4 - *a3 + *a1 - (*a4 + *a1 - *a4);
    a5[1] = a2[1] - *a5 - a3[1] + a2[1] - (*a5 + a2[1] - *a5);
    a6[1] = a1[1] - *a6 - a3[1] + a1[1] - (*a6 + a1[1] - *a6);
    v19 = *a7;
    v20 = *a2 - *a7 - *a3 + *a2 - (*a7 + *a2 - *a7);
    a7[1] = v20;
    v21 = a4[1];
    v22 = a6[1];
    v23 = a5[1];
    if (v21 != 0.0 || v22 != 0.0 || v23 != 0.0 || v20 != 0.0)
    {
      v24 = v18 * 3.33066907e-16 + *a10 * 1.10933565e-31;
      v25 = v21 * *a5;
      v26 = v19 * v22;
      result = result + v25 + *a4 * v23 - (v19 * v22 + *a6 * v20);
      if (fabs(result) < v24)
      {
        v27 = -(v25 - v21 * *a5);
        v28 = -(v26 - v22 * v19);
        v29 = v27 - v28;
        v30 = v27 - (v27 - v28) - v28 + v27 - (v27 - v28 + v27 - (v27 - v28));
        v31 = v25 + v29;
        v32 = v29 - (v25 + v29 - v25) + v25 - (v25 + v29 - (v25 + v29 - v25));
        v59 = v30;
        v60 = v32 - (v32 - v26) - v26 + v32 - (v32 - v26 + v32 - (v32 - v26));
        v61 = v32 - v26 - (v31 + v32 - v26 - v31) + v31 - (v31 + v32 - v26 - (v31 + v32 - v26 - v31));
        v62 = v31 + v32 - v26;
        v37 = sub_10016C98C(&v66, &v59, v65, 4, 4);
        v38 = a5[1];
        v39 = a4[1];
        v40 = *a4 * v38;
        v41 = -(v40 - v40);
        v42 = a7[1];
        v43 = a6[1];
        v44 = *a6 * v42;
        v45 = -(v44 - v44);
        v46 = v41 - v45;
        v47 = v41 - (v41 - v45) - v45 + v41 - (v41 - v45 + v41 - (v41 - v45));
        v48 = v40 + v46;
        v49 = v46 - (v40 + v46 - v40) + v40 - (v40 + v46 - (v40 + v46 - v40));
        v59 = v47;
        v60 = v49 - (v49 - v44) - v44 + v49 - (v49 - v44 + v49 - (v49 - v44));
        v61 = v49 - v44 - (v48 + v49 - v44 - v48) + v48 - (v48 + v49 - v44 - (v48 + v49 - v44 - v48));
        v62 = v48 + v49 - v44;
        v50 = v38 * v39;
        v51 = -(v38 * v39 - v39 * v38);
        v52 = v42 * v43;
        v53 = -(v42 * v43 - v43 * v42);
        v54 = v51 - v53;
        v55 = v51 - (v51 - v53) - v53 + v51 - (v51 - v53 + v51 - (v51 - v53));
        v56 = v50 + v54;
        v57 = v54 - (v50 + v54 - v50) + v50 - (v50 + v54 - (v50 + v54 - v50));
        v63[0] = v55;
        v63[1] = v57 - (v57 - v52) - v52 + v57 - (v57 - v52 + v57 - (v57 - v52));
        v63[2] = v57 - v52 - (v56 + v57 - v52 - v56) + v56 - (v56 + v57 - v52 - (v56 + v57 - v52 - v56));
        v63[3] = v56 + v57 - v52;
        v58 = sub_10016C98C(&v59, v63, v64, 4, 4);
        return *(&v59 + sub_10016C98C(v65, v64, &v59, v37, v58) - 1);
      }
    }
  }

  return result;
}

uint64_t sub_10016C98C(double *a1, double *a2, double *a3, int a4, int a5)
{
  v6 = *a2;
  v7 = fabs(*a2);
  v8 = fabs(*a1);
  v9 = v7 <= v8;
  v10 = v7 > v8;
  if (v7 > v8)
  {
    v6 = *a1;
  }

  if (v10 >= a4 || v9 >= a5)
  {
    result = 0;
    goto LABEL_34;
  }

  v13 = v7 <= v8;
  v14 = a2[v7 <= v8];
  v15 = fabs(v14);
  v16 = fabs(a1[v10]);
  if (v13)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (v13)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = v15 <= v16;
  if (v15 <= v16)
  {
    v20 = v14;
  }

  else
  {
    v20 = a1[v10];
  }

  if (v19)
  {
    v9 = v17;
  }

  if (!v19)
  {
    v10 = v18;
  }

  v21 = v6 + v20;
  v22 = v6 - (v6 + v20 - v20);
  if (v22 == 0.0)
  {
    result = 0;
    v6 = v21;
    if (v10 >= a4 || v9 >= a5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *a3 = v22;
    result = 1;
    v6 = v21;
    if (v10 >= a4 || v9 >= a5)
    {
      goto LABEL_34;
    }
  }

  do
  {
    v30 = v6;
    v31 = fabs(a2[v9]);
    v32 = fabs(a1[v10]);
    v33 = v31 <= v32;
    if (v31 > v32)
    {
      v34 = a1[v10];
    }

    else
    {
      v34 = a2[v9];
    }

    if (v33)
    {
      ++v9;
    }

    else
    {
      ++v10;
    }

    v6 = v6 + v34;
    v35 = v34 - (v30 + v34 - v30) + v30 - (v30 + v34 - (v30 + v34 - v30));
    if (v35 != 0.0)
    {
      a3[result] = v35;
      result = (result + 1);
    }
  }

  while (v10 < a4 && v9 < a5);
LABEL_34:
  if (v10 < a4)
  {
    v25 = &a1[v10];
    v26 = a4 - v10;
    do
    {
      v27 = v6;
      v6 = v6 + *v25;
      v28 = *v25 - (v6 - v27) + v27 - (v6 - (v6 - v27));
      if (v28 != 0.0)
      {
        a3[result] = v28;
        result = (result + 1);
      }

      ++v25;
      --v26;
    }

    while (v26);
  }

  if (v9 < a5)
  {
    v36 = &a2[v9];
    v37 = a5 - v9;
    do
    {
      v38 = v6;
      v6 = v6 + *v36;
      v39 = *v36 - (v6 - v38) + v38 - (v6 - (v6 - v38));
      if (v39 != 0.0)
      {
        a3[result] = v39;
        result = (result + 1);
      }

      ++v36;
      --v37;
    }

    while (v37);
  }

  if (v6 != 0.0 || result == 0)
  {
    a3[result] = v6;
    return (result + 1);
  }

  return result;
}

double *sub_10016CB60(double *result, double *a2, double *a3, uint64_t a4, double **a5, double **a6, double *a7)
{
  if (a2 + 2 != a3)
  {
    v7 = a2[2];
    v8 = a2[3];
    v9 = *result;
    v10 = result[1];
    v11 = a2[1];
    v12 = v7 - *a2;
    v13 = v8 - v11;
    v14 = *result - *a2;
    v15 = (v10 - v11) * (v8 - v11) + v14 * v12;
    if (v15 <= 0.0)
    {
      v28 = v14 * v14 + 0.0 + (v10 - v11) * (v10 - v11);
      *a7 = v28;
      if (a2 + 4 != a3)
      {
LABEL_13:
        v29 = a2 + 2;
        v30 = a2 + 3;
        do
        {
          v32 = *(v30 - 1);
          v34 = v30[1];
          v33 = v30[2];
          v35 = *result;
          v36 = result[1];
          v37 = v34 - v32;
          v38 = v33 - *v30;
          v39 = *result - v32;
          v40 = v36 - *v30;
          v41 = v40 * v38 + v39 * (v34 - v32);
          if (v41 <= 0.0)
          {
            v43 = v39 * v39 + 0.0 + v40 * v40;
            if (v43 == 0.0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v42 = v38 * v38 + v37 * v37;
            if (v42 <= v41)
            {
              v43 = (v35 - v34) * (v35 - v34) + 0.0 + (v36 - v33) * (v36 - v33);
              if (v43 == 0.0)
              {
LABEL_25:
                *a7 = 0.0;
                *a5 = v29;
                *a6 = v29 + 2;
                return result;
              }
            }

            else
            {
              v43 = (v35 - (v32 + v37 * (v41 / v42))) * (v35 - (v32 + v37 * (v41 / v42))) + 0.0 + (v36 - (*v30 + v38 * (v41 / v42))) * (v36 - (*v30 + v38 * (v41 / v42)));
              if (v43 == 0.0)
              {
                goto LABEL_25;
              }
            }
          }

          if (v43 < v28)
          {
            *a7 = v43;
            v28 = v43;
            a2 = v30 - 1;
          }

          v29 += 2;
          v31 = v30 + 3;
          v30 += 2;
        }

        while (v31 != a3);
      }
    }

    else
    {
      v16 = v13 * v13 + v12 * v12;
      if (v16 <= v15)
      {
        v17 = v10 - v8;
        v18 = v9 - v7;
      }

      else
      {
        v17 = v10 - (v11 + v13 * (v15 / v16));
        v18 = v9 - (*a2 + v12 * (v15 / v16));
      }

      v28 = v18 * v18 + 0.0 + v17 * v17;
      *a7 = v28;
      if (a2 + 4 != a3)
      {
        goto LABEL_13;
      }
    }

    *a6 = a2;
    *a5 = a2;
    *a6 += 2;
    return result;
  }

  *a6 = a2;
  *a5 = a2;
  v19 = *a2;
  v20 = a2[1];
  v21 = result[1];
  v22 = v19 - v19;
  v23 = v20 - v20;
  v24 = *result - *a2;
  v25 = (v20 - v20) * (v21 - v20) + v24 * (v19 - v19);
  if (v25 <= 0.0 || (v26 = v23 * v23 + v22 * v22, v26 <= v25))
  {
    *a7 = v24 * v24 + 0.0 + (v21 - v20) * (v21 - v20);
  }

  else
  {
    v27 = *result - (v19 + v22 * (v25 / v26));
    *a7 = v27 * v27 + 0.0 + (v21 - (v20 + v23 * (v25 / v26))) * (v21 - (v20 + v23 * (v25 / v26)));
  }

  return result;
}

void *sub_10016CD98(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void sub_10016CF48(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (*(v6 + 8))
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v15 = v14[4];
      v9[4] = v15;
      v16 = *v8;
      v17 = (v5 + 8);
      v18 = (v5 + 8);
      if (*v8)
      {
        break;
      }

LABEL_23:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_24;
      }

LABEL_25:
      sub_10002764C(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v15 >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_23;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_25;
    }

LABEL_24:
    *v5 = v19;
    goto LABEL_25;
  }

  v12 = v9;
LABEL_13:
  sub_1000275F4(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    sub_1000275F4(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

_BYTE *sub_10016D27C(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_10016D41C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051ED0(va);
  _Unwind_Resume(a1);
}

void sub_10016EB2C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_10016EEE8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 112);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 40);
    if (v5)
    {
      v6 = *result;
      *(v6 + 112) = *(*result + 112) | 2;
      v7 = *(v6 + 40);
      if (!v7)
      {
LABEL_6:
        operator new();
      }
    }

    else
    {
      v5 = *(qword_100471D08 + 40);
      v8 = *result;
      *(v8 + 112) = *(*result + 112) | 2;
      v7 = *(v8 + 40);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    result = sub_10015511C(v7, v5);
    v4 = *(a2 + 112);
  }

  if ((v4 & 4) != 0)
  {
    v9 = *v3;
    v10 = *(a2 + 48);
    *(v9 + 112) = *(*v3 + 112) | 4;
    *(v9 + 48) = v10;
    v4 = *(a2 + 112);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

  v11 = *v3;
  v12 = *(a2 + 56);
  *(v11 + 112) = *(*v3 + 112) | 8;
  *(v11 + 56) = v12;
  v4 = *(a2 + 112);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *v3;
  v14 = *(a2 + 60);
  *(v13 + 112) = *(*v3 + 112) | 0x10;
  *(v13 + 60) = v14;
  v4 = *(a2 + 112);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = *v3;
  v16 = *(a2 + 64);
  *(v15 + 112) = *(*v3 + 112) | 0x20;
  *(v15 + 64) = v16;
  v4 = *(a2 + 112);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = *v3;
  v18 = *(a2 + 68);
  *(v17 + 112) = *(*v3 + 112) | 0x40;
  *(v17 + 68) = v18;
  v4 = *(a2 + 112);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = *v3;
  v20 = *(a2 + 72);
  *(v19 + 112) = *(*v3 + 112) | 0x80;
  *(v19 + 72) = v20;
  v4 = *(a2 + 112);
  if ((v4 & 0x100) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = *v3;
  v22 = *(a2 + 76);
  *(v21 + 112) = *(*v3 + 112) | 0x100;
  *(v21 + 76) = v22;
  v4 = *(a2 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_16:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v23 = *v3;
  v24 = *(a2 + 80);
  *(v23 + 112) = *(*v3 + 112) | 0x200;
  *(v23 + 80) = v24;
  v4 = *(a2 + 112);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v25 = *v3;
  v26 = *(a2 + 84);
  *(v25 + 112) = *(*v3 + 112) | 0x400;
  *(v25 + 84) = v26;
  v4 = *(a2 + 112);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  v27 = *v3;
  v28 = *(a2 + 88);
  *(v27 + 112) = *(*v3 + 112) | 0x800;
  *(v27 + 88) = v28;
  v4 = *(a2 + 112);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_32:
  v29 = *v3;
  v30 = *(a2 + 92);
  *(v29 + 112) = *(*v3 + 112) | 0x1000;
  *(v29 + 92) = v30;
  v4 = *(a2 + 112);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = *v3;
  v32 = *(a2 + 104);
  *(v31 + 112) = *(*v3 + 112) | 0x2000;
  *(v31 + 104) = v32;
  if ((*(a2 + 112) & 0x4000) == 0)
  {
    return result;
  }

LABEL_34:
  v33 = *(a2 + 96);
  if (!v33)
  {
    v33 = *(qword_100471D08 + 96);
    v36 = *v3;
    *(v36 + 112) = *(*v3 + 112) | 0x4000;
    v35 = *(v36 + 96);
    if (v35)
    {
      goto LABEL_36;
    }

LABEL_40:
    operator new();
  }

  v34 = *v3;
  *(v34 + 112) = *(*v3 + 112) | 0x4000;
  v35 = *(v34 + 96);
  if (!v35)
  {
    goto LABEL_40;
  }

LABEL_36:

  return sub_10013F064(v35, v33);
}

uint64_t sub_10016F254(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = (*(*a2 + 40))(a2);
  v7 = a2;
  v8 = 0;
  v9 = 0;
  memset(v10, 0, 14);
  v11 = xmmword_1003C74F0;
  v12 = 0;
  v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v7);
  if (v8 >= v9 || (TagFallback = *v8, (TagFallback & 0x80000000) != 0))
  {
    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(&v7);
    LODWORD(v10[1]) = TagFallback;
  }

  else
  {
    LODWORD(v10[1]) = *v8++;
  }

  v5 = TagFallback >> 3;
  *(a1 + 88) = v5;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&v7);
  return v5;
}

uint64_t sub_10016F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100384090();
  }

  v14 = a2;
  v15 = 0;
  v16 = 0;
  memset(v17, 0, 14);
  v18 = xmmword_1003C74F0;
  v19 = 0;
  v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v21 = 0;
  v22 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(&v14);
  *buf = 0;
  if (v15 >= v16 || *v15 < 0)
  {
    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v14, buf))
    {
      v10 = 1;
      if (qword_10045B060 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  else
  {
    *buf = *v15++;
  }

  v5 = v19++;
  if (v5 >= v20)
  {
    v10 = 2;
    if (qword_10045B060 == -1)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_100384068();
    goto LABEL_17;
  }

  v6 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(&v14, *buf);
  if (!sub_100344764(a3, &v14, v7, v8))
  {
    v10 = 3;
    if (qword_10045B060 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (BYTE4(v17[1]) == 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(&v14, v6);
    if (v19 >= 1)
    {
      --v19;
    }

    v9 = 1;
    goto LABEL_20;
  }

  v10 = 4;
  if (qword_10045B060 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v11 = qword_10045B068;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = (*(*a2 + 40))(a2);
    *buf = 134349312;
    v24 = v12;
    v25 = 1026;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, failed to read a venue bounds from the input stream, have read %{public}lld bytes, error %{public}d", buf, 0x12u);
  }

  v9 = 0;
LABEL_20:
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&v14);
  return v9;
}

id sub_10016F598()
{
  if (qword_10045B060 == -1)
  {
    v1 = qword_10045B068;
  }

  else
  {
    sub_1003841CC();
    v1 = qword_10045B068;
  }

  return v1;
}

uint64_t sub_10016F5F0(uint64_t a1, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3)
{
  if (qword_10045B060 != -1)
  {
    sub_1003841CC();
  }

  v6 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    *buf = 67109632;
    *&buf[4] = v7;
    v28 = 2050;
    v29 = v8;
    v30 = 2050;
    v31 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "@IndoorAvl, load, _readMetadataProtobufObjectsFromFile, got %d as field_number, so no more venue bounds; read %{public}lld bytes of %{public}lld from zcis", buf, 0x1Cu);
  }

  sub_100170A24(a1 + 32, &v25);
  sub_100170CEC(&v25, *(a1 + 96));
  wireless_diagnostics::google::protobuf::io::FileInputStream::FileInputStream(buf, v25, -1);
  *(a1 + 64) = *(a1 + 96);
  v19[0] = buf;
  memset(&v19[1], 0, 30);
  v20 = xmmword_1003C74F0;
  v21 = 0;
  v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v23 = 0;
  v24 = 0;
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Refresh(v19);
  if (a2)
  {
    LODWORD(a1) = *(a1 + 96);
    if (qword_10045B060 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1003841E0(v26);

    abort_report_np();
    __break(1u);
  }

  sub_100384068();
LABEL_7:
  v9 = a3 - a1;
  v10 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
  {
    *v26 = 67240192;
    *&v26[4] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, need to read %{public}d more", v26, 8u);
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(v19, v9);
  v12 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromCodedStream(a2, v19);
  if (v12)
  {
    v13 = BYTE4(v19[4]);
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v19, v11);
    if (v13)
    {
      v14 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(v19, v11);
  }

  if (qword_10045B060 != -1)
  {
    sub_100384068();
  }

  v15 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
    *v26 = 67240192;
    *&v26[4] = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, Expected that we parsed and consumed the entire message, but we didn't, parsed = %{public}d", v26, 8u);
    if (qword_10045B060 != -1)
    {
      sub_100384068();
    }
  }

  v16 = qword_10045B068;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = (*(*buf + 40))(buf);
    *v26 = 134349056;
    *&v26[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "@IndoorAvl, _readMetadataProtobufObjectsFromFile, failed to read localizer params from the input stream, have read %{public}lld bytes from local stream", v26, 0xCu);
  }

  v14 = 0;
LABEL_21:
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(v19);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(buf);
  sub_100170CB4(&v25);
  return v14;
}

void sub_10016F948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, char a26)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::~CodedInputStream(&a12);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a26);
  sub_100170CB4(&a23);
  _Unwind_Resume(a1);
}

void sub_10016FD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100346238(&a9);
  sub_10002B8B4(v9);
  _Unwind_Resume(a1);
}

void sub_10016FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  sub_100170CB4(&a27);
  sub_10002B8B4(v27);
  _Unwind_Resume(a1);
}

void sub_10016FD7C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_10016FDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, char a28)
{
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a28);
  sub_100170CB4(&a27);
  sub_10002B8B4(v28);
  _Unwind_Resume(a1);
}

void sub_10016FE5C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

int *sub_10016FE74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    if (qword_10045B060 != -1)
    {
      sub_1003841CC();
    }

    v5 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "@IndoorAvl, read, requested to getNextVenueBoundsIncrementally but have no file handle, opening now", v18, 2u);
    }

    sub_100170A24(a1 + 32, v18);
    operator new();
  }

  v6 = sub_10016F254(a1, v4);
  v7 = v6;
  if (v6 != 1)
  {
    if (qword_10045B060 != -1)
    {
      sub_100384068();
    }

    v9 = qword_10045B068;
    if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    v18[0] = 67240192;
    v18[1] = v7;
    v10 = "@IndoorAvl, read, getNextVenueBoundsIncrementally, encountered field with number %{public}d, so there are no more venue bounds left, releasing file handle";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 8;
    goto LABEL_18;
  }

  if (sub_10016F338(v6, v4, a2))
  {
    return 1;
  }

  if (qword_10045B060 != -1)
  {
    sub_100384068();
  }

  v14 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18[0]) = 0;
    v10 = "@IndoorAvl, read, getNextVenueBoundsIncrementally, expected that we should have another VenueBounds object, but we don't";
    v11 = v14;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 2;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v11, v12, v10, v18, v13);
  }

LABEL_19:
  v15 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v17 = *(a1 + 80);
  v16 = (a1 + 80);
  sub_100170C6C(v17);
  result = *v16;
  *v16 = 0;
  if (result)
  {
    sub_100170CB4(result);
    operator delete();
  }

  return result;
}

uint64_t sub_10017017C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    return *(a1 + 60);
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 + 16);
  v4 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v4)
  {
    LODWORD(result) = 0;
    v9 = v3;
LABEL_11:
    v12 = &v3[v2];
    do
    {
      v13 = *v9++;
      result = (*(v13 + 48) + result);
    }

    while (v9 != v12);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 + 1;
  v8 = (v4 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v9 = &v3[v8];
  v10 = v3 + 1;
  v11 = v8;
  do
  {
    v5 += *(*(v10 - 1) + 48);
    v6 += *(*v10 + 48);
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  result = (v6 + v5);
  if (v7 != v8)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100170224@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((*(*result + 112) & 2) != 0)
  {
    v3 = *(*result + 40);
    if (!v3)
    {
      v3 = *(qword_100471D08 + 40);
    }

    *a2 = 0;
    result = sub_10014DE18((a2 + 8), v3);
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1001702A8(uint64_t a1)
{
  if ((*(*a1 + 112) & 0x10) != 0)
  {
    v4 = (*a1 + 60);
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_1003841CC();
    }

    v2 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      v3 = *(*a1 + 56);
      v6[0] = 67240192;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalPrefetchRadiusKM', using indoor value of %{public}u", v6, 8u);
    }

    v4 = (*a1 + 56);
  }

  return *v4;
}

uint64_t sub_100170398(uint64_t a1)
{
  if ((*(*a1 + 112) & 0x40) != 0)
  {
    v4 = (*a1 + 68);
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_1003841CC();
    }

    v2 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
    {
      v3 = *(*a1 + 64);
      v6[0] = 67240192;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalPrefetchMaxFloorCount', using indoor value of %{public}u", v6, 8u);
    }

    v4 = (*a1 + 64);
  }

  return *v4;
}

uint64_t sub_10017047C(uint64_t a1)
{
  if ((*(*a1 + 112) & 0x80) != 0)
  {
    return *(*a1 + 72);
  }

  if (qword_10045B060 != -1)
  {
    sub_1003841CC();
  }

  v1 = 200000000;
  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = 200000000;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'indoorprefetchmaxfloorcount', using value of %{public}d", v4, 8u);
  }

  return v1;
}

uint64_t sub_100170550(uint64_t a1)
{
  if (*(*a1 + 113))
  {
    return *(*a1 + 76);
  }

  if (qword_10045B060 != -1)
  {
    sub_1003841CC();
  }

  v1 = 100000000;
  v2 = qword_10045B068;
  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240192;
    v4[1] = 100000000;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "No regional value specified for 'regionalprefetchmaxtotalbytes', using value of %{public}d", v4, 8u);
  }

  return v1;
}

uint64_t sub_100170630(uint64_t a1)
{
  if ((*(*a1 + 113) & 4) != 0)
  {
    v4 = (*a1 + 84);
  }

  else
  {
    if (qword_10045B060 != -1)
    {
      sub_1003841CC();
    }

    v2 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*a1 + 80);
      v6[0] = 67240192;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No regional value specified for 'regionalLocationOfInterestMergeRadiusKM', using indoor value of %{public}u", v6, 8u);
    }

    v4 = (*a1 + 80);
  }

  return *v4;
}

uint64_t sub_10017073C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 96);
  if (!v2)
  {
    v2 = *(qword_100471D08 + 96);
  }

  return sub_10013E61C(a2, v2);
}

void sub_1001707A4(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Client");
  v2 = qword_10045B068;
  qword_10045B068 = v1;
}

void sub_100170808(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043FF10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001708B0(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_1001708DC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void sub_1001708FC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void sub_10017091C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017098C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001709FC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

int *sub_100170A58(int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v21 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  v12 = a3 | 0x10;
  if (a4 != 1)
  {
    v12 = a3;
  }

  if (a4 == 2)
  {
    v13 = a3 | 0x20;
  }

  else
  {
    v13 = v12;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v15 = open(p_dst, v13, a5);
  if (v21 < 0)
  {
    v16 = v15;
    operator delete(__dst);
    v15 = v16;
  }

  *a1 = v15;
  if (v15 == -1)
  {
    if (qword_10045B060 == -1)
    {
      v18 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_10038434C();
      v18 = qword_10045B068;
      if (!os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "error while opening availability file");
      }
    }

    LOWORD(__dst) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "@IndoorAvl, error while opening file", &__dst, 2u);
    goto LABEL_26;
  }

  return a1;
}

void sub_100170C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100170C6C(int *a1)
{
  v2 = *a1;
  if (v2 == -1)
  {
    sub_100384504();
  }

  result = close(v2);
  *a1 = -1;
  if (result == -1)
  {
    sub_100384374();
  }

  return result;
}

int *sub_100170CB4(int *result)
{
  if (*result != -1)
  {
    v1 = result;
    sub_100170C6C(result);
    return v1;
  }

  return result;
}

BOOL sub_100170D60()
{
  v1 = qword_10045B068;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100170D80()
{
  v2 = *(v0 + 104);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100170DB8()
{
  v2 = *(v0 + 104);

  return os_signpost_enabled(v2);
}

void sub_100170DE8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

void sub_100170E08(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x2Cu);
}

void sub_1001711B4(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_1001711F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1001718AC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [a1 decodeBytesForKey:@"locationInfo" returnedLength:&v8];
  if (v8 >= 0x9C)
  {
    v6 = 156;
  }

  else
  {
    v6 = v8;
  }

  if (v8 <= 0x9C)
  {
    v7 = 156 - v8;
  }

  else
  {
    v7 = 0;
  }

  memcpy(a2, v5, v6);
  bzero(&a2[v6], v7);
  objc_autoreleasePoolPop(v4);
}

void sub_100171954(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [a1 decodeBytesForKey:@"locationPrivateInfo" returnedLength:&v8];
  if (v8 >= 0x230)
  {
    v6 = 560;
  }

  else
  {
    v6 = v8;
  }

  if (v8 <= 0x230)
  {
    v7 = 560 - v8;
  }

  else
  {
    v7 = 0;
  }

  memcpy(a2, v5, v6);
  bzero(&a2[v6], v7);
  objc_autoreleasePoolPop(v4);
}

void sub_1001719FC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [a1 decodeBytesForKey:@"pipelineDiagnosticReport" returnedLength:&v8];
  if (v8 >= 0x88)
  {
    v6 = 136;
  }

  else
  {
    v6 = v8;
  }

  if (v8 <= 0x88)
  {
    v7 = 136 - v8;
  }

  else
  {
    v7 = 0;
  }

  memcpy(a2, v5, v6);
  bzero(&a2[v6], v7);
  objc_autoreleasePoolPop(v4);
}

id sub_100171AA4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 decodeIntegerForKey:@"gpsExpiryInfo"];
  objc_autoreleasePoolPop(v2);
  return v3;
}

double *sub_100171FC8(double *a1, uint64_t a2)
{
  *a1 = sub_1002517A8(a2);
  a1[1] = sub_100251800(a2);
  return a1;
}

void sub_100172020()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100172090()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100172100(uint64_t a1@<X8>)
{
  v11 = 0;
  v10 = 0;
  if (mach_get_times())
  {
    if (qword_10045B050 == -1)
    {
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_5:
        __asm { FMOV            V0.2D, #-1.0 }

        *a1 = _Q0;
        *(a1 + 16) = 0xBFF0000000000000;
        *(a1 + 24) = 0;
        return;
      }
    }

    else
    {
      sub_1003846B8();
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed", v8, 2u);
    goto LABEL_5;
  }

  *(a1 + 16) = sub_1001CA114(&v9);
  *(a1 + 8) = sub_1001CA148(v11);
  *a1 = sub_1001CA148(v10);
  *(a1 + 24) = 1;
}

void sub_100172200(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_100172244()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sub_10017226C(uint64_t a1)
{
  if ((*(a1 + 192) & 0x10) == 0)
  {
    return 1;
  }

  v3 = (a1 + 64);
  std::to_string(&v19, 1u);
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = *(a1 + 87);
  }

  else
  {
    v5 = *(a1 + 72);
  }

  size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  if (v5 == size)
  {
    v8 = v4 >= 0 ? v3 : *v3;
    v9 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
    if (!memcmp(v8, v9, v5))
    {
      result = 1;
      if (v7 < 0)
      {
        goto LABEL_34;
      }

      return result;
    }
  }

  std::to_string(&__p, 9u);
  v10 = *(a1 + 87);
  if (v10 >= 0)
  {
    v11 = *(a1 + 87);
  }

  else
  {
    v11 = *(a1 + 72);
  }

  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  if (v11 != v12)
  {
    result = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v10 >= 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = *v3;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  result = memcmp(v14, p_p, v11) == 0;
  if (v13 < 0)
  {
LABEL_32:
    v16 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v16;
  }

LABEL_33:
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_34:
    v17 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v17;
  }

  return result;
}

void sub_1001723D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001723EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(result + 16) = 0;
  *result = off_10043FFE0;
  *(result + 8) = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  return result;
}

void sub_1001724AC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001724E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 1.0 * 1.0;
  }

  v2 = 0;
  v3 = 1.0;
  do
  {
    v3 = v3 * *(*(a1 + 16) + 8 * v2);
    v2 += v1--;
  }

  while (v1);
  return v3 * v3;
}

double sub_10017251C(void *a1, void *a2)
{
  v4 = a1[6];
  if (v4 != sub_100258548(a2))
  {
    sub_1003846E0(v11, &v13.__r_.__value_.__l.__data_);
    sub_10003F5D0(v11);
  }

  v5 = a1[1];
  if (*v5 != 76 || v5[1])
  {
    sub_1000474A4(v11, "");
    sub_1000BCB4C("Vector64F::lapackLSolve assumes UPLO=L for now, so that's all we support at the moment.", &v13);
    sub_100382FC4(&v13, v10, v11);
    sub_10003F5D0(v10);
  }

  *__p = *a2;
  v9 = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_1002585A4(a1 + 2, __p, v11);
  v6 = *a2;
  if (*a2)
  {
    a2[1] = v6;
    operator delete(v6);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = *v11;
  a2[2] = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return sub_100258564(a2);
}

void sub_10017268C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001726F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = *(a2 + 8);
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a3 + 24) = v5;
  v10 = a1[6];
  v7 = a1[1];
  v8 = a1[2];
  return dpptrs_NEWLAPACK();
}

void sub_1001727D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001727EC(void *result)
{
  *result = off_10043FFE0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_100172844(void *a1)
{
  *a1 = off_10043FFE0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

void sub_1001728DC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10017294C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001729BC(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = -1;
  v12 = -1;
  sub_1000BCCCC(a1, &v13, &v12, &v11);
  v5 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(a1 + 24, &v9, NAN, NAN);
  v7 = v10;
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_100172B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

void sub_100172B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

int32x2_t sub_100172B34(uint64_t a1, uint64_t a2)
{
  sub_10031DA20((a1 + 24), a2);

  return sub_1000BCD3C(a1, (a1 + 24));
}

uint64_t sub_100172B74(uint64_t a1, uint64_t *a2)
{
  *a1 = xmmword_1003D63A0;
  *(a1 + 16) = unk_1003D63B0;
  *(a1 + 32) = xmmword_1003D63C0;
  *(a1 + 48) = unk_1003D63D0;
  sub_100172CC0(a2, a1 + 64);
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031D8EC(a1 + 160, &v11, 0.0, 0.0);
  v5 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v10[0] = sub_1000C1064(*a2);
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_10031C128(v10, (a1 + 192), *(*a2 + 64));
  *(a1 + 200) = xmmword_1003D63A0;
  *(a1 + 216) = unk_1003D63B0;
  *(a1 + 232) = xmmword_1003D63C0;
  *(a1 + 248) = unk_1003D63D0;
  return a1;
}

void sub_100172C88(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2 - 48);
  sub_100173794((v1 + 64));
  _Unwind_Resume(a1);
}

void sub_100172CA4(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 160);
  sub_100173794((v1 + 64));
  _Unwind_Resume(a1);
}

void sub_100172CC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = -1;
  v18 = -1;
  sub_1000BCCCC(a2, &v20, &v19, &v18);
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = -1;
  v18 = -1;
  sub_1000BCCCC(a2 + 24, &v16, &v19, &v18);
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = -1;
  v18 = -1;
  sub_1000BCCCC(a2 + 48, &v14, &v19, &v18);
  v7 = a1[1];
  v12 = *a1;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = -1;
  v18 = -1;
  sub_1000BCCCC(a2 + 72, &v12, &v19, &v18);
  v8 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v21;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_100172F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_10002BB1C(va);
  sub_10002BB1C(va1);
  sub_10002BB1C(va2);
  sub_10002BB1C(v4 - 48);
  do
  {
    v3 -= 24;
    sub_10002BB1C(v3);
  }

  while (v3 != v2);
  _Unwind_Resume(a1);
}

BOOL sub_100172F7C(int *a1, uint64_t a2, double a3, double a4)
{
  v4 = vcvtmd_s64_f64(a3);
  v5 = vcvtmd_s64_f64(a4);
  v7 = *a1;
  v6 = a1[1];
  v11 = v4 > -2 && v5 > -2 && v6 > v4 && v7 > v5;
  if (v11)
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if ((v4 & 0x80000000) == 0 && (v5 & 0x80000000) == 0)
    {
      v13 = (1.0 - vabdd_f64(a3, v4)) * (1.0 - vabdd_f64(a4, v5));
      v14 = v13 + 0.0;
    }

    *(a2 + 8) = v13;
    *a2 = v6 * v5 + v4;
    v15 = v4 + 1;
    if ((v5 & 0x80000000) == 0 && v15 < v6)
    {
      v12 = (1.0 - vabdd_f64(a3, v15)) * (1.0 - vabdd_f64(a4, v5));
      v14 = v14 + v12;
    }

    *(a2 + 24) = v12;
    *(a2 + 16) = v6 * v5 + v15;
    v16 = v5 + 1;
    v17 = 0.0;
    if (v4 < 0 || v16 >= v7)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = (1.0 - vabdd_f64(a3, v4)) * (1.0 - vabdd_f64(a4, v16));
      v14 = v14 + v18;
    }

    *(a2 + 40) = v18;
    *(a2 + 32) = v16 * v6 + v4;
    if (v15 < v6 && v16 < v7)
    {
      v17 = (1.0 - vabdd_f64(a3, v15)) * (1.0 - vabdd_f64(a4, v16));
      v14 = v14 + v17;
    }

    *(a2 + 56) = v17;
    *(a2 + 48) = v16 * v6 + v15;
    if (v14 <= 0.0)
    {
      sub_1000474A4(v22, "");
      sub_10004A7B0("Why didn't we fail fast?", &v23);
      sub_100382FC4(&v23, __p, v22);
      sub_10003F5D0(__p);
    }

    *(a2 + 8) = v13 / v14;
    *(a2 + 24) = v12 / v14;
    *(a2 + 40) = v18 / v14;
    *(a2 + 56) = v17 / v14;
  }

  return v11;
}

void sub_1001731A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_1001731E4(unsigned int *a1, double *a2)
{
  v4 = *(a2 + 4);
  v8[0] = a2[3];
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100172B74(a1, v8);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a2[5];
  v6 = a2[6];
  *(a1 + 22) = v5;
  *(a1 + 23) = v6;
  if (sub_100172F7C(a1 + 48, a1, v5, v6))
  {
    if (*(a1 + 1) > 0.0)
    {
      sub_1000BCD2C((a1 + 16), (a1 + 48), *a1);
    }

    if (*(a1 + 3) > 0.0)
    {
      sub_1000BCD2C((a1 + 22), (a1 + 48), a1[4]);
    }

    if (*(a1 + 5) > 0.0)
    {
      sub_1000BCD2C((a1 + 28), (a1 + 48), a1[8]);
    }

    if (*(a1 + 7) > 0.0)
    {
      sub_1000BCD2C((a1 + 34), (a1 + 48), a1[12]);
    }
  }

  return a1;
}

void sub_10017330C(_Unwind_Exception *a1)
{
  sub_10002BB1C(v1 + 160);
  sub_100173794((v1 + 64));
  _Unwind_Resume(a1);
}

double sub_100173340(unsigned int *a1, uint64_t a2)
{
  sub_10031DA20(a1 + 20, a2);
  if (!sub_100172F7C(a1 + 48, a1, *(a1 + 22), *(a1 + 23)))
  {
    return result;
  }

  if (*(a1 + 1) > 0.0)
  {
    sub_1000BCD2C((a1 + 16), (a1 + 48), *a1);
    if (*(a1 + 3) <= 0.0)
    {
LABEL_4:
      if (*(a1 + 5) <= 0.0)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_1000BCD2C((a1 + 28), (a1 + 48), a1[8]);
      result = *(a1 + 7);
      if (result <= 0.0)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  else if (*(a1 + 3) <= 0.0)
  {
    goto LABEL_4;
  }

  sub_1000BCD2C((a1 + 22), (a1 + 48), a1[4]);
  if (*(a1 + 5) > 0.0)
  {
    goto LABEL_11;
  }

LABEL_5:
  result = *(a1 + 7);
  if (result <= 0.0)
  {
    return result;
  }

LABEL_6:
  v4 = a1[12];

  sub_1000BCD2C((a1 + 34), (a1 + 48), v4);
  return result;
}

uint64_t sub_100173428@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1002541F0(a2, a1 + 64);
  *(a1 + 200) = v6;
  v7 = 0.0;
  v8 = 0.0;
  if (v6 != -1)
  {
    v8 = *(a1 + 8);
  }

  *(a1 + 208) = v8;
  v9 = v8 + 0.0;
  v10 = sub_1002541F0(a2, a1 + 88);
  *(a1 + 216) = v10;
  if (v10 != -1)
  {
    v7 = *(a1 + 24);
  }

  *(a1 + 224) = v7;
  v11 = v7 + v9;
  v12 = sub_1002541F0(a2, a1 + 112);
  *(a1 + 232) = v12;
  v13 = 0.0;
  v14 = 0.0;
  if (v12 != -1)
  {
    v14 = *(a1 + 40);
  }

  *(a1 + 240) = v14;
  v15 = v14 + v11;
  result = sub_1002541F0(a2, a1 + 136);
  *(a1 + 248) = result;
  if (result != -1)
  {
    v13 = *(a1 + 56);
  }

  *(a1 + 256) = v13;
  v17 = v13 + v15;
  v21 = v13 + v15;
  if (v13 + v15 < 0.0 || v17 >= 1.00000001)
  {
    sub_1000474A4(v23, "");
    sub_10004A7B0("Unexpected totalWeight: ", &v25);
    sub_1000DE42C(&v21, &v26);
    sub_1000E661C(v23, &v25, 2);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_24:
        operator delete(v23[0]);
LABEL_21:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v25.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v17 > 0.0 && v17 < 1.0)
  {
    *(a1 + 208) = *(a1 + 208) / v17;
    *(a1 + 224) = *(a1 + 224) / v17;
    *(a1 + 240) = *(a1 + 240) / v17;
    *(a1 + 256) = *(a1 + 256) / v17;
  }

  v19 = *(a1 + 216);
  *a3 = *(a1 + 200);
  a3[1] = v19;
  v20 = *(a1 + 248);
  a3[2] = *(a1 + 232);
  a3[3] = v20;
  return result;
}

void sub_100173670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001736CC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_100173794(void *a1)
{
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[1];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_1001738E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100173958()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1001739C8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a4;
  v5 = *(a3 + 8);
  v10 = v5;
  if (v5 <= 0xF)
  {
    if (((1 << v5) & 0xE300) != 0)
    {
      operator new();
    }

    if (((1 << v5) & 0x44) != 0)
    {
      sub_100251A2C(v4);
      sub_100251A40(v4, v7);
      operator new();
    }

    if (((1 << v5) & 0x1CBA) != 0)
    {
      sub_100174AB0();
    }
  }

  if (!v5)
  {
    operator new();
  }

  __cxa_allocate_exception(0x40uLL);
  sub_100014A08(&v9, "LocalizerType not implemented to generate ParticleGenerator initialization step");
  std::runtime_error::runtime_error(&v6, &v9);
  v6.__vftable = &off_1004338D0;
  sub_10010A984(v8);
}

void sub_100174210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, std::runtime_error a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_1000D3BC8(&a12);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a11);
  if (*(v25 - 121) < 0)
  {
    operator delete(*(v25 - 144));
    if ((v24 & 1) == 0)
    {
LABEL_8:
      sub_10002BB1C(v22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  sub_10002BB1C(v22);
  _Unwind_Resume(a1);
}

void *sub_1001749A4(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_100174CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, std::runtime_error a21, _UNKNOWN **a22, uint64_t a23)
{
  std::runtime_error::~runtime_error(v23);
  a22 = &off_100431E10;
  if (a23 && (*(*a23 + 32))(a23))
  {
    a23 = 0;
  }

  std::runtime_error::~runtime_error(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  __cxa_free_exception(v23);
  _Unwind_Resume(a1);
}

void sub_100174DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100174DA8);
}

void sub_100174F18(uint64_t a1, uint64_t *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    sub_100384790(a2);
  }

  sub_1003847C4(va);
  operator delete();
}

void sub_1001750BC(uint64_t *a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  if (a1)
  {
    sub_100384790(a1);
  }

  sub_100384834(va, va1);
  operator delete();
}

void sub_10017521C(uint64_t a1, uint64_t *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    sub_100384790(a2);
  }

  sub_1003847C4(va);
  operator delete();
}

void sub_100175378(uint64_t a1, uint64_t *a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    sub_100384790(a2);
  }

  sub_1003847C4(va);
  operator delete();
}

void sub_10017563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100175680(va);
  _Unwind_Resume(a1);
}

void sub_100175650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_100175680(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100175680(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_1001757A0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P13LocalizerType" & 0x7FFFFFFFFFFFFFFFLL), &v14);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v14;
  }

  else
  {
    v4.__i_ = v14.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v14, v4, 91);
  v15 = v14;
  memset(&v14, 0, sizeof(v14));
  v5 = std::string::append(&v15, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v18);
  v7 = *(a1 + 8);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v13 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = v12[1];
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v17, 10);
  *a2 = v17;
  memset(&v17, 0, sizeof(v17));
  if (v13 < 0)
  {
    operator delete(v12[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_100175A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_100175C04(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100175C48(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_100175C90(void *a1)
{
  *a1 = off_1004438C8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_100175E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, _Unwind_Exception *a13)
{
  if (a10)
  {
    sub_100384790(a10);
  }

  sub_1003848D4(&a11, &a12);
  v14 = a13;
  sub_100176118(v13);
  _Unwind_Resume(v14);
}

uint64_t sub_100175E78(void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v11 = *a1;
    v12 = v7 - *a1;
    v13 = v12 >> 3;
    v14 = (v12 >> 3) + 1;
    if (v14 >> 61)
    {
      sub_10000FC84();
    }

    if ((v8 - v11) >> 2 > v14)
    {
      v14 = (v8 - v11) >> 2;
    }

    if (v8 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v8 = 0;
    v16 = *a2;
    *a2 = 0;
    *(8 * v13) = v16;
    v10 = (8 * v13 + 8);
    memcpy(0, v11, v12);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
      v8 = a1[2];
    }
  }

  else
  {
    v9 = *a2;
    *a2 = 0;
    *v7 = v9;
    v10 = v7 + 1;
  }

  a1[1] = v10;
  v17 = *a3;
  *a3 = 0;
  v18 = *a4;
  *a4 = 0;
  if (v10 >= v8)
  {
    v20 = *a1;
    v21 = v10 - *a1;
    v22 = v21 >> 3;
    v23 = (v21 >> 3) + 1;
    if (v23 >> 61)
    {
      sub_10000FC84();
    }

    if ((v8 - v20) >> 2 > v23)
    {
      v23 = (v8 - v20) >> 2;
    }

    if (v8 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    *(8 * v22) = v17;
    v19 = 8 * v22 + 8;
    memcpy(0, v20, v21);
    *a1 = 0;
    a1[1] = v19;
    a1[2] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v17;
    v19 = (v10 + 1);
  }

  a1[1] = v19;
  v26 = v18;
  sub_1001761A8(a1, &v26);
  result = v26;
  v26 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1001760B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_100384790(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100176118(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1001761A8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_10000FC84();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_1001762C8(void *a1)
{
  *a1 = off_1004438C8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_100176498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t *a12, _Unwind_Exception *a13)
{
  if (a9)
  {
    sub_100384790(a9);
  }

  sub_100384990(&a10, &a11, &a12);
  v14 = a13;
  sub_100176118(v13);
  _Unwind_Resume(v14);
}

uint64_t sub_1001764F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v10 >= v9)
  {
    v13 = *a1;
    v14 = v10 - *a1;
    v15 = v14 >> 3;
    v16 = (v14 >> 3) + 1;
    if (v16 >> 61)
    {
      sub_10000FC84();
    }

    v17 = v9 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v19 = *a2;
    *a2 = 0;
    *(8 * v15) = v19;
    v12 = 8 * v15 + 8;
    memcpy(0, v13, v14);
    *a1 = 0;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v11 = *a2;
    *a2 = 0;
    *v10 = v11;
    v12 = (v10 + 1);
  }

  *(a1 + 8) = v12;
  v20 = *a3;
  *a3 = 0;
  v21 = *a4;
  *a4 = 0;
  v27 = v21;
  v28 = v20;
  v22 = *a5;
  *a5 = 0;
  v26 = v22;
  sub_100175E78(a1, &v28, &v27, &v26);
  v23 = v26;
  v26 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = v27;
  v27 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  result = v28;
  v28 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1001766E0(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100384790(a3);
  }

  sub_1003847C4(va);
  _Unwind_Resume(a1);
}

void sub_100176708(void *a1)
{
  *a1 = off_1004438C8;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  operator new();
}

void sub_100176898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t *a12, _Unwind_Exception *a13)
{
  if (a10)
  {
    sub_100384790(a10);
  }

  sub_1003848D4(&a11, &a12);
  v14 = a13;
  sub_100176118(v13);
  _Unwind_Resume(v14);
}

uint64_t sub_1001768F0(void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v11 = *a1;
    v12 = v7 - *a1;
    v13 = v12 >> 3;
    v14 = (v12 >> 3) + 1;
    if (v14 >> 61)
    {
      sub_10000FC84();
    }

    if ((v8 - v11) >> 2 > v14)
    {
      v14 = (v8 - v11) >> 2;
    }

    if (v8 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v8 = 0;
    v16 = *a2;
    *a2 = 0;
    *(8 * v13) = v16;
    v10 = (8 * v13 + 8);
    memcpy(0, v11, v12);
    *a1 = 0;
    a1[1] = v10;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
      v8 = a1[2];
    }
  }

  else
  {
    v9 = *a2;
    *a2 = 0;
    *v7 = v9;
    v10 = v7 + 1;
  }

  a1[1] = v10;
  v17 = *a3;
  *a3 = 0;
  v18 = *a4;
  *a4 = 0;
  if (v10 >= v8)
  {
    v20 = *a1;
    v21 = v10 - *a1;
    v22 = v21 >> 3;
    v23 = (v21 >> 3) + 1;
    if (v23 >> 61)
    {
      sub_10000FC84();
    }

    if ((v8 - v20) >> 2 > v23)
    {
      v23 = (v8 - v20) >> 2;
    }

    if (v8 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    if (v24)
    {
      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    *(8 * v22) = v17;
    v19 = 8 * v22 + 8;
    memcpy(0, v20, v21);
    *a1 = 0;
    a1[1] = v19;
    a1[2] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v17;
    v19 = (v10 + 1);
  }

  a1[1] = v19;
  v26 = v18;
  sub_1001761A8(a1, &v26);
  result = v26;
  v26 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_100176B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_100384790(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100176E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100175680(va);
  _Unwind_Resume(a1);
}

void sub_100176E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_100175680(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100176E60(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t sub_100176E7C()
{
  result = *v0;
  *v0 = 0;
  return result;
}

void sub_100176E94()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100176F04()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100176F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(*a3 + 56))(a3);
  *a4 = off_10043DB08;
  *(a4 + 8) = 0;
  v9 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) &= 0xFCu;
  if (result)
  {
    v10 = *(result + 1632);
    if ((*(a1 + 40) & 1) == 0)
    {
      sub_10012DA9C(v13, result + 1624);
      sub_1000B98EC();
    }

    sub_10017725C(a1, a2, v14);
    sub_10017725C(a1, a3, &v11);
    *v9 = vsubq_f64(v15, v12);
    nullsub_75(&v11);
    return nullsub_75(v14);
  }

  else
  {
    v9->f64[0] = 0.0;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_1001771DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1000B9C50(va1);
  nullsub_76(va);
  nullsub_75(v5);
  _Unwind_Resume(a1);
}

void sub_10017722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  nullsub_75(va);
  nullsub_75(v9);
  _Unwind_Resume(a1);
}

void sub_10017725C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[0] = a2;
  v6 = sub_100177470(a1, v9);
  if (v6)
  {
    sub_10012D378(a3, (v6 + 3));
  }

  else
  {
    v7 = (*(*a2 + 56))(a2);
    sub_10012DA9C(v8, v7 + 1624);
    sub_1000B9228((a1 + 6), v8, v9);
    sub_1000B93B4(v9, a3);
    nullsub_76(v8);
    v9[0] = a2;
    sub_100177580(a1, v9);
  }
}

void sub_10017734C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_76(va);
  _Unwind_Resume(a1);
}

void sub_100177360(uint64_t a1, uint64_t a2)
{
  sub_10012A358(a1 + 8, a2);
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v5 = *(a1 + 48);
  *(a1 + 40) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v8 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v7 = *(a1 + 64);
    *(a1 + 56) = v8;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v6 = *(a2 + 48);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v7 = *(a1 + 64);
    *(a1 + 56) = v6;
    if (!v7)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void *sub_100177470(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_100177580(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_100177900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100177928(va);
  _Unwind_Resume(a1);
}

void sub_100177914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100177928(va);
  _Unwind_Resume(a1);
}

char **sub_100177928(char **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      nullsub_75(v1 + 24);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_100177974()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001779E4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void *sub_100177A54(void *a1)
{
  *a1 = off_100440110;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_100177ACC(void *a1)
{
  *a1 = off_100440110;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  operator delete();
}

BOOL sub_100177B64(_BOOL8 result)
{
  if (result)
  {
    return *(result + 56) != *(result + 48);
  }

  return result;
}

uint64_t *sub_100177B78(uint64_t a1, int *a2, void *a3)
{
  v7 = a2 + 2;
  v6 = *a2;
  v8 = *a2 >> 31;
  if (v6 >> 31 == v6)
  {
    *&v26 = *v7;
    v8 = v6;
  }

  else
  {
    v26 = *v7;
    v27 = a2[6];
  }

  v25 = v8 ^ v6;
  sub_100178DB8(v28, &v25, &v25);
  result = sub_100179290((a1 + 8), v28);
  if (result)
  {
    if (*(result + 10) != 0.0)
    {
      v11 = *a3;
      v10 = a3[1];
      if (v11 != v10)
      {
        v12 = 0.0;
        do
        {
          while (1)
          {
            v13 = *a2;
            v14 = *a2 >> 31;
            if (v13 >> 31 == v13)
            {
              *&v23 = *v7;
              v14 = v13;
            }

            else
            {
              v23 = *v7;
              v24 = v7[4];
            }

            v22 = v14 ^ v13;
            v16 = v11 + 2;
            v15 = *v11;
            v17 = *v11 >> 31;
            if (v15 >> 31 == v15)
            {
              *&v20 = *v16;
              v17 = v15;
            }

            else
            {
              v18 = *v16;
              v21 = v11[6];
              v20 = v18;
            }

            v19 = v15 ^ v17;
            sub_100178DB8(v28, &v22, &v19);
            result = sub_100179290((a1 + 8), v28);
            if (!result)
            {
              break;
            }

            v12 = v12 + *(result + 10);
            v11 += 52;
            if (v11 == v10)
            {
              return result;
            }
          }

          v12 = v12 + 0.0;
          v11 += 52;
        }

        while (v11 != v10);
      }
    }
  }

  return result;
}

uint64_t sub_100177D68@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(result + 8) - *result != 16)
  {
    operator new();
  }

  *a2 = *v3;
  v4 = v3[1];
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100178B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  sub_1000275F4(&a14, a15);
  if (v15)
  {
    operator delete(v15);
  }

  sub_10002BB1C(a9);
  _Unwind_Resume(a1);
}

void sub_100178D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100178DB8(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = a2 + 2;
  v3 = *a2;
  if (v3 == v3 >> 31)
  {
    *(result + 8) = *v4;
    v5 = v3;
  }

  else
  {
    v6 = *v4;
    *(result + 24) = a2[6];
    *(result + 8) = v6;
    v5 = *a2;
    v3 = *a2 >> 31;
  }

  v7 = v5 ^ v3;
  *result = v5 ^ v3;
  v8 = (result + 40);
  v9 = (a3 + 2);
  if (*a3 == *a3 >> 31)
  {
    *v8 = *v9;
    v10 = 0;
    *(result + 32) = 0;
    v11 = v7 >> 31;
    if (v7 >> 31 != v7)
    {
      goto LABEL_6;
    }

LABEL_13:
    *&v23 = *(result + 8);
    v12 = 0;
    v13 = v10 >> 31;
    v14 = 0;
    if (v10 >> 31 != v10)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (v14 == v12 && *v8 >= v23)
    {
      return result;
    }

LABEL_21:
    v19 = *(result + 8);
    if (v11 == v7)
    {
      if (v7 == v10)
      {
        v20 = 0;
        *(result + 8) = *v8;
        v21 = 0;
        if (!v10)
        {
          goto LABEL_36;
        }

        goto LABEL_27;
      }

      v20 = 0;
    }

    else
    {
      v25 = *(result + 16);
      v26 = *(result + 24);
      v20 = v11 ^ v7;
      if (v7 == v10)
      {
        *(result + 8) = *v8;
        *(result + 24) = *(result + 56);
        v21 = v20 >> 31;
        if (v10 == v20)
        {
          goto LABEL_36;
        }

LABEL_27:
        *(result + 40) = v19;
        if (v21 != v20)
        {
          *(result + 48) = v25;
          *(result + 56) = v26;
        }

        *(result + 32) = v21 ^ v20;
        return result;
      }
    }

    v22 = v13 ^ v10;
    if (v13 == v10)
    {
      *(result + 8) = *(result + 40);
      *result = v22;
      v21 = v20 >> 31;
      if (v10 == v20)
      {
LABEL_36:
        if (v21 == v20)
        {
          *v8 = v19;
        }

        else
        {
          *(result + 40) = v19;
          *(result + 48) = v25;
          *(result + 56) = v26;
        }

        return result;
      }
    }

    else
    {
      *(result + 8) = *v8;
      *(result + 24) = *(result + 56);
      *result = v22;
      v21 = v20 >> 31;
      if (v10 == v20)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_27;
  }

  v18 = *v9;
  *(result + 56) = a3[6];
  *v8 = v18;
  v10 = *a3 ^ (*a3 >> 31);
  *(result + 32) = v10;
  v11 = v7 >> 31;
  if (v7 >> 31 == v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  v23 = *(result + 8);
  v24 = *(result + 24);
  v12 = v11 ^ v7;
  v13 = v10 >> 31;
  v14 = (v11 ^ v7) >> 31;
  if (v10 >> 31 == v10)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 != v12)
  {
    v15 = bswap64(*v8);
    v16 = bswap64(v23);
    if (v15 == v16 && (v15 = bswap64(*(result + 48)), v16 = bswap64(*(&v23 + 1)), v15 == v16) && (v15 = bswap32(*(result + 56)), v16 = bswap32(v24), v15 == v16))
    {
      v17 = 0;
    }

    else
    {
      v17 = v15 < v16 ? -1 : 1;
    }

    if (v17 < 0)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void sub_100179090(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100440160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001791F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100179258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100179248);
}

uint64_t *sub_100179290(void *a1, uint64_t a2)
{
  v32 = &v31;
  v3 = (a2 + 8);
  if (*a2 != *a2 >> 31)
  {
    sub_10017910C();
  }

  v4 = *v3;
  v32 = &v31;
  if (*(a2 + 32) != *(a2 + 32) >> 31)
  {
    sub_10017910C();
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  v5 = (v8 ^ v4 ^ ((v8 ^ v4) >> 32)) + 31;
  v6 = vcnt_s8(v9);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v8 ^ v4 ^ ((v8 ^ v4) >> 32)) + 31;
    if (v5 >= *&v9)
    {
      v7 = v5 % *&v9;
    }
  }

  else
  {
    v7 = (*&v9 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v7);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    v12 = *a2 ^ (*a2 >> 31);
    v13 = *(a2 + 8);
    v14 = *(a2 + 32) ^ (*(a2 + 32) >> 31);
    v15 = *(a2 + 40);
    if (v6.u32[0] < 2uLL)
    {
      v16 = *&v9 - 1;
      while (1)
      {
        v17 = result[1];
        if (v5 != v17)
        {
          if ((v17 & v16) != v7)
          {
            return 0;
          }

          goto LABEL_16;
        }

        v18 = *(result + 4);
        if (v12 == ((v18 >> 31) ^ v18))
        {
          if (v18 >> 31 == v18)
          {
            if (v13 != result[3])
            {
              goto LABEL_16;
            }
          }

          else if (*v3 != result[3] || *(a2 + 16) != result[4] || *(a2 + 24) != *(result + 10))
          {
            goto LABEL_16;
          }

          v21 = *(result + 12);
          if (v14 == ((v21 >> 31) ^ v21))
          {
            if (v21 >> 31 == v21)
            {
              if (v15 == result[7])
              {
                return result;
              }
            }

            else if (*(a2 + 40) == result[7] && *(a2 + 48) == result[8] && *(a2 + 56) == *(result + 18))
            {
              return result;
            }
          }
        }

LABEL_16:
        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v24 = result[1];
      if (v5 == v24)
      {
        v25 = *(result + 4);
        if (v12 == ((v25 >> 31) ^ v25))
        {
          if (v25 >> 31 == v25)
          {
            if (v13 != result[3])
            {
              goto LABEL_44;
            }
          }

          else if (*v3 != result[3] || *(a2 + 16) != result[4] || *(a2 + 24) != *(result + 10))
          {
            goto LABEL_44;
          }

          v28 = *(result + 12);
          if (v14 == ((v28 >> 31) ^ v28))
          {
            if (v28 >> 31 == v28)
            {
              if (v15 == result[7])
              {
                return result;
              }
            }

            else if (*(a2 + 40) == result[7] && *(a2 + 48) == result[8] && *(a2 + 56) == *(result + 18))
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (v24 >= *&v9)
        {
          v24 %= *&v9;
        }

        if (v24 != v7)
        {
          return 0;
        }
      }

LABEL_44:
      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_100179574(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v459 = a2 - 80;
  while (1)
  {
    v5 = a1;
    v6 = a2 - a1;
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    v8 = v7 - 2;
    v462 = v5;
    if (v7 > 2)
    {
      switch(v7)
      {
        case 3:
          sub_10017C858(v5, v5 + 80, v459);
          return;
        case 4:
          sub_10017C858(v5, v5 + 80, v5 + 160);
          if (sub_10017D1A4(v459, v462 + 160))
          {
            sub_10017D4C4(v462 + 160, v459);
            *v468 = *(v462 + 224);
            v215 = *(a2 - 16);
            *(v462 + 232) = *(a2 - 8);
            *(v462 + 224) = v215;
            v216 = *v468;
            *(a2 - 8) = *&v468[8];
            *(a2 - 16) = v216;
            if (sub_10017D1A4(v462 + 160, v462 + 80))
            {
              sub_10017D4C4(v462 + 80, v462 + 160);
              *v468 = *(v462 + 144);
              *(v462 + 144) = *(v462 + 224);
              *(v462 + 152) = *(v462 + 232);
              *(v462 + 224) = *v468;
              *(v462 + 232) = *&v468[8];
              if (sub_10017D1A4(v462 + 80, v462))
              {
                sub_10017D4C4(v462, v462 + 80);
                *v468 = *(v462 + 64);
                *(v462 + 64) = *(v462 + 144);
                *(v462 + 72) = *(v462 + 152);
                *(v462 + 144) = *v468;
                *(v462 + 152) = *&v468[8];
              }
            }
          }

          return;
        case 5:
          sub_10017C9E8(v5, v5 + 80, v5 + 160, v5 + 240, v459);
          return;
      }
    }

    else
    {
      if (v7 < 2)
      {
        return;
      }

      if (v7 == 2)
      {
        if (sub_10017D1A4(v459, v5))
        {
          sub_10017D4C4(v462, v459);
          *v468 = *(v462 + 64);
          v213 = *(a2 - 16);
          *(v462 + 72) = *(a2 - 8);
          *(v462 + 64) = v213;
          v214 = *v468;
          *(a2 - 8) = *&v468[8];
          *(a2 - 16) = v214;
        }

        return;
      }
    }

    if (v6 <= 1919)
    {
      break;
    }

    if (!a3)
    {
      if (v5 == a2)
      {
        return;
      }

      v220 = v8 >> 1;
      v221 = v8 >> 1;
LABEL_378:
      v224 = v221;
      if (v220 < v221)
      {
        goto LABEL_377;
      }

      v225 = (2 * v221) | 1;
      v226 = v462 + 80 * v225;
      if (2 * v221 + 2 < v7 && sub_10017D1A4(v462 + 80 * v225, v226 + 80))
      {
        v226 += 80;
        v225 = 2 * v224 + 2;
      }

      v227 = v462 + 80 * v224;
      if (sub_10017D1A4(v226, v227))
      {
        goto LABEL_377;
      }

      v229 = (v227 + 8);
      v228 = *v227;
      v230 = *v227 >> 31;
      if (v230 == *v227)
      {
        *&v468[8] = *v229;
        *v468 = 0;
        v231 = *(v227 + 32);
        v232 = v231 >> 31;
        if (v231 >> 31 != v231)
        {
LABEL_385:
          v233 = *(v227 + 40);
          v472 = *(v227 + 56);
          v471 = v233;
LABEL_388:
          v470 = v232 ^ v231;
          v473 = *(v227 + 64);
          while (1)
          {
            v235 = v226;
            v236 = *v226;
            if (*v227 == *v226)
            {
              if (*v227 == *v227 >> 31)
              {
                *(v227 + 8) = *(v226 + 8);
                v237 = *(v227 + 32);
                v238 = *(v226 + 32);
                if (v237 != v238)
                {
                  goto LABEL_396;
                }
              }

              else
              {
                v239 = *(v226 + 8);
                *(v227 + 24) = *(v226 + 24);
                *(v227 + 8) = v239;
                v237 = *(v227 + 32);
                v238 = *(v226 + 32);
                if (v237 != v238)
                {
                  goto LABEL_396;
                }
              }
            }

            else
            {
              if (v236 >> 31 == v236)
              {
                *(v227 + 8) = *(v226 + 8);
              }

              else
              {
                v240 = *(v226 + 8);
                *(v227 + 24) = *(v226 + 24);
                *(v227 + 8) = v240;
              }

              *v227 = (v236 >> 31) ^ v236;
              v237 = *(v227 + 32);
              v238 = *(v226 + 32);
              if (v237 != v238)
              {
LABEL_396:
                if (v238 >> 31 == v238)
                {
                  *(v227 + 40) = *(v226 + 40);
                }

                else
                {
                  v241 = *(v226 + 40);
                  *(v227 + 56) = *(v226 + 56);
                  *(v227 + 40) = v241;
                }

                *(v227 + 32) = (v238 >> 31) ^ v238;
                goto LABEL_405;
              }
            }

            if (v237 == v237 >> 31)
            {
              *(v227 + 40) = *(v226 + 40);
            }

            else
            {
              v242 = *(v226 + 40);
              *(v227 + 56) = *(v226 + 56);
              *(v227 + 40) = v242;
            }

LABEL_405:
            v243 = *(v226 + 64);
            *(v227 + 72) = *(v226 + 72);
            *(v227 + 64) = v243;
            if (v220 >= v225)
            {
              v244 = (2 * v225) | 1;
              v226 = v462 + 80 * v244;
              v225 = 2 * v225 + 2;
              if (v225 >= v7)
              {
                v225 = v244;
              }

              else if (sub_10017D1A4(v462 + 80 * v244, v226 + 80))
              {
                v226 += 80;
              }

              else
              {
                v225 = v244;
              }

              v227 = v235;
              if (!sub_10017D1A4(v226, v468))
              {
                continue;
              }
            }

            if (*v235 == *v468)
            {
              if (*v235 == *v235 >> 31)
              {
                *(v235 + 8) = *&v468[8];
                v245 = *(v235 + 32);
                v246 = v470;
                if (v245 == v470)
                {
                  goto LABEL_423;
                }

LABEL_419:
                if (v246 >> 31 == v246)
                {
                  *(v235 + 40) = v471;
                }

                else
                {
                  v222 = v471;
                  *(v235 + 56) = v472;
                  *(v235 + 40) = v222;
                }

                *(v235 + 32) = (v246 >> 31) ^ v246;
LABEL_376:
                v223 = v473;
                *(v235 + 72) = DWORD2(v473);
                *(v235 + 64) = v223;
LABEL_377:
                v221 = v224 - 1;
                if (v224)
                {
                  goto LABEL_378;
                }

                v296 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 4);
                v297 = v462;
LABEL_519:
                v299 = a2;
                v300 = *v297 >> 31;
                v301 = *(v297 + 8);
                if (v300 == *v297)
                {
                  v300 = *v297;
                  v302 = *(v297 + 32);
                  v303 = v302 >> 31;
                  v304 = v302;
                  if (v302 >> 31 == v302)
                  {
LABEL_524:
                    v305 = 0;
                    v306 = v300 ^ *v297;
                    v307 = *(v297 + 40);
                    v465 = *(v297 + 64);
                    while (1)
                    {
                      v311 = v297;
                      v312 = v297 + 80 * v305;
                      v297 = v312 + 80;
                      v313 = 2 * v305;
                      v305 = (2 * v305) | 1;
                      v314 = v313 + 2;
                      if (v314 >= v296)
                      {
LABEL_563:
                        v337 = *v311;
                        v338 = *v297;
                        if (*v311 == *v297)
                        {
                          goto LABEL_564;
                        }

                        goto LABEL_579;
                      }

                      v315 = (v312 + 160);
                      v316 = *(v312 + 160);
                      v317 = v316 >> 31;
                      if (v316 >> 31 == v316)
                      {
                        *&v468[8] = *(v312 + 168);
                        v318 = 0;
                        v319 = *(v312 + 80);
                        v320 = v319 >> 31;
                        v321 = 0;
                        if (v319 >> 31 == v319)
                        {
                          goto LABEL_537;
                        }
                      }

                      else
                      {
                        v324 = *(v312 + 168);
                        v469 = *(v312 + 184);
                        *&v468[8] = v324;
                        v318 = v317 ^ v316;
                        v319 = *(v312 + 80);
                        v320 = v319 >> 31;
                        v321 = (v317 ^ v316) >> 31;
                        if (v319 >> 31 == v319)
                        {
LABEL_537:
                          if (v321 != v318 || *(v312 + 88) < *&v468[8])
                          {
                            goto LABEL_578;
                          }

                          *&v478[8] = *(v312 + 88);
                          v325 = 0;
                          v326 = 0;
                          if (v317 == v316)
                          {
                            goto LABEL_550;
                          }

                          goto LABEL_540;
                        }
                      }

                      if (v321 != v318)
                      {
                        v322 = bswap64(*(v312 + 88));
                        v323 = bswap64(*&v468[8]);
                        if (v322 != v323 || (v322 = bswap64(*(v312 + 96)), v323 = bswap64(*&v468[16]), v322 != v323) || (v322 = bswap32(*(v312 + 104)), v323 = bswap32(v469), v322 != v323))
                        {
                          v329 = v322 < v323 ? -1 : 1;
                          if (v329 < 0)
                          {
                            goto LABEL_578;
                          }
                        }
                      }

                      v330 = *(v312 + 88);
                      v479 = *(v312 + 104);
                      *&v478[8] = v330;
                      v325 = v320 ^ v319;
                      v326 = v325 >> 31;
                      if (v317 == v316)
                      {
LABEL_550:
                        if (v326 != v325 || *(v312 + 168) < *&v478[8])
                        {
                          goto LABEL_563;
                        }

                        goto LABEL_557;
                      }

LABEL_540:
                      if (v326 != v325)
                      {
                        v327 = bswap64(*(v312 + 168));
                        v328 = bswap64(*&v478[8]);
                        if (v327 != v328 || (v327 = bswap64(*(v312 + 176)), v328 = bswap64(*&v478[16]), v327 != v328) || (v327 = bswap32(*(v312 + 184)), v328 = bswap32(v479), v327 != v328))
                        {
                          v331 = v327 < v328 ? -1 : 1;
                          if (v331 < 0)
                          {
                            goto LABEL_563;
                          }
                        }
                      }

LABEL_557:
                      v332 = *(v312 + 192);
                      if (v332 >> 31 == v332)
                      {
                        *&v476 = *(v312 + 200);
                        v333 = 0;
                        v334 = 0;
                        if (*(v312 + 112) == *(v312 + 112) >> 31)
                        {
                          goto LABEL_571;
                        }
                      }

                      else
                      {
                        v342 = *(v312 + 200);
                        v477 = *(v312 + 216);
                        v476 = v342;
                        v333 = (v332 >> 31) ^ v332;
                        v334 = v333 >> 31;
                        if (*(v312 + 112) == *(v312 + 112) >> 31)
                        {
LABEL_571:
                          if (v334 == v333 && *(v312 + 120) >= v476)
                          {
                            goto LABEL_563;
                          }

                          goto LABEL_578;
                        }
                      }

                      if (v334 == v333)
                      {
                        goto LABEL_563;
                      }

                      v335 = bswap64(*(v312 + 120));
                      v336 = bswap64(v476);
                      if (v335 == v336)
                      {
                        v335 = bswap64(*(v312 + 128));
                        v336 = bswap64(*(&v476 + 1));
                        if (v335 == v336)
                        {
                          v335 = bswap32(*(v312 + 136));
                          v336 = bswap32(v477);
                          if (v335 == v336)
                          {
                            goto LABEL_563;
                          }
                        }
                      }

                      v343 = v335 < v336 ? -1 : 1;
                      if ((v343 & 0x80000000) == 0)
                      {
                        goto LABEL_563;
                      }

LABEL_578:
                      v297 = v315;
                      v305 = v314;
                      v337 = *v311;
                      v338 = *v315;
                      if (*v311 == v338)
                      {
LABEL_564:
                        if (v337 == v337 >> 31)
                        {
                          *(v311 + 8) = *(v297 + 8);
                          v339 = *(v311 + 32);
                          v340 = *(v297 + 32);
                          if (v339 != v340)
                          {
                            goto LABEL_568;
                          }
                        }

                        else
                        {
                          v341 = *(v297 + 8);
                          *(v311 + 24) = *(v297 + 24);
                          *(v311 + 8) = v341;
                          v339 = *(v311 + 32);
                          v340 = *(v297 + 32);
                          if (v339 != v340)
                          {
                            goto LABEL_568;
                          }
                        }

                        goto LABEL_583;
                      }

LABEL_579:
                      v344 = (v338 >> 31) ^ v338;
                      if (v338 >> 31 == v338)
                      {
                        *(v311 + 8) = *(v297 + 8);
                        *v311 = v344;
                        v339 = *(v311 + 32);
                        v340 = *(v297 + 32);
                        if (v339 != v340)
                        {
                          goto LABEL_568;
                        }
                      }

                      else
                      {
                        v345 = *(v297 + 8);
                        *(v311 + 24) = *(v297 + 24);
                        *(v311 + 8) = v345;
                        *v311 = v344;
                        v339 = *(v311 + 32);
                        v340 = *(v297 + 32);
                        if (v339 != v340)
                        {
LABEL_568:
                          if (v340 >> 31 == v340)
                          {
                            *(v311 + 40) = *(v297 + 40);
                          }

                          else
                          {
                            v308 = *(v297 + 40);
                            *(v311 + 56) = *(v297 + 56);
                            *(v311 + 40) = v308;
                          }

                          *(v311 + 32) = (v340 >> 31) ^ v340;
                          goto LABEL_527;
                        }
                      }

LABEL_583:
                      if (v339 == v339 >> 31)
                      {
                        *(v311 + 40) = *(v297 + 40);
                      }

                      else
                      {
                        v346 = *(v297 + 40);
                        *(v311 + 56) = *(v297 + 56);
                        *(v311 + 40) = v346;
                      }

LABEL_527:
                      v310 = (v297 + 64);
                      v309 = *(v297 + 64);
                      *(v311 + 72) = *(v297 + 72);
                      *(v311 + 64) = v309;
                      if (v305 > ((v296 - 2) >> 1))
                      {
                        v347 = v304 ^ v302;
                        v348 = *v297;
                        a2 -= 80;
                        if (v297 == v299 - 80)
                        {
                          v353 = v306 >> 31;
                          if (v348 == v306)
                          {
                            if (v353 == v306)
                            {
                              *(v297 + 8) = v301;
                              v354 = v347 >> 31;
                              if (*(v297 + 32) == v347)
                              {
                                goto LABEL_635;
                              }

LABEL_631:
                              *(v297 + 40) = v307;
                              if (v354 != v347)
                              {
                                *(v297 + 48) = v463;
                                *(v297 + 56) = v464;
                              }

                              *(v297 + 32) = v354 ^ v347;
LABEL_517:
                              *v310 = v465;
                              *(v297 + 72) = DWORD2(v465);
                              goto LABEL_518;
                            }

                            *(v297 + 8) = v301;
                            *(v297 + 16) = v466;
                            *(v297 + 24) = v467;
                            v354 = v347 >> 31;
                            if (*(v297 + 32) != v347)
                            {
                              goto LABEL_631;
                            }
                          }

                          else
                          {
                            *(v297 + 8) = v301;
                            if (v353 != v306)
                            {
                              *(v297 + 16) = v466;
                              *(v297 + 24) = v467;
                            }

                            *v297 = v353 ^ v306;
                            v354 = v347 >> 31;
                            if (*(v297 + 32) != v347)
                            {
                              goto LABEL_631;
                            }
                          }

LABEL_635:
                          *(v297 + 40) = v307;
                          if (v354 != v347)
                          {
                            *(v297 + 48) = v463;
                            *(v297 + 56) = v464;
                          }

                          goto LABEL_517;
                        }

                        v349 = *(v299 - 80);
                        if (v348 != v349)
                        {
                          v355 = (v299 - 72);
                          if (v349 >> 31 == v349)
                          {
                            *(v297 + 8) = *v355;
                          }

                          else
                          {
                            v358 = *v355;
                            *(v297 + 24) = *(v299 - 56);
                            *(v297 + 8) = v358;
                          }

                          *v297 = (v349 >> 31) ^ v349;
                          v351 = *(v297 + 32);
                          v352 = *(v299 - 48);
                          if (v351 != v352)
                          {
                            goto LABEL_600;
                          }

                          goto LABEL_604;
                        }

                        v350 = (v299 - 72);
                        if (v348 != v348 >> 31)
                        {
                          v356 = *v350;
                          *(v297 + 24) = *(v299 - 56);
                          *(v297 + 8) = v356;
                          v351 = *(v297 + 32);
                          v352 = *(v299 - 48);
                          if (v351 != v352)
                          {
                            goto LABEL_600;
                          }

LABEL_604:
                          v359 = (v299 - 40);
                          if (v351 == v351 >> 31)
                          {
                            *(v297 + 40) = *v359;
                          }

                          else
                          {
                            v361 = *v359;
                            *(v297 + 56) = *(v299 - 24);
                            *(v297 + 40) = v361;
                          }

                          goto LABEL_609;
                        }

                        *(v297 + 8) = *v350;
                        v351 = *(v297 + 32);
                        v352 = *(v299 - 48);
                        if (v351 == v352)
                        {
                          goto LABEL_604;
                        }

LABEL_600:
                        v357 = (v299 - 40);
                        if (v352 >> 31 == v352)
                        {
                          *(v297 + 40) = *v357;
                        }

                        else
                        {
                          v360 = *v357;
                          *(v297 + 56) = *(v299 - 24);
                          *(v297 + 40) = v360;
                        }

                        *(v297 + 32) = (v352 >> 31) ^ v352;
LABEL_609:
                        v362 = *(v299 - 16);
                        *(v297 + 72) = *(v299 - 8);
                        *v310 = v362;
                        v363 = v306 >> 31;
                        if (*(v299 - 80) != v306)
                        {
                          *(v299 - 72) = v301;
                          if (v363 != v306)
                          {
                            *(v299 - 56) = v467;
                            *(v299 - 64) = v466;
                          }

                          *(v299 - 80) = v363 ^ v306;
                          v364 = v347 >> 31;
                          if (*(v299 - 48) != v347)
                          {
                            goto LABEL_616;
                          }

                          goto LABEL_620;
                        }

                        if (v363 != v306)
                        {
                          *(v299 - 72) = v301;
                          *(v299 - 56) = v467;
                          *(v299 - 64) = v466;
                          v364 = v347 >> 31;
                          if (*(v299 - 48) != v347)
                          {
                            goto LABEL_616;
                          }

LABEL_620:
                          *(v299 - 40) = v307;
                          if (v364 != v347)
                          {
                            *(v299 - 24) = v464;
                            *(v299 - 32) = v463;
                          }

                          goto LABEL_625;
                        }

                        *(v299 - 72) = v301;
                        v364 = v347 >> 31;
                        if (*(v299 - 48) == v347)
                        {
                          goto LABEL_620;
                        }

LABEL_616:
                        *(v299 - 40) = v307;
                        if (v364 != v347)
                        {
                          *(v299 - 24) = v464;
                          *(v299 - 32) = v463;
                        }

                        *(v299 - 48) = v364 ^ v347;
LABEL_625:
                        *(v299 - 8) = DWORD2(v465);
                        *(v299 - 16) = v465;
                        v365 = v297 + 80 - v462;
                        if (v365 < 81)
                        {
                          goto LABEL_518;
                        }

                        v366 = (-2 - 0x3333333333333333 * (v365 >> 4)) >> 1;
                        v367 = v462 + 80 * v366;
                        if (!sub_10017D1A4(v367, v297))
                        {
                          goto LABEL_518;
                        }

                        v369 = (v297 + 8);
                        v368 = *v297;
                        v370 = *v297 >> 31;
                        if (v370 == *v297)
                        {
                          *&v468[8] = *v369;
                          *v468 = 0;
                          v371 = *(v297 + 32);
                          v372 = v371 >> 31;
                          if (v371 >> 31 != v371)
                          {
                            goto LABEL_629;
                          }

LABEL_638:
                          *&v471 = *(v297 + 40);
                          v372 = v371;
                        }

                        else
                        {
                          v374 = *v369;
                          v469 = *(v297 + 24);
                          *&v468[8] = v374;
                          *v468 = v370 ^ v368;
                          v371 = *(v297 + 32);
                          v372 = v371 >> 31;
                          if (v371 >> 31 == v371)
                          {
                            goto LABEL_638;
                          }

LABEL_629:
                          v373 = *(v297 + 40);
                          v472 = *(v297 + 56);
                          v471 = v373;
                        }

                        v470 = v372 ^ v371;
                        v473 = *v310;
                        v375 = *v367;
                        while (2)
                        {
                          while (2)
                          {
                            v376 = v367;
                            if (*v297 != v375)
                            {
                              if (v375 >> 31 == v375)
                              {
                                *(v297 + 8) = *(v367 + 8);
                              }

                              else
                              {
                                v380 = *(v367 + 8);
                                *(v297 + 24) = *(v367 + 24);
                                *(v297 + 8) = v380;
                              }

                              *v297 = (v375 >> 31) ^ v375;
                              v377 = *(v297 + 32);
                              v378 = *(v367 + 32);
                              if (v377 != v378)
                              {
                                goto LABEL_648;
                              }

                              goto LABEL_652;
                            }

                            if (v375 != v375 >> 31)
                            {
                              v379 = *(v367 + 8);
                              *(v297 + 24) = *(v367 + 24);
                              *(v297 + 8) = v379;
                              v377 = *(v297 + 32);
                              v378 = *(v367 + 32);
                              if (v377 != v378)
                              {
                                goto LABEL_648;
                              }

LABEL_652:
                              if (v377 == v377 >> 31)
                              {
                                *(v297 + 40) = *(v367 + 40);
                              }

                              else
                              {
                                v382 = *(v367 + 40);
                                *(v297 + 56) = *(v367 + 56);
                                *(v297 + 40) = v382;
                              }

                              goto LABEL_657;
                            }

                            *(v297 + 8) = *(v367 + 8);
                            v377 = *(v297 + 32);
                            v378 = *(v367 + 32);
                            if (v377 == v378)
                            {
                              goto LABEL_652;
                            }

LABEL_648:
                            if (v378 >> 31 == v378)
                            {
                              *(v297 + 40) = *(v367 + 40);
                            }

                            else
                            {
                              v381 = *(v367 + 40);
                              *(v297 + 56) = *(v367 + 56);
                              *(v297 + 40) = v381;
                            }

                            *(v297 + 32) = (v378 >> 31) ^ v378;
LABEL_657:
                            v383 = v367 + 64;
                            v384 = *(v367 + 64);
                            *(v297 + 72) = *(v367 + 72);
                            *(v297 + 64) = v384;
                            v385 = *v468 >> 31;
                            if (!v366)
                            {
                              goto LABEL_701;
                            }

                            if (v385 == *v468)
                            {
                              *&v478[8] = *&v468[8];
                              v386 = *v468;
                            }

                            else
                            {
                              *&v478[8] = *&v468[8];
                              v479 = v469;
                              v386 = *v468 >> 31;
                            }

                            v366 = (v366 - 1) >> 1;
                            v367 = v462 + 80 * v366;
                            v387 = v386 ^ *v468;
                            v388 = (v367 + 8);
                            v375 = *v367;
                            v389 = *v367 >> 31;
                            v390 = v387 >> 31;
                            if (v375 >> 31 == v375)
                            {
                              if (v390 != v387)
                              {
                                goto LABEL_640;
                              }

                              v391 = *v388;
                              if (v391 < *&v478[8])
                              {
                                goto LABEL_640;
                              }

                              *&v476 = v391;
                              v392 = 0;
                              v393 = 0;
                              if (v385 != *v468)
                              {
                                goto LABEL_665;
                              }

LABEL_679:
                              if (v393 != v392)
                              {
                                v385 = *v468;
                                if (*v376 != *v468)
                                {
                                  goto LABEL_714;
                                }

                                goto LABEL_702;
                              }

                              v401 = *v468;
                              if (*&v468[8] < v476)
                              {
                                goto LABEL_713;
                              }

                              goto LABEL_686;
                            }

                            if (v390 != v387)
                            {
                              v397 = bswap64(*v388);
                              v398 = bswap64(*&v478[8]);
                              if (v397 != v398 || (v397 = bswap64(*(v367 + 16)), v398 = bswap64(*&v478[16]), v397 != v398) || (v397 = bswap32(*(v367 + 24)), v398 = bswap32(v479), v397 != v398))
                              {
                                v399 = v397 < v398 ? -1 : 1;
                                if (v399 < 0)
                                {
LABEL_640:
                                  v297 = v376;
                                  continue;
                                }
                              }
                            }

                            break;
                          }

                          v400 = *v388;
                          v477 = *(v367 + 24);
                          v476 = v400;
                          v392 = v389 ^ v375;
                          v393 = (v389 ^ v375) >> 31;
                          if (v385 == *v468)
                          {
                            goto LABEL_679;
                          }

LABEL_665:
                          if (v393 == v392 || ((v394 = bswap64(*&v468[8]), v395 = bswap64(v476), v394 != v395) || (v394 = bswap64(*&v468[16]), v395 = bswap64(*(&v476 + 1)), v394 != v395) || (v394 = bswap32(v469), v395 = bswap32(v477), v394 != v395) ? (v394 < v395 ? (v396 = -1) : (v396 = 1)) : (v396 = 0), (v396 & 0x80000000) == 0))
                          {
LABEL_686:
                            v402 = v470 >> 31;
                            if (v470 >> 31 == v470)
                            {
                              *&v474 = v471;
                              v403 = 0;
                              v404 = 0;
                              if (*(v367 + 32) != *(v367 + 32) >> 31)
                              {
                                goto LABEL_688;
                              }
                            }

                            else
                            {
                              v474 = v471;
                              v475 = v472;
                              v403 = v402 ^ v470;
                              v404 = (v402 ^ v470) >> 31;
                              if (*(v367 + 32) != *(v367 + 32) >> 31)
                              {
LABEL_688:
                                if (v404 == v403)
                                {
                                  v401 = *v468 >> 31;
LABEL_713:
                                  v385 = v401;
                                  if (*v376 == *v468)
                                  {
                                    goto LABEL_702;
                                  }

LABEL_714:
                                  v412 = v385 ^ *v468;
                                  if (v385 == *v468)
                                  {
                                    *(v376 + 8) = *&v468[8];
                                    *v376 = v412;
                                    v408 = *(v376 + 32);
                                    v409 = v470;
                                    if (v408 == v470)
                                    {
LABEL_718:
                                      if (v408 == v408 >> 31)
                                      {
                                        *(v376 + 40) = v471;
                                      }

                                      else
                                      {
                                        v414 = v471;
                                        *(v376 + 56) = v472;
                                        *(v376 + 40) = v414;
                                      }

                                      goto LABEL_721;
                                    }
                                  }

                                  else
                                  {
                                    v413 = *&v468[8];
                                    *(v376 + 24) = v469;
                                    *(v376 + 8) = v413;
                                    *v376 = v412;
                                    v408 = *(v376 + 32);
                                    v409 = v470;
                                    if (v408 == v470)
                                    {
                                      goto LABEL_718;
                                    }
                                  }

                                  goto LABEL_706;
                                }

                                v405 = bswap64(*(v367 + 40));
                                v406 = bswap64(v474);
                                if (v405 == v406 && (v405 = bswap64(*(v367 + 48)), v406 = bswap64(*(&v474 + 1)), v405 == v406) && (v405 = bswap32(*(v367 + 56)), v406 = bswap32(v475), v405 == v406) || (v405 < v406 ? (v407 = -1) : (v407 = 1), v297 = v376, (v407 & 0x80000000) == 0))
                                {
LABEL_701:
                                  if (*v376 != *v468)
                                  {
                                    goto LABEL_714;
                                  }

                                  goto LABEL_702;
                                }

                                continue;
                              }
                            }

                            if (v404 != v403)
                            {
                              goto LABEL_640;
                            }

                            v297 = v376;
                            if (*(v367 + 40) >= v474)
                            {
                              goto LABEL_701;
                            }

                            continue;
                          }

                          break;
                        }

                        if (*v376 != *v468)
                        {
                          goto LABEL_714;
                        }

LABEL_702:
                        if (v385 == *v468)
                        {
                          *(v376 + 8) = *&v468[8];
                          v408 = *(v376 + 32);
                          v409 = v470;
                          if (v408 == v470)
                          {
                            goto LABEL_718;
                          }
                        }

                        else
                        {
                          v410 = *&v468[8];
                          *(v376 + 24) = v469;
                          *(v376 + 8) = v410;
                          v408 = *(v376 + 32);
                          v409 = v470;
                          if (v408 == v470)
                          {
                            goto LABEL_718;
                          }
                        }

LABEL_706:
                        if (v409 >> 31 == v409)
                        {
                          *(v376 + 40) = v471;
                        }

                        else
                        {
                          v411 = v471;
                          *(v376 + 56) = v472;
                          *(v376 + 40) = v411;
                        }

                        *(v376 + 32) = (v409 >> 31) ^ v409;
LABEL_721:
                        v415 = v473;
                        *(v383 + 8) = DWORD2(v473);
                        *v383 = v415;
LABEL_518:
                        v298 = v296-- <= 2;
                        v297 = v462;
                        if (v298)
                        {
                          return;
                        }

                        goto LABEL_519;
                      }
                    }
                  }
                }

                else
                {
                  v466 = *(v297 + 16);
                  v467 = *(v297 + 24);
                  v302 = *(v297 + 32);
                  v303 = v302 >> 31;
                  v304 = v302;
                  if (v302 >> 31 == v302)
                  {
                    goto LABEL_524;
                  }
                }

                v463 = *(v297 + 48);
                v464 = *(v297 + 56);
                v304 = v303;
                goto LABEL_524;
              }

              v248 = *&v468[8];
              *(v235 + 24) = v469;
              *(v235 + 8) = v248;
              v245 = *(v235 + 32);
              v246 = v470;
              if (v245 != v470)
              {
                goto LABEL_419;
              }
            }

            else
            {
              v247 = (*v468 >> 31) ^ *v468;
              if (*v468 >> 31 == *v468)
              {
                *(v235 + 8) = *&v468[8];
              }

              else
              {
                v249 = *&v468[8];
                *(v235 + 24) = v469;
                *(v235 + 8) = v249;
              }

              *v235 = v247;
              v245 = *(v235 + 32);
              v246 = v470;
              if (v245 != v470)
              {
                goto LABEL_419;
              }
            }

LABEL_423:
            if (v245 == v245 >> 31)
            {
              *(v235 + 40) = v471;
            }

            else
            {
              v250 = v471;
              *(v235 + 56) = v472;
              *(v235 + 40) = v250;
            }

            goto LABEL_376;
          }
        }
      }

      else
      {
        v234 = *v229;
        v469 = *(v227 + 24);
        *&v468[8] = v234;
        *v468 = v230 ^ v228;
        v231 = *(v227 + 32);
        v232 = v231 >> 31;
        if (v231 >> 31 != v231)
        {
          goto LABEL_385;
        }
      }

      *&v471 = *(v227 + 40);
      v232 = v231;
      goto LABEL_388;
    }

    v9 = v7 >> 1;
    v10 = v5 + 80 * (v7 >> 1);
    if (v6 < 0x2801)
    {
      sub_10017C858(v10, v5, v459);
      v13 = v462;
      --a3;
      if (a4)
      {
        goto LABEL_16;
      }

LABEL_15:
      v16 = sub_10017D1A4(v13 - 80, v13);
      v13 = v462;
      if (v16)
      {
        goto LABEL_16;
      }

      v129 = (v462 + 8);
      v128 = *v462;
      v130 = *v462 >> 31;
      if (v130 == *v462)
      {
        *&v468[8] = *v129;
        *v468 = 0;
        v131 = *(v462 + 32);
        v132 = v131 >> 31;
        if (v131 >> 31 != v131)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v134 = *v129;
        v469 = *(v462 + 24);
        *&v468[8] = v134;
        *v468 = v130 ^ v128;
        v131 = *(v462 + 32);
        v132 = v131 >> 31;
        if (v131 >> 31 != v131)
        {
LABEL_212:
          v133 = *(v462 + 40);
          v472 = *(v462 + 56);
          v471 = v133;
          goto LABEL_215;
        }
      }

      *&v471 = *(v462 + 40);
      v132 = v131;
LABEL_215:
      v470 = v132 ^ v131;
      v473 = *(v462 + 64);
      if (sub_10017D1A4(v468, v459))
      {
        a1 = v462;
        do
        {
          a1 += 80;
        }

        while (!sub_10017D1A4(v468, a1));
      }

      else
      {
        v135 = v462 + 80;
        do
        {
          a1 = v135;
          if (v135 >= a2)
          {
            break;
          }

          v136 = sub_10017D1A4(v468, v135);
          v135 = a1 + 80;
        }

        while (!v136);
      }

      v137 = a2;
      if (a1 < a2)
      {
        v137 = a2;
        do
        {
          v137 -= 80;
        }

        while (sub_10017D1A4(v468, v137));
      }

      if (a1 < v137)
      {
        v138 = v462;
        while (1)
        {
          sub_10017D4C4(a1, v137);
          *v478 = *(a1 + 64);
          v139 = *(v137 + 72);
          *(a1 + 64) = *(v137 + 64);
          *(a1 + 72) = v139;
          *(v137 + 64) = *v478;
          *(v137 + 72) = *&v478[8];
          v140 = *v468 >> 31;
          v141 = v470 >> 31;
          while (1)
          {
            while (1)
            {
              a1 += 80;
              v142 = (a1 + 8);
              v143 = *a1;
              v144 = *a1 >> 31;
              if (v144 == *a1)
              {
                break;
              }

              v149 = *v142;
              v479 = *(a1 + 24);
              *&v478[8] = v149;
              v145 = v144 ^ v143;
              v146 = (v144 ^ v143) >> 31;
              if (v140 == *v468)
              {
                goto LABEL_237;
              }

LABEL_231:
              if (v146 != v145)
              {
                v147 = bswap64(*&v468[8]);
                v148 = bswap64(*&v478[8]);
                if (v147 != v148 || (v147 = bswap64(*&v468[16]), v148 = bswap64(*&v478[16]), v147 != v148) || (v147 = bswap32(v469), v148 = bswap32(v479), v147 != v148))
                {
                  v155 = v147 < v148 ? -1 : 1;
                  if (v155 < 0)
                  {
                    goto LABEL_280;
                  }
                }
              }

              v476 = *&v468[8];
              v477 = v469;
              v151 = v140 ^ *v468;
              v152 = (v140 ^ *v468) >> 31;
              if (v144 == v143)
              {
                goto LABEL_253;
              }

LABEL_243:
              if (v152 != v151)
              {
                v153 = bswap64(*v142);
                v154 = bswap64(v476);
                if (v153 != v154 || (v153 = bswap64(*(a1 + 16)), v154 = bswap64(*(&v476 + 1)), v153 != v154) || (v153 = bswap32(*(a1 + 24)), v154 = bswap32(v477), v153 != v154))
                {
                  v156 = v153 < v154 ? -1 : 1;
                  if (v156 < 0)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_260;
            }

            *&v478[8] = *v142;
            v145 = 0;
            v146 = 0;
            if (v140 != *v468)
            {
              goto LABEL_231;
            }

LABEL_237:
            if (v146 != v145 || *&v468[8] < *&v478[8])
            {
              break;
            }

            *&v476 = *&v468[8];
            v151 = 0;
            v152 = 0;
            if (v144 != v143)
            {
              goto LABEL_243;
            }

LABEL_253:
            if (v152 == v151 && *v142 >= v476)
            {
LABEL_260:
              v157 = *(a1 + 32);
              if (v157 >> 31 == v157)
              {
                *&v474 = *(a1 + 40);
                v158 = 0;
                v159 = 0;
                if (v141 == v470)
                {
                  goto LABEL_268;
                }

LABEL_262:
                if (v159 != v158)
                {
                  v160 = bswap64(v471);
                  v161 = bswap64(v474);
                  if (v160 != v161 || (v160 = bswap64(*(&v471 + 1)), v161 = bswap64(*(&v474 + 1)), v160 != v161) || (v160 = bswap32(v472), v161 = bswap32(v475), v160 != v161))
                  {
                    v163 = v160 < v161 ? -1 : 1;
                    if (v163 < 0)
                    {
                      goto LABEL_280;
                    }
                  }
                }
              }

              else
              {
                v162 = *(a1 + 40);
                v475 = *(a1 + 56);
                v474 = v162;
                v158 = (v157 >> 31) ^ v157;
                v159 = v158 >> 31;
                if (v141 != v470)
                {
                  goto LABEL_262;
                }

LABEL_268:
                if (v159 != v158 || v471 < v474)
                {
                  goto LABEL_280;
                }
              }
            }
          }

          do
          {
LABEL_280:
            while (1)
            {
              v137 -= 80;
              v165 = (v137 + 8);
              v166 = *v137;
              v167 = *v137 >> 31;
              if (v167 == *v137)
              {
                break;
              }

              v172 = *v165;
              v479 = *(v137 + 24);
              *&v478[8] = v172;
              v168 = v167 ^ v166;
              v169 = (v167 ^ v166) >> 31;
              if (v140 == *v468)
              {
                goto LABEL_288;
              }

LABEL_282:
              if (v169 != v168)
              {
                v170 = bswap64(*&v468[8]);
                v171 = bswap64(*&v478[8]);
                if (v170 != v171 || (v170 = bswap64(*&v468[16]), v171 = bswap64(*&v478[16]), v170 != v171) || (v170 = bswap32(v469), v171 = bswap32(v479), v170 != v171))
                {
                  v179 = v170 < v171 ? -1 : 1;
                  if (v179 < 0)
                  {
                    continue;
                  }
                }
              }

              v476 = *&v468[8];
              v477 = v469;
              v174 = v140 ^ *v468;
              v175 = (v140 ^ *v468) >> 31;
              if (v167 != v166)
              {
                goto LABEL_294;
              }

LABEL_304:
              if (v175 != v174 || *v165 < v476)
              {
                goto LABEL_227;
              }

LABEL_311:
              v180 = *(v137 + 32);
              if (v180 >> 31 == v180)
              {
                *&v474 = *(v137 + 40);
                v181 = 0;
                v182 = 0;
                if (v141 == v470)
                {
                  goto LABEL_319;
                }

LABEL_313:
                if (v182 == v181)
                {
                  goto LABEL_227;
                }

                v183 = bswap64(v471);
                v184 = bswap64(v474);
                if (v183 == v184)
                {
                  v183 = bswap64(*(&v471 + 1));
                  v184 = bswap64(*(&v474 + 1));
                  if (v183 == v184)
                  {
                    v183 = bswap32(v472);
                    v184 = bswap32(v475);
                    if (v183 == v184)
                    {
                      goto LABEL_227;
                    }
                  }
                }

                v164 = v183 < v184 ? -1 : 1;
                if ((v164 & 0x80000000) == 0)
                {
                  goto LABEL_227;
                }
              }

              else
              {
                v185 = *(v137 + 40);
                v475 = *(v137 + 56);
                v474 = v185;
                v181 = (v180 >> 31) ^ v180;
                v182 = v181 >> 31;
                if (v141 != v470)
                {
                  goto LABEL_313;
                }

LABEL_319:
                if (v182 == v181 && v471 >= v474)
                {
                  goto LABEL_227;
                }
              }
            }

            *&v478[8] = *v165;
            v168 = 0;
            v169 = 0;
            if (v140 != *v468)
            {
              goto LABEL_282;
            }

LABEL_288:
            ;
          }

          while (v169 != v168 || *&v468[8] < *&v478[8]);
          *&v476 = *&v468[8];
          v174 = 0;
          v175 = 0;
          if (v167 == v166)
          {
            goto LABEL_304;
          }

LABEL_294:
          if (v175 == v174)
          {
            goto LABEL_311;
          }

          v176 = bswap64(*v165);
          v177 = bswap64(v476);
          if (v176 == v177 && (v176 = bswap64(*(v137 + 16)), v177 = bswap64(*(&v476 + 1)), v176 == v177) && (v176 = bswap32(*(v137 + 24)), v177 = bswap32(v477), v176 == v177))
          {
            v178 = 0;
          }

          else
          {
            v178 = v176 < v177 ? -1 : 1;
          }

          if ((v178 & 0x80000000) == 0)
          {
            goto LABEL_311;
          }

LABEL_227:
          if (a1 >= v137)
          {
            goto LABEL_323;
          }
        }
      }

      v138 = v462;
LABEL_323:
      v186 = (a1 - 80);
      if (a1 - 80 != v138)
      {
        v187 = *v186;
        if (*v138 == *v186)
        {
          v188 = (a1 - 72);
          if (*v138 == *v138 >> 31)
          {
            *v129 = *v188;
          }

          else
          {
            v190 = *v188;
            *(v462 + 24) = *(a1 - 56);
            *v129 = v190;
          }
        }

        else
        {
          v189 = (a1 - 72);
          if (v187 >> 31 == v187)
          {
            *(v138 + 8) = *v189;
          }

          else
          {
            v191 = *v189;
            *(v462 + 24) = *(a1 - 56);
            *v129 = v191;
          }

          *v138 = (v187 >> 31) ^ v187;
        }

        v192 = *(v138 + 32);
        v193 = *(a1 - 48);
        if (v192 == v193)
        {
          v194 = (a1 - 40);
          if (v192 == v192 >> 31)
          {
            *(v138 + 40) = *v194;
          }

          else
          {
            v196 = *v194;
            *(v138 + 56) = *(a1 - 24);
            *(v138 + 40) = v196;
          }
        }

        else
        {
          v195 = (a1 - 40);
          if (v193 >> 31 == v193)
          {
            *(v138 + 40) = *v195;
          }

          else
          {
            v197 = *v195;
            *(v138 + 56) = *(a1 - 24);
            *(v138 + 40) = v197;
          }

          *(v138 + 32) = (v193 >> 31) ^ v193;
        }

        v198 = *(a1 - 16);
        *(v138 + 72) = *(a1 - 8);
        *(v138 + 64) = v198;
      }

      v199 = *v186;
      if (*v186 == *v468)
      {
        v200 = (a1 - 72);
        if (v199 == v199 >> 31)
        {
          *v200 = *&v468[8];
        }

        else
        {
          v203 = *&v468[8];
          *(a1 - 56) = v469;
          *v200 = v203;
        }
      }

      else
      {
        v201 = (*v468 >> 31) ^ *v468;
        v202 = (a1 - 72);
        if (*v468 >> 31 == *v468)
        {
          *v202 = *&v468[8];
        }

        else
        {
          v204 = *&v468[8];
          *(a1 - 56) = v469;
          *v202 = v204;
        }

        *v186 = v201;
      }

      v205 = *(a1 - 48);
      if (v205 == v470)
      {
        v206 = (a1 - 40);
        if (v205 == v205 >> 31)
        {
          *v206 = v471;
        }

        else
        {
          v208 = v471;
          *(a1 - 24) = v472;
          *v206 = v208;
        }
      }

      else
      {
        v207 = (v470 >> 31) ^ v470;
        if (v470 >> 31 == v470)
        {
          *(a1 - 40) = v471;
        }

        else
        {
          v209 = a1 - 40;
          v210 = v471;
          *(v209 + 16) = v472;
          *v209 = v210;
        }

        *(a1 - 48) = v207;
      }

      a4 = 0;
      v211 = v473;
      *(a1 - 8) = DWORD2(v473);
      *(a1 - 16) = v211;
    }

    else
    {
      sub_10017C858(v5, v10, v459);
      v11 = v462 + 80 * v9 - 80;
      sub_10017C858(v462 + 80, v11, a2 - 160);
      v12 = v462 + 80 * v9;
      sub_10017C858(v462 + 160, v12 + 80, a2 - 240);
      sub_10017C858(v11, v10, v12 + 80);
      v13 = v462;
      sub_10017D4C4(v462, v10);
      *v468 = *(v462 + 64);
      v14 = *(v10 + 64);
      *(v462 + 72) = *(v10 + 72);
      *(v462 + 64) = v14;
      v15 = *v468;
      *(v10 + 72) = *&v468[8];
      *(v10 + 64) = v15;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v18 = (v13 + 8);
      v17 = *v13;
      v19 = *v13 >> 31;
      if (v17 >> 31 == v17)
      {
        *&v468[8] = *v18;
        v20 = 0;
        *v468 = 0;
        v21 = *(v13 + 32);
        v22 = v21 >> 31;
        if (v21 >> 31 == v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v25 = *v18;
        v469 = *(v13 + 24);
        *&v468[8] = v25;
        v20 = v19 ^ v17;
        *v468 = v20;
        v21 = *(v13 + 32);
        v22 = v21 >> 31;
        if (v21 >> 31 == v21)
        {
LABEL_20:
          v24 = *(v13 + 40);
          *&v471 = v24;
          v22 = v21;
          goto LABEL_21;
        }
      }

      v23 = *(v13 + 40);
      v472 = *(v13 + 56);
      v471 = v23;
      v24 = v23;
LABEL_21:
      v26 = 0;
      v27 = v22 ^ v21;
      v470 = v27;
      v473 = *(v13 + 64);
      v28 = v20 >> 31;
      while (1)
      {
        if (v28 == v20)
        {
          *&v478[8] = *&v468[8];
          v30 = v20;
        }

        else
        {
          *&v478[8] = *&v468[8];
          v479 = v469;
          v30 = v20 >> 31;
        }

        v31 = v30 ^ v20;
        v32 = *(v13 + v26 + 80);
        v33 = v13 + v26;
        v34 = v31 >> 31;
        if (v32 >> 31 == v32)
        {
          if (v34 != v31 || *(v33 + 88) < *&v478[8])
          {
            goto LABEL_63;
          }

          *&v476 = *(v33 + 88);
          v35 = 0;
          v36 = 0;
          if (v28 != v20)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v34 != v31)
          {
            v39 = bswap64(*(v33 + 88));
            v40 = bswap64(*&v478[8]);
            if (v39 != v40 || (v39 = bswap64(*(v33 + 96)), v40 = bswap64(*&v478[16]), v39 != v40) || (v39 = bswap32(*(v33 + 104)), v40 = bswap32(v479), v39 != v40))
            {
              v41 = v39 < v40 ? -1 : 1;
              if (v41 < 0)
              {
                goto LABEL_63;
              }
            }
          }

          v42 = *(v33 + 88);
          v477 = *(v33 + 104);
          v476 = v42;
          v35 = (v32 >> 31) ^ v32;
          v36 = v35 >> 31;
          if (v28 != v20)
          {
LABEL_34:
            if (v36 != v35)
            {
              v37 = bswap64(*&v468[8]);
              v38 = bswap64(v476);
              if (v37 != v38 || (v37 = bswap64(*&v468[16]), v38 = bswap64(*(&v476 + 1)), v37 != v38) || (v37 = bswap32(v469), v38 = bswap32(v477), v37 != v38))
              {
                v44 = v37 < v38 ? -1 : 1;
                if (v44 < 0)
                {
                  break;
                }
              }
            }

            goto LABEL_57;
          }
        }

        if (v36 != v35 || *&v468[8] < v476)
        {
          break;
        }

LABEL_57:
        if (v27 >> 31 == v27)
        {
          *&v474 = v24;
          v45 = v27;
        }

        else
        {
          v474 = v471;
          v475 = v472;
          v45 = v27 >> 31;
        }

        v46 = v45 ^ v27;
        v47 = v13 + v26;
        v48 = v46 >> 31;
        if (*(v13 + v26 + 112) == *(v13 + v26 + 112) >> 31)
        {
          if (v48 == v46 && *(v47 + 120) >= v474)
          {
            break;
          }
        }

        else
        {
          if (v48 == v46)
          {
            break;
          }

          v49 = bswap64(*(v47 + 120));
          v50 = bswap64(v474);
          if (v49 == v50)
          {
            v49 = bswap64(*(v47 + 128));
            v50 = bswap64(*(&v474 + 1));
            if (v49 == v50)
            {
              v49 = bswap32(*(v47 + 136));
              v50 = bswap32(v475);
              if (v49 == v50)
              {
                break;
              }
            }
          }

          v29 = v49 < v50 ? -1 : 1;
          if ((v29 & 0x80000000) == 0)
          {
            break;
          }
        }

LABEL_63:
        v26 += 80;
      }

      v51 = v13 + v26 + 80;
      v52 = a2;
      if (v26)
      {
        do
        {
          v52 -= 80;
        }

        while (!sub_10017D1A4(v52, v468));
      }

      else
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v52 -= 80;
        }

        while (!sub_10017D1A4(v52, v468));
      }

      v458 = v13 + 8;
      a1 = v51;
      if (v51 < v52)
      {
        v53 = v52;
        v54 = v462;
        while (1)
        {
          sub_10017D4C4(a1, v53);
          *v478 = *(a1 + 64);
          v55 = *(v53 + 72);
          *(a1 + 64) = *(v53 + 64);
          *(a1 + 72) = v55;
          *(v53 + 64) = *v478;
          *(v53 + 72) = *&v478[8];
          v56 = *v468 >> 31;
          v57 = v470 >> 31;
          for (i = a1 + 120; ; i += 80)
          {
            if (v56 == *v468)
            {
              *&v478[8] = *&v468[8];
              v60 = *v468;
            }

            else
            {
              *&v478[8] = *&v468[8];
              v479 = v469;
              v60 = *v468 >> 31;
            }

            v61 = v60 ^ *v468;
            v62 = *(i - 40);
            v63 = (i - 32);
            v64 = v61 >> 31;
            if (v62 >> 31 != v62)
            {
              break;
            }

            if (v64 != v61 || *v63 < *&v478[8])
            {
              continue;
            }

            *&v476 = *v63;
            v65 = 0;
            v66 = 0;
            if (v56 == *v468)
            {
              goto LABEL_104;
            }

LABEL_90:
            if (v66 != v65)
            {
              v67 = bswap64(*&v468[8]);
              v68 = bswap64(v476);
              if (v67 != v68 || (v67 = bswap64(*&v468[16]), v68 = bswap64(*(&v476 + 1)), v67 != v68) || (v67 = bswap32(v469), v68 = bswap32(v477), v67 != v68))
              {
                v74 = v67 < v68 ? -1 : 1;
                if (v74 < 0)
                {
                  goto LABEL_123;
                }
              }
            }

LABEL_113:
            if (v57 == v470)
            {
              *&v474 = v471;
              v75 = 0;
              v76 = 0;
              if (*(i - 8) == *(i - 8) >> 31)
              {
                goto LABEL_115;
              }
            }

            else
            {
              v474 = v471;
              v475 = v472;
              v75 = v57 ^ v470;
              v76 = (v57 ^ v470) >> 31;
              if (*(i - 8) == *(i - 8) >> 31)
              {
LABEL_115:
                if (v76 == v75 && *i >= v474)
                {
                  goto LABEL_123;
                }

                continue;
              }
            }

            if (v76 == v75)
            {
              goto LABEL_123;
            }

            v77 = bswap64(*i);
            v78 = bswap64(v474);
            if (v77 == v78)
            {
              v77 = bswap64(*(i + 8));
              v78 = bswap64(*(&v474 + 1));
              if (v77 == v78)
              {
                v77 = bswap32(*(i + 16));
                v78 = bswap32(v475);
                if (v77 == v78)
                {
                  goto LABEL_123;
                }
              }
            }

            v59 = v77 < v78 ? -1 : 1;
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_123;
            }

LABEL_117:
            ;
          }

          if (v64 != v61)
          {
            v69 = bswap64(*v63);
            v70 = bswap64(*&v478[8]);
            if (v69 != v70 || (v69 = bswap64(*(i - 24)), v70 = bswap64(*&v478[16]), v69 != v70) || (v69 = bswap32(*(i - 16)), v70 = bswap32(v479), v69 != v70))
            {
              v71 = v69 < v70 ? -1 : 1;
              if (v71 < 0)
              {
                goto LABEL_117;
              }
            }
          }

          v72 = *v63;
          v477 = *(i - 16);
          v476 = v72;
          v65 = (v62 >> 31) ^ v62;
          v66 = v65 >> 31;
          if (v56 != *v468)
          {
            goto LABEL_90;
          }

LABEL_104:
          if (v66 == v65 && *&v468[8] >= v476)
          {
            goto LABEL_113;
          }

LABEL_123:
          a1 = i - 40;
          v79 = v53 - 40;
          while (2)
          {
            if (v56 == *v468)
            {
              *&v478[8] = *&v468[8];
              v81 = *v468;
            }

            else
            {
              *&v478[8] = *&v468[8];
              v479 = v469;
              v81 = *v468 >> 31;
            }

            v82 = v81 ^ *v468;
            v83 = *(v79 - 40);
            v84 = (v79 - 32);
            v85 = v82 >> 31;
            if (v83 >> 31 == v83)
            {
              if (v85 != v82 || *v84 < *&v478[8])
              {
                goto LABEL_76;
              }

              *&v476 = *v84;
              v86 = 0;
              v87 = 0;
              if (v56 != *v468)
              {
LABEL_136:
                if (v87 == v86)
                {
                  goto LABEL_159;
                }

                v88 = bswap64(*&v468[8]);
                v89 = bswap64(v476);
                if (v88 == v89)
                {
                  v88 = bswap64(*&v468[16]);
                  v89 = bswap64(*(&v476 + 1));
                  if (v88 == v89)
                  {
                    v88 = bswap32(v469);
                    v89 = bswap32(v477);
                    if (v88 == v89)
                    {
                      goto LABEL_159;
                    }
                  }
                }

                v95 = v88 < v89 ? -1 : 1;
                if ((v95 & 0x80000000) == 0)
                {
                  goto LABEL_159;
                }

LABEL_169:
                v79 -= 80;
                continue;
              }

LABEL_150:
              if (v87 != v86 || *&v468[8] < v476)
              {
                goto LABEL_169;
              }

LABEL_159:
              if (v57 == v470)
              {
                *&v474 = v471;
                v96 = 0;
                v97 = 0;
                if (*(v79 - 8) != *(v79 - 8) >> 31)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v474 = v471;
                v475 = v472;
                v96 = v57 ^ v470;
                v97 = (v57 ^ v470) >> 31;
                if (*(v79 - 8) != *(v79 - 8) >> 31)
                {
LABEL_161:
                  if (v97 != v96)
                  {
                    v98 = bswap64(*v79);
                    v99 = bswap64(v474);
                    if (v98 != v99 || (v98 = bswap64(*(v79 + 8)), v99 = bswap64(*(&v474 + 1)), v98 != v99) || (v98 = bswap32(*(v79 + 16)), v99 = bswap32(v475), v98 != v99))
                    {
                      v80 = v98 < v99 ? -1 : 1;
                      if (v80 < 0)
                      {
                        goto LABEL_76;
                      }
                    }
                  }

                  goto LABEL_169;
                }
              }

              if (v97 != v96 || *v79 < v474)
              {
                goto LABEL_76;
              }

              goto LABEL_169;
            }

            break;
          }

          if (v85 == v82 || (v90 = bswap64(*v84), v91 = bswap64(*&v478[8]), v90 == v91) && (v90 = bswap64(*(v79 - 24)), v91 = bswap64(*&v478[16]), v90 == v91) && (v90 = bswap32(*(v79 - 16)), v91 = bswap32(v479), v90 == v91) || (v90 < v91 ? (v92 = -1) : (v92 = 1), (v92 & 0x80000000) == 0))
          {
            v93 = *v84;
            v477 = *(v79 - 16);
            v476 = v93;
            v86 = (v83 >> 31) ^ v83;
            v87 = v86 >> 31;
            if (v56 != *v468)
            {
              goto LABEL_136;
            }

            goto LABEL_150;
          }

LABEL_76:
          v53 = v79 - 40;
          if (a1 >= v79 - 40)
          {
            goto LABEL_171;
          }
        }
      }

      v54 = v462;
LABEL_171:
      v100 = (a1 - 80);
      if (a1 - 80 != v54)
      {
        v101 = *v100;
        if (*v54 == *v100)
        {
          v102 = (a1 - 72);
          if (*v54 == *v54 >> 31)
          {
            *v458 = *v102;
            v103 = *(v54 + 32);
            v104 = *(a1 - 48);
            if (v103 == v104)
            {
              goto LABEL_183;
            }

LABEL_179:
            v107 = (a1 - 40);
            if (v104 >> 31 == v104)
            {
              *(v54 + 40) = *v107;
            }

            else
            {
              v110 = *v107;
              *(v54 + 56) = *(a1 - 24);
              *(v54 + 40) = v110;
            }

            *(v54 + 32) = (v104 >> 31) ^ v104;
LABEL_188:
            v112 = *(a1 - 16);
            *(v54 + 72) = *(a1 - 8);
            *(v54 + 64) = v112;
            goto LABEL_189;
          }

          v106 = *v102;
          *(v458 + 16) = *(a1 - 56);
          *v458 = v106;
          v103 = *(v54 + 32);
          v104 = *(a1 - 48);
          if (v103 != v104)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v105 = (a1 - 72);
          if (v101 >> 31 == v101)
          {
            *(v54 + 8) = *v105;
          }

          else
          {
            v108 = *v105;
            *(v458 + 16) = *(a1 - 56);
            *v458 = v108;
          }

          *v54 = (v101 >> 31) ^ v101;
          v103 = *(v54 + 32);
          v104 = *(a1 - 48);
          if (v103 != v104)
          {
            goto LABEL_179;
          }
        }

LABEL_183:
        v109 = (a1 - 40);
        if (v103 == v103 >> 31)
        {
          *(v54 + 40) = *v109;
        }

        else
        {
          v111 = *v109;
          *(v54 + 56) = *(a1 - 24);
          *(v54 + 40) = v111;
        }

        goto LABEL_188;
      }

LABEL_189:
      if (*v100 == *v468)
      {
        v113 = (a1 - 72);
        if (*v100 == *v100 >> 31)
        {
          *v113 = *&v468[8];
          v114 = *(a1 - 48);
          v115 = v470;
          if (v114 == v470)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v118 = *&v468[8];
          *(a1 - 56) = v469;
          *v113 = v118;
          v114 = *(a1 - 48);
          v115 = v470;
          if (v114 == v470)
          {
            goto LABEL_200;
          }
        }

LABEL_196:
        if (v115 >> 31 == v115)
        {
          *(a1 - 40) = v471;
        }

        else
        {
          v122 = a1 - 40;
          v123 = v471;
          *(v122 + 16) = v472;
          *v122 = v123;
        }

        *(a1 - 48) = (v115 >> 31) ^ v115;
        v124 = v473;
        *(a1 - 8) = DWORD2(v473);
        *(a1 - 16) = v124;
        if (v51 >= v52)
        {
          goto LABEL_207;
        }

LABEL_209:
        sub_100179574(v54, a1 - 80, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v116 = (*v468 >> 31) ^ *v468;
        v117 = (a1 - 72);
        if (*v468 >> 31 == *v468)
        {
          *v117 = *&v468[8];
        }

        else
        {
          v119 = *&v468[8];
          *(a1 - 56) = v469;
          *v117 = v119;
        }

        *v100 = v116;
        v114 = *(a1 - 48);
        v115 = v470;
        if (v114 != v470)
        {
          goto LABEL_196;
        }

LABEL_200:
        v120 = (a1 - 40);
        if (v114 == v114 >> 31)
        {
          *v120 = v471;
          v121 = v473;
          *(a1 - 8) = DWORD2(v473);
          *(a1 - 16) = v121;
          if (v51 < v52)
          {
            goto LABEL_209;
          }
        }

        else
        {
          v125 = v471;
          *(a1 - 24) = v472;
          *v120 = v125;
          v126 = v473;
          *(a1 - 8) = DWORD2(v473);
          *(a1 - 16) = v126;
          if (v51 < v52)
          {
            goto LABEL_209;
          }
        }

LABEL_207:
        v127 = sub_10017CC10(v54, a1 - 80);
        if (sub_10017CC10(a1, a2))
        {
          a2 = a1 - 80;
          a1 = v462;
          if (v127)
          {
            return;
          }

          goto LABEL_1;
        }

        v54 = v462;
        if (!v127)
        {
          goto LABEL_209;
        }
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v5 == a2)
    {
      return;
    }

    v416 = v5 + 80;
    if (v5 + 80 == a2)
    {
      return;
    }

LABEL_731:
    v419 = v416;
    v420 = v5;
    if (!sub_10017D1A4(v416, v5))
    {
      goto LABEL_730;
    }

    v421 = *v419;
    v422 = *v419 >> 31;
    v423 = v420;
    if (v422 == *v419)
    {
      *&v468[8] = *(v420 + 88);
      *v468 = 0;
      v424 = *(v420 + 112);
      v425 = v424 >> 31;
      if (v424 >> 31 != v424)
      {
LABEL_734:
        v471 = *(v420 + 120);
        v472 = *(v420 + 136);
LABEL_737:
        v470 = v425 ^ v424;
        v473 = *(v420 + 144);
        while (1)
        {
          v427 = *v423;
          if (v421 == *v423)
          {
            if (v421 == v421 >> 31)
            {
              *(v423 + 88) = *(v423 + 8);
              v428 = *(v423 + 112);
              v429 = *(v423 + 32);
              if (v428 == v429)
              {
                goto LABEL_754;
              }
            }

            else
            {
              *(v423 + 88) = *(v423 + 8);
              *(v423 + 104) = *(v423 + 24);
              v428 = *(v423 + 112);
              v429 = *(v423 + 32);
              if (v428 == v429)
              {
                goto LABEL_754;
              }
            }
          }

          else
          {
            if (v427 >> 31 == v427)
            {
              *(v423 + 88) = *(v423 + 8);
            }

            else
            {
              *(v423 + 88) = *(v423 + 8);
              *(v423 + 104) = *(v423 + 24);
            }

            *(v423 + 80) = (v427 >> 31) ^ v427;
            v428 = *(v423 + 112);
            v429 = *(v423 + 32);
            if (v428 == v429)
            {
LABEL_754:
              if (v428 == v428 >> 31)
              {
                *(v423 + 120) = *(v423 + 40);
              }

              else
              {
                *(v423 + 120) = *(v423 + 40);
                *(v423 + 136) = *(v423 + 56);
              }

              goto LABEL_759;
            }
          }

          if (v429 >> 31 == v429)
          {
            *(v423 + 120) = *(v423 + 40);
          }

          else
          {
            *(v423 + 120) = *(v423 + 40);
            *(v423 + 136) = *(v423 + 56);
          }

          *(v423 + 112) = (v429 >> 31) ^ v429;
LABEL_759:
          *(v423 + 144) = *(v423 + 64);
          *(v423 + 152) = *(v423 + 72);
          v430 = *(v423 - 80);
          v431 = v430 >> 31;
          if (v430 >> 31 == v430)
          {
            *&v478[8] = *(v423 - 72);
            v432 = 0;
            v433 = *v468;
            v434 = *v468 >> 31;
            v435 = 0;
            if (*v468 >> 31 == *v468)
            {
              goto LABEL_767;
            }
          }

          else
          {
            v438 = *(v423 - 72);
            v479 = *(v423 - 56);
            *&v478[8] = v438;
            v432 = v431 ^ v430;
            v433 = *v468;
            v434 = *v468 >> 31;
            v435 = (v431 ^ v430) >> 31;
            if (*v468 >> 31 == *v468)
            {
LABEL_767:
              if (v435 != v432 || *&v468[8] < *&v478[8])
              {
                goto LABEL_797;
              }

              *&v476 = *&v468[8];
              v439 = 0;
              v440 = 0;
              if (v431 == v430)
              {
                goto LABEL_780;
              }

              goto LABEL_770;
            }
          }

          if (v435 != v432)
          {
            v436 = bswap64(*&v468[8]);
            v437 = bswap64(*&v478[8]);
            if (v436 != v437 || (v436 = bswap64(*&v468[16]), v437 = bswap64(*&v478[16]), v436 != v437) || (v436 = bswap32(v469), v437 = bswap32(v479), v436 != v437))
            {
              v444 = v436 < v437 ? -1 : 1;
              if (v444 < 0)
              {
                goto LABEL_797;
              }
            }
          }

          v476 = *&v468[8];
          v477 = v469;
          v439 = v434 ^ v433;
          v440 = (v434 ^ v433) >> 31;
          if (v431 == v430)
          {
LABEL_780:
            if (v440 != v439 || *(v423 - 72) < v476)
            {
              goto LABEL_798;
            }

            goto LABEL_787;
          }

LABEL_770:
          if (v440 != v439)
          {
            v441 = bswap64(*(v423 - 72));
            v442 = bswap64(v476);
            if (v441 == v442 && (v441 = bswap64(*(v423 - 64)), v442 = bswap64(*(&v476 + 1)), v441 == v442) && (v441 = bswap32(*(v423 - 56)), v442 = bswap32(v477), v441 == v442))
            {
              v443 = 0;
            }

            else
            {
              v443 = v441 < v442 ? -1 : 1;
            }

            if (v443 < 0)
            {
LABEL_798:
              if (*v423 == v433)
              {
                if (v434 == v433)
                {
                  *(v423 + 8) = *&v468[8];
                  v452 = *(v423 + 32);
                  v453 = v470;
                  if (v452 == v470)
                  {
                    goto LABEL_809;
                  }

LABEL_805:
                  if (v453 >> 31 == v453)
                  {
                    *(v423 + 40) = v471;
                  }

                  else
                  {
                    v417 = v471;
                    *(v423 + 56) = v472;
                    *(v423 + 40) = v417;
                  }

                  *(v423 + 32) = (v453 >> 31) ^ v453;
LABEL_729:
                  v418 = v473;
                  *(v423 + 72) = DWORD2(v473);
                  *(v423 + 64) = v418;
LABEL_730:
                  v416 = (v419 + 20);
                  v5 = v419;
                  if (v419 + 20 == a2)
                  {
                    return;
                  }

                  goto LABEL_731;
                }

                v454 = *&v468[8];
                *(v423 + 24) = v469;
                *(v423 + 8) = v454;
                v452 = *(v423 + 32);
                v453 = v470;
                if (v452 != v470)
                {
                  goto LABEL_805;
                }
              }

              else
              {
                if (v434 == v433)
                {
                  *(v423 + 8) = *&v468[8];
                }

                else
                {
                  v455 = *&v468[8];
                  *(v423 + 24) = v469;
                  *(v423 + 8) = v455;
                }

                *v423 = v434 ^ v433;
                v452 = *(v423 + 32);
                v453 = v470;
                if (v452 != v470)
                {
                  goto LABEL_805;
                }
              }

LABEL_809:
              if (v452 == v452 >> 31)
              {
                *(v423 + 40) = v471;
              }

              else
              {
                v456 = v471;
                *(v423 + 56) = v472;
                *(v423 + 40) = v456;
              }

              goto LABEL_729;
            }
          }

LABEL_787:
          v445 = *(v423 - 48);
          v446 = (v423 - 40);
          if (v445 >> 31 == v445)
          {
            *&v474 = *v446;
            v447 = 0;
            v448 = 0;
            if (v470 == v470 >> 31)
            {
              goto LABEL_795;
            }
          }

          else
          {
            v451 = *v446;
            v475 = *(v423 - 24);
            v474 = v451;
            v447 = (v445 >> 31) ^ v445;
            v448 = v447 >> 31;
            if (v470 == v470 >> 31)
            {
LABEL_795:
              if (v448 == v447 && v471 >= v474)
              {
                goto LABEL_798;
              }

              goto LABEL_797;
            }
          }

          if (v448 == v447)
          {
            goto LABEL_798;
          }

          v449 = bswap64(v471);
          v450 = bswap64(v474);
          if (v449 == v450)
          {
            v449 = bswap64(*(&v471 + 1));
            v450 = bswap64(*(&v474 + 1));
            if (v449 == v450)
            {
              v449 = bswap32(v472);
              v450 = bswap32(v475);
              if (v449 == v450)
              {
                goto LABEL_798;
              }
            }
          }

          v426 = v449 < v450 ? -1 : 1;
          if ((v426 & 0x80000000) == 0)
          {
            goto LABEL_798;
          }

LABEL_797:
          v421 = *v423;
          v423 -= 80;
        }
      }
    }

    else
    {
      *&v468[8] = *(v420 + 88);
      v469 = *(v420 + 104);
      *v468 = v422 ^ v421;
      v424 = *(v420 + 112);
      v425 = v424 >> 31;
      if (v424 >> 31 != v424)
      {
        goto LABEL_734;
      }
    }

    *&v471 = *(v420 + 120);
    v425 = v424;
    goto LABEL_737;
  }

  if (v5 == a2)
  {
    return;
  }

  v217 = v5 + 80;
  if (v5 + 80 == a2)
  {
    return;
  }

  v218 = 0;
  v219 = v5;
  while (2)
  {
    v254 = v217;
    if (!sub_10017D1A4(v217, v219))
    {
      goto LABEL_429;
    }

    v255 = *v254;
    v256 = *v254 >> 31;
    if (v256 == *v254)
    {
      *&v468[8] = *(v219 + 88);
      *v468 = 0;
      v257 = *(v219 + 112);
      v258 = v257 >> 31;
      if (v257 >> 31 != v257)
      {
        goto LABEL_433;
      }

LABEL_435:
      *&v471 = *(v219 + 120);
      v258 = v257;
    }

    else
    {
      *&v468[8] = *(v219 + 88);
      v469 = *(v219 + 104);
      *v468 = v256 ^ v255;
      v257 = *(v219 + 112);
      v258 = v257 >> 31;
      if (v257 >> 31 == v257)
      {
        goto LABEL_435;
      }

LABEL_433:
      v471 = *(v219 + 120);
      v472 = *(v219 + 136);
    }

    v470 = v258 ^ v257;
    v473 = *(v219 + 144);
    v259 = v218;
    while (2)
    {
      v261 = v462 + v259;
      v262 = *(v462 + v259);
      if (v255 != v262)
      {
        if (v262 >> 31 == v262)
        {
          *(v261 + 88) = *(v261 + 8);
        }

        else
        {
          *(v261 + 88) = *(v261 + 8);
          *(v261 + 104) = *(v261 + 24);
        }

        *(v261 + 80) = (v262 >> 31) ^ v262;
        v263 = v462 + v259;
        v264 = *(v462 + v259 + 112);
        v265 = *(v462 + v259 + 32);
        if (v264 == v265)
        {
          goto LABEL_453;
        }

        goto LABEL_449;
      }

      if (v255 != v255 >> 31)
      {
        *(v261 + 88) = *(v261 + 8);
        *(v261 + 104) = *(v261 + 24);
        v263 = v462 + v259;
        v264 = *(v462 + v259 + 112);
        v265 = *(v462 + v259 + 32);
        if (v264 != v265)
        {
          goto LABEL_449;
        }

LABEL_453:
        if (v264 == v264 >> 31)
        {
          *(v263 + 120) = *(v263 + 40);
          v266 = v462 + v259;
          *(v266 + 144) = *(v462 + v259 + 64);
          *(v266 + 152) = *(v462 + v259 + 72);
          if (!v259)
          {
            break;
          }
        }

        else
        {
          *(v263 + 120) = *(v263 + 40);
          *(v263 + 136) = *(v263 + 56);
          v266 = v462 + v259;
          *(v266 + 144) = *(v462 + v259 + 64);
          *(v266 + 152) = *(v462 + v259 + 72);
          if (!v259)
          {
            break;
          }
        }

        goto LABEL_460;
      }

      *(v261 + 88) = *(v261 + 8);
      v263 = v462 + v259;
      v264 = *(v462 + v259 + 112);
      v265 = *(v462 + v259 + 32);
      if (v264 == v265)
      {
        goto LABEL_453;
      }

LABEL_449:
      if (v265 >> 31 == v265)
      {
        *(v263 + 120) = *(v263 + 40);
      }

      else
      {
        *(v263 + 120) = *(v263 + 40);
        *(v263 + 136) = *(v263 + 56);
      }

      *(v263 + 112) = (v265 >> 31) ^ v265;
      v266 = v462 + v259;
      *(v266 + 144) = *(v462 + v259 + 64);
      *(v266 + 152) = *(v462 + v259 + 72);
      if (v259)
      {
LABEL_460:
        v267 = *(v266 - 80);
        v268 = v267 >> 31;
        v269 = (v266 - 72);
        if (v267 >> 31 == v267)
        {
          *&v478[8] = *v269;
          v270 = 0;
          v271 = *v468;
          v272 = *v468 >> 31;
          v273 = 0;
          if (*v468 >> 31 != *v468)
          {
            goto LABEL_462;
          }
        }

        else
        {
          v276 = *v269;
          v479 = *(v266 - 56);
          *&v478[8] = v276;
          v270 = v268 ^ v267;
          v271 = *v468;
          v272 = *v468 >> 31;
          v273 = (v268 ^ v267) >> 31;
          if (*v468 >> 31 != *v468)
          {
LABEL_462:
            if (v273 != v270)
            {
              v274 = bswap64(*&v468[8]);
              v275 = bswap64(*&v478[8]);
              if (v274 != v275 || (v274 = bswap64(*&v468[16]), v275 = bswap64(*&v478[16]), v274 != v275) || (v274 = bswap32(v469), v275 = bswap32(v479), v274 != v275))
              {
                v282 = v274 < v275 ? -1 : 1;
                if (v282 < 0)
                {
                  goto LABEL_498;
                }
              }
            }

            v476 = *&v468[8];
            v477 = v469;
            v277 = v272 ^ v271;
            v278 = (v272 ^ v271) >> 31;
            if (v268 == v267)
            {
LABEL_481:
              if (v278 != v277 || *v269 < v476)
              {
                goto LABEL_499;
              }

LABEL_488:
              v283 = *(v462 + v259 - 48);
              v284 = (v462 + v259 - 40);
              if (v283 >> 31 == v283)
              {
                *&v474 = *v284;
                v285 = 0;
                v286 = 0;
                if (v470 != v470 >> 31)
                {
                  goto LABEL_490;
                }
              }

              else
              {
                v289 = *v284;
                v475 = *(v462 + v259 - 24);
                v474 = v289;
                v285 = (v283 >> 31) ^ v283;
                v286 = v285 >> 31;
                if (v470 != v470 >> 31)
                {
LABEL_490:
                  if (v286 == v285)
                  {
                    goto LABEL_499;
                  }

                  v287 = bswap64(v471);
                  v288 = bswap64(v474);
                  if (v287 == v288)
                  {
                    v287 = bswap64(*(&v471 + 1));
                    v288 = bswap64(*(&v474 + 1));
                    if (v287 == v288)
                    {
                      v287 = bswap32(v472);
                      v288 = bswap32(v475);
                      if (v287 == v288)
                      {
                        goto LABEL_499;
                      }
                    }
                  }

                  v260 = v287 < v288 ? -1 : 1;
                  if ((v260 & 0x80000000) == 0)
                  {
                    goto LABEL_499;
                  }

                  goto LABEL_498;
                }
              }

              if (v286 == v285 && v471 >= v474)
              {
                goto LABEL_499;
              }

LABEL_498:
              v255 = *v261;
              v259 -= 80;
              continue;
            }

LABEL_471:
            if (v278 != v277)
            {
              v279 = bswap64(*v269);
              v280 = bswap64(v476);
              if (v279 == v280 && (v279 = bswap64(*(v269 + 1)), v280 = bswap64(*(&v476 + 1)), v279 == v280) && (v279 = bswap32(*(v269 + 4)), v280 = bswap32(v477), v279 == v280))
              {
                v281 = 0;
              }

              else
              {
                v281 = v279 < v280 ? -1 : 1;
              }

              if (v281 < 0)
              {
LABEL_499:
                v290 = v462 + v259;
                if (*(v462 + v259) == v271)
                {
                  goto LABEL_500;
                }

LABEL_504:
                if (v272 == v271)
                {
                  *(v290 + 8) = *&v468[8];
                }

                else
                {
                  v294 = *&v468[8];
                  *(v290 + 24) = v469;
                  *(v290 + 8) = v294;
                }

                *v290 = v272 ^ v271;
                v291 = *(v290 + 32);
                v292 = v470;
                if (v291 == v470)
                {
LABEL_511:
                  if (v291 == v291 >> 31)
                  {
                    *(v290 + 40) = v471;
                  }

                  else
                  {
                    v295 = v471;
                    *(v290 + 56) = v472;
                    *(v290 + 40) = v295;
                  }

                  goto LABEL_428;
                }

                goto LABEL_507;
              }
            }

            goto LABEL_488;
          }
        }

        if (v273 != v270 || *&v468[8] < *&v478[8])
        {
          goto LABEL_498;
        }

        *&v476 = *&v468[8];
        v277 = 0;
        v278 = 0;
        if (v268 == v267)
        {
          goto LABEL_481;
        }

        goto LABEL_471;
      }

      break;
    }

    v271 = *v468;
    v272 = *v468 >> 31;
    v290 = v462;
    if (*v462 != *v468)
    {
      goto LABEL_504;
    }

LABEL_500:
    if (v272 == v271)
    {
      *(v290 + 8) = *&v468[8];
      v291 = *(v290 + 32);
      v292 = v470;
      if (v291 == v470)
      {
        goto LABEL_511;
      }
    }

    else
    {
      v293 = *&v468[8];
      *(v290 + 24) = v469;
      *(v290 + 8) = v293;
      v291 = *(v290 + 32);
      v292 = v470;
      if (v291 == v470)
      {
        goto LABEL_511;
      }
    }

LABEL_507:
    if (v292 >> 31 == v292)
    {
      *(v290 + 40) = v471;
    }

    else
    {
      v251 = v471;
      *(v290 + 56) = v472;
      *(v290 + 40) = v251;
    }

    *(v290 + 32) = (v292 >> 31) ^ v292;
LABEL_428:
    v252 = v462 + v259;
    v253 = v473;
    *(v252 + 72) = DWORD2(v473);
    *(v252 + 64) = v253;
LABEL_429:
    v217 = (v254 + 20);
    v218 += 80;
    v219 = v254;
    if (v254 + 20 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_10017C858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10017D1A4(a2, a1);
  result = sub_10017D1A4(a3, a2);
  if (v6)
  {
    if (result)
    {
      result = sub_10017D4C4(a1, a3);
      v14 = *(a1 + 64);
      v8 = *(a3 + 72);
      *(a1 + 64) = *(a3 + 64);
      *(a1 + 72) = v8;
LABEL_10:
      *(a3 + 64) = v14;
      *(a3 + 72) = DWORD2(v14);
      return result;
    }

    sub_10017D4C4(a1, a2);
    v11 = (a2 + 64);
    v17 = *(a1 + 64);
    v12 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v12;
    *(a2 + 64) = v17;
    *(a2 + 72) = DWORD2(v17);
    result = sub_10017D1A4(a3, a2);
    if (result)
    {
      result = sub_10017D4C4(a2, a3);
      v14 = *v11;
      v13 = *(a3 + 72);
      *v11 = *(a3 + 64);
      *(a2 + 72) = v13;
      goto LABEL_10;
    }
  }

  else if (result)
  {
    sub_10017D4C4(a2, a3);
    v15 = *(a2 + 64);
    v9 = *(a3 + 72);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 72) = v9;
    *(a3 + 64) = v15;
    *(a3 + 72) = DWORD2(v15);
    result = sub_10017D1A4(a2, a1);
    if (result)
    {
      result = sub_10017D4C4(a1, a2);
      v16 = *(a1 + 64);
      v10 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v10;
      *(a2 + 64) = v16;
      *(a2 + 72) = DWORD2(v16);
    }
  }

  return result;
}

__n128 sub_10017C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10017C858(a1, a2, a3);
  if (sub_10017D1A4(a4, a3))
  {
    sub_10017D4C4(a3, a4);
    v18 = *(a3 + 64);
    v10 = *(a4 + 72);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 72) = v10;
    *(a4 + 64) = v18;
    *(a4 + 72) = DWORD2(v18);
    if (sub_10017D1A4(a3, a2))
    {
      sub_10017D4C4(a2, a3);
      v19 = *(a2 + 64);
      v11 = *(a3 + 72);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 72) = v11;
      *(a3 + 64) = v19;
      *(a3 + 72) = DWORD2(v19);
      if (sub_10017D1A4(a2, a1))
      {
        sub_10017D4C4(a1, a2);
        v20 = *(a1 + 64);
        v12 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v12;
        *(a2 + 64) = v20;
        *(a2 + 72) = DWORD2(v20);
      }
    }
  }

  if (sub_10017D1A4(a5, a4))
  {
    sub_10017D4C4(a4, a5);
    v21 = *(a4 + 64);
    v14 = *(a5 + 72);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 72) = v14;
    *(a5 + 64) = v21;
    *(a5 + 72) = DWORD2(v21);
    if (sub_10017D1A4(a4, a3))
    {
      sub_10017D4C4(a3, a4);
      v22 = *(a3 + 64);
      v15 = *(a4 + 72);
      *(a3 + 64) = *(a4 + 64);
      *(a3 + 72) = v15;
      *(a4 + 64) = v22;
      *(a4 + 72) = DWORD2(v22);
      if (sub_10017D1A4(a3, a2))
      {
        sub_10017D4C4(a2, a3);
        v23 = *(a2 + 64);
        v16 = *(a3 + 72);
        *(a2 + 64) = *(a3 + 64);
        *(a2 + 72) = v16;
        *(a3 + 64) = v23;
        *(a3 + 72) = DWORD2(v23);
        if (sub_10017D1A4(a2, a1))
        {
          sub_10017D4C4(a1, a2);
          result = *(a1 + 64);
          v17 = *(a2 + 72);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = v17;
          *(a2 + 64) = result.n128_u64[0];
          *(a2 + 72) = result.n128_u32[2];
        }
      }
    }
  }

  return result;
}

BOOL sub_10017CC10(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10017C858(a1, a1 + 80, a2 - 80);
        break;
      case 4:
        sub_10017C858(a1, a1 + 80, a1 + 160);
        if (sub_10017D1A4(a2 - 80, a1 + 160))
        {
          sub_10017D4C4(a1 + 160, a2 - 80);
          *v35 = *(a1 + 224);
          v33 = *(a2 - 8);
          *(a1 + 224) = *(a2 - 16);
          *(a1 + 232) = v33;
          *(a2 - 16) = *v35;
          *(a2 - 8) = *&v35[8];
          if (sub_10017D1A4(a1 + 160, a1 + 80))
          {
            sub_10017D4C4(a1 + 80, a1 + 160);
            *v35 = *(a1 + 144);
            *(a1 + 144) = *(a1 + 224);
            *(a1 + 152) = *(a1 + 232);
            *(a1 + 224) = *v35;
            *(a1 + 232) = *&v35[8];
            if (sub_10017D1A4(a1 + 80, a1))
            {
              sub_10017D4C4(a1, a1 + 80);
              *v35 = *(a1 + 64);
              *(a1 + 64) = *(a1 + 144);
              *(a1 + 72) = *(a1 + 152);
              *(a1 + 144) = *v35;
              *(a1 + 152) = *&v35[8];
            }
          }
        }

        return 1;
      case 5:
        sub_10017C9E8(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 80);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (sub_10017D1A4(a2 - 80, a1))
    {
      sub_10017D4C4(a1, a2 - 80);
      *v35 = *(a1 + 64);
      v5 = *(a2 - 8);
      *(a1 + 64) = *(a2 - 16);
      *(a1 + 72) = v5;
      *(a2 - 16) = *v35;
      *(a2 - 8) = *&v35[8];
    }

    return 1;
  }

LABEL_11:
  sub_10017C858(a1, a1 + 80, a1 + 160);
  v6 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + 160;
  while (2)
  {
    if (!sub_10017D1A4(v6, v9))
    {
      goto LABEL_16;
    }

    v11 = (v6 + 8);
    v10 = *v6;
    v12 = *v6 >> 31;
    if (v12 != *v6)
    {
      *&v35[8] = *v11;
      v36 = *(v6 + 24);
      *v35 = v12 ^ v10;
      v13 = *(v6 + 32);
      v14 = v13 >> 31;
      if (v13 >> 31 == v13)
      {
        goto LABEL_20;
      }

LABEL_22:
      v38 = *(v6 + 40);
      v39 = *(v6 + 56);
      goto LABEL_23;
    }

    *&v35[8] = *v11;
    *v35 = 0;
    v13 = *(v6 + 32);
    v14 = v13 >> 31;
    if (v13 >> 31 != v13)
    {
      goto LABEL_22;
    }

LABEL_20:
    *&v38 = *(v6 + 40);
    v14 = v13;
LABEL_23:
    v37 = v13 ^ v14;
    v40 = *(v6 + 64);
    v15 = v7;
    while (1)
    {
      v16 = a1 + v15;
      v17 = *(a1 + v15 + 240);
      v18 = *(a1 + v15 + 160);
      if (v17 == v18)
      {
        v19 = (v16 + 248);
        if (v17 == v17 >> 31)
        {
          *v19 = *(v16 + 168);
          v20 = a1 + v15;
          v21 = *(a1 + v15 + 272);
          v22 = *(a1 + v15 + 192);
          if (v21 == v22)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *v19 = *(v16 + 168);
          *(v16 + 264) = *(v16 + 184);
          v20 = a1 + v15;
          v21 = *(a1 + v15 + 272);
          v22 = *(a1 + v15 + 192);
          if (v21 == v22)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v23 = (v16 + 248);
        if (v18 >> 31 == v18)
        {
          *v23 = *(v16 + 168);
        }

        else
        {
          *v23 = *(v16 + 168);
          *(v16 + 264) = *(v16 + 184);
        }

        *(v16 + 240) = (v18 >> 31) ^ v18;
        v20 = a1 + v15;
        v21 = *(a1 + v15 + 272);
        v22 = *(a1 + v15 + 192);
        if (v21 == v22)
        {
LABEL_35:
          v25 = (v20 + 280);
          if (v21 == v21 >> 31)
          {
            *v25 = *(v20 + 200);
          }

          else
          {
            *v25 = *(v20 + 200);
            *(v20 + 296) = *(v20 + 216);
          }

          goto LABEL_40;
        }
      }

      v24 = (v20 + 280);
      if (v22 >> 31 == v22)
      {
        *v24 = *(v20 + 200);
      }

      else
      {
        *v24 = *(v20 + 200);
        *(v20 + 296) = *(v20 + 216);
      }

      *(v20 + 272) = (v22 >> 31) ^ v22;
LABEL_40:
      v26 = a1 + v15;
      *(v26 + 304) = *(a1 + v15 + 224);
      *(v26 + 312) = *(a1 + v15 + 232);
      if (v15 == -160)
      {
        break;
      }

      v15 -= 80;
      if (!sub_10017D1A4(v35, v26 + 80))
      {
        v27 = a1 + v15 + 240;
        v28 = *v27;
        v29 = *v35;
        if (*v27 != *v35)
        {
          goto LABEL_43;
        }

LABEL_47:
        if (v28 == v28 >> 31)
        {
          *(v27 + 8) = *&v35[8];
          v31 = *(v27 + 32);
          v32 = v37;
          if (v31 == v37)
          {
LABEL_54:
            if (v31 == v31 >> 31)
            {
              *(v27 + 40) = v38;
            }

            else
            {
              *(v27 + 40) = v38;
              *(v27 + 56) = v39;
            }

            goto LABEL_15;
          }
        }

        else
        {
          *(v27 + 8) = *&v35[8];
          *(v27 + 24) = v36;
          v31 = *(v27 + 32);
          v32 = v37;
          if (v31 == v37)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }
    }

    v27 = a1;
    v28 = *a1;
    v29 = *v35;
    if (*a1 == *v35)
    {
      goto LABEL_47;
    }

LABEL_43:
    v30 = (v29 >> 31) ^ v29;
    if (v29 >> 31 == v29)
    {
      *(v27 + 8) = *&v35[8];
      *v27 = v30;
      v31 = *(v27 + 32);
      v32 = v37;
      if (v31 == v37)
      {
        goto LABEL_54;
      }
    }

    else
    {
      *(v27 + 8) = *&v35[8];
      *(v27 + 24) = v36;
      *v27 = v30;
      v31 = *(v27 + 32);
      v32 = v37;
      if (v31 == v37)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v32 >> 31 == v32)
    {
      *(v27 + 40) = v38;
    }

    else
    {
      *(v27 + 40) = v38;
      *(v27 + 56) = v39;
    }

    *(v27 + 32) = (v32 >> 31) ^ v32;
LABEL_15:
    *(v26 + 224) = v40;
    *(v26 + 232) = DWORD2(v40);
    if (++v8 != 8)
    {
LABEL_16:
      v9 = v6;
      v7 += 80;
      v6 += 80;
      if (v6 == a2)
      {
        return 1;
      }

      continue;
    }

    return v6 + 80 == a2;
  }
}

BOOL sub_10017D1A4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = *a2;
  v4 = *a2 >> 31;
  if (v3 >> 31 == v3)
  {
    *&v29 = *v2;
    v5 = *a2;
  }

  else
  {
    v29 = *v2;
    v30 = *(a2 + 24);
    v5 = v3 >> 31;
  }

  v6 = v5 ^ v3;
  v7 = (a1 + 8);
  v8 = *a1 >> 31;
  v9 = (v5 ^ v3) >> 31;
  if (v8 != *a1)
  {
    if (v9 == v6 || (v15 = bswap64(*v7), v16 = bswap64(v29), v15 == v16) && (v15 = bswap64(*(a1 + 16)), v16 = bswap64(*(&v29 + 1)), v15 == v16) && (v15 = bswap32(*(a1 + 24)), v16 = bswap32(v30), v15 == v16) || (v15 < v16 ? (v17 = -1) : (v17 = 1), (v17 & 0x80000000) == 0))
    {
      v27 = *v7;
      v28 = *(a1 + 24);
      v10 = v8 ^ *a1;
      v11 = v10 >> 31;
      if (v4 != v3)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    return 1;
  }

  if (v9 != v6 || *v7 < v29)
  {
    return 1;
  }

  *&v27 = *v7;
  v10 = 0;
  v11 = 0;
  if (v4 != v3)
  {
LABEL_8:
    if (v11 != v10)
    {
      v12 = bswap64(*v2);
      v13 = bswap64(v27);
      if (v12 == v13 && (v12 = bswap64(*(a2 + 16)), v13 = bswap64(*(&v27 + 1)), v12 == v13) && (v12 = bswap32(*(a2 + 24)), v13 = bswap32(v28), v12 == v13))
      {
        v14 = 0;
      }

      else
      {
        v14 = v12 < v13 ? -1 : 1;
      }

      if (v14 < 0)
      {
        return 0;
      }
    }

    goto LABEL_29;
  }

LABEL_22:
  if (v11 != v10 || *v2 < v27)
  {
    return 0;
  }

LABEL_29:
  v18 = *(a2 + 32);
  if (v18 >> 31 != v18)
  {
    v25 = *(a2 + 40);
    v26 = *(a2 + 56);
    v19 = (v18 >> 31) ^ v18;
    v20 = v19 >> 31;
    if (*(a1 + 32) != *(a1 + 32) >> 31)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  *&v25 = *(a2 + 40);
  v19 = 0;
  v20 = 0;
  if (*(a1 + 32) == *(a1 + 32) >> 31)
  {
LABEL_34:
    if (v20 == v19)
    {
      return *(a1 + 40) < v25;
    }

    return 1;
  }

LABEL_31:
  if (v20 == v19)
  {
    return 0;
  }

  v22 = bswap64(*(a1 + 40));
  v23 = bswap64(v25);
  if (v22 == v23 && (v22 = bswap64(*(a1 + 48)), v23 = bswap64(*(&v25 + 1)), v22 == v23) && (v22 = bswap32(*(a1 + 56)), v23 = bswap32(v26), v22 == v23))
  {
    v24 = 0;
  }

  else if (v22 < v23)
  {
    v24 = -1;
  }

  else
  {
    v24 = 1;
  }

  return v24 >> 31;
}

uint64_t sub_10017D4C4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *result >> 31;
  v4 = *result;
  if (v3 != *result)
  {
    v23 = *(result + 16);
    v24 = *(result + 24);
    v4 = v2 >> 31;
  }

  v6 = (result + 40);
  v5 = *(result + 40);
  v7 = *(result + 32);
  v8 = v7;
  if (v7 >> 31 != v7)
  {
    v21 = *(result + 48);
    v22 = *(result + 56);
    v8 = v7 >> 31;
  }

  v10 = (result + 8);
  v9 = *(result + 8);
  v11 = *a2;
  if (v2 == *a2)
  {
    if (v3 == v2)
    {
      *v10 = *(a2 + 8);
      v12 = v4 ^ v2;
      v13 = *(a2 + 32);
      if (v7 == v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *v10 = v14;
      v12 = v4 ^ v2;
      v13 = *(a2 + 32);
      if (v7 == v13)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (v11 >> 31 == v11)
    {
      *(result + 8) = *(a2 + 8);
    }

    else
    {
      v15 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *v10 = v15;
    }

    *result = (v11 >> 31) ^ v11;
    v12 = v4 ^ v2;
    v13 = *(a2 + 32);
    if (v7 == v13)
    {
LABEL_16:
      if (v7 >> 31 == v7)
      {
        *v6 = *(a2 + 40);
        v16 = v8 ^ v7;
        v17 = v12 >> 31;
        if (*a2 != v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = *(a2 + 40);
        *(result + 56) = *(a2 + 56);
        *v6 = v20;
        v16 = v8 ^ v7;
        v17 = v12 >> 31;
        if (*a2 != v12)
        {
          goto LABEL_27;
        }
      }

LABEL_21:
      *(a2 + 8) = v9;
      if (v17 != v12)
      {
        *(a2 + 16) = v23;
        *(a2 + 24) = v24;
      }

      v19 = v16 >> 31;
      if (*(a2 + 32) != v16)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  if (v13 >> 31 == v13)
  {
    *(result + 40) = *(a2 + 40);
  }

  else
  {
    v18 = *(a2 + 40);
    *(result + 56) = *(a2 + 56);
    *v6 = v18;
  }

  *(result + 32) = (v13 >> 31) ^ v13;
  v16 = v8 ^ v7;
  v17 = v12 >> 31;
  if (*a2 == v12)
  {
    goto LABEL_21;
  }

LABEL_27:
  *(a2 + 8) = v9;
  if (v17 != v12)
  {
    *(a2 + 16) = v23;
    *(a2 + 24) = v24;
  }

  *a2 = v17 ^ v12;
  v19 = v16 >> 31;
  if (*(a2 + 32) != v16)
  {
LABEL_30:
    *(a2 + 40) = v5;
    if (v19 != v16)
    {
      *(a2 + 48) = v21;
      *(a2 + 56) = v22;
    }

    *(a2 + 32) = v19 ^ v16;
    return result;
  }

LABEL_24:
  *(a2 + 40) = v5;
  if (v19 != v16)
  {
    *(a2 + 48) = v21;
    *(a2 + 56) = v22;
  }

  return result;
}