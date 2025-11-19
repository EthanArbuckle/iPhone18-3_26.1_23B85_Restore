__n128 *sub_100299DBC(uint64_t a1, __n128 *a2, __n128 *a3, double **a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 4);
    if (a2 - a1 >= 113)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 112 * v10);
      do
      {
        sub_10029A164(a1, a4, v9, v12);
        v12 -= 7;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_1002988EC(a4, v13, a1))
        {
          v14 = v13[5];
          v77 = v13[4];
          v78 = v14;
          v79 = v13[6];
          v15 = v13[1];
          v73 = *v13;
          v74 = v15;
          v16 = v13[3];
          v75 = v13[2];
          v76 = v16;
          v18 = *(a1 + 16);
          v17 = *(a1 + 32);
          *v13 = *a1;
          v13[1] = v18;
          v13[2] = v17;
          v19 = *(a1 + 96);
          v21 = *(a1 + 48);
          v20 = *(a1 + 64);
          v13[5] = *(a1 + 80);
          v13[6] = v19;
          v13[3] = v21;
          v13[4] = v20;
          v22 = v74;
          *a1 = v73;
          *(a1 + 16) = v22;
          v23 = v79;
          *(a1 + 80) = v78;
          *(a1 + 96) = v23;
          v24 = v77;
          *(a1 + 48) = v76;
          *(a1 + 64) = v24;
          *(a1 + 32) = v75;
          sub_10029A164(a1, a4, v9, a1);
        }

        v13 += 7;
      }

      while (v13 != a3);
    }

    if (v8 < 113)
    {
      return v13;
    }

    else
    {
      v65 = a2;
      v25 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
      v64 = v13;
      do
      {
        v27 = 0;
        v70 = *(a1 + 64);
        v71 = *(a1 + 80);
        v72 = *(a1 + 96);
        v66 = *a1;
        v67 = *(a1 + 16);
        v28 = a1;
        v68 = *(a1 + 32);
        v69 = *(a1 + 48);
        do
        {
          v34 = &v28[7 * v27];
          v35 = v34 + 7;
          v36 = (2 * v27) | 1;
          v37 = 2 * v27 + 2;
          if (v37 < v25)
          {
            v38 = v34 + 14;
            if (sub_1002988EC(a4, &v34[7], &v34[14]))
            {
              v35 = v38;
              v36 = v37;
            }
          }

          v29 = *v35;
          v30 = v35[2];
          v28[1] = v35[1];
          v28[2] = v30;
          *v28 = v29;
          v31 = v35[3];
          v32 = v35[4];
          v33 = v35[6];
          v28[5] = v35[5];
          v28[6] = v33;
          v28[3] = v31;
          v28[4] = v32;
          v28 = v35;
          v27 = v36;
        }

        while (v36 <= ((v25 - 2) >> 1));
        v39 = v65 - 7;
        v40 = v35 == &v65[-7];
        v65 -= 7;
        if (v40)
        {
          v35[1] = v67;
          v35[2] = v68;
          *v35 = v66;
          v35[5] = v71;
          v35[6] = v72;
          v35[3] = v69;
          v35[4] = v70;
        }

        else
        {
          v41 = *v39;
          v42 = v39[2];
          v35[1] = v39[1];
          v35[2] = v42;
          *v35 = v41;
          v43 = v39[3];
          v44 = v39[4];
          v45 = v39[6];
          v35[5] = v39[5];
          v35[6] = v45;
          v35[3] = v43;
          v35[4] = v44;
          v39[4] = v70;
          v39[5] = v71;
          v39[6] = v72;
          *v39 = v66;
          v39[1] = v67;
          v39[2] = v68;
          v39[3] = v69;
          v46 = &v35[7] - a1;
          if (v46 >= 113)
          {
            v47 = (0x6DB6DB6DB6DB6DB7 * (v46 >> 4) - 2) >> 1;
            v48 = (a1 + 112 * v47);
            if (sub_1002988EC(a4, v48, v35))
            {
              v49 = *v35;
              v50 = v35[2];
              v74 = v35[1];
              v75 = v50;
              v73 = v49;
              v51 = v35[3];
              v52 = v35[4];
              v53 = v35[6];
              v78 = v35[5];
              v79 = v53;
              v76 = v51;
              v77 = v52;
              do
              {
                v54 = v48;
                v55 = *v48;
                v56 = v48[2];
                v35[1] = v48[1];
                v35[2] = v56;
                *v35 = v55;
                v57 = v48[3];
                v58 = v48[4];
                v59 = v48[6];
                v35[5] = v48[5];
                v35[6] = v59;
                v35[3] = v57;
                v35[4] = v58;
                if (!v47)
                {
                  break;
                }

                v47 = (v47 - 1) >> 1;
                v48 = (a1 + 112 * v47);
                v35 = v54;
              }

              while ((sub_1002988EC(a4, v48, &v73) & 1) != 0);
              v60 = v78;
              v54[4] = v77;
              v54[5] = v60;
              v54[6] = v79;
              v61 = v74;
              *v54 = v73;
              v54[1] = v61;
              v62 = v76;
              v54[2] = v75;
              v54[3] = v62;
            }
          }
        }
      }

      while (v25-- > 2);
      return v64;
    }
  }

  return a3;
}

__n128 sub_10029A164(uint64_t a1, double **a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v38 = v4;
    v39 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - a1) >> 4))
    {
      v12 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 112 * v12);
      v14 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - a1) >> 4) + 2;
      if (v14 < a3 && sub_1002988EC(a2, a1 + 112 * v12, &v13[7]))
      {
        v13 += 7;
        v12 = v14;
      }

      if ((sub_1002988EC(a2, v13, v7) & 1) == 0)
      {
        v16 = v7[5];
        v35 = v7[4];
        v36 = v16;
        v37 = v7[6];
        v17 = v7[1];
        v31 = *v7;
        v32 = v17;
        v18 = v7[3];
        v33 = v7[2];
        v34 = v18;
        do
        {
          v19 = v13;
          v20 = *v13;
          v21 = v13[2];
          v7[1] = v13[1];
          v7[2] = v21;
          *v7 = v20;
          v22 = v13[3];
          v23 = v13[4];
          v24 = v13[6];
          v7[5] = v13[5];
          v7[6] = v24;
          v7[3] = v22;
          v7[4] = v23;
          if (v9 < v12)
          {
            break;
          }

          v25 = (2 * v12) | 1;
          v13 = (a1 + 112 * v25);
          v26 = 2 * v12 + 2;
          if (v26 < a3)
          {
            if (sub_1002988EC(a2, a1 + 112 * v25, &v13[7]))
            {
              v13 += 7;
              v25 = v26;
            }
          }

          v7 = v19;
          v12 = v25;
        }

        while (!sub_1002988EC(a2, v13, &v31));
        v27 = v31;
        v28 = v33;
        v19[1] = v32;
        v19[2] = v28;
        *v19 = v27;
        result = v34;
        v29 = v35;
        v30 = v37;
        v19[5] = v36;
        v19[6] = v30;
        v19[3] = result;
        v19[4] = v29;
      }
    }
  }

  return result;
}

uint64_t sub_10029A310(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 1;
  if (v3 != *a1 + 1)
  {
    while (1)
    {
      v7 = v3[4];
      v8 = *(*(a2 + 8) + (((*(a2 + 32) + v7) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(a2 + 32) + v7) & 0xF);
      if ((*(v8 + 32) & 1) == 0)
      {
        break;
      }

LABEL_44:
      v21 = v3[1];
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
          v22 = v3[2];
          v14 = *v22 == v3;
          v3 = v22;
        }

        while (!v14);
      }

      v2 = *a1;
      v3 = v22;
      if (v22 == *a1 + 1)
      {
        return 1;
      }
    }

    v9 = *(v8 + 40);
    if (v9 == 1 && *(v8 + 208) == 1)
    {
      return 0;
    }

    v10 = *(v8 + 136);
    if (v10 == -1)
    {
      v10 = *(v8 + 128);
      if (v9 == 4)
      {
LABEL_13:
        if (v10 == v7)
        {
          return 0;
        }

        *&v26 = v3[4];
        DWORD2(v26) = 0;
        v27 = v10;
        v28 = -1;
        v11 = (a1 + 1);
        goto LABEL_15;
      }
    }

    else if (v9 == 4)
    {
      goto LABEL_13;
    }

    if (v9 != 3)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v18 = *(v8 + 304);
    if (v18 == -1)
    {
      if (v10 != *(v8 + 296))
      {
LABEL_37:
        for (i = v2[1]; i; i = *i)
        {
          v20 = i[4];
          if (v10 >= v20)
          {
            if (v20 >= v10)
            {
              goto LABEL_16;
            }

            ++i;
          }
        }

        *&v26 = v3[4];
        DWORD2(v26) = 0;
        v27 = v10;
        v28 = -1;
        v11 = (a1 + 4);
LABEL_15:
        sub_10029A7E8(v11, &v26);
      }
    }

    else if (v10 != v18)
    {
      goto LABEL_37;
    }

LABEL_16:
    v12 = *(v8 + 304);
    if (v12 == -1)
    {
      v12 = *(v8 + 296);
      v13 = *(v8 + 208);
      if (v13 != 1 && v13 != 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *(v8 + 208);
      v14 = v13 == 1 || v13 == 4;
      if (!v14)
      {
LABEL_29:
        if (v13 != 3)
        {
          goto LABEL_44;
        }

        v17 = *(v8 + 136);
        if (v17 == -1)
        {
          if (v12 == *(v8 + 128))
          {
            goto LABEL_44;
          }
        }

        else if (v12 == v17)
        {
          goto LABEL_44;
        }

        for (j = (*a1)[1]; j; j = *j)
        {
          v24 = j[4];
          if (v12 >= v24)
          {
            if (v24 >= v12)
            {
              goto LABEL_44;
            }

            ++j;
          }
        }

        *&v26 = v7;
        DWORD2(v26) = 1;
        v27 = v12;
        v28 = -1;
        v15 = (a1 + 4);
        goto LABEL_24;
      }
    }

    if (v12 == v7)
    {
      return 0;
    }

    *&v26 = v7;
    DWORD2(v26) = 1;
    v27 = v12;
    v28 = -1;
    v15 = (a1 + 1);
LABEL_24:
    sub_10029A7E8(v15, &v26);
    goto LABEL_44;
  }

  return v4;
}

uint64_t sub_10029A58C(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2 == v3)
  {
    return 1;
  }

  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a2) >> 4);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    if (v7 == v6)
    {
      v14 = v5 - v4 - 32;
      v15 = a1[1];
      if (v14 < 0x20)
      {
        goto LABEL_54;
      }

      v16 = (v14 >> 5) + 1;
      v15 = &v4[32 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = v4 + 56;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 4) = -1;
        *v17 = -1;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      if (v16 != (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_54:
        do
        {
          *(v15 + 3) = -1;
          v15 += 32;
        }

        while (v15 != v5);
      }
    }

    else
    {
      v9 = (v6 + 44);
      v10 = a1[1];
      do
      {
LABEL_8:
        v11 = v9;
        v12 = v8;
        while (*(v11 - 3) != *v10 || *(v11 - 1) != *(v10 + 8) || *v11 != 1)
        {
          v11 += 28;
          if (!--v12)
          {
            *(v10 + 24) = -1;
            v10 += 32;
            if (v10 == v5)
            {
              goto LABEL_23;
            }

            goto LABEL_8;
          }
        }

        *(v10 + 24) = *(v11 - 7);
        v10 += 32;
      }

      while (v10 != v5);
    }
  }

LABEL_23:
  v19 = *a2;
  v20 = a2[1];
  v21 = 0x6DB6DB6DB6DB6DB7 * ((v20 - *a2) >> 4);
  if (v21 <= 1)
  {
    v21 = 1;
  }

  if (v20 == v19)
  {
    v27 = v3 - v2 - 32;
    v28 = v2;
    if (v27 < 0x20)
    {
      goto LABEL_55;
    }

    v29 = (v27 >> 5) + 1;
    v28 = v2 + 32 * (v29 & 0xFFFFFFFFFFFFFFELL);
    v30 = (v2 + 56);
    v31 = v29 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v30 - 4) = -1;
      *v30 = -1;
      v30 += 8;
      v31 -= 2;
    }

    while (v31);
    if (v29 != (v29 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_55:
      do
      {
        *(v28 + 24) = -1;
        v28 += 32;
      }

      while (v28 != v3);
    }
  }

  else
  {
    v22 = (v19 + 44);
    v23 = v2;
    do
    {
LABEL_28:
      v24 = v22;
      v25 = v21;
      while (*(v24 - 3) != *v23 || *(v24 - 1) != *(v23 + 8) || *v24 != 1)
      {
        v24 += 28;
        if (!--v25)
        {
          *(v23 + 24) = -1;
          v23 += 32;
          if (v23 == v3)
          {
            goto LABEL_45;
          }

          goto LABEL_28;
        }
      }

      *(v23 + 24) = *(v24 - 7);
      v23 += 32;
    }

    while (v23 != v3);
  }

LABEL_45:
  if (v4 == v5)
  {
    return 1;
  }

  v32 = v2;
  while (*(v32 + 16) != *(v4 + 2) || *(v32 + 24) != *(v4 + 3))
  {
    v32 += 32;
    if (v32 == v3)
    {
      v4 += 32;
      goto LABEL_45;
    }
  }

  return 0;
}

void sub_10029A7E8(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_10000FC84();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
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

uint64_t sub_10029A908(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = *(a2 + 136);
  if (v5 == -1)
  {
    v5 = *(a2 + 128);
    if (v5 == -1)
    {
      result = 0;
      goto LABEL_21;
    }
  }

  v6 = *(*(*(a1 + 16) + 8) + (((*(*(a1 + 16) + 32) + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(*(a1 + 16) + 32) + v5) & 0xF);
  if (*(v6 + 24) > 0 || ((v7 = *(v6 + 40), v7 != 1) ? (v8 = v7 == 4) : (v8 = 1), v8))
  {
    result = 1;
    goto LABEL_10;
  }

  v13 = *(v6 + 208);
  result = v13 == 4 || v13 == 1;
  if (v13 == 4 || v13 == 1)
  {
LABEL_10:
    v10 = v5 == a3;
    v11 = *(a2 + 304);
    if (v11 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

LABEL_21:
  v10 = 0;
  v11 = *(a2 + 304);
  if (v11 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = *(a2 + 296);
  if (v11 == -1)
  {
    v12 = 0;
    goto LABEL_38;
  }

LABEL_22:
  v15 = *(*(*(a1 + 16) + 8) + (((*(*(a1 + 16) + 32) + v11) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * ((*(*(a1 + 16) + 32) + v11) & 0xF);
  if (*(v15 + 24) > 0 || ((v16 = *(v15 + 40), v16 != 1) ? (v17 = v16 == 4) : (v17 = 1), v17))
  {
    v12 = 1;
    goto LABEL_29;
  }

  v18 = *(v15 + 208);
  v12 = v18 == 1;
  if (v18 == 4)
  {
    v12 = 1;
  }

  if (v18 == 1 || v18 == 4)
  {
LABEL_29:
    if (v10 == (v11 == a3))
    {
      goto LABEL_39;
    }

LABEL_30:
    LODWORD(result) = !v10;
LABEL_31:
    *a4 = result;
    return 1;
  }

LABEL_38:
  if (v10)
  {
    goto LABEL_30;
  }

LABEL_39:
  v20 = 0.0;
  if (result)
  {
    v20 = *(a2 + 112);
    *a4 = 0;
  }

  if (v12)
  {
    v21 = *(a2 + 280) <= v20 ? result : 0;
    result = 1;
    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_10029AA80(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  v4 = *(a2 + 216);
  v5 = *(a2 + 184);
  v6 = *(a2 + 40);
  if (*(a2 + 48) == v4)
  {
    v7 = a3[1];
    if (v5 == -1)
    {
      if (v6 == 1 && (*(a2 + 200) & 0xFFFFFFFE) != 2)
      {
        *a4 = 0;
        result = 1;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      if ((*(a2 + 368) & 0xFFFFFFFE) != 2)
      {
        if (*(a2 + 224) == v7)
        {
          v11 = 0;
        }

        else
        {
          v11 = result;
        }

        if ((v11 & 1) == 0)
        {
          goto LABEL_46;
        }

        return 1;
      }
    }

    else
    {
      if (v6 == 1 && (*(a2 + 200) & 0xFFFFFFFE) != 2)
      {
        *a4 = 0;
        result = 1;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      if ((*(a2 + 368) & 0xFFFFFFFE) != 2)
      {
        if (result)
        {
          v10 = *(a2 + 224);
          if (v5 == *(a2 + 352))
          {
            if (v10 != v7)
            {
              goto LABEL_46;
            }
          }

          else if (v10 == v7)
          {
            goto LABEL_46;
          }

          return 1;
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    v9 = *a3;
    if (v5 == -1)
    {
      if (v6 == 1 && (*(a2 + 200) & 0xFFFFFFFE) != 2)
      {
        *a4 = 0;
        result = 1;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      if ((*(a2 + 368) & 0xFFFFFFFE) != 2)
      {
        if (v4 == v9)
        {
          v12 = 0;
        }

        else
        {
          v12 = result;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_46;
        }

        return 1;
      }
    }

    else
    {
      if (v6 == 1 && (*(a2 + 200) & 0xFFFFFFFE) != 2)
      {
        *a4 = 0;
        result = 1;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (*(a2 + 208) != 1)
        {
          return result;
        }
      }

      if ((*(a2 + 368) & 0xFFFFFFFE) != 2)
      {
        if (result)
        {
          if (v5 == *(a2 + 352))
          {
            if (v4 != v9)
            {
              goto LABEL_46;
            }
          }

          else if (v4 == v9)
          {
            goto LABEL_46;
          }

          return 1;
        }

LABEL_46:
        result = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

void *sub_10029AC78(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1001C7D6C(a1, &v11);
}

void sub_10029AFE8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10029B040(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0u;
  v23 = 0u;
  *__p = 0u;
  v20 = 0;
  sub_10029B534(a1, a2, a3, __p, &v20, 0, 0);
  v5 = __p[1];
  v6 = v22;
  v7 = v22 - __p[1];
  if (v22 != __p[1])
  {
    v8 = __p[1] + 8 * (v23 / 0x14);
    v9 = (*v8 + 200 * (v23 % 0x14));
    while (v9 != (*(__p[1] + (*(&v23 + 1) + v23) / 0x14uLL) + 200 * ((*(&v23 + 1) + v23) % 0x14uLL)))
    {
      v10 = v9[10];
      if (v10 == 1)
      {
        if (v9[30] != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v10 != 2 || v9[30] != 2)
      {
LABEL_26:
        if (a4)
        {
          v19 = &off_100445660;
          v17.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/has_self_intersections.hpp";
          v17.i64[1] = "BOOL boost::geometry::detail::overlay::has_self_intersections(const Geometry &, const Strategy &, const RobustPolicy &, BOOL) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>, Strategy = boost::geometry::strategies::relate::cartesian<>, RobustPolicy = boost::geometry::detail::robust_policy<boost::geometry::model::d2::point_xy<double>, boost::geometry::model::point<long long, 2, boost::geometry::cs::cartesian>, double>]";
          v18 = 129;
          sub_10029B4C8(&v19, &v17);
        }

        v12 = 1;
        *(&v23 + 1) = 0;
        v13 = v7 >> 3;
        if (v13 >= 3)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      if ((v9[4] - 3) >= 2)
      {
        goto LABEL_26;
      }

      v9 += 50;
      if ((v9 - *v8) == 4000)
      {
        v11 = v8[1];
        ++v8;
        v9 = v11;
      }
    }
  }

  v12 = 0;
  *(&v23 + 1) = 0;
  v13 = v7 >> 3;
  if (v13 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v5);
      v6 = v22;
      v5 = (__p[1] + 8);
      __p[1] = v5;
      v13 = (v22 - v5) >> 3;
    }

    while (v13 > 2);
  }

LABEL_14:
  if (v13 == 1)
  {
    v14 = 10;
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v14 = 20;
LABEL_18:
    *&v23 = v14;
  }

  if (v5 != v6)
  {
    do
    {
      v15 = *v5++;
      operator delete(v15);
    }

    while (v5 != v6);
    if (v22 != __p[1])
    {
      *&v22 = v22 + ((__p[1] - v22 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_10029B254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, uint64_t a14, char a15)
{
  std::exception::~exception(&a13);
  sub_1002A16B8(&a15);
  _Unwind_Resume(a1);
}

void sub_10029B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A16B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029B284(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0u;
  v23 = 0u;
  *__p = 0u;
  v20 = 0;
  sub_1002A1784(a1, a2, a3, __p, &v20, 0, 0);
  v5 = __p[1];
  v6 = v22;
  v7 = v22 - __p[1];
  if (v22 != __p[1])
  {
    v8 = __p[1] + 8 * (v23 / 0x14);
    v9 = (*v8 + 200 * (v23 % 0x14));
    while (v9 != (*(__p[1] + (*(&v23 + 1) + v23) / 0x14uLL) + 200 * ((*(&v23 + 1) + v23) % 0x14uLL)))
    {
      v10 = v9[10];
      if (v10 == 1)
      {
        if (v9[30] != 1)
        {
          goto LABEL_26;
        }
      }

      else if (v10 != 2 || v9[30] != 2)
      {
LABEL_26:
        if (a4)
        {
          v19 = &off_100445660;
          v17.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/has_self_intersections.hpp";
          v17.i64[1] = "BOOL boost::geometry::detail::overlay::has_self_intersections(const Geometry &, const Strategy &, const RobustPolicy &, BOOL) [Geometry = boost::geometry::model::multi_polygon<boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>>, Strategy = boost::geometry::strategies::relate::cartesian<>, RobustPolicy = boost::geometry::detail::robust_policy<boost::geometry::model::d2::point_xy<double>, boost::geometry::model::point<long long, 2, boost::geometry::cs::cartesian>, double>]";
          v18 = 129;
          sub_10029B4C8(&v19, &v17);
        }

        v12 = 1;
        *(&v23 + 1) = 0;
        v13 = v7 >> 3;
        if (v13 >= 3)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      if ((v9[4] - 3) >= 2)
      {
        goto LABEL_26;
      }

      v9 += 50;
      if ((v9 - *v8) == 4000)
      {
        v11 = v8[1];
        ++v8;
        v9 = v11;
      }
    }
  }

  v12 = 0;
  *(&v23 + 1) = 0;
  v13 = v7 >> 3;
  if (v13 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v5);
      v6 = v22;
      v5 = (__p[1] + 8);
      __p[1] = v5;
      v13 = (v22 - v5) >> 3;
    }

    while (v13 > 2);
  }

LABEL_14:
  if (v13 == 1)
  {
    v14 = 10;
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v14 = 20;
LABEL_18:
    *&v23 = v14;
  }

  if (v5 != v6)
  {
    do
    {
      v15 = *v5++;
      operator delete(v15);
    }

    while (v5 != v6);
    if (v22 != __p[1])
    {
      *&v22 = v22 + ((__p[1] - v22 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v12;
}

void sub_10029B498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::exception a13, uint64_t a14, char a15)
{
  std::exception::~exception(&a13);
  sub_1002A16B8(&a15);
  _Unwind_Resume(a1);
}

void sub_10029B4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A16B8(va);
  _Unwind_Resume(a1);
}

void sub_10029B4C8(uint64_t a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002A0F30(exception, a1, a2);
}

uint64_t sub_10029B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6, char a7)
{
  __p = 0;
  v32 = 0;
  v33 = 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15 - *a1 >= 0x11)
  {
    *&v25 = 0;
    *(&v25 + 1) = -1;
    v26 = -1;
    sub_100278258(&__p, v14, v15, a3, a2, &v25, 0xAuLL);
  }

  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      v19 = *v17;
      v20 = v17[1];
      if ((v20 - *v17) >= 0x11)
      {
        v25 = xmmword_1003C6FC0;
        v26 = v18;
        sub_100278258(&__p, v19, v20, a3, a2, &v25, 0xAuLL);
        v16 = *(a1 + 32);
      }

      v17 += 3;
      ++v18;
    }

    while (v17 != v16);
  }

  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v23 = a2;
  v24 = a2;
  sub_10029B6A8(&__p, &v25, &v24, &v23, 0x10uLL);
  v21 = *a5;
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  return v21 ^ 1u;
}

void sub_10029B684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029B6A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * (&v7[-*a1] >> 3) <= a5)
  {
    if (v8 != v7)
    {
      v20 = (v8 + 216);
      do
      {
        v21 = (v8 + 120);
        if ((v8 + 120) != v7)
        {
          for (i = v20; i - 96 != v7; i += 120)
          {
            if (*(v8 + 48) >= *(i - 8) && *(v8 + 32) <= *(i - 6))
            {
              v23 = *(v8 + 56) >= *(i - 7) && *(v8 + 40) <= *(i - 5);
              if (v23 && (*(v8 + 96) & 1) == 0 && (*i & 1) == 0)
              {
                result = sub_10029E468(*(a2 + 40), *a2, v8, *(a2 + 40), *a2, i - 24, 0, *(a2 + 44), *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
                if (!result)
                {
                  return result;
                }

                v7 = a1[1];
              }
            }
          }
        }

        v20 += 120;
        v8 += 120;
      }

      while (v21 != v7);
    }

    return 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v24 = vnegq_f64(v9);
    v25 = vnegq_f64(0);
    if (v8 != v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x8000000000000000;
      v12 = 0x8000000000000000;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = *(v8 + 32);
      if (v14 != 0x7FFFFFFFFFFFFFFFLL && (v24.f64[0] = *(v8 + 32), v13 = v14, v14 == 0x8000000000000000))
      {
        v15 = *(v8 + 40);
        if (v15 == NAN)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *&v25.f64[0] = v14;
        v12 = v14;
        v15 = *(v8 + 40);
        if (v15 == NAN)
        {
          goto LABEL_15;
        }
      }

      v24.f64[1] = v15;
      v10 = *&v15;
      if (v15 == -0.0)
      {
        v16 = *(v8 + 48);
        if (*&v16 < v13)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

LABEL_15:
      v25.f64[1] = v15;
      v11 = *&v15;
      v16 = *(v8 + 48);
      if (*&v16 < v13)
      {
LABEL_16:
        v24.f64[0] = v16;
        if (*&v16 > v12)
        {
LABEL_17:
          v25.f64[0] = v16;
          v17 = *(v8 + 56);
          if (*&v17 < v10)
          {
LABEL_18:
            v24.f64[1] = v17;
            if (*&v17 > v11)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

LABEL_10:
          if (*&v17 > v11)
          {
LABEL_19:
            v25.f64[1] = v17;
          }

LABEL_20:
          operator new();
        }

LABEL_9:
        v17 = *(v8 + 56);
        if (*&v17 < v10)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

LABEL_8:
      if (*&v16 > v12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    result = sub_10029BA70(&v24, &v26, 0, a5, a2, a3, a4, v29);
    if (v26)
    {
      v27 = v26;
      v19 = result;
      operator delete(v26);
      return v19;
    }
  }

  return result;
}

void sub_10029BA48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    *(v2 - 112) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029BA70(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1[2];
  v15 = v14 / 2 + *a1 / 2;
  v16 = *a1 % 2;
  v17 = *(a1 + 1);
  v92 = *a1;
  v94 = *(&v17 + 1);
  v90.n128_u64[1] = v92.n128_u64[1];
  v91 = v17;
  v18 = v15 + ((((v14 % 2) + v16 + ((((v14 % 2) + v16) & 0x80) >> 7)) << 24) >> 25);
  v93 = v18;
  v89 = 0;
  v90.n128_u64[0] = v18;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v20 = *a2;
  v19 = *(a2 + 8);
  if (*a2 == v19)
  {
    goto LABEL_43;
  }

  do
  {
    v25 = *v20;
    v26 = *(*v20 + 32);
    if (v93 >= v26 && v92.n128_i64[0] <= v25[6])
    {
      v27 = v94 >= v25[5] && v92.n128_u64[1] <= v25[7];
      if (v91 < v26)
      {
LABEL_16:
        if (!v27)
        {
          goto LABEL_3;
        }

        v29 = &v87;
LABEL_34:
        sub_100279BF0(v29, v20);
        v19 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v27 = 0;
      if (v91 < v26)
      {
        goto LABEL_16;
      }
    }

    if (v18 > v25[6])
    {
      goto LABEL_16;
    }

    v30 = v25[5];
    v31 = v25[7];
    v32 = *(&v91 + 1) >= v30 && v90.n128_u64[1] <= v31;
    v33 = v32;
    v34 = v32 || v27;
    if ((v27 & v33) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v87;
    }

    if (v27)
    {
      v29 = p_p;
    }

    else
    {
      v29 = &v84;
    }

    if (v34)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v37 = __p;
  v36 = v82;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v82)
  {
    v79 = 0u;
    v80 = 0u;
    v38 = vnegq_f64(0);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = __p;
    v42 = v40;
    v43 = v38;
    do
    {
      v44 = *v41++;
      v45 = v44[2];
      v46 = v44[3];
      v47 = vcgtq_s64(v40, v45);
      v48 = vbslq_s8(v47, v45, v42);
      v49 = vbslq_s8(v47, v45, v40);
      v50 = vcgtq_s64(v49, v46);
      v42 = vbslq_s8(v50, v46, v48);
      v40 = vbslq_s8(v50, v46, v49);
      v51 = vcgtq_s64(v45, v38);
      v52 = vbslq_s8(v51, v45, v43);
      v53 = vbslq_s8(v51, v45, v38);
      v54 = vcgtq_s64(v46, v53);
      v43 = vbslq_s8(v54, v46, v52);
      v38 = vbslq_s8(v54, v46, v53);
    }

    while (v41 != v82);
    v79 = v42;
    v80 = v43;
    if (a3 <= 0x63 && (v82 - __p) >> 3 >= a4)
    {
      if (sub_10029C224(&v79, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v66 = v37 + 8;
      if (v37 + 8 != v36)
      {
        for (i = v37 + 8; i != v36; i += 8)
        {
          v68 = *v37;
          v69 = *i;
          if (*(*v37 + 48) >= *(*i + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v68, *(a5 + 40), *a5, v69, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v36 = v82;
            }
          }
        }
      }

      v37 += 8;
    }

    while (v66 != v36);
LABEL_41:
    if (!sub_10029C0B0(&v79, &__p, &v87, a3, a4, a5, v10, v9, v8) || (sub_10029C0B0(&v79, &__p, &v84, a3, a4, a5, v10, v9, v8) & 1) == 0)
    {
LABEL_81:
      v64 = 0;
      v65 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v56 = v87;
  v55 = v88;
  if (v13 > 0x63 || (v88 - v87) >> 3 < v12)
  {
LABEL_61:
    while (v56 != v55)
    {
      v57 = v56;
      v56 += 8;
      if (v56 != v55)
      {
        v58 = v56;
        while (1)
        {
          v59 = *v57;
          v60 = *v58;
          if (*(*v57 + 48) >= *(*v58 + 32) && *(v59 + 32) <= *(v60 + 48))
          {
            v61 = *(v59 + 56) >= *(v60 + 40) && *(v59 + 40) <= *(v60 + 56);
            if (v61 && (*(v59 + 96) & 1) == 0 && (*(v60 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v59, *(a5 + 40), *a5, v60, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v55 = v88;
            }
          }

          v58 += 8;
          if (v58 == v55)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_10029C224(&v92, &v87, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v63 = v84;
  v62 = v85;
  if (v13 <= 0x63 && (v85 - v84) >> 3 >= v12)
  {
    v64 = sub_10029C224(&v90, &v84, v13 + 1, v12, a5, v10, v9, v8);
    v65 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v82 = v65;
    operator delete(v65);
    goto LABEL_83;
  }

  if (v84 != v85)
  {
    do
    {
      v72 = v63;
      v63 += 8;
      if (v63 != v62)
      {
        for (j = v63; j != v62; j += 8)
        {
          v74 = *v72;
          v75 = *j;
          if (*(*v72 + 48) >= *(*j + 32) && *(v74 + 32) <= *(v75 + 48))
          {
            v76 = *(v74 + 56) >= *(v75 + 40) && *(v74 + 40) <= *(v75 + 56);
            if (v76 && (*(v74 + 96) & 1) == 0 && (*(v75 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v74, *(a5 + 40), *a5, v75, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v62 = v85;
            }
          }
        }
      }
    }

    while (v63 != v62);
  }

  v64 = 1;
  v65 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  return v64;
}

void sub_10029C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10029C0B0(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v12 = a2[1];
  if (a5 <= v12 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_10029D720(a1, a2, a3, a4 + 1, a5, a6, a7, a8, a7, a8, a9);
  }

  if (v13 != v12)
  {
    v14 = a3[1];
    if (*a3 != v14)
    {
      do
      {
        v16 = *a3;
        if (*a3 != v14)
        {
          do
          {
            v17 = *v13;
            v18 = *v16;
            if (*(*v13 + 48) >= *(*v16 + 32) && *(v17 + 32) <= *(v18 + 48))
            {
              v19 = *(v17 + 56) >= *(v18 + 40) && *(v17 + 40) <= *(v18 + 56);
              if (v19 && (*(v17 + 96) & 1) == 0 && (*(v18 + 96) & 1) == 0)
              {
                result = sub_10029E468(*(a6 + 40), *a6, v17, *(a6 + 40), *a6, v18, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32));
                if (!result)
                {
                  return result;
                }

                v14 = a3[1];
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v12 = a2[1];
        }

        ++v13;
      }

      while (v13 != v12);
    }
  }

  return 1;
}

uint64_t sub_10029C224(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v15 = a1[1].n128_i64[0];
  v14 = a1[1].n128_i64[1];
  v16 = a1->n128_i64[1];
  v17 = v14 / 2 + v16 / 2;
  v19 = a1[1];
  v94 = *a1;
  v18 = v94;
  v92[0] = v94.n128_u64[0];
  v93 = v19;
  LODWORD(v14) = v14 % 2 + v16 % 2;
  v20 = v17 + ((v14 + ((v14 & 0x80) >> 7)) << 24 >> 25);
  v95 = v15;
  v96 = v20;
  v92[1] = v20;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  __p = 0;
  v84 = 0;
  v85 = 0;
  v22 = *a2;
  v21 = *(a2 + 8);
  if (*a2 == v21)
  {
    goto LABEL_43;
  }

  do
  {
    v27 = *v22;
    v28 = *(*v22 + 32);
    if (v95 >= v28 && v94.n128_i64[0] <= v27[6])
    {
      v29 = v96 >= v27[5] && v94.n128_u64[1] <= v27[7];
      if (v93.n128_i64[0] < v28)
      {
LABEL_16:
        if (!v29)
        {
          goto LABEL_3;
        }

        v31 = &v89;
LABEL_34:
        sub_100279BF0(v31, v22);
        v21 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v29 = 0;
      if (v93.n128_i64[0] < v28)
      {
        goto LABEL_16;
      }
    }

    if (v92[0] > v27[6])
    {
      goto LABEL_16;
    }

    v32 = v27[5];
    v33 = v27[7];
    v34 = v93.n128_i64[1] >= v32 && v20 <= v33;
    v35 = v34;
    v36 = v34 || v29;
    if ((v29 & v35) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v89;
    }

    if (v29)
    {
      v31 = p_p;
    }

    else
    {
      v31 = &v86;
    }

    if (v36)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v22;
  }

  while (v22 != v21);
  v39 = __p;
  v38 = v84;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v84)
  {
    v81 = 0u;
    v82 = 0u;
    v40 = vnegq_f64(0);
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v42 = vnegq_f64(v41);
    v43 = __p;
    v44 = v42;
    v45 = v40;
    do
    {
      v46 = *v43++;
      v47 = v46[2];
      v48 = v46[3];
      v49 = vcgtq_s64(v42, v47);
      v50 = vbslq_s8(v49, v47, v44);
      v51 = vbslq_s8(v49, v47, v42);
      v52 = vcgtq_s64(v51, v48);
      v44 = vbslq_s8(v52, v48, v50);
      v42 = vbslq_s8(v52, v48, v51);
      v53 = vcgtq_s64(v47, v40);
      v54 = vbslq_s8(v53, v47, v45);
      v55 = vbslq_s8(v53, v47, v40);
      v56 = vcgtq_s64(v48, v55);
      v45 = vbslq_s8(v56, v48, v54);
      v40 = vbslq_s8(v56, v48, v55);
    }

    while (v43 != v84);
    v81 = v44;
    v82 = v45;
    if (a3 <= 0x63 && (v84 - __p) >> 3 >= a4)
    {
      if (sub_10029BA70(&v81, &__p, a3 + 1, a4, a5, v10, v9, v8, v40, v42))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v68 = v39 + 8;
      if (v39 + 8 != v38)
      {
        for (i = v39 + 8; i != v38; i += 8)
        {
          v70 = *v39;
          v71 = *i;
          if (*(*v39 + 48) >= *(*i + 32) && *(v70 + 32) <= *(v71 + 48))
          {
            v72 = *(v70 + 56) >= *(v71 + 40) && *(v70 + 40) <= *(v71 + 56);
            if (v72 && (*(v70 + 96) & 1) == 0 && (*(v71 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v70, *(a5 + 40), *a5, v71, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v38 = v84;
            }
          }
        }
      }

      v39 += 8;
    }

    while (v68 != v38);
LABEL_41:
    if (!sub_10029C868(&v81, &__p, &v89, a3, a4, a5, v10, v9, v8) || (sub_10029C868(&v81, &__p, &v86, a3, a4, a5, v10, v9, v8) & 1) == 0)
    {
LABEL_81:
      v66 = 0;
      v67 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v58 = v89;
  v57 = v90;
  if (v13 > 0x63 || (v90 - v89) >> 3 < v12)
  {
LABEL_61:
    while (v58 != v57)
    {
      v59 = v58;
      v58 += 8;
      if (v58 != v57)
      {
        v60 = v58;
        while (1)
        {
          v61 = *v59;
          v62 = *v60;
          if (*(*v59 + 48) >= *(*v60 + 32) && *(v61 + 32) <= *(v62 + 48))
          {
            v63 = *(v61 + 56) >= *(v62 + 40) && *(v61 + 40) <= *(v62 + 56);
            if (v63 && (*(v61 + 96) & 1) == 0 && (*(v62 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v61, *(a5 + 40), *a5, v62, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v57 = v90;
            }
          }

          v60 += 8;
          if (v60 == v57)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_10029BA70(&v94, &v89, v13 + 1, v12, a5, v10, v9, v8, v18, v19))
  {
    goto LABEL_81;
  }

  v65 = v86;
  v64 = v87;
  if (v13 <= 0x63 && (v87 - v86) >> 3 >= v12)
  {
    v66 = sub_10029BA70(v92, &v86, v13 + 1, v12, a5, v10, v9, v8, v18, v19);
    v67 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v84 = v67;
    operator delete(v67);
    goto LABEL_83;
  }

  if (v86 != v87)
  {
    do
    {
      v74 = v65;
      v65 += 8;
      if (v65 != v64)
      {
        for (j = v65; j != v64; j += 8)
        {
          v76 = *v74;
          v77 = *j;
          if (*(*v74 + 48) >= *(*j + 32) && *(v76 + 32) <= *(v77 + 48))
          {
            v78 = *(v76 + 56) >= *(v77 + 40) && *(v76 + 40) <= *(v77 + 56);
            if (v78 && (*(v76 + 96) & 1) == 0 && (*(v77 + 96) & 1) == 0)
            {
              if (!sub_10029E468(*(a5 + 40), *a5, v76, *(a5 + 40), *a5, v77, 0, *(a5 + 44), *(a5 + 8), *(a5 + 16), *(a5 + 24), *(a5 + 32)))
              {
                goto LABEL_81;
              }

              v64 = v87;
            }
          }
        }
      }
    }

    while (v65 != v64);
  }

  v66 = 1;
  v67 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  return v66;
}

void sub_10029C800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10029C868(__n128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v12 = a2[1];
  if (a5 <= v12 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_10029C9DC(a1, a2, a3, a4 + 1, a5, a6, a7, a8, a7, a8, a9);
  }

  if (v13 != v12)
  {
    v14 = a3[1];
    if (*a3 != v14)
    {
      do
      {
        v16 = *a3;
        if (*a3 != v14)
        {
          do
          {
            v17 = *v13;
            v18 = *v16;
            if (*(*v13 + 48) >= *(*v16 + 32) && *(v17 + 32) <= *(v18 + 48))
            {
              v19 = *(v17 + 56) >= *(v18 + 40) && *(v17 + 40) <= *(v18 + 56);
              if (v19 && (*(v17 + 96) & 1) == 0 && (*(v18 + 96) & 1) == 0)
              {
                result = sub_10029E468(*(a6 + 40), *a6, v17, *(a6 + 40), *a6, v18, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32));
                if (!result)
                {
                  return result;
                }

                v14 = a3[1];
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v12 = a2[1];
        }

        ++v13;
      }

      while (v13 != v12);
    }
  }

  return 1;
}

uint64_t sub_10029C9DC(__n128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[1].n128_i64[0];
  v16 = a1[1];
  v18 = a1->n128_u64[0] / 2;
  v189 = *a1;
  v17 = v189;
  v191 = v16.n128_i64[1];
  v187 = v189.n128_i64[1];
  v188 = v16;
  v19 = v15 % 2 + v189.n128_u32[0] - 2 * v18;
  v20 = v15 / 2 + v18 + ((v19 + ((v19 & 0x80) >> 7)) << 24 >> 25);
  v190 = v20;
  v185 = 0;
  v186 = v20;
  v183 = 0;
  v184 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  __p = 0;
  v169 = 0;
  v170 = 0;
  v22 = *a2;
  v21 = *(a2 + 8);
  if (*a2 != v21)
  {
    do
    {
      v24 = *v22;
      v25 = *(*v22 + 32);
      if (v190 >= v25 && v189.n128_i64[0] <= v24[6])
      {
        v26 = v191 >= v24[5] && v189.n128_u64[1] <= v24[7];
        if (v188.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = 0;
        if (v188.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      if (v20 <= v24[6])
      {
        v29 = v24[5];
        v30 = v24[7];
        v31 = v188.n128_i64[1] >= v29 && v187 <= v30;
        v32 = v31;
        v33 = v31 || v26;
        if ((v26 & v32) != 0)
        {
          v34 = &v177;
        }

        else
        {
          v34 = &v183;
        }

        if (v26)
        {
          v28 = v34;
        }

        else
        {
          v28 = &v180;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v26)
      {
        v28 = &v183;
LABEL_34:
        sub_100279BF0(v28, v22);
        v21 = *(a2 + 8);
      }

LABEL_3:
      ++v22;
    }

    while (v22 != v21);
  }

  v36 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    do
    {
      v37 = *v36;
      v38 = *(*v36 + 32);
      if (v190 >= v38 && v189.n128_i64[0] <= v37[6])
      {
        v39 = v191 >= v37[5] && v189.n128_u64[1] <= v37[7];
        if (v188.n128_i64[0] < v38)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v39 = 0;
        if (v188.n128_i64[0] < v38)
        {
          goto LABEL_51;
        }
      }

      if (v20 <= v37[6])
      {
        v42 = v37[5];
        v43 = v37[7];
        v44 = v188.n128_i64[1] >= v42 && v187 <= v43;
        v45 = v44;
        v46 = v44 || v39;
        if ((v39 & v45) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v174;
        }

        if (v39)
        {
          v41 = p_p;
        }

        else
        {
          v41 = &v171;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v39)
      {
        goto LABEL_38;
      }

      v41 = &v174;
LABEL_37:
      sub_100279BF0(v41, v36);
      v35 = *(a3 + 8);
LABEL_38:
      ++v36;
    }

    while (v36 != v35);
  }

  v49 = v177;
  v48 = v178;
  if (v177 == v178)
  {
    goto LABEL_133;
  }

  v51 = __p;
  v50 = v169;
  if (a5 > (v178 - v177) >> 3 || a4 > 0x63 || (v169 - __p) >> 3 < a5)
  {
    if (__p != v169)
    {
      do
      {
        v52 = __p;
        if (__p != v50)
        {
          do
          {
            v53 = *v49;
            v54 = *v52;
            if (*(*v49 + 48) >= *(*v52 + 32) && *(v53 + 32) <= *(v54 + 48))
            {
              v55 = *(v53 + 56) >= *(v54 + 40) && *(v53 + 40) <= *(v54 + 56);
              if (v55 && (*(v53 + 96) & 1) == 0 && (*(v54 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v53, *(a6 + 40), *a6, v54, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v50 = v169;
              }
            }

            v52 += 8;
          }

          while (v52 != v50);
          v48 = v178;
        }

        v49 += 8;
      }

      while (v49 != v48);
    }
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
    v56 = vnegq_f64(0);
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v58 = vnegq_f64(v57);
    v59 = v58;
    v60 = v56;
    do
    {
      v61 = *v49;
      v49 += 8;
      v62 = v61[2];
      v63 = v61[3];
      v64 = vcgtq_s64(v58, v62);
      v65 = vbslq_s8(v64, v62, v59);
      v66 = vbslq_s8(v64, v62, v58);
      v67 = vcgtq_s64(v66, v63);
      v59 = vbslq_s8(v67, v63, v65);
      v58 = vbslq_s8(v67, v63, v66);
      v68 = vcgtq_s64(v62, v56);
      v69 = vbslq_s8(v68, v62, v60);
      v70 = vbslq_s8(v68, v62, v56);
      v71 = vcgtq_s64(v63, v70);
      v60 = vbslq_s8(v71, v63, v69);
      v56 = vbslq_s8(v71, v63, v70);
    }

    while (v49 != v178);
    v166 = v59;
    v167 = v60;
    if (__p != v169)
    {
      v72 = v59;
      v73 = v60;
      do
      {
        v74 = *v51++;
        v75 = v74[2];
        v76 = v74[3];
        v77 = vcgtq_s64(v59, v75);
        v78 = vbslq_s8(v77, v75, v72);
        v79 = vbslq_s8(v77, v75, v59);
        v80 = vcgtq_s64(v79, v76);
        v72 = vbslq_s8(v80, v76, v78);
        v59 = vbslq_s8(v80, v76, v79);
        v81 = vcgtq_s64(v75, v60);
        v82 = vbslq_s8(v81, v75, v73);
        v83 = vbslq_s8(v81, v75, v60);
        v84 = vcgtq_s64(v76, v83);
        v73 = vbslq_s8(v84, v76, v82);
        v60 = vbslq_s8(v84, v76, v83);
      }

      while (v51 != v169);
      v166 = v72;
      v167 = v73;
    }

    if ((sub_10029D720(&v166, &v177, &__p, a4 + 1, a5, a6, a7, a8, v59, v60, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v85 = v175;
  if (a5 <= (v175 - v174) >> 3)
  {
    v87 = v177;
    v86 = v178;
    if (a5 <= (v172 - v171) >> 3 && a4 <= 0x63 && (v178 - v177) >> 3 >= a5)
    {
      v92.f64[0] = NAN;
      v92.f64[1] = NAN;
      v93 = vnegq_f64(v92);
      v94 = vnegq_f64(0);
      v166 = v93;
      v167 = v94;
      if (v177 != v178)
      {
        v95 = v93;
        v96 = v94;
        do
        {
          v97 = *v87;
          v87 += 8;
          v98 = v97[2];
          v99 = v97[3];
          v100 = vcgtq_s64(v93, v98);
          v101 = vbslq_s8(v100, v98, v95);
          v102 = vbslq_s8(v100, v98, v93);
          v103 = vcgtq_s64(v102, v99);
          v95 = vbslq_s8(v103, v99, v101);
          v93 = vbslq_s8(v103, v99, v102);
          v104 = vcgtq_s64(v98, v94);
          v105 = vbslq_s8(v104, v98, v96);
          v106 = vbslq_s8(v104, v98, v94);
          v107 = vcgtq_s64(v99, v106);
          v96 = vbslq_s8(v107, v99, v105);
          v94 = vbslq_s8(v107, v99, v106);
        }

        while (v87 != v178);
        v166 = v95;
        v167 = v96;
      }

      if (!sub_10029D720(&v166, &v177, &v174, a4 + 1, a5, a6, a7, a8, v93, v94, a9, a10, a11) || (sub_10029D720(&v166, &v177, &v171, a4 + 1, a5, a6, a7, a8, v108, v109, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v87 = v177;
    v86 = v178;
  }

  if (v87 == v86 || v174 == v175)
  {
    if (v87 == v86)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v88 = v174;
    if (v174 != v85)
    {
      do
      {
        v89 = *v87;
        v90 = *v88;
        if (*(*v87 + 48) >= *(*v88 + 32) && *(v89 + 32) <= *(v90 + 48))
        {
          v91 = *(v89 + 56) >= *(v90 + 40) && *(v89 + 40) <= *(v90 + 56);
          if (v91 && (*(v89 + 96) & 1) == 0 && (*(v90 + 96) & 1) == 0)
          {
            if (!sub_10029E468(*(a6 + 40), *a6, v89, *(a6 + 40), *a6, v90, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
            {
              goto LABEL_245;
            }

            v85 = v175;
          }
        }

        v88 += 8;
      }

      while (v88 != v85);
      v86 = v178;
    }

    v87 += 8;
  }

  while (v87 != v86);
  v87 = v177;
  if (v177 != v86)
  {
LABEL_132:
    v110 = v172;
    if (v171 != v172)
    {
      do
      {
        v137 = v171;
        if (v171 != v110)
        {
          do
          {
            v138 = *v87;
            v139 = *v137;
            if (*(*v87 + 48) >= *(*v137 + 32) && *(v138 + 32) <= *(v139 + 48))
            {
              v140 = *(v138 + 56) >= *(v139 + 40) && *(v138 + 40) <= *(v139 + 56);
              if (v140 && (*(v138 + 96) & 1) == 0 && (*(v139 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v138, *(a6 + 40), *a6, v139, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v110 = v172;
              }
            }

            v137 += 8;
          }

          while (v137 != v110);
          v86 = v178;
        }

        v87 += 8;
      }

      while (v87 != v86);
    }
  }

LABEL_133:
  v112 = __p;
  v111 = v169;
  if (__p != v169)
  {
    v114 = v183;
    v113 = v184;
    if (a5 > (v184 - v183) >> 3 || a5 > (v181 - v180) >> 3 || a4 > 0x63 || (v169 - __p) >> 3 < a5)
    {
      while (v114 != v113)
      {
        v133 = __p;
        if (__p != v111)
        {
          do
          {
            v134 = *v114;
            v135 = *v133;
            if (*(*v114 + 48) >= *(*v133 + 32) && *(v134 + 32) <= *(v135 + 48))
            {
              v136 = *(v134 + 56) >= *(v135 + 40) && *(v134 + 40) <= *(v135 + 56);
              if (v136 && (*(v134 + 96) & 1) == 0 && (*(v135 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v134, *(a6 + 40), *a6, v135, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v111 = v169;
              }
            }

            v133 += 8;
          }

          while (v133 != v111);
          v113 = v184;
        }

        v114 += 8;
      }

      v142 = v180;
      v141 = v181;
      if (v180 != v181 && __p != v111)
      {
        do
        {
          v150 = __p;
          if (__p != v111)
          {
            do
            {
              v151 = *v142;
              v152 = *v150;
              if (*(*v142 + 48) >= *(*v150 + 32) && *(v151 + 32) <= *(v152 + 48))
              {
                v153 = *(v151 + 56) >= *(v152 + 40) && *(v151 + 40) <= *(v152 + 56);
                if (v153 && (*(v151 + 96) & 1) == 0 && (*(v152 + 96) & 1) == 0)
                {
                  if (!sub_10029E468(*(a6 + 40), *a6, v151, *(a6 + 40), *a6, v152, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                  {
                    goto LABEL_245;
                  }

                  v111 = v169;
                }
              }

              v150 += 8;
            }

            while (v150 != v111);
            v141 = v181;
          }

          v142 += 8;
        }

        while (v142 != v141);
      }
    }

    else
    {
      v166 = 0u;
      v167 = 0u;
      v115 = vnegq_f64(0);
      v116.f64[0] = NAN;
      v116.f64[1] = NAN;
      v117 = vnegq_f64(v116);
      v118 = v117;
      v119 = v115;
      do
      {
        v120 = *v112++;
        v121 = v120[2];
        v122 = v120[3];
        v123 = vcgtq_s64(v117, v121);
        v124 = vbslq_s8(v123, v121, v118);
        v125 = vbslq_s8(v123, v121, v117);
        v126 = vcgtq_s64(v125, v122);
        v118 = vbslq_s8(v126, v122, v124);
        v117 = vbslq_s8(v126, v122, v125);
        v127 = vcgtq_s64(v121, v115);
        v128 = vbslq_s8(v127, v121, v119);
        v129 = vbslq_s8(v127, v121, v115);
        v130 = vcgtq_s64(v122, v129);
        v119 = vbslq_s8(v130, v122, v128);
        v115 = vbslq_s8(v130, v122, v129);
      }

      while (v112 != v169);
      v166 = v118;
      v167 = v119;
      if (!sub_10029D720(&v166, &v183, &__p, a4 + 1, a5, a6, a7, a8, v115, v117, a9, a10, a11) || (sub_10029D720(&v166, &v180, &__p, a4 + 1, a5, a6, a7, a8, v131, v132, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v144 = v183;
  v143 = v184;
  if (a5 > (v184 - v183) >> 3 || a4 > 0x63 || (v175 - v174) >> 3 < a5)
  {
    if (v183 != v184)
    {
      v145 = v175;
      if (v174 != v175)
      {
        do
        {
          v146 = v174;
          if (v174 != v145)
          {
            do
            {
              v147 = *v144;
              v148 = *v146;
              if (*(*v144 + 48) >= *(*v146 + 32) && *(v147 + 32) <= *(v148 + 48))
              {
                v149 = *(v147 + 56) >= *(v148 + 40) && *(v147 + 40) <= *(v148 + 56);
                if (v149 && (*(v147 + 96) & 1) == 0 && (*(v148 + 96) & 1) == 0)
                {
                  if (!sub_10029E468(*(a6 + 40), *a6, v147, *(a6 + 40), *a6, v148, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                  {
                    goto LABEL_245;
                  }

                  v145 = v175;
                }
              }

              v146 += 8;
            }

            while (v146 != v145);
            v143 = v184;
          }

          v144 += 8;
        }

        while (v144 != v143);
      }
    }
  }

  else if ((sub_10029D720(&v189, &v183, &v174, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_245;
  }

  v155 = v180;
  v154 = v181;
  if (a5 <= (v181 - v180) >> 3 && a4 <= 0x63 && (v172 - v171) >> 3 >= a5)
  {
    if (sub_10029D720(&v186, &v180, &v171, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11))
    {
      goto LABEL_243;
    }

LABEL_245:
    v161 = 0;
    v162 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v180 != v181)
  {
    v156 = v172;
    if (v171 != v172)
    {
      do
      {
        v157 = v171;
        if (v171 != v156)
        {
          do
          {
            v158 = *v155;
            v159 = *v157;
            if (*(*v155 + 48) >= *(*v157 + 32) && *(v158 + 32) <= *(v159 + 48))
            {
              v160 = *(v158 + 56) >= *(v159 + 40) && *(v158 + 40) <= *(v159 + 56);
              if (v160 && (*(v158 + 96) & 1) == 0 && (*(v159 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v158, *(a6 + 40), *a6, v159, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v156 = v172;
              }
            }

            v157 += 8;
          }

          while (v157 != v156);
          v154 = v181;
        }

        v155 += 8;
      }

      while (v155 != v154);
    }
  }

LABEL_243:
  v161 = 1;
  v162 = __p;
  if (__p)
  {
LABEL_246:
    v169 = v162;
    operator delete(v162);
  }

LABEL_247:
  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  if (v174)
  {
    v175 = v174;
    operator delete(v174);
  }

  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  if (v180)
  {
    v181 = v180;
    operator delete(v180);
  }

  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  return v161;
}

void sub_10029D654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10029D720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a1 + 24);
  v16 = *a1;
  v182 = *(a1 + 16);
  v183 = v16;
  v17 = *(a1 + 8);
  v18 = v15 / 2 + v17 / 2;
  v181.n128_u64[0] = v16.n128_u64[0];
  LODWORD(v15) = v15 % 2 + v17 % 2;
  v19 = v18 + ((v15 + ((v15 & 0x80) >> 7)) << 24 >> 25);
  v184 = v182;
  v185 = v19;
  v181.n128_u64[1] = v19;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  __p = 0;
  v164 = 0;
  v165 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 32);
      if (v184 >= v24 && v183.n128_i64[0] <= v23[6])
      {
        v25 = v185 >= v23[5] && v183.n128_u64[1] <= v23[7];
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = 0;
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      if (v181.n128_i64[0] <= v23[6])
      {
        v28 = v23[5];
        v29 = v23[7];
        v30 = *(&v182 + 1) >= v28 && v19 <= v29;
        v31 = v30;
        v32 = v30 || v25;
        if ((v25 & v31) != 0)
        {
          v33 = &v172;
        }

        else
        {
          v33 = &v178;
        }

        if (v25)
        {
          v27 = v33;
        }

        else
        {
          v27 = &v175;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v25)
      {
        v27 = &v178;
LABEL_34:
        sub_100279BF0(v27, v21);
        v20 = *(a2 + 8);
      }

LABEL_3:
      ++v21;
    }

    while (v21 != v20);
  }

  v35 = *a3;
  v34 = *(a3 + 8);
  if (*a3 != v34)
  {
    do
    {
      v36 = *v35;
      v37 = *(*v35 + 32);
      if (v184 >= v37 && v183.n128_i64[0] <= v36[6])
      {
        v38 = v185 >= v36[5] && v183.n128_u64[1] <= v36[7];
        if (v182 < v37)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v38 = 0;
        if (v182 < v37)
        {
          goto LABEL_51;
        }
      }

      if (v181.n128_i64[0] <= v36[6])
      {
        v41 = v36[5];
        v42 = v36[7];
        v43 = *(&v182 + 1) >= v41 && v19 <= v42;
        v44 = v43;
        v45 = v43 || v38;
        if ((v38 & v44) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v169;
        }

        if (v38)
        {
          v40 = p_p;
        }

        else
        {
          v40 = &v166;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v38)
      {
        goto LABEL_38;
      }

      v40 = &v169;
LABEL_37:
      sub_100279BF0(v40, v35);
      v34 = *(a3 + 8);
LABEL_38:
      ++v35;
    }

    while (v35 != v34);
  }

  v48 = v172;
  v47 = v173;
  if (v172 == v173)
  {
    goto LABEL_133;
  }

  v50 = __p;
  v49 = v164;
  if (a5 > (v173 - v172) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
  {
    if (__p != v164)
    {
      do
      {
        v51 = __p;
        if (__p != v49)
        {
          do
          {
            v52 = *v48;
            v53 = *v51;
            if (*(*v48 + 48) >= *(*v51 + 32) && *(v52 + 32) <= *(v53 + 48))
            {
              v54 = *(v52 + 56) >= *(v53 + 40) && *(v52 + 40) <= *(v53 + 56);
              if (v54 && (*(v52 + 96) & 1) == 0 && (*(v53 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v52, *(a6 + 40), *a6, v53, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v49 = v164;
              }
            }

            v51 += 8;
          }

          while (v51 != v49);
          v47 = v173;
        }

        v48 += 8;
      }

      while (v48 != v47);
    }
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
    v55 = vnegq_f64(0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v57 = vnegq_f64(v56);
    v58 = v57;
    v59 = v55;
    do
    {
      v60 = *v48;
      v48 += 8;
      v61 = v60[2];
      v62 = v60[3];
      v63 = vcgtq_s64(v57, v61);
      v64 = vbslq_s8(v63, v61, v58);
      v65 = vbslq_s8(v63, v61, v57);
      v66 = vcgtq_s64(v65, v62);
      v58 = vbslq_s8(v66, v62, v64);
      v57 = vbslq_s8(v66, v62, v65);
      v67 = vcgtq_s64(v61, v55);
      v68 = vbslq_s8(v67, v61, v59);
      v69 = vbslq_s8(v67, v61, v55);
      v70 = vcgtq_s64(v62, v69);
      v59 = vbslq_s8(v70, v62, v68);
      v55 = vbslq_s8(v70, v62, v69);
    }

    while (v48 != v173);
    v161 = v58;
    v162 = v59;
    if (__p != v164)
    {
      v71 = v58;
      v72 = v59;
      do
      {
        v73 = *v50++;
        v74 = v73[2];
        v75 = v73[3];
        v76 = vcgtq_s64(v58, v74);
        v77 = vbslq_s8(v76, v74, v71);
        v78 = vbslq_s8(v76, v74, v58);
        v79 = vcgtq_s64(v78, v75);
        v71 = vbslq_s8(v79, v75, v77);
        v58 = vbslq_s8(v79, v75, v78);
        v80 = vcgtq_s64(v74, v59);
        v81 = vbslq_s8(v80, v74, v72);
        v82 = vbslq_s8(v80, v74, v59);
        v83 = vcgtq_s64(v75, v82);
        v72 = vbslq_s8(v83, v75, v81);
        v59 = vbslq_s8(v83, v75, v82);
      }

      while (v50 != v164);
      v161 = v71;
      v162 = v72;
    }

    if ((sub_10029C9DC(&v161, &v172, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v84 = v170;
  if (a5 <= (v170 - v169) >> 3)
  {
    v86 = v172;
    v85 = v173;
    if (a5 <= (v167 - v166) >> 3 && a4 <= 0x63 && (v173 - v172) >> 3 >= a5)
    {
      v91.f64[0] = NAN;
      v91.f64[1] = NAN;
      v92 = vnegq_f64(v91);
      v93 = vnegq_f64(0);
      v161 = v92;
      v162 = v93;
      if (v172 != v173)
      {
        v94 = v92;
        v95 = v93;
        do
        {
          v96 = *v86;
          v86 += 8;
          v97 = v96[2];
          v98 = v96[3];
          v99 = vcgtq_s64(v92, v97);
          v100 = vbslq_s8(v99, v97, v94);
          v101 = vbslq_s8(v99, v97, v92);
          v102 = vcgtq_s64(v101, v98);
          v94 = vbslq_s8(v102, v98, v100);
          v92 = vbslq_s8(v102, v98, v101);
          v103 = vcgtq_s64(v97, v93);
          v104 = vbslq_s8(v103, v97, v95);
          v105 = vbslq_s8(v103, v97, v93);
          v106 = vcgtq_s64(v98, v105);
          v95 = vbslq_s8(v106, v98, v104);
          v93 = vbslq_s8(v106, v98, v105);
        }

        while (v86 != v173);
        v161 = v94;
        v162 = v95;
      }

      if (!sub_10029C9DC(&v161, &v172, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_10029C9DC(&v161, &v172, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v86 = v172;
    v85 = v173;
  }

  if (v86 == v85 || v169 == v170)
  {
    if (v86 == v85)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v87 = v169;
    if (v169 != v84)
    {
      do
      {
        v88 = *v86;
        v89 = *v87;
        if (*(*v86 + 48) >= *(*v87 + 32) && *(v88 + 32) <= *(v89 + 48))
        {
          v90 = *(v88 + 56) >= *(v89 + 40) && *(v88 + 40) <= *(v89 + 56);
          if (v90 && (*(v88 + 96) & 1) == 0 && (*(v89 + 96) & 1) == 0)
          {
            if (!sub_10029E468(*(a6 + 40), *a6, v88, *(a6 + 40), *a6, v89, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
            {
              goto LABEL_245;
            }

            v84 = v170;
          }
        }

        v87 += 8;
      }

      while (v87 != v84);
      v85 = v173;
    }

    v86 += 8;
  }

  while (v86 != v85);
  v86 = v172;
  if (v172 != v85)
  {
LABEL_132:
    v107 = v167;
    if (v166 != v167)
    {
      do
      {
        v132 = v166;
        if (v166 != v107)
        {
          do
          {
            v133 = *v86;
            v134 = *v132;
            if (*(*v86 + 48) >= *(*v132 + 32) && *(v133 + 32) <= *(v134 + 48))
            {
              v135 = *(v133 + 56) >= *(v134 + 40) && *(v133 + 40) <= *(v134 + 56);
              if (v135 && (*(v133 + 96) & 1) == 0 && (*(v134 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v133, *(a6 + 40), *a6, v134, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v107 = v167;
              }
            }

            v132 += 8;
          }

          while (v132 != v107);
          v85 = v173;
        }

        v86 += 8;
      }

      while (v86 != v85);
    }
  }

LABEL_133:
  v109 = __p;
  v108 = v164;
  if (__p != v164)
  {
    v111 = v178;
    v110 = v179;
    if (a5 > (v179 - v178) >> 3 || a5 > (v176 - v175) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
    {
      while (v111 != v110)
      {
        v128 = __p;
        if (__p != v108)
        {
          do
          {
            v129 = *v111;
            v130 = *v128;
            if (*(*v111 + 48) >= *(*v128 + 32) && *(v129 + 32) <= *(v130 + 48))
            {
              v131 = *(v129 + 56) >= *(v130 + 40) && *(v129 + 40) <= *(v130 + 56);
              if (v131 && (*(v129 + 96) & 1) == 0 && (*(v130 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v129, *(a6 + 40), *a6, v130, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v108 = v164;
              }
            }

            v128 += 8;
          }

          while (v128 != v108);
          v110 = v179;
        }

        v111 += 8;
      }

      v137 = v175;
      v136 = v176;
      if (v175 != v176 && __p != v108)
      {
        do
        {
          v145 = __p;
          if (__p != v108)
          {
            do
            {
              v146 = *v137;
              v147 = *v145;
              if (*(*v137 + 48) >= *(*v145 + 32) && *(v146 + 32) <= *(v147 + 48))
              {
                v148 = *(v146 + 56) >= *(v147 + 40) && *(v146 + 40) <= *(v147 + 56);
                if (v148 && (*(v146 + 96) & 1) == 0 && (*(v147 + 96) & 1) == 0)
                {
                  if (!sub_10029E468(*(a6 + 40), *a6, v146, *(a6 + 40), *a6, v147, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                  {
                    goto LABEL_245;
                  }

                  v108 = v164;
                }
              }

              v145 += 8;
            }

            while (v145 != v108);
            v136 = v176;
          }

          v137 += 8;
        }

        while (v137 != v136);
      }
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
      v112 = vnegq_f64(0);
      v113.f64[0] = NAN;
      v113.f64[1] = NAN;
      v114 = vnegq_f64(v113);
      v115 = v114;
      v116 = v112;
      do
      {
        v117 = *v109++;
        v118 = v117[2];
        v119 = v117[3];
        v120 = vcgtq_s64(v114, v118);
        v121 = vbslq_s8(v120, v118, v115);
        v122 = vbslq_s8(v120, v118, v114);
        v123 = vcgtq_s64(v122, v119);
        v115 = vbslq_s8(v123, v119, v121);
        v114 = vbslq_s8(v123, v119, v122);
        v124 = vcgtq_s64(v118, v112);
        v125 = vbslq_s8(v124, v118, v116);
        v126 = vbslq_s8(v124, v118, v112);
        v127 = vcgtq_s64(v119, v126);
        v116 = vbslq_s8(v127, v119, v125);
        v112 = vbslq_s8(v127, v119, v126);
      }

      while (v109 != v164);
      v161 = v115;
      v162 = v116;
      if (!sub_10029C9DC(&v161, &v178, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_10029C9DC(&v161, &v175, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v139 = v178;
  v138 = v179;
  if (a5 > (v179 - v178) >> 3 || a4 > 0x63 || (v170 - v169) >> 3 < a5)
  {
    if (v178 != v179)
    {
      v140 = v170;
      if (v169 != v170)
      {
        do
        {
          v141 = v169;
          if (v169 != v140)
          {
            do
            {
              v142 = *v139;
              v143 = *v141;
              if (*(*v139 + 48) >= *(*v141 + 32) && *(v142 + 32) <= *(v143 + 48))
              {
                v144 = *(v142 + 56) >= *(v143 + 40) && *(v142 + 40) <= *(v143 + 56);
                if (v144 && (*(v142 + 96) & 1) == 0 && (*(v143 + 96) & 1) == 0)
                {
                  if (!sub_10029E468(*(a6 + 40), *a6, v142, *(a6 + 40), *a6, v143, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                  {
                    goto LABEL_245;
                  }

                  v140 = v170;
                }
              }

              v141 += 8;
            }

            while (v141 != v140);
            v138 = v179;
          }

          v139 += 8;
        }

        while (v139 != v138);
      }
    }
  }

  else if ((sub_10029C9DC(&v183, &v178, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_245;
  }

  v150 = v175;
  v149 = v176;
  if (a5 <= (v176 - v175) >> 3 && a4 <= 0x63 && (v167 - v166) >> 3 >= a5)
  {
    if (sub_10029C9DC(&v181, &v175, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11))
    {
      goto LABEL_243;
    }

LABEL_245:
    v156 = 0;
    v157 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v175 != v176)
  {
    v151 = v167;
    if (v166 != v167)
    {
      do
      {
        v152 = v166;
        if (v166 != v151)
        {
          do
          {
            v153 = *v150;
            v154 = *v152;
            if (*(*v150 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48))
            {
              v155 = *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56);
              if (v155 && (*(v153 + 96) & 1) == 0 && (*(v154 + 96) & 1) == 0)
              {
                if (!sub_10029E468(*(a6 + 40), *a6, v153, *(a6 + 40), *a6, v154, 0, *(a6 + 44), *(a6 + 8), *(a6 + 16), *(a6 + 24), *(a6 + 32)))
                {
                  goto LABEL_245;
                }

                v151 = v167;
              }
            }

            v152 += 8;
          }

          while (v152 != v151);
          v149 = v176;
        }

        v150 += 8;
      }

      while (v150 != v149);
    }
  }

LABEL_243:
  v156 = 1;
  v157 = __p;
  if (__p)
  {
LABEL_246:
    v164 = v157;
    operator delete(v157);
  }

LABEL_247:
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  return v156;
}

void sub_10029E39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10029E468(int a1, double **a2, int *a3, int a4, double **a5, int *a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, _BYTE *a12)
{
  v12 = a7;
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v16 = *(a3 + 3);
  if ((v16 & 0x8000000000000000) == 0)
  {
    a2 = &a2[3][3 * v16];
  }

  v17 = *a2;
  v18 = *(a6 + 3);
  if ((v18 & 0x8000000000000000) == 0)
  {
    a5 = &a5[3][3 * v18];
  }

  v19 = a2[1];
  v117 = *a5;
  v123 = a5[1];
  v115 = *a3;
  v122 = *a6;
  v20 = *(a3 + 13);
  v21 = *(a3 + 8);
  v22 = &v17[2 * v21];
  v23 = 2 * *(a3 + 9);
  v116 = &v17[v23 + 2];
  v107 = v19;
  if (2 * v21 == v23)
  {
    v37 = &v17[2 * v21];
    v38 = v22 + 2;
    result = 1;
    v39 = *a5;
    if (v22 + 2 == v116)
    {
      return result;
    }

    goto LABEL_34;
  }

  v24 = 0;
  v25 = v22 + 2;
  v26 = &v17[2 * v21];
  v111 = *(a3 + 13);
  v27 = v111;
  v120 = *(a3 + 8);
  do
  {
    v29 = *(a10 + 24) + (v25[1] - *(a10 + 8)) * *(a10 + 32);
    if (v29 >= 0.0)
    {
      v30 = 0.5;
    }

    else
    {
      v30 = -0.5;
    }

    sub_100274990(v29 + v30);
    v31 = *(a10 + 16) + (*v25 - *a10) * *(a10 + 32);
    if (v31 >= 0.0)
    {
      v32 = 0.5;
    }

    else
    {
      v32 = -0.5;
    }

    v33 = v31 + v32;
    sub_100274990(v31 + v32);
    v34 = ceil(v33);
    v35 = floor(v33);
    if (v33 >= 0.0)
    {
      v34 = v35;
    }

    v36 = v34;
    if (v115 == 1)
    {
      if (*(a6 + 4) <= v36)
      {
        v20 = v27;
        v12 = a7;
        v19 = v107;
        v37 = v26;
        v38 = v26 + 2;
        result = 1;
        v40 = v26 + 2 == v116;
        v39 = v117;
        if (v40)
        {
          return result;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v115 != -1)
      {
        v37 = v22;
        v12 = a7;
        v19 = v107;
        v20 = v111;
        v21 = v120;
        v38 = v22 + 2;
        result = 1;
        v39 = v117;
        if (v22 + 2 == v116)
        {
          return result;
        }

LABEL_34:
        v112 = v20;
        v41 = &v17[2 * (v37 != v17)];
        v114 = v38;
        if (v38 != v19)
        {
          v41 = v38;
        }

        v42 = v41 != v17;
        v43 = v41 + 2;
        v44 = &v17[2 * v42];
        if (v43 == v19)
        {
          v43 = v44;
        }

        v113 = v43;
        v106 = v39 + 2;
        v104 = v17;
        while (1)
        {
          v47 = *(a10 + 24) + (v37[1] - *(a10 + 8)) * *(a10 + 32);
          if (v47 >= 0.0)
          {
            v48 = 0.5;
          }

          else
          {
            v48 = -0.5;
          }

          sub_100274990(v47 + v48);
          v49 = *(a10 + 16) + (*v37 - *a10) * *(a10 + 32);
          if (v49 >= 0.0)
          {
            v50 = 0.5;
          }

          else
          {
            v50 = -0.5;
          }

          v51 = v49 + v50;
          sub_100274990(v49 + v50);
          v52 = ceil(v51);
          v53 = floor(v51);
          if (v51 >= 0.0)
          {
            v52 = v53;
          }

          v54 = v52;
          if (v115 == -1)
          {
            if (*(a6 + 4) > v54)
            {
              return 1;
            }
          }

          else if (v115 == 1 && *(a6 + 6) < v54)
          {
            return 1;
          }

          v55 = *(a10 + 16);
          v157 = *a10;
          v154[0] = a3;
          v154[1] = v21;
          v121 = v21;
          v154[2] = v37;
          v154[3] = v114;
          v154[4] = v113;
          v154[5] = v17;
          v154[6] = v19;
          v155 = 1;
          v156 = 0;
          v158 = v55;
          v57 = *(a6 + 8);
          v56 = *(a6 + 9);
          v58 = &v39[2 * v57];
          v159 = *(a10 + 32);
          v59 = v58 + 2;
          v124 = &v106[2 * v56];
          v109 = v37;
          v110 = *(a6 + 13);
          if (v58 + 2 != v124)
          {
            v60 = 0;
            v103 = &v39[2 * v57];
            v61 = *(a6 + 13);
            v62 = v57;
            do
            {
              v64 = *(a10 + 24) + (v59[1] - *(a10 + 8)) * *(a10 + 32);
              if (v64 >= 0.0)
              {
                v65 = 0.5;
              }

              else
              {
                v65 = -0.5;
              }

              sub_100274990(v64 + v65);
              v66 = *(a10 + 16) + (*v59 - *a10) * *(a10 + 32);
              if (v66 >= 0.0)
              {
                v67 = 0.5;
              }

              else
              {
                v67 = -0.5;
              }

              v68 = v66 + v67;
              sub_100274990(v66 + v67);
              v69 = ceil(v68);
              v70 = floor(v68);
              if (v68 >= 0.0)
              {
                v69 = v70;
              }

              v71 = v69;
              if (v122 == 1)
              {
                if (*(a3 + 4) <= v71)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                if (v122 != -1)
                {
                  v58 = v103;
                  goto LABEL_75;
                }

                if (*(a3 + 6) >= v71)
                {
                  v58 = v59 - 2;
                  v110 += v60;
                  v57 += v60;
                  goto LABEL_75;
                }
              }

              v63 = v59 + 2;
              ++v62;
              ++v61;
              ++v60;
              v58 = v59;
              v59 = v63;
            }

            while (v63 != v124);
            v58 = v63 - 2;
LABEL_73:
            v110 = v61;
            v57 = v62;
LABEL_75:
            v12 = a7;
            v39 = v117;
            v37 = v109;
          }

          v72 = v58 + 2;
          if (v58 + 2 != v124)
          {
            break;
          }

          ++v112;
LABEL_40:
          v37 += 2;
          v45 = v114 + 2;
          v21 = v121 + 1;
          v17 = v104;
          v46 = &v104[2 * (v113 != v104)];
          v19 = v107;
          if (v113 + 2 != v107)
          {
            v46 = v113 + 2;
          }

          v113 = v46;
          v114 += 2;
          if (v45 == v116)
          {
            return 1;
          }
        }

        if (v72 == v123)
        {
          v72 = &v39[2 * (v58 != v39)];
        }

        v73 = v72 != v39;
        v74 = v72 + 2;
        v75 = &v39[2 * v73];
        if (v74 == v123)
        {
          v76 = v75;
        }

        else
        {
          v76 = v74;
        }

        v77 = ++v112 - v110;
        while (2)
        {
          v79 = *(a10 + 24) + (v58[1] - *(a10 + 8)) * *(a10 + 32);
          if (v79 >= 0.0)
          {
            v80 = 0.5;
          }

          else
          {
            v80 = -0.5;
          }

          sub_100274990(v79 + v80);
          v81 = *(a10 + 16) + (*v58 - *a10) * *(a10 + 32);
          if (v81 >= 0.0)
          {
            v82 = 0.5;
          }

          else
          {
            v82 = -0.5;
          }

          v83 = v81 + v82;
          sub_100274990(v81 + v82);
          v84 = ceil(v83);
          v85 = floor(v83);
          if (v83 >= 0.0)
          {
            v84 = v85;
          }

          v86 = v84;
          if (v122 == -1)
          {
            if (*(a3 + 4) > v86)
            {
              goto LABEL_39;
            }
          }

          else if (v122 == 1 && *(a3 + 6) < v86)
          {
            goto LABEL_39;
          }

          v87 = *(a3 + 2);
          if (a1 != a4)
          {
            v88 = *(a3 + 3);
            v90 = *(a6 + 2);
            v89 = *(a6 + 3);
            goto LABEL_110;
          }

          v88 = *(a3 + 3);
          v90 = *(a6 + 2);
          v89 = *(a6 + 3);
          if (v87 != v90)
          {
            goto LABEL_110;
          }

          if (v88 != v89)
          {
            v90 = *(a3 + 2);
            goto LABEL_110;
          }

          if (v12)
          {
            if (v121 >= v57 || (a8 & 1) == 0)
            {
              v89 = *(a3 + 3);
              v90 = *(a3 + 2);
              if (v121 < v57)
              {
                goto LABEL_110;
              }

LABEL_84:
              v78 = v58 + 4;
              v58 += 2;
              ++v57;
              if (v76 + 2 == v123)
              {
                v76 = &v39[2 * (v76 != v39)];
              }

              else
              {
                v76 += 2;
              }

              --v77;
              if (v78 == v124)
              {
LABEL_39:
                v37 = v109;
                goto LABEL_40;
              }

              continue;
            }

LABEL_124:
            if (!v77)
            {
              goto LABEL_84;
            }

            if (!v121)
            {
              v89 = *(a3 + 3);
              v90 = *(a3 + 2);
              if (*(a3 + 11) - 2 <= v57)
              {
                goto LABEL_84;
              }

LABEL_110:
              v91 = *(a10 + 16);
              v151 = *a10;
              v148[0] = a6;
              v148[1] = v57;
              v148[2] = v58;
              v148[3] = v58 + 2;
              v148[4] = v76;
              v148[5] = v39;
              v148[6] = v123;
              v149 = 0;
              v150 = 0;
              v152 = v91;
              v153 = *(a10 + 32);
              v126 = 0;
              v127 = 0;
              v128 = -1;
              v129 = 0;
              v130 = 0;
              v137 = 0;
              v138 = 0;
              v139 = 0;
              v145 = 1;
              v146 = 0;
              v147 = 0;
              v131 = a1;
              v132 = v87;
              v133 = v88;
              v134 = v121;
              v135 = xmmword_1003DB120;
              v136 = 1;
              v140 = a4;
              v141 = v90;
              v142 = v89;
              v143 = v57;
              v144 = xmmword_1003DB120;
              v92 = a11[5];
              sub_10029EDFC(v154, v148, v125, a9, a10, a11);
              v93 = a11[4];
              v94 = a11[1];
              v95 = a11[2];
              v96 = (v94 + 8 * (v93 / 0x14));
              if (v95 == v94)
              {
                v97 = 0;
                if (!v92)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v97 = *v96 + 200 * (v93 % 0x14);
                if (!v92)
                {
                  goto LABEL_117;
                }
              }

              v98 = v92 - 0x70A3D70A3D70A3D7 * ((v97 - *v96) >> 3);
              if (v98 < 1)
              {
                v99 = 19 - v98;
                v96 -= v99 / 0x14;
                v97 = *v96 + 200 * (20 * (v99 / 0x14) - v99) + 3800;
              }

              else
              {
                v96 += v98 / 0x14uLL;
                v97 = *v96 + 200 * (v98 % 0x14uLL);
              }

LABEL_117:
              v39 = v117;
              v100 = a11[5] + v93;
              v101 = (v94 + 8 * (v100 / 0x14));
              if (v95 == v94)
              {
                v102 = 0;
                if (!v97)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v102 = *v101 + 200 * (v100 % 0x14);
                if (v102 == v97)
                {
                  goto LABEL_84;
                }
              }

              if (20 * (v101 - v96) - 0x70A3D70A3D70A3D7 * ((v102 - *v101) >> 3) != 0x8F5C28F5C28F5C29 * ((v97 - *v96) >> 3))
              {
                result = 0;
                *a12 = 1;
                return result;
              }

              goto LABEL_84;
            }
          }

          else if (a8)
          {
            goto LABEL_124;
          }

          break;
        }

        v89 = *(a3 + 3);
        v90 = *(a3 + 2);
        goto LABEL_110;
      }

      if (*(a6 + 6) >= v36)
      {
        v20 = v111 + v24;
        v21 = v120 + v24;
        v37 = v25 - 2;
        goto LABEL_29;
      }
    }

    v28 = v25 + 2;
    ++v21;
    ++v27;
    ++v24;
    v26 = v25;
    v25 = v28;
  }

  while (v28 != v116);
  v37 = v28 - 2;
  v20 = v27;
LABEL_29:
  v12 = a7;
  v19 = v107;
  v38 = v37 + 2;
  result = 1;
  v39 = v117;
  if (v37 + 2 != v116)
  {
    goto LABEL_34;
  }

  return result;
}

void *sub_10029EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v65 = a6;
  v68[0] = a1;
  v68[1] = a2;
  v11 = sub_10027CC2C(&v69, a1, a2, a5);
  v73[0] = a1;
  v73[1] = a5;
  v73[2] = v11;
  v73[3] = &v70;
  v74 = 0;
  v75[0] = a2;
  v75[1] = a5;
  v75[2] = &v71;
  v75[3] = &v72;
  v76 = 0;
  v77[1] = v73;
  v77[2] = v75;
  v78[1] = v75;
  v78[2] = v73;
  v12 = *(a1 + 24);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v67[0] = *(a1 + 16);
  v67[1] = v12;
  v66[0] = v13;
  v66[1] = v14;
  v56 = xmmword_1003D8180;
  v57 = 0uLL;
  v58 = 1uLL;
  *&v54 = *v12 - *v67[0];
  *&v55 = *v14 - *v13;
  *(&v54 + 1) = *(v12 + 8) - *(v67[0] + 1);
  *(&v55 + 1) = *(v14 + 8) - *(v13 + 8);
  sub_10027D14C(&v54, v67, v66, v73, v75, v79);
  v88 = a4;
  v89 = a5;
  if (LOBYTE(v84[0]) == 100)
  {
    return v65;
  }

  v15 = *(a3 + 176);
  *v63 = *(a3 + 160);
  *&v63[16] = v15;
  v64 = *(a3 + 192);
  v16 = *(a3 + 112);
  *&v59[16] = *(a3 + 96);
  v60 = v16;
  v17 = *(a3 + 144);
  v61 = *(a3 + 128);
  v62 = v17;
  v18 = *(a3 + 48);
  v56 = *(a3 + 32);
  v57 = v18;
  v19 = *(a3 + 80);
  v58 = *(a3 + 64);
  *v59 = v19;
  v20 = *(a3 + 16);
  v54 = *a3;
  v55 = v20;
  if (LOBYTE(v84[0]) <= 0x68u)
  {
    if (LOBYTE(v84[0]) == 99)
    {
      if ((v84[0] & 0x100) != 0)
      {
        sub_1002A0B6C(a1, a2, &v54, &v65, v68, v77, nullsub_186);
        return v65;
      }

      if (v86)
      {
        sub_1002A0284(a1, a2, &v54, v79, v84, v77);
        v21 = v65;
        v34 = *(v65 + 1);
        v35 = v65[2];
        v24 = v65[1];
        v36 = 20 * ((v35 - v24) >> 3) - 1;
        if (v35 == v24)
        {
          v36 = 0;
        }

        v26 = v65[5] + v65[4];
        if (v36 != v26)
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_1002A07A4(v65);
LABEL_39:
        v24 = v21[1];
        v26 = v21[5] + v21[4];
LABEL_40:
        v43 = *(v24 + 8 * (v26 / 0x14)) + 200 * (v26 % 0x14);
        *v43 = v54;
        v44 = v55;
        v45 = v56;
        v46 = v58;
        *(v43 + 48) = v57;
        *(v43 + 64) = v46;
        *(v43 + 16) = v44;
        *(v43 + 32) = v45;
        v47 = *v59;
        v48 = *&v59[16];
        v49 = v61;
        *(v43 + 112) = v60;
        *(v43 + 128) = v49;
        *(v43 + 80) = v47;
        *(v43 + 96) = v48;
        v50 = v62;
        v51 = *v63;
        v52 = *&v63[16];
        *(v43 + 192) = v64;
        *(v43 + 160) = v51;
        *(v43 + 176) = v52;
        *(v43 + 144) = v50;
        ++v21[5];
        return v65;
      }

      sub_1002A0530(a1, a2, &v54, v79, v84, v77);
      LODWORD(v55) = 5;
    }

    else
    {
      if (LOBYTE(v84[0]) != 101 || (v84[0] & 0x100) != 0)
      {
        return v65;
      }

      sub_1002A0530(a1, a2, &v54, v79, v84, v77);
    }

    v21 = v65;
    v40 = *(v65 + 1);
    v41 = v65[2];
    v24 = v65[1];
    v42 = 20 * ((v41 - v24) >> 3) - 1;
    if (v41 == v24)
    {
      v42 = 0;
    }

    v26 = v65[5] + v65[4];
    if (v42 != v26)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  switch(LOBYTE(v84[0]))
  {
    case 'i':
      v54 = *&v79[8];
      *&v59[24] = v81;
      *&v59[8] = v80;
      *&v63[24] = v83;
      *&v63[8] = v82;
      v21 = v65;
      v27 = *(v65 + 1);
      v28 = v65[2];
      v24 = v65[1];
      v29 = 20 * ((v28 - v24) >> 3) - 1;
      LODWORD(v55) = 2;
      if (v28 == v24)
      {
        v29 = 0;
      }

      v30 = v85 == 1;
      *(&v56 + 20 * (v85 != 1) + 2) = 1;
      *(&v56 + 20 * v30 + 2) = 2;
      v26 = v21[5] + v21[4];
      if (v29 != v26)
      {
        goto LABEL_40;
      }

      sub_1002A07A4(v21);
      goto LABEL_39;
    case 't':
      sub_10029FBE0(a1, a2, &v54, v79, v84, v77);
      v21 = v65;
      v31 = *(v65 + 1);
      v32 = v65[2];
      v24 = v65[1];
      v33 = 20 * ((v32 - v24) >> 3) - 1;
      if (v32 == v24)
      {
        v33 = 0;
      }

      v26 = v65[5] + v65[4];
      if (v33 != v26)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    case 'm':
      if (v87 == 1)
      {
        sub_10029F3A4(a1, a2, &v54, v79, v84, v77);
        v21 = v65;
        v22 = *(v65 + 1);
        v23 = v65[2];
        v24 = v65[1];
        v25 = 20 * ((v23 - v24) >> 3) - 1;
        if (v23 == v24)
        {
          v25 = 0;
        }

        v26 = v65[5] + v65[4];
        if (v25 != v26)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_10029F7C0(a2, a1, &v54, v79, v84, v78);
        v21 = v65;
        v37 = *(v65 + 1);
        v38 = v65[2];
        v24 = v65[1];
        v39 = 20 * ((v38 - v24) >> 3) - 1;
        if (v38 == v24)
        {
          v39 = 0;
        }

        v26 = v65[5] + v65[4];
        if (v39 != v26)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_38;
  }

  return v65;
}

void sub_10029F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 4;
  *a3 = *(a4 + 8);
  v8 = a5[9];
  if (v8 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a3 + 88) = vdupq_n_s64(1uLL);
      *(a3 + 104) = 0x412E848000000000;
      v9 = a5[10];
      if (v9 != 1)
      {
        goto LABEL_4;
      }

LABEL_7:
      *(a3 + 168) = vdupq_n_s64(1uLL);
      *(a3 + 184) = 0x412E848000000000;
      goto LABEL_11;
    }

    v10 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v10;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (v9 == -1)
  {
    *(a3 + 168) = xmmword_1003D8180;
    *(a3 + 184) = 0;
  }

  else
  {
    v11 = *(a4 + 64);
    *(a3 + 184) = *(a4 + 80);
    *(a3 + 168) = v11;
  }

LABEL_11:
  v12 = a5[7];
  v13 = *(a6 + 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 16), 2);
  v41 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v41);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v41 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  if (!(v12 + v18))
  {
    v20 = a3 + 40;
    *(v20 + 80 * (v18 != -1)) = 1;
    *(v20 + 80 * (v18 == -1)) = 2;
    return;
  }

  v21 = *(a6 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(v21, 2);
  v41 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v41);
  if (v25 == 0.0)
  {
    goto LABEL_24;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v41 * 2.22044605e-16)
    {
LABEL_24:
      v26 = 0;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = *(*(a6 + 8) + 24);
  v41 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v41);
  if (v32 == 0.0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_43;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 <= v41 * 2.22044605e-16)
    {
      goto LABEL_34;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_43:
  if ((v18 & v12) == 0xFFFFFFFF && v26 == 1)
  {
    *(a3 + 40) = 2;
    *(a3 + 120) = 2;
    *(a3 + 20) = 1;
  }

  else if (v12 == 1 && v18 == 1 && v26 == -1)
  {
    *(a3 + 40) = 1;
    if (v33 == -1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    *(a3 + 120) = v35;
    *(a3 + 20) = 1;
  }

  else if (v12 == v18 && v12 == v26)
  {
    v36 = (v26 == 1) ^ (v33 == 0);
    if (v33 * v12 == -1)
    {
      v37 = sub_100280544(a6);
      if (sub_1002805E0(a6) * v37 == 1 && sub_1002806A0(a6) * v33 == -1)
      {
        v36 ^= 1u;
      }
    }

    v38 = a3 + 40;
    *(v38 + 80 * v36) = 1;
    *(v38 + 80 * (v36 ^ 1)) = 2;
    *(a3 + 20) = 1;
  }

  else if (v18)
  {
    *(a3 + 16) = 8;
  }

  else
  {
    if (v12 == v26)
    {
      v39 = 4;
      *(a3 + 40) = 4;
    }

    else
    {
      if (v26 == 1)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      *(a3 + 40) = v40;
      v39 = 3;
    }

    *(a3 + 120) = v39;
  }
}

void sub_10029F7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 4;
  *a3 = *(a4 + 8);
  v8 = a5[9];
  if (v8 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v9 = a5[10];
    if (v9 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v8 != 1)
  {
    v10 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v10;
    v9 = a5[10];
    if (v9 != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(a3 + 168) = vdupq_n_s64(1uLL);
    *(a3 + 184) = 0x412E848000000000;
    goto LABEL_11;
  }

  *(a3 + 88) = vdupq_n_s64(1uLL);
  *(a3 + 104) = 0x412E848000000000;
  v9 = a5[10];
  if (v9 == 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v9 == -1)
  {
    *(a3 + 168) = xmmword_1003D8180;
    *(a3 + 184) = 0;
  }

  else
  {
    v11 = *(a4 + 64);
    *(a3 + 184) = *(a4 + 80);
    *(a3 + 168) = v11;
  }

LABEL_11:
  v12 = a5[5];
  v13 = *(a6 + 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 16), 2);
  v40 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v40);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v40 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  if (!(v12 + v18))
  {
    v20 = a3 + 40;
    *(v20 + 80 * (v18 == -1)) = 1;
    *(v20 + 80 * (v18 != -1)) = 2;
    return;
  }

  v21 = *(a6 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(v21, 2);
  v40 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v40);
  if (v25 == 0.0)
  {
    goto LABEL_24;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v40 * 2.22044605e-16)
    {
LABEL_24:
      v26 = 0;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = *(*(a6 + 8) + 24);
  v40 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v40);
  if (v32 == 0.0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_43;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 <= v40 * 2.22044605e-16)
    {
      goto LABEL_34;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_43:
  if ((v18 & v12) == 0xFFFFFFFF && v26 == 1)
  {
    *(a3 + 40) = 2;
    *(a3 + 120) = 2;
    *(a3 + 20) = 1;
  }

  else if (v12 == 1 && v18 == 1 && v26 == -1)
  {
    if (v33 == -1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    *(a3 + 40) = v35;
    *(a3 + 120) = 1;
    *(a3 + 20) = 1;
  }

  else if (v12 == v18 && v12 == v26)
  {
    v36 = (v26 == 1) ^ (v33 != 0);
    if (v33 * v12 == -1)
    {
      v37 = sub_100280544(a6);
      if (sub_1002805E0(a6) * v37 == 1 && sub_1002806A0(a6) * v33 == -1)
      {
        v36 ^= 1u;
      }
    }

    v38 = a3 + 40;
    *(v38 + 80 * v36) = 1;
    *(v38 + 80 * (v36 ^ 1)) = 2;
    *(a3 + 20) = 1;
  }

  else if (v18)
  {
    *(a3 + 16) = 8;
  }

  else if (v12 == v26)
  {
    *(a3 + 40) = 4;
    *(a3 + 120) = 4;
  }

  else
  {
    if (v26 == 1)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    *(a3 + 120) = v39;
    *(a3 + 40) = 3;
  }
}

void sub_10029FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 3;
  *a3 = *(a4 + 8);
  v9 = a5[9];
  if (v9 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v10 = a5[10];
    if (v10 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v9 == 1)
    {
      *(a3 + 88) = vdupq_n_s64(1uLL);
      *(a3 + 104) = 0x412E848000000000;
      v10 = a5[10];
      if (v10 != 1)
      {
        goto LABEL_4;
      }

LABEL_7:
      *(a3 + 168) = vdupq_n_s64(1uLL);
      *(a3 + 184) = 0x412E848000000000;
      goto LABEL_11;
    }

    v11 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v11;
    v10 = a5[10];
    if (v10 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (v10 == -1)
  {
    *(a3 + 168) = xmmword_1003D8180;
    *(a3 + 184) = 0;
  }

  else
  {
    v12 = *(a4 + 64);
    *(a3 + 184) = *(a4 + 80);
    *(a3 + 168) = v12;
  }

LABEL_11:
  v13 = *(a6 + 16);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 8), 2);
  v79 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v79);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v79 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  v20 = a5[7];
  v21 = *(a6 + 8);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(*(a6 + 16), 2);
  v79 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v79);
  if (v25 == 0.0)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_31;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v79 * 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

LABEL_31:
  if (v26 * v20 == -1)
  {
    v34 = *(a6 + 8);
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    v37 = sub_10027D8FC(v34, 2);
    v79 = 1.0;
    v38 = sub_10027E098(v35, v36, v37, &v79);
    if (v38 == 0.0)
    {
LABEL_35:
      v39 = 0;
      goto LABEL_121;
    }

    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v67 = fabs(v38);
      if (v38 > 0.0)
      {
        v39 = 1;
      }

      else
      {
        v39 = -1;
      }

      if (v67 <= v79 * 2.22044605e-16)
      {
        goto LABEL_35;
      }
    }

    else if (v38 > 0.0)
    {
      v39 = 1;
    }

    else
    {
      v39 = -1;
    }

LABEL_121:
    if (v39 == v20)
    {
      if (!v18)
      {
        *(a3 + 40) = 3;
        v73 = v26 == 1;
        goto LABEL_158;
      }

      if (v18 == v26)
      {
        if (v26 == 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        *(a3 + 40) = v66;
        goto LABEL_153;
      }
    }

    if (v39 == v26)
    {
      v68 = *(a6 + 16);
      v69 = *(v68 + 24);
      v70 = sub_10027D8FC(v68, 2);
      v71 = sub_10027D8FC(*(a6 + 8), 2);
      v79 = 1.0;
      v72 = sub_10027E098(v69, v70, v71, &v79);
      if (v72 == 0.0)
      {
        goto LABEL_130;
      }

      if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v76 = fabs(v72);
        if (v72 > 0.0)
        {
          v74 = 1;
        }

        else
        {
          v74 = -1;
        }

        if (v76 <= v79 * 2.22044605e-16)
        {
          goto LABEL_130;
        }
      }

      else if (v72 > 0.0)
      {
        v74 = 1;
      }

      else
      {
        v74 = -1;
      }

      if (v74 == v26)
      {
        if (v26 == 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = 2;
        }

        *(a3 + 40) = v77;
        if (v26 == 1)
        {
          v66 = 2;
        }

        else
        {
          v66 = 1;
        }

        goto LABEL_153;
      }
    }

    v73 = v26 == 1;
    if (v26 == 1)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    *(a3 + 40) = v78;
LABEL_158:
    if (v73)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    goto LABEL_161;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = sub_10027D8FC(*(a6 + 8), 2);
  v79 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v79);
  if (v32 == 0.0)
  {
LABEL_33:
    v33 = 0;
    goto LABEL_48;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v40 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v40 <= v79 * 2.22044605e-16)
    {
      goto LABEL_33;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_48:
  v41 = *(a6 + 8);
  v42 = *(v41 + 16);
  v43 = *(v41 + 24);
  v44 = sub_10027D8FC(v41, 2);
  v79 = 1.0;
  v45 = sub_10027E098(v42, v43, v44, &v79);
  if (v45 != 0.0)
  {
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v45 > 0.0)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      goto LABEL_58;
    }

    v47 = fabs(v45);
    if (v45 > 0.0)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v47 > v79 * 2.22044605e-16)
    {
      goto LABEL_58;
    }
  }

  v46 = 0;
LABEL_58:
  v48 = *(a6 + 16);
  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  v51 = sub_10027D8FC(v48, 2);
  v79 = 1.0;
  v52 = sub_10027E098(v49, v50, v51, &v79);
  if (v52 == 0.0)
  {
    goto LABEL_59;
  }

  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v52 > 0.0)
    {
      v53 = 1;
    }

    else
    {
      v53 = -1;
    }

    goto LABEL_68;
  }

  v54 = fabs(v52);
  v53 = v52 > 0.0 ? 1 : -1;
  if (v54 <= v79 * 2.22044605e-16)
  {
LABEL_59:
    v53 = 0;
  }

LABEL_68:
  if (v26)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53 * v20 == 1;
  }

  v56 = !v55;
  if (v46 == v20 || v46 == v26 || !(v26 | v20) && v46 != -1)
  {
    if ((v33 != 0) | v56 & 1)
    {
      if (!v18)
      {
        *(a3 + 40) = 3;
        if (v53 == 1)
        {
          v63 = 2;
        }

        else
        {
          v63 = 1;
        }

        if (v56)
        {
          v59 = 3;
        }

        else
        {
          v59 = v63;
        }

        goto LABEL_161;
      }

      if (v18 == v33 && v53 * v18 != -1)
      {
        if (v53 == 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        *(a3 + 40) = v57;
        if (v53 == 1)
        {
          v58 = 2;
        }

        else
        {
          v58 = 1;
        }

        if (v56)
        {
          v59 = 3;
        }

        else
        {
          v59 = v58;
        }

        goto LABEL_161;
      }

      if (!(v33 + v53))
      {
        v64 = v53 == 1;
        if (v53 == 1)
        {
          v65 = 2;
        }

        else
        {
          v65 = 1;
        }

        *(a3 + 40) = v65;
        if (v64)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

LABEL_153:
        *(a3 + 120) = v66;
        *(a3 + 20) = 1;
        return;
      }

      if (v18 != -v53)
      {
        return;
      }

      if (v53 == 1)
      {
        v75 = 2;
      }

      else
      {
        v75 = 1;
      }

      *(a3 + 40) = v75;
      *(a3 + 120) = v75;
      if (v56)
      {
        v59 = 3;
        goto LABEL_161;
      }

LABEL_103:
      *(a3 + 20) = 1;
      return;
    }

LABEL_130:
    v59 = 4;
    *(a3 + 40) = 4;
LABEL_161:
    *(a3 + 120) = v59;
    return;
  }

  if (v53 == 1)
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  *(a3 + 40) = v60;
  if (v26 == 1 || v20 == 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (v56)
  {
    v62 = 3;
  }

  *(a3 + 120) = v62;
  if ((v56 & 1) == 0)
  {
    goto LABEL_103;
  }
}

double sub_1002A0284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10027EEEC((a4 + 64), (a4 + 120));
  *(a3 + 16) = 5;
  *a3 = *(a4 + 16 * v12 + 8);
  v13 = a4 + 56 * v12;
  v14 = *(v13 + 56);
  *(a3 + 88) = *(v13 + 40);
  *(a3 + 104) = v14;
  v15 = *(v13 + 80);
  *(a3 + 168) = *(v13 + 64);
  *(a3 + 184) = v15;
  v16 = *(a5 + 36);
  v17 = *(a6 + 8);
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = sub_10027D8FC(v17, 2);
  v42 = 1.0;
  v21 = sub_10027E098(v18, v19, v20, &v42);
  if (v21 != 0.0)
  {
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v21 > 0.0)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_11;
    }

    v23 = fabs(v21);
    if (v21 > 0.0)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (v23 > v42 * 2.22044605e-16)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_11:
  v24 = *(a6 + 16);
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  v27 = sub_10027D8FC(v24, 2);
  v42 = 1.0;
  v28 = sub_10027E098(v25, v26, v27, &v42);
  if (v28 == 0.0)
  {
    goto LABEL_12;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v28 > 0.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    goto LABEL_21;
  }

  v30 = fabs(v28);
  v29 = v28 > 0.0 ? 1 : -1;
  if (v30 <= v42 * 2.22044605e-16)
  {
LABEL_12:
    v29 = 0;
  }

LABEL_21:
  if (v16 == 1)
  {
    v31 = v22;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 * v16;
  if (v32 == 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  if (v32 == 1)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if (v32)
  {
    v35 = v34;
  }

  else
  {
    v33 = 4;
    v35 = 4;
  }

  *(a3 + 40) = v33;
  *(a3 + 120) = v35;
  if (v22)
  {
    v36 = *a3;
    v37 = *(a3 + 8);
    *(a3 + 112) = (v37 - *(*(a1 + 24) + 8)) * (v37 - *(*(a1 + 24) + 8)) + (*a3 - **(a1 + 24)) * (*a3 - **(a1 + 24));
    if (v29)
    {
LABEL_35:
      v38 = *(a2 + 24);
      v39 = *v38;
      v40 = v38[1];
      goto LABEL_42;
    }
  }

  else
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      sub_10027CED0(a1, *(a1 + 24), a1 + 32);
      *(a1 + 64) = **(a1 + 32);
      *(a1 + 80) = 1;
    }

    v36 = *a3;
    v37 = *(a3 + 8);
    *(a3 + 112) = (v37 - *(a1 + 72)) * (v37 - *(a1 + 72)) + (*a3 - *(a1 + 64)) * (*a3 - *(a1 + 64));
    if (v29)
    {
      goto LABEL_35;
    }
  }

  if ((*(a2 + 80) & 1) == 0)
  {
    sub_10027CED0(a2, *(a2 + 24), a2 + 32);
    *(a2 + 64) = **(a2 + 32);
    *(a2 + 80) = 1;
    v36 = *a3;
    v37 = *(a3 + 8);
  }

  v39 = *(a2 + 64);
  v40 = *(a2 + 72);
LABEL_42:
  result = (v37 - v40) * (v37 - v40) + (v36 - v39) * (v36 - v39);
  *(a3 + 192) = result;
  return result;
}

void sub_1002A0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10027EEEC((a4 + 64), (a4 + 120));
  *(a3 + 16) = 6;
  *a3 = *(a4 + 16 * v9 + 8);
  v10 = a4 + 56 * v9;
  v11 = *(v10 + 56);
  *(a3 + 88) = *(v10 + 40);
  *(a3 + 104) = v11;
  v12 = *(v10 + 80);
  *(a3 + 168) = *(v10 + 64);
  *(a3 + 184) = v12;
  v13 = *(a6 + 16);
  v14 = *(v13 + 24);
  v15 = sub_10027D8FC(v13, 2);
  v16 = sub_10027D8FC(*(a6 + 8), 2);
  v38 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v38);
  if (v17 == 0.0)
  {
LABEL_2:
    v18 = 0;
    goto LABEL_11;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v38 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_11:
  v20 = *(a6 + 8);
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  v23 = sub_10027D8FC(v20, 2);
  v38 = 1.0;
  v24 = sub_10027E098(v21, v22, v23, &v38);
  if (v24 == 0.0)
  {
LABEL_12:
    v25 = 0;
    goto LABEL_21;
  }

  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v26 = fabs(v24);
    if (v24 > 0.0)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    if (v26 <= v38 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v24 > 0.0)
  {
    v25 = 1;
  }

  else
  {
    v25 = -1;
  }

LABEL_21:
  v28 = *(a6 + 8);
  v27 = *(a6 + 16);
  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  v31 = sub_10027D8FC(v27, 2);
  v38 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v38);
  if (v32 == 0.0)
  {
LABEL_22:
    v33 = 0;
    goto LABEL_31;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 > v38 * 2.22044605e-16)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_31:
  if (v18 || v25 != v33)
  {
    if (v33 * v25 == -1)
    {
      v36 = v25 == -1;
    }

    else
    {
      v36 = v18 == -1;
    }

    if (v36)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    *(a3 + 40) = v37;
    if (v36)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }
  }

  else
  {
    v35 = 4;
    *(a3 + 40) = 4;
  }

  *(a3 + 120) = v35;
}

void *sub_1002A07A4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x14;
  v3 = v1 - 20;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_1001C7D6C(a1, &v11);
}

void sub_1002A0B14(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1002A0B6C(uint64_t a1, uint64_t a2, __int128 *a3, void **a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *))
{
  v11 = a3[11];
  *v74 = a3[10];
  *&v74[16] = v11;
  v75 = *(a3 + 24);
  v12 = a3[7];
  *&v70[16] = a3[6];
  v71 = v12;
  v13 = a3[9];
  v72 = a3[8];
  v73 = v13;
  v14 = a3[3];
  v67 = a3[2];
  v68 = v14;
  v15 = a3[5];
  v69 = a3[4];
  *v70 = v15;
  result = a3[1];
  v65 = *a3;
  v66 = result;
  v17 = *(a5 + 496);
  if (*(a5 + 492) != 1)
  {
    goto LABEL_14;
  }

  v18 = *(a6 + 8);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  v21 = sub_10027D8FC(v18, 2);
  v76 = 1.0;
  result.n128_f64[0] = sub_10027E098(v19, v20, v21, &v76);
  if (result.n128_f64[0] == 0.0)
  {
    goto LABEL_14;
  }

  if ((result.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
  {
    if (fabs(result.n128_f64[0]) <= v76 * 2.22044605e-16)
    {
      goto LABEL_14;
    }

    v22 = a5 + 304;
    if (result.n128_f64[0] > 0.0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  v22 = a5 + 304;
  if (result.n128_f64[0] <= 0.0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v23 = 2;
LABEL_9:
  DWORD2(v71) = 3;
  DWORD2(v67) = v23;
  v66.n128_u32[0] = 5;
  v65 = *(v22 + 24);
  v24 = *(v22 + 112);
  *&v70[8] = *(v22 + 96);
  v25 = *(v22 + 120);
  v26 = *(v22 + 136);
  *&v70[24] = v24;
  *&v74[24] = v26;
  *&v74[8] = v25;
  a7(&v65);
  v27 = *a4;
  v28 = *(*a4 + 1);
  v29 = (*a4)[2];
  v30 = (*a4)[1];
  v31 = 20 * ((v29 - v30) >> 3) - 1;
  if (v29 == v30)
  {
    v31 = 0;
  }

  v32 = v27[5] + v27[4];
  if (v31 == v32)
  {
    sub_1002A07A4(*a4);
    v30 = v27[1];
    v32 = v27[5] + v27[4];
  }

  v33 = *(v30 + 8 * (v32 / 0x14)) + 200 * (v32 % 0x14);
  *v33 = v65;
  v34 = v66;
  v35 = v67;
  v36 = v69;
  *(v33 + 48) = v68;
  *(v33 + 64) = v36;
  *(v33 + 16) = v34;
  *(v33 + 32) = v35;
  v37 = *v70;
  v38 = *&v70[16];
  v39 = v72;
  *(v33 + 112) = v71;
  *(v33 + 128) = v39;
  *(v33 + 80) = v37;
  *(v33 + 96) = v38;
  result = v73;
  v40 = *v74;
  v41 = *&v74[16];
  *(v33 + 192) = v75;
  *(v33 + 160) = v40;
  *(v33 + 176) = v41;
  *(v33 + 144) = result;
  ++v27[5];
LABEL_14:
  if (v17 != 1)
  {
    return result;
  }

  v42 = *(a6 + 16);
  v43 = *(v42 + 16);
  v44 = *(v42 + 24);
  v45 = sub_10027D8FC(v42, 2);
  v76 = 1.0;
  result.n128_f64[0] = sub_10027E098(v43, v44, v45, &v76);
  if (result.n128_f64[0] == 0.0)
  {
    return result;
  }

  if ((result.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
  {
    if (fabs(result.n128_f64[0]) <= v76 * 2.22044605e-16)
    {
      return result;
    }

    v46 = a5 + 304;
    if (result.n128_f64[0] > 0.0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v47 = 1;
    goto LABEL_22;
  }

  v46 = a5 + 304;
  if (result.n128_f64[0] <= 0.0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v47 = 2;
LABEL_22:
  DWORD2(v71) = v47;
  DWORD2(v67) = 3;
  v66.n128_u32[0] = 5;
  v65 = *(v46 + 8);
  v48 = *(v46 + 56);
  *&v70[8] = *(v46 + 40);
  *&v70[24] = v48;
  v49 = *(v46 + 80);
  *&v74[8] = *(v46 + 64);
  *&v74[24] = v49;
  a7(&v65);
  v50 = *a4;
  v51 = *(*a4 + 1);
  v52 = (*a4)[2];
  v53 = (*a4)[1];
  v54 = 20 * ((v52 - v53) >> 3) - 1;
  if (v52 == v53)
  {
    v54 = 0;
  }

  v55 = v50[5] + v50[4];
  if (v54 == v55)
  {
    sub_1002A07A4(*a4);
    v53 = v50[1];
    v55 = v50[5] + v50[4];
  }

  v56 = *(v53 + 8 * (v55 / 0x14)) + 200 * (v55 % 0x14);
  *v56 = v65;
  v57 = v66;
  v58 = v67;
  v59 = v69;
  *(v56 + 48) = v68;
  *(v56 + 64) = v59;
  *(v56 + 16) = v57;
  *(v56 + 32) = v58;
  v60 = *v70;
  v61 = *&v70[16];
  v62 = v72;
  *(v56 + 112) = v71;
  *(v56 + 128) = v62;
  *(v56 + 80) = v60;
  *(v56 + 96) = v61;
  result = v73;
  v63 = *v74;
  v64 = *&v74[16];
  *(v56 + 192) = v75;
  *(v56 + 160) = v63;
  *(v56 + 176) = v64;
  *(v56 + 144) = result;
  ++v50[5];
  return result;
}

int8x16_t sub_1002A0F30(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_1004455E8;
  *(a1 + 8) = off_100445618;
  *(a1 + 16) = off_100445640;
  *(a1 + 48) = a3[1].i32[0];
  result = vextq_s8(*a3, *a3, 8uLL);
  *(a1 + 32) = result;
  return result;
}

std::exception *sub_1002A0FAC(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1002A11D0(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1002A1584(exception, a1);
}

void sub_1002A122C(std::exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1002A12D0(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1002A1364(std::exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1002A1420(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);
}

void sub_1002A14A8(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 1);

  operator delete();
}

void sub_1002A154C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1002A1584(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100445660;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_1004455E8;
  a1->n128_u64[1] = off_100445618;
  a1[1].n128_u64[0] = off_100445640;
  return result;
}

uint64_t sub_1002A16B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 10;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 20;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002A1784(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6, char a7)
{
  __p = 0;
  v34 = 0;
  v35 = 0;
  v12 = *a1;
  if (*a1 != a1[1])
  {
    v13 = 0;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 8);
      if (v15 - *v12 >= 0x11)
      {
        *&v27 = 0;
        *(&v27 + 1) = v13;
        v28 = -1;
        sub_100278258(&__p, v14, v15, a3, a2, &v27, 0xAuLL);
      }

      v17 = *(v12 + 24);
      v16 = *(v12 + 32);
      if (v17 != v16)
      {
        v18 = 0;
        do
        {
          v19 = *v17;
          v20 = v17[1];
          if ((v20 - *v17) >= 0x11)
          {
            *&v27 = 0;
            *(&v27 + 1) = v13;
            v28 = v18;
            sub_100278258(&__p, v19, v20, a3, a2, &v27, 0xAuLL);
            v16 = *(v12 + 32);
          }

          v17 += 3;
          ++v18;
        }

        while (v17 != v16);
      }

      v12 += 48;
      ++v13;
    }

    while (v12 != a1[1]);
  }

  *&v27 = a1;
  *(&v27 + 1) = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = a2;
  v26 = a2;
  sub_1002A1914(&__p, &v27, &v26, &v25, 0x10uLL);
  v21 = *a5;
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  return v21 ^ 1u;
}

void sub_1002A18EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    v19 = a1;
    operator delete(__p);
    a1 = v19;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002A1914(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * (&v7[-*a1] >> 3) <= a5)
  {
    if (v8 != v7)
    {
      v20 = (v8 + 216);
      do
      {
        v21 = (v8 + 120);
        if ((v8 + 120) != v7)
        {
          for (i = v20; i - 96 != v7; i += 120)
          {
            if (*(v8 + 48) >= *(i - 8) && *(v8 + 32) <= *(i - 6))
            {
              v23 = *(v8 + 56) >= *(i - 7) && *(v8 + 40) <= *(i - 5);
              if (v23 && (*(v8 + 96) & 1) == 0 && (*i & 1) == 0)
              {
                result = sub_1002A46D4(*(a2 + 10), *a2, v8, *(a2 + 10), *a2, i - 24, 0, *(a2 + 44), a2[1], a2[2], a2[3], a2[4]);
                if (!result)
                {
                  return result;
                }

                v7 = a1[1];
              }
            }
          }
        }

        v20 += 120;
        v8 += 120;
      }

      while (v21 != v7);
    }

    return 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v24 = vnegq_f64(v9);
    v25 = vnegq_f64(0);
    if (v8 != v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x8000000000000000;
      v12 = 0x8000000000000000;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = *(v8 + 32);
      if (v14 != 0x7FFFFFFFFFFFFFFFLL && (v24.f64[0] = *(v8 + 32), v13 = v14, v14 == 0x8000000000000000))
      {
        v15 = *(v8 + 40);
        if (v15 == NAN)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *&v25.f64[0] = v14;
        v12 = v14;
        v15 = *(v8 + 40);
        if (v15 == NAN)
        {
          goto LABEL_15;
        }
      }

      v24.f64[1] = v15;
      v10 = *&v15;
      if (v15 == -0.0)
      {
        v16 = *(v8 + 48);
        if (*&v16 < v13)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

LABEL_15:
      v25.f64[1] = v15;
      v11 = *&v15;
      v16 = *(v8 + 48);
      if (*&v16 < v13)
      {
LABEL_16:
        v24.f64[0] = v16;
        if (*&v16 > v12)
        {
LABEL_17:
          v25.f64[0] = v16;
          v17 = *(v8 + 56);
          if (*&v17 < v10)
          {
LABEL_18:
            v24.f64[1] = v17;
            if (*&v17 > v11)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

LABEL_10:
          if (*&v17 > v11)
          {
LABEL_19:
            v25.f64[1] = v17;
          }

LABEL_20:
          operator new();
        }

LABEL_9:
        v17 = *(v8 + 56);
        if (*&v17 < v10)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

LABEL_8:
      if (*&v16 > v12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    result = sub_1002A1CDC(&v24, &v26, 0, a5, a2, a3, a4, v29);
    if (v26)
    {
      v27 = v26;
      v19 = result;
      operator delete(v26);
      return v19;
    }
  }

  return result;
}

void sub_1002A1CB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    *(v2 - 112) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A1CDC(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1[2];
  v15 = v14 / 2 + *a1 / 2;
  v16 = *a1 % 2;
  v17 = *(a1 + 1);
  v92 = *a1;
  v94 = *(&v17 + 1);
  v90.n128_u64[1] = v92.n128_u64[1];
  v91 = v17;
  v18 = v15 + ((((v14 % 2) + v16 + ((((v14 % 2) + v16) & 0x80) >> 7)) << 24) >> 25);
  v93 = v18;
  v89 = 0;
  v90.n128_u64[0] = v18;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v20 = *a2;
  v19 = *(a2 + 8);
  if (*a2 == v19)
  {
    goto LABEL_43;
  }

  do
  {
    v25 = *v20;
    v26 = *(*v20 + 32);
    if (v93 >= v26 && v92.n128_i64[0] <= v25[6])
    {
      v27 = v94 >= v25[5] && v92.n128_u64[1] <= v25[7];
      if (v91 < v26)
      {
LABEL_16:
        if (!v27)
        {
          goto LABEL_3;
        }

        v29 = &v87;
LABEL_34:
        sub_100279BF0(v29, v20);
        v19 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v27 = 0;
      if (v91 < v26)
      {
        goto LABEL_16;
      }
    }

    if (v18 > v25[6])
    {
      goto LABEL_16;
    }

    v30 = v25[5];
    v31 = v25[7];
    v32 = *(&v91 + 1) >= v30 && v90.n128_u64[1] <= v31;
    v33 = v32;
    v34 = v32 || v27;
    if ((v27 & v33) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v87;
    }

    if (v27)
    {
      v29 = p_p;
    }

    else
    {
      v29 = &v84;
    }

    if (v34)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v37 = __p;
  v36 = v82;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v82)
  {
    v79 = 0u;
    v80 = 0u;
    v38 = vnegq_f64(0);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = __p;
    v42 = v40;
    v43 = v38;
    do
    {
      v44 = *v41++;
      v45 = v44[2];
      v46 = v44[3];
      v47 = vcgtq_s64(v40, v45);
      v48 = vbslq_s8(v47, v45, v42);
      v49 = vbslq_s8(v47, v45, v40);
      v50 = vcgtq_s64(v49, v46);
      v42 = vbslq_s8(v50, v46, v48);
      v40 = vbslq_s8(v50, v46, v49);
      v51 = vcgtq_s64(v45, v38);
      v52 = vbslq_s8(v51, v45, v43);
      v53 = vbslq_s8(v51, v45, v38);
      v54 = vcgtq_s64(v46, v53);
      v43 = vbslq_s8(v54, v46, v52);
      v38 = vbslq_s8(v54, v46, v53);
    }

    while (v41 != v82);
    v79 = v42;
    v80 = v43;
    if (a3 <= 0x63 && (v82 - __p) >> 3 >= a4)
    {
      if (sub_1002A2490(&v79, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v66 = v37 + 8;
      if (v37 + 8 != v36)
      {
        for (i = v37 + 8; i != v36; i += 8)
        {
          v68 = *v37;
          v69 = *i;
          if (*(*v37 + 48) >= *(*i + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v68, *(a5 + 10), *a5, v69, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v36 = v82;
            }
          }
        }
      }

      v37 += 8;
    }

    while (v66 != v36);
LABEL_41:
    if (!sub_1002A231C(&v79, &__p, &v87, a3, a4, a5, v10, v9, v8) || (sub_1002A231C(&v79, &__p, &v84, a3, a4, a5, v10, v9, v8) & 1) == 0)
    {
LABEL_81:
      v64 = 0;
      v65 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v56 = v87;
  v55 = v88;
  if (v13 > 0x63 || (v88 - v87) >> 3 < v12)
  {
LABEL_61:
    while (v56 != v55)
    {
      v57 = v56;
      v56 += 8;
      if (v56 != v55)
      {
        v58 = v56;
        while (1)
        {
          v59 = *v57;
          v60 = *v58;
          if (*(*v57 + 48) >= *(*v58 + 32) && *(v59 + 32) <= *(v60 + 48))
          {
            v61 = *(v59 + 56) >= *(v60 + 40) && *(v59 + 40) <= *(v60 + 56);
            if (v61 && (*(v59 + 96) & 1) == 0 && (*(v60 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v59, *(a5 + 10), *a5, v60, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v55 = v88;
            }
          }

          v58 += 8;
          if (v58 == v55)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_1002A2490(&v92, &v87, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v63 = v84;
  v62 = v85;
  if (v13 <= 0x63 && (v85 - v84) >> 3 >= v12)
  {
    v64 = sub_1002A2490(&v90, &v84, v13 + 1, v12, a5, v10, v9, v8);
    v65 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v82 = v65;
    operator delete(v65);
    goto LABEL_83;
  }

  if (v84 != v85)
  {
    do
    {
      v72 = v63;
      v63 += 8;
      if (v63 != v62)
      {
        for (j = v63; j != v62; j += 8)
        {
          v74 = *v72;
          v75 = *j;
          if (*(*v72 + 48) >= *(*j + 32) && *(v74 + 32) <= *(v75 + 48))
          {
            v76 = *(v74 + 56) >= *(v75 + 40) && *(v74 + 40) <= *(v75 + 56);
            if (v76 && (*(v74 + 96) & 1) == 0 && (*(v75 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v74, *(a5 + 10), *a5, v75, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v62 = v85;
            }
          }
        }
      }
    }

    while (v63 != v62);
  }

  v64 = 1;
  v65 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  return v64;
}

void sub_1002A22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A231C(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v12 = a2[1];
  if (a5 <= v12 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_1002A398C(a1, a2, a3, a4 + 1, a5, a6, a7, a8, a7, a8, a9);
  }

  if (v13 != v12)
  {
    v14 = a3[1];
    if (*a3 != v14)
    {
      do
      {
        v16 = *a3;
        if (*a3 != v14)
        {
          do
          {
            v17 = *v13;
            v18 = *v16;
            if (*(*v13 + 48) >= *(*v16 + 32) && *(v17 + 32) <= *(v18 + 48))
            {
              v19 = *(v17 + 56) >= *(v18 + 40) && *(v17 + 40) <= *(v18 + 56);
              if (v19 && (*(v17 + 96) & 1) == 0 && (*(v18 + 96) & 1) == 0)
              {
                result = sub_1002A46D4(*(a6 + 10), *a6, v17, *(a6 + 10), *a6, v18, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]);
                if (!result)
                {
                  return result;
                }

                v14 = a3[1];
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v12 = a2[1];
        }

        ++v13;
      }

      while (v13 != v12);
    }
  }

  return 1;
}

uint64_t sub_1002A2490(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v15 = a1[1].n128_i64[0];
  v14 = a1[1].n128_i64[1];
  v16 = a1->n128_i64[1];
  v17 = v14 / 2 + v16 / 2;
  v19 = a1[1];
  v94 = *a1;
  v18 = v94;
  v92[0] = v94.n128_u64[0];
  v93 = v19;
  LODWORD(v14) = v14 % 2 + v16 % 2;
  v20 = v17 + ((v14 + ((v14 & 0x80) >> 7)) << 24 >> 25);
  v95 = v15;
  v96 = v20;
  v92[1] = v20;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  __p = 0;
  v84 = 0;
  v85 = 0;
  v22 = *a2;
  v21 = *(a2 + 8);
  if (*a2 == v21)
  {
    goto LABEL_43;
  }

  do
  {
    v27 = *v22;
    v28 = *(*v22 + 32);
    if (v95 >= v28 && v94.n128_i64[0] <= v27[6])
    {
      v29 = v96 >= v27[5] && v94.n128_u64[1] <= v27[7];
      if (v93.n128_i64[0] < v28)
      {
LABEL_16:
        if (!v29)
        {
          goto LABEL_3;
        }

        v31 = &v89;
LABEL_34:
        sub_100279BF0(v31, v22);
        v21 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v29 = 0;
      if (v93.n128_i64[0] < v28)
      {
        goto LABEL_16;
      }
    }

    if (v92[0] > v27[6])
    {
      goto LABEL_16;
    }

    v32 = v27[5];
    v33 = v27[7];
    v34 = v93.n128_i64[1] >= v32 && v20 <= v33;
    v35 = v34;
    v36 = v34 || v29;
    if ((v29 & v35) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v89;
    }

    if (v29)
    {
      v31 = p_p;
    }

    else
    {
      v31 = &v86;
    }

    if (v36)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v22;
  }

  while (v22 != v21);
  v39 = __p;
  v38 = v84;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v84)
  {
    v81 = 0u;
    v82 = 0u;
    v40 = vnegq_f64(0);
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v42 = vnegq_f64(v41);
    v43 = __p;
    v44 = v42;
    v45 = v40;
    do
    {
      v46 = *v43++;
      v47 = v46[2];
      v48 = v46[3];
      v49 = vcgtq_s64(v42, v47);
      v50 = vbslq_s8(v49, v47, v44);
      v51 = vbslq_s8(v49, v47, v42);
      v52 = vcgtq_s64(v51, v48);
      v44 = vbslq_s8(v52, v48, v50);
      v42 = vbslq_s8(v52, v48, v51);
      v53 = vcgtq_s64(v47, v40);
      v54 = vbslq_s8(v53, v47, v45);
      v55 = vbslq_s8(v53, v47, v40);
      v56 = vcgtq_s64(v48, v55);
      v45 = vbslq_s8(v56, v48, v54);
      v40 = vbslq_s8(v56, v48, v55);
    }

    while (v43 != v84);
    v81 = v44;
    v82 = v45;
    if (a3 <= 0x63 && (v84 - __p) >> 3 >= a4)
    {
      if (sub_1002A1CDC(&v81, &__p, a3 + 1, a4, a5, v10, v9, v8, v40, v42))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v68 = v39 + 8;
      if (v39 + 8 != v38)
      {
        for (i = v39 + 8; i != v38; i += 8)
        {
          v70 = *v39;
          v71 = *i;
          if (*(*v39 + 48) >= *(*i + 32) && *(v70 + 32) <= *(v71 + 48))
          {
            v72 = *(v70 + 56) >= *(v71 + 40) && *(v70 + 40) <= *(v71 + 56);
            if (v72 && (*(v70 + 96) & 1) == 0 && (*(v71 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v70, *(a5 + 10), *a5, v71, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v38 = v84;
            }
          }
        }
      }

      v39 += 8;
    }

    while (v68 != v38);
LABEL_41:
    if (!sub_1002A2AD4(&v81, &__p, &v89, a3, a4, a5, v10, v9, v8) || (sub_1002A2AD4(&v81, &__p, &v86, a3, a4, a5, v10, v9, v8) & 1) == 0)
    {
LABEL_81:
      v66 = 0;
      v67 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v58 = v89;
  v57 = v90;
  if (v13 > 0x63 || (v90 - v89) >> 3 < v12)
  {
LABEL_61:
    while (v58 != v57)
    {
      v59 = v58;
      v58 += 8;
      if (v58 != v57)
      {
        v60 = v58;
        while (1)
        {
          v61 = *v59;
          v62 = *v60;
          if (*(*v59 + 48) >= *(*v60 + 32) && *(v61 + 32) <= *(v62 + 48))
          {
            v63 = *(v61 + 56) >= *(v62 + 40) && *(v61 + 40) <= *(v62 + 56);
            if (v63 && (*(v61 + 96) & 1) == 0 && (*(v62 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v61, *(a5 + 10), *a5, v62, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v57 = v90;
            }
          }

          v60 += 8;
          if (v60 == v57)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_1002A1CDC(&v94, &v89, v13 + 1, v12, a5, v10, v9, v8, v18, v19))
  {
    goto LABEL_81;
  }

  v65 = v86;
  v64 = v87;
  if (v13 <= 0x63 && (v87 - v86) >> 3 >= v12)
  {
    v66 = sub_1002A1CDC(v92, &v86, v13 + 1, v12, a5, v10, v9, v8, v18, v19);
    v67 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v84 = v67;
    operator delete(v67);
    goto LABEL_83;
  }

  if (v86 != v87)
  {
    do
    {
      v74 = v65;
      v65 += 8;
      if (v65 != v64)
      {
        for (j = v65; j != v64; j += 8)
        {
          v76 = *v74;
          v77 = *j;
          if (*(*v74 + 48) >= *(*j + 32) && *(v76 + 32) <= *(v77 + 48))
          {
            v78 = *(v76 + 56) >= *(v77 + 40) && *(v76 + 40) <= *(v77 + 56);
            if (v78 && (*(v76 + 96) & 1) == 0 && (*(v77 + 96) & 1) == 0)
            {
              if (!sub_1002A46D4(*(a5 + 10), *a5, v76, *(a5 + 10), *a5, v77, 0, *(a5 + 44), a5[1], a5[2], a5[3], a5[4]))
              {
                goto LABEL_81;
              }

              v64 = v87;
            }
          }
        }
      }
    }

    while (v65 != v64);
  }

  v66 = 1;
  v67 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  return v66;
}

void sub_1002A2A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A2AD4(__n128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v12 = a2[1];
  if (a5 <= v12 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_1002A2C48(a1, a2, a3, a4 + 1, a5, a6, a7, a8, a7, a8, a9);
  }

  if (v13 != v12)
  {
    v14 = a3[1];
    if (*a3 != v14)
    {
      do
      {
        v16 = *a3;
        if (*a3 != v14)
        {
          do
          {
            v17 = *v13;
            v18 = *v16;
            if (*(*v13 + 48) >= *(*v16 + 32) && *(v17 + 32) <= *(v18 + 48))
            {
              v19 = *(v17 + 56) >= *(v18 + 40) && *(v17 + 40) <= *(v18 + 56);
              if (v19 && (*(v17 + 96) & 1) == 0 && (*(v18 + 96) & 1) == 0)
              {
                result = sub_1002A46D4(*(a6 + 10), *a6, v17, *(a6 + 10), *a6, v18, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]);
                if (!result)
                {
                  return result;
                }

                v14 = a3[1];
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v12 = a2[1];
        }

        ++v13;
      }

      while (v13 != v12);
    }
  }

  return 1;
}

uint64_t sub_1002A2C48(__n128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1[1].n128_i64[0];
  v16 = a1[1];
  v18 = a1->n128_u64[0] / 2;
  v189 = *a1;
  v17 = v189;
  v191 = v16.n128_i64[1];
  v187 = v189.n128_i64[1];
  v188 = v16;
  v19 = v15 % 2 + v189.n128_u32[0] - 2 * v18;
  v20 = v15 / 2 + v18 + ((v19 + ((v19 & 0x80) >> 7)) << 24 >> 25);
  v190 = v20;
  v185 = 0;
  v186 = v20;
  v183 = 0;
  v184 = 0;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  __p = 0;
  v169 = 0;
  v170 = 0;
  v22 = *a2;
  v21 = *(a2 + 8);
  if (*a2 != v21)
  {
    do
    {
      v24 = *v22;
      v25 = *(*v22 + 32);
      if (v190 >= v25 && v189.n128_i64[0] <= v24[6])
      {
        v26 = v191 >= v24[5] && v189.n128_u64[1] <= v24[7];
        if (v188.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v26 = 0;
        if (v188.n128_i64[0] < v25)
        {
          goto LABEL_16;
        }
      }

      if (v20 <= v24[6])
      {
        v29 = v24[5];
        v30 = v24[7];
        v31 = v188.n128_i64[1] >= v29 && v187 <= v30;
        v32 = v31;
        v33 = v31 || v26;
        if ((v26 & v32) != 0)
        {
          v34 = &v177;
        }

        else
        {
          v34 = &v183;
        }

        if (v26)
        {
          v28 = v34;
        }

        else
        {
          v28 = &v180;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v26)
      {
        v28 = &v183;
LABEL_34:
        sub_100279BF0(v28, v22);
        v21 = *(a2 + 8);
      }

LABEL_3:
      ++v22;
    }

    while (v22 != v21);
  }

  v36 = *a3;
  v35 = *(a3 + 8);
  if (*a3 != v35)
  {
    do
    {
      v37 = *v36;
      v38 = *(*v36 + 32);
      if (v190 >= v38 && v189.n128_i64[0] <= v37[6])
      {
        v39 = v191 >= v37[5] && v189.n128_u64[1] <= v37[7];
        if (v188.n128_i64[0] < v38)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v39 = 0;
        if (v188.n128_i64[0] < v38)
        {
          goto LABEL_51;
        }
      }

      if (v20 <= v37[6])
      {
        v42 = v37[5];
        v43 = v37[7];
        v44 = v188.n128_i64[1] >= v42 && v187 <= v43;
        v45 = v44;
        v46 = v44 || v39;
        if ((v39 & v45) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v174;
        }

        if (v39)
        {
          v41 = p_p;
        }

        else
        {
          v41 = &v171;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v39)
      {
        goto LABEL_38;
      }

      v41 = &v174;
LABEL_37:
      sub_100279BF0(v41, v36);
      v35 = *(a3 + 8);
LABEL_38:
      ++v36;
    }

    while (v36 != v35);
  }

  v49 = v177;
  v48 = v178;
  if (v177 == v178)
  {
    goto LABEL_133;
  }

  v51 = __p;
  v50 = v169;
  if (a5 > (v178 - v177) >> 3 || a4 > 0x63 || (v169 - __p) >> 3 < a5)
  {
    if (__p != v169)
    {
      do
      {
        v52 = __p;
        if (__p != v50)
        {
          do
          {
            v53 = *v49;
            v54 = *v52;
            if (*(*v49 + 48) >= *(*v52 + 32) && *(v53 + 32) <= *(v54 + 48))
            {
              v55 = *(v53 + 56) >= *(v54 + 40) && *(v53 + 40) <= *(v54 + 56);
              if (v55 && (*(v53 + 96) & 1) == 0 && (*(v54 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v53, *(a6 + 10), *a6, v54, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v50 = v169;
              }
            }

            v52 += 8;
          }

          while (v52 != v50);
          v48 = v178;
        }

        v49 += 8;
      }

      while (v49 != v48);
    }
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
    v56 = vnegq_f64(0);
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v58 = vnegq_f64(v57);
    v59 = v58;
    v60 = v56;
    do
    {
      v61 = *v49;
      v49 += 8;
      v62 = v61[2];
      v63 = v61[3];
      v64 = vcgtq_s64(v58, v62);
      v65 = vbslq_s8(v64, v62, v59);
      v66 = vbslq_s8(v64, v62, v58);
      v67 = vcgtq_s64(v66, v63);
      v59 = vbslq_s8(v67, v63, v65);
      v58 = vbslq_s8(v67, v63, v66);
      v68 = vcgtq_s64(v62, v56);
      v69 = vbslq_s8(v68, v62, v60);
      v70 = vbslq_s8(v68, v62, v56);
      v71 = vcgtq_s64(v63, v70);
      v60 = vbslq_s8(v71, v63, v69);
      v56 = vbslq_s8(v71, v63, v70);
    }

    while (v49 != v178);
    v166 = v59;
    v167 = v60;
    if (__p != v169)
    {
      v72 = v59;
      v73 = v60;
      do
      {
        v74 = *v51++;
        v75 = v74[2];
        v76 = v74[3];
        v77 = vcgtq_s64(v59, v75);
        v78 = vbslq_s8(v77, v75, v72);
        v79 = vbslq_s8(v77, v75, v59);
        v80 = vcgtq_s64(v79, v76);
        v72 = vbslq_s8(v80, v76, v78);
        v59 = vbslq_s8(v80, v76, v79);
        v81 = vcgtq_s64(v75, v60);
        v82 = vbslq_s8(v81, v75, v73);
        v83 = vbslq_s8(v81, v75, v60);
        v84 = vcgtq_s64(v76, v83);
        v73 = vbslq_s8(v84, v76, v82);
        v60 = vbslq_s8(v84, v76, v83);
      }

      while (v51 != v169);
      v166 = v72;
      v167 = v73;
    }

    if ((sub_1002A398C(&v166, &v177, &__p, a4 + 1, a5, a6, a7, a8, v59, v60, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v85 = v175;
  if (a5 <= (v175 - v174) >> 3)
  {
    v87 = v177;
    v86 = v178;
    if (a5 <= (v172 - v171) >> 3 && a4 <= 0x63 && (v178 - v177) >> 3 >= a5)
    {
      v92.f64[0] = NAN;
      v92.f64[1] = NAN;
      v93 = vnegq_f64(v92);
      v94 = vnegq_f64(0);
      v166 = v93;
      v167 = v94;
      if (v177 != v178)
      {
        v95 = v93;
        v96 = v94;
        do
        {
          v97 = *v87;
          v87 += 8;
          v98 = v97[2];
          v99 = v97[3];
          v100 = vcgtq_s64(v93, v98);
          v101 = vbslq_s8(v100, v98, v95);
          v102 = vbslq_s8(v100, v98, v93);
          v103 = vcgtq_s64(v102, v99);
          v95 = vbslq_s8(v103, v99, v101);
          v93 = vbslq_s8(v103, v99, v102);
          v104 = vcgtq_s64(v98, v94);
          v105 = vbslq_s8(v104, v98, v96);
          v106 = vbslq_s8(v104, v98, v94);
          v107 = vcgtq_s64(v99, v106);
          v96 = vbslq_s8(v107, v99, v105);
          v94 = vbslq_s8(v107, v99, v106);
        }

        while (v87 != v178);
        v166 = v95;
        v167 = v96;
      }

      if (!sub_1002A398C(&v166, &v177, &v174, a4 + 1, a5, a6, a7, a8, v93, v94, a9, a10, a11) || (sub_1002A398C(&v166, &v177, &v171, a4 + 1, a5, a6, a7, a8, v108, v109, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v87 = v177;
    v86 = v178;
  }

  if (v87 == v86 || v174 == v175)
  {
    if (v87 == v86)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v88 = v174;
    if (v174 != v85)
    {
      do
      {
        v89 = *v87;
        v90 = *v88;
        if (*(*v87 + 48) >= *(*v88 + 32) && *(v89 + 32) <= *(v90 + 48))
        {
          v91 = *(v89 + 56) >= *(v90 + 40) && *(v89 + 40) <= *(v90 + 56);
          if (v91 && (*(v89 + 96) & 1) == 0 && (*(v90 + 96) & 1) == 0)
          {
            if (!sub_1002A46D4(*(a6 + 10), *a6, v89, *(a6 + 10), *a6, v90, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
            {
              goto LABEL_245;
            }

            v85 = v175;
          }
        }

        v88 += 8;
      }

      while (v88 != v85);
      v86 = v178;
    }

    v87 += 8;
  }

  while (v87 != v86);
  v87 = v177;
  if (v177 != v86)
  {
LABEL_132:
    v110 = v172;
    if (v171 != v172)
    {
      do
      {
        v137 = v171;
        if (v171 != v110)
        {
          do
          {
            v138 = *v87;
            v139 = *v137;
            if (*(*v87 + 48) >= *(*v137 + 32) && *(v138 + 32) <= *(v139 + 48))
            {
              v140 = *(v138 + 56) >= *(v139 + 40) && *(v138 + 40) <= *(v139 + 56);
              if (v140 && (*(v138 + 96) & 1) == 0 && (*(v139 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v138, *(a6 + 10), *a6, v139, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v110 = v172;
              }
            }

            v137 += 8;
          }

          while (v137 != v110);
          v86 = v178;
        }

        v87 += 8;
      }

      while (v87 != v86);
    }
  }

LABEL_133:
  v112 = __p;
  v111 = v169;
  if (__p != v169)
  {
    v114 = v183;
    v113 = v184;
    if (a5 > (v184 - v183) >> 3 || a5 > (v181 - v180) >> 3 || a4 > 0x63 || (v169 - __p) >> 3 < a5)
    {
      while (v114 != v113)
      {
        v133 = __p;
        if (__p != v111)
        {
          do
          {
            v134 = *v114;
            v135 = *v133;
            if (*(*v114 + 48) >= *(*v133 + 32) && *(v134 + 32) <= *(v135 + 48))
            {
              v136 = *(v134 + 56) >= *(v135 + 40) && *(v134 + 40) <= *(v135 + 56);
              if (v136 && (*(v134 + 96) & 1) == 0 && (*(v135 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v134, *(a6 + 10), *a6, v135, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v111 = v169;
              }
            }

            v133 += 8;
          }

          while (v133 != v111);
          v113 = v184;
        }

        v114 += 8;
      }

      v142 = v180;
      v141 = v181;
      if (v180 != v181 && __p != v111)
      {
        do
        {
          v150 = __p;
          if (__p != v111)
          {
            do
            {
              v151 = *v142;
              v152 = *v150;
              if (*(*v142 + 48) >= *(*v150 + 32) && *(v151 + 32) <= *(v152 + 48))
              {
                v153 = *(v151 + 56) >= *(v152 + 40) && *(v151 + 40) <= *(v152 + 56);
                if (v153 && (*(v151 + 96) & 1) == 0 && (*(v152 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v151, *(a6 + 10), *a6, v152, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v111 = v169;
                }
              }

              v150 += 8;
            }

            while (v150 != v111);
            v141 = v181;
          }

          v142 += 8;
        }

        while (v142 != v141);
      }
    }

    else
    {
      v166 = 0u;
      v167 = 0u;
      v115 = vnegq_f64(0);
      v116.f64[0] = NAN;
      v116.f64[1] = NAN;
      v117 = vnegq_f64(v116);
      v118 = v117;
      v119 = v115;
      do
      {
        v120 = *v112++;
        v121 = v120[2];
        v122 = v120[3];
        v123 = vcgtq_s64(v117, v121);
        v124 = vbslq_s8(v123, v121, v118);
        v125 = vbslq_s8(v123, v121, v117);
        v126 = vcgtq_s64(v125, v122);
        v118 = vbslq_s8(v126, v122, v124);
        v117 = vbslq_s8(v126, v122, v125);
        v127 = vcgtq_s64(v121, v115);
        v128 = vbslq_s8(v127, v121, v119);
        v129 = vbslq_s8(v127, v121, v115);
        v130 = vcgtq_s64(v122, v129);
        v119 = vbslq_s8(v130, v122, v128);
        v115 = vbslq_s8(v130, v122, v129);
      }

      while (v112 != v169);
      v166 = v118;
      v167 = v119;
      if (!sub_1002A398C(&v166, &v183, &__p, a4 + 1, a5, a6, a7, a8, v115, v117, a9, a10, a11) || (sub_1002A398C(&v166, &v180, &__p, a4 + 1, a5, a6, a7, a8, v131, v132, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v144 = v183;
  v143 = v184;
  if (a5 > (v184 - v183) >> 3 || a4 > 0x63 || (v175 - v174) >> 3 < a5)
  {
    if (v183 != v184)
    {
      v145 = v175;
      if (v174 != v175)
      {
        do
        {
          v146 = v174;
          if (v174 != v145)
          {
            do
            {
              v147 = *v144;
              v148 = *v146;
              if (*(*v144 + 48) >= *(*v146 + 32) && *(v147 + 32) <= *(v148 + 48))
              {
                v149 = *(v147 + 56) >= *(v148 + 40) && *(v147 + 40) <= *(v148 + 56);
                if (v149 && (*(v147 + 96) & 1) == 0 && (*(v148 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v147, *(a6 + 10), *a6, v148, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v145 = v175;
                }
              }

              v146 += 8;
            }

            while (v146 != v145);
            v143 = v184;
          }

          v144 += 8;
        }

        while (v144 != v143);
      }
    }
  }

  else if ((sub_1002A398C(&v189, &v183, &v174, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_245;
  }

  v155 = v180;
  v154 = v181;
  if (a5 <= (v181 - v180) >> 3 && a4 <= 0x63 && (v172 - v171) >> 3 >= a5)
  {
    if (sub_1002A398C(&v186, &v180, &v171, a4 + 1, a5, a6, a7, a8, v16, v17, a9, a10, a11))
    {
      goto LABEL_243;
    }

LABEL_245:
    v161 = 0;
    v162 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v180 != v181)
  {
    v156 = v172;
    if (v171 != v172)
    {
      do
      {
        v157 = v171;
        if (v171 != v156)
        {
          do
          {
            v158 = *v155;
            v159 = *v157;
            if (*(*v155 + 48) >= *(*v157 + 32) && *(v158 + 32) <= *(v159 + 48))
            {
              v160 = *(v158 + 56) >= *(v159 + 40) && *(v158 + 40) <= *(v159 + 56);
              if (v160 && (*(v158 + 96) & 1) == 0 && (*(v159 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v158, *(a6 + 10), *a6, v159, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v156 = v172;
              }
            }

            v157 += 8;
          }

          while (v157 != v156);
          v154 = v181;
        }

        v155 += 8;
      }

      while (v155 != v154);
    }
  }

LABEL_243:
  v161 = 1;
  v162 = __p;
  if (__p)
  {
LABEL_246:
    v169 = v162;
    operator delete(v162);
  }

LABEL_247:
  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  if (v174)
  {
    v175 = v174;
    operator delete(v174);
  }

  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  if (v180)
  {
    v181 = v180;
    operator delete(v180);
  }

  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  return v161;
}

void sub_1002A38C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A398C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *(a1 + 24);
  v16 = *a1;
  v182 = *(a1 + 16);
  v183 = v16;
  v17 = *(a1 + 8);
  v18 = v15 / 2 + v17 / 2;
  v181.n128_u64[0] = v16.n128_u64[0];
  LODWORD(v15) = v15 % 2 + v17 % 2;
  v19 = v18 + ((v15 + ((v15 & 0x80) >> 7)) << 24 >> 25);
  v184 = v182;
  v185 = v19;
  v181.n128_u64[1] = v19;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  __p = 0;
  v164 = 0;
  v165 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 != v20)
  {
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 32);
      if (v184 >= v24 && v183.n128_i64[0] <= v23[6])
      {
        v25 = v185 >= v23[5] && v183.n128_u64[1] <= v23[7];
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v25 = 0;
        if (v182 < v24)
        {
          goto LABEL_16;
        }
      }

      if (v181.n128_i64[0] <= v23[6])
      {
        v28 = v23[5];
        v29 = v23[7];
        v30 = *(&v182 + 1) >= v28 && v19 <= v29;
        v31 = v30;
        v32 = v30 || v25;
        if ((v25 & v31) != 0)
        {
          v33 = &v172;
        }

        else
        {
          v33 = &v178;
        }

        if (v25)
        {
          v27 = v33;
        }

        else
        {
          v27 = &v175;
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v25)
      {
        v27 = &v178;
LABEL_34:
        sub_100279BF0(v27, v21);
        v20 = *(a2 + 8);
      }

LABEL_3:
      ++v21;
    }

    while (v21 != v20);
  }

  v35 = *a3;
  v34 = *(a3 + 8);
  if (*a3 != v34)
  {
    do
    {
      v36 = *v35;
      v37 = *(*v35 + 32);
      if (v184 >= v37 && v183.n128_i64[0] <= v36[6])
      {
        v38 = v185 >= v36[5] && v183.n128_u64[1] <= v36[7];
        if (v182 < v37)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v38 = 0;
        if (v182 < v37)
        {
          goto LABEL_51;
        }
      }

      if (v181.n128_i64[0] <= v36[6])
      {
        v41 = v36[5];
        v42 = v36[7];
        v43 = *(&v182 + 1) >= v41 && v19 <= v42;
        v44 = v43;
        v45 = v43 || v38;
        if ((v38 & v44) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v169;
        }

        if (v38)
        {
          v40 = p_p;
        }

        else
        {
          v40 = &v166;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v38)
      {
        goto LABEL_38;
      }

      v40 = &v169;
LABEL_37:
      sub_100279BF0(v40, v35);
      v34 = *(a3 + 8);
LABEL_38:
      ++v35;
    }

    while (v35 != v34);
  }

  v48 = v172;
  v47 = v173;
  if (v172 == v173)
  {
    goto LABEL_133;
  }

  v50 = __p;
  v49 = v164;
  if (a5 > (v173 - v172) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
  {
    if (__p != v164)
    {
      do
      {
        v51 = __p;
        if (__p != v49)
        {
          do
          {
            v52 = *v48;
            v53 = *v51;
            if (*(*v48 + 48) >= *(*v51 + 32) && *(v52 + 32) <= *(v53 + 48))
            {
              v54 = *(v52 + 56) >= *(v53 + 40) && *(v52 + 40) <= *(v53 + 56);
              if (v54 && (*(v52 + 96) & 1) == 0 && (*(v53 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v52, *(a6 + 10), *a6, v53, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v49 = v164;
              }
            }

            v51 += 8;
          }

          while (v51 != v49);
          v47 = v173;
        }

        v48 += 8;
      }

      while (v48 != v47);
    }
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
    v55 = vnegq_f64(0);
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v57 = vnegq_f64(v56);
    v58 = v57;
    v59 = v55;
    do
    {
      v60 = *v48;
      v48 += 8;
      v61 = v60[2];
      v62 = v60[3];
      v63 = vcgtq_s64(v57, v61);
      v64 = vbslq_s8(v63, v61, v58);
      v65 = vbslq_s8(v63, v61, v57);
      v66 = vcgtq_s64(v65, v62);
      v58 = vbslq_s8(v66, v62, v64);
      v57 = vbslq_s8(v66, v62, v65);
      v67 = vcgtq_s64(v61, v55);
      v68 = vbslq_s8(v67, v61, v59);
      v69 = vbslq_s8(v67, v61, v55);
      v70 = vcgtq_s64(v62, v69);
      v59 = vbslq_s8(v70, v62, v68);
      v55 = vbslq_s8(v70, v62, v69);
    }

    while (v48 != v173);
    v161 = v58;
    v162 = v59;
    if (__p != v164)
    {
      v71 = v58;
      v72 = v59;
      do
      {
        v73 = *v50++;
        v74 = v73[2];
        v75 = v73[3];
        v76 = vcgtq_s64(v58, v74);
        v77 = vbslq_s8(v76, v74, v71);
        v78 = vbslq_s8(v76, v74, v58);
        v79 = vcgtq_s64(v78, v75);
        v71 = vbslq_s8(v79, v75, v77);
        v58 = vbslq_s8(v79, v75, v78);
        v80 = vcgtq_s64(v74, v59);
        v81 = vbslq_s8(v80, v74, v72);
        v82 = vbslq_s8(v80, v74, v59);
        v83 = vcgtq_s64(v75, v82);
        v72 = vbslq_s8(v83, v75, v81);
        v59 = vbslq_s8(v83, v75, v82);
      }

      while (v50 != v164);
      v161 = v71;
      v162 = v72;
    }

    if ((sub_1002A2C48(&v161, &v172, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v84 = v170;
  if (a5 <= (v170 - v169) >> 3)
  {
    v86 = v172;
    v85 = v173;
    if (a5 <= (v167 - v166) >> 3 && a4 <= 0x63 && (v173 - v172) >> 3 >= a5)
    {
      v91.f64[0] = NAN;
      v91.f64[1] = NAN;
      v92 = vnegq_f64(v91);
      v93 = vnegq_f64(0);
      v161 = v92;
      v162 = v93;
      if (v172 != v173)
      {
        v94 = v92;
        v95 = v93;
        do
        {
          v96 = *v86;
          v86 += 8;
          v97 = v96[2];
          v98 = v96[3];
          v99 = vcgtq_s64(v92, v97);
          v100 = vbslq_s8(v99, v97, v94);
          v101 = vbslq_s8(v99, v97, v92);
          v102 = vcgtq_s64(v101, v98);
          v94 = vbslq_s8(v102, v98, v100);
          v92 = vbslq_s8(v102, v98, v101);
          v103 = vcgtq_s64(v97, v93);
          v104 = vbslq_s8(v103, v97, v95);
          v105 = vbslq_s8(v103, v97, v93);
          v106 = vcgtq_s64(v98, v105);
          v95 = vbslq_s8(v106, v98, v104);
          v93 = vbslq_s8(v106, v98, v105);
        }

        while (v86 != v173);
        v161 = v94;
        v162 = v95;
      }

      if (!sub_1002A2C48(&v161, &v172, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A2C48(&v161, &v172, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v86 = v172;
    v85 = v173;
  }

  if (v86 == v85 || v169 == v170)
  {
    if (v86 == v85)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v87 = v169;
    if (v169 != v84)
    {
      do
      {
        v88 = *v86;
        v89 = *v87;
        if (*(*v86 + 48) >= *(*v87 + 32) && *(v88 + 32) <= *(v89 + 48))
        {
          v90 = *(v88 + 56) >= *(v89 + 40) && *(v88 + 40) <= *(v89 + 56);
          if (v90 && (*(v88 + 96) & 1) == 0 && (*(v89 + 96) & 1) == 0)
          {
            if (!sub_1002A46D4(*(a6 + 10), *a6, v88, *(a6 + 10), *a6, v89, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
            {
              goto LABEL_245;
            }

            v84 = v170;
          }
        }

        v87 += 8;
      }

      while (v87 != v84);
      v85 = v173;
    }

    v86 += 8;
  }

  while (v86 != v85);
  v86 = v172;
  if (v172 != v85)
  {
LABEL_132:
    v107 = v167;
    if (v166 != v167)
    {
      do
      {
        v132 = v166;
        if (v166 != v107)
        {
          do
          {
            v133 = *v86;
            v134 = *v132;
            if (*(*v86 + 48) >= *(*v132 + 32) && *(v133 + 32) <= *(v134 + 48))
            {
              v135 = *(v133 + 56) >= *(v134 + 40) && *(v133 + 40) <= *(v134 + 56);
              if (v135 && (*(v133 + 96) & 1) == 0 && (*(v134 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v133, *(a6 + 10), *a6, v134, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v107 = v167;
              }
            }

            v132 += 8;
          }

          while (v132 != v107);
          v85 = v173;
        }

        v86 += 8;
      }

      while (v86 != v85);
    }
  }

LABEL_133:
  v109 = __p;
  v108 = v164;
  if (__p != v164)
  {
    v111 = v178;
    v110 = v179;
    if (a5 > (v179 - v178) >> 3 || a5 > (v176 - v175) >> 3 || a4 > 0x63 || (v164 - __p) >> 3 < a5)
    {
      while (v111 != v110)
      {
        v128 = __p;
        if (__p != v108)
        {
          do
          {
            v129 = *v111;
            v130 = *v128;
            if (*(*v111 + 48) >= *(*v128 + 32) && *(v129 + 32) <= *(v130 + 48))
            {
              v131 = *(v129 + 56) >= *(v130 + 40) && *(v129 + 40) <= *(v130 + 56);
              if (v131 && (*(v129 + 96) & 1) == 0 && (*(v130 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v129, *(a6 + 10), *a6, v130, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v108 = v164;
              }
            }

            v128 += 8;
          }

          while (v128 != v108);
          v110 = v179;
        }

        v111 += 8;
      }

      v137 = v175;
      v136 = v176;
      if (v175 != v176 && __p != v108)
      {
        do
        {
          v145 = __p;
          if (__p != v108)
          {
            do
            {
              v146 = *v137;
              v147 = *v145;
              if (*(*v137 + 48) >= *(*v145 + 32) && *(v146 + 32) <= *(v147 + 48))
              {
                v148 = *(v146 + 56) >= *(v147 + 40) && *(v146 + 40) <= *(v147 + 56);
                if (v148 && (*(v146 + 96) & 1) == 0 && (*(v147 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v146, *(a6 + 10), *a6, v147, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v108 = v164;
                }
              }

              v145 += 8;
            }

            while (v145 != v108);
            v136 = v176;
          }

          v137 += 8;
        }

        while (v137 != v136);
      }
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
      v112 = vnegq_f64(0);
      v113.f64[0] = NAN;
      v113.f64[1] = NAN;
      v114 = vnegq_f64(v113);
      v115 = v114;
      v116 = v112;
      do
      {
        v117 = *v109++;
        v118 = v117[2];
        v119 = v117[3];
        v120 = vcgtq_s64(v114, v118);
        v121 = vbslq_s8(v120, v118, v115);
        v122 = vbslq_s8(v120, v118, v114);
        v123 = vcgtq_s64(v122, v119);
        v115 = vbslq_s8(v123, v119, v121);
        v114 = vbslq_s8(v123, v119, v122);
        v124 = vcgtq_s64(v118, v112);
        v125 = vbslq_s8(v124, v118, v116);
        v126 = vbslq_s8(v124, v118, v112);
        v127 = vcgtq_s64(v119, v126);
        v116 = vbslq_s8(v127, v119, v125);
        v112 = vbslq_s8(v127, v119, v126);
      }

      while (v109 != v164);
      v161 = v115;
      v162 = v116;
      if (!sub_1002A2C48(&v161, &v178, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) || (sub_1002A2C48(&v161, &v175, &__p, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v139 = v178;
  v138 = v179;
  if (a5 > (v179 - v178) >> 3 || a4 > 0x63 || (v170 - v169) >> 3 < a5)
  {
    if (v178 != v179)
    {
      v140 = v170;
      if (v169 != v170)
      {
        do
        {
          v141 = v169;
          if (v169 != v140)
          {
            do
            {
              v142 = *v139;
              v143 = *v141;
              if (*(*v139 + 48) >= *(*v141 + 32) && *(v142 + 32) <= *(v143 + 48))
              {
                v144 = *(v142 + 56) >= *(v143 + 40) && *(v142 + 40) <= *(v143 + 56);
                if (v144 && (*(v142 + 96) & 1) == 0 && (*(v143 + 96) & 1) == 0)
                {
                  if (!sub_1002A46D4(*(a6 + 10), *a6, v142, *(a6 + 10), *a6, v143, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                  {
                    goto LABEL_245;
                  }

                  v140 = v170;
                }
              }

              v141 += 8;
            }

            while (v141 != v140);
            v138 = v179;
          }

          v139 += 8;
        }

        while (v139 != v138);
      }
    }
  }

  else if ((sub_1002A2C48(&v183, &v178, &v169, a4 + 1, a5, a6, a7, a8, a9, a10, a11) & 1) == 0)
  {
    goto LABEL_245;
  }

  v150 = v175;
  v149 = v176;
  if (a5 <= (v176 - v175) >> 3 && a4 <= 0x63 && (v167 - v166) >> 3 >= a5)
  {
    if (sub_1002A2C48(&v181, &v175, &v166, a4 + 1, a5, a6, a7, a8, a9, a10, a11))
    {
      goto LABEL_243;
    }

LABEL_245:
    v156 = 0;
    v157 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v175 != v176)
  {
    v151 = v167;
    if (v166 != v167)
    {
      do
      {
        v152 = v166;
        if (v166 != v151)
        {
          do
          {
            v153 = *v150;
            v154 = *v152;
            if (*(*v150 + 48) >= *(*v152 + 32) && *(v153 + 32) <= *(v154 + 48))
            {
              v155 = *(v153 + 56) >= *(v154 + 40) && *(v153 + 40) <= *(v154 + 56);
              if (v155 && (*(v153 + 96) & 1) == 0 && (*(v154 + 96) & 1) == 0)
              {
                if (!sub_1002A46D4(*(a6 + 10), *a6, v153, *(a6 + 10), *a6, v154, 0, *(a6 + 44), a6[1], a6[2], a6[3], a6[4]))
                {
                  goto LABEL_245;
                }

                v151 = v167;
              }
            }

            v152 += 8;
          }

          while (v152 != v151);
          v149 = v176;
        }

        v150 += 8;
      }

      while (v150 != v149);
    }
  }

LABEL_243:
  v156 = 1;
  v157 = __p;
  if (__p)
  {
LABEL_246:
    v164 = v157;
    operator delete(v157);
  }

LABEL_247:
  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  if (v169)
  {
    v170 = v169;
    operator delete(v169);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  return v156;
}

void sub_1002A4608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A46D4(int a1, void *a2, int *a3, int a4, void *a5, int *a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, _BYTE *a12)
{
  v12 = a7;
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v16 = *(a3 + 3);
  v17 = (*a2 + 48 * *(a3 + 2));
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = &v17[3][3 * v16];
  }

  v18 = *v17;
  v19 = *(a6 + 3);
  v20 = (*a5 + 48 * *(a6 + 2));
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = &v20[3][3 * v19];
  }

  v21 = v17[1];
  v119 = *v20;
  v125 = v20[1];
  v117 = *a3;
  v124 = *a6;
  v22 = *(a3 + 13);
  v23 = *(a3 + 8);
  v24 = &v18[2 * v23];
  v25 = 2 * *(a3 + 9);
  v118 = &v18[v25 + 2];
  v109 = v21;
  if (2 * v23 == v25)
  {
    v39 = &v18[2 * v23];
    v40 = v24 + 2;
    result = 1;
    v41 = v119;
    if (v24 + 2 == v118)
    {
      return result;
    }

    goto LABEL_34;
  }

  v26 = 0;
  v27 = v24 + 2;
  v28 = &v18[2 * v23];
  v113 = *(a3 + 13);
  v29 = v113;
  v122 = *(a3 + 8);
  do
  {
    v31 = *(a10 + 24) + (v27[1] - *(a10 + 8)) * *(a10 + 32);
    if (v31 >= 0.0)
    {
      v32 = 0.5;
    }

    else
    {
      v32 = -0.5;
    }

    sub_100274990(v31 + v32);
    v33 = *(a10 + 16) + (*v27 - *a10) * *(a10 + 32);
    if (v33 >= 0.0)
    {
      v34 = 0.5;
    }

    else
    {
      v34 = -0.5;
    }

    v35 = v33 + v34;
    sub_100274990(v33 + v34);
    v36 = ceil(v35);
    v37 = floor(v35);
    if (v35 >= 0.0)
    {
      v36 = v37;
    }

    v38 = v36;
    if (v117 == 1)
    {
      if (*(a6 + 4) <= v38)
      {
        v22 = v29;
        v12 = a7;
        v21 = v109;
        v39 = v28;
        v40 = v28 + 2;
        result = 1;
        v42 = v28 + 2 == v118;
        v41 = v119;
        if (v42)
        {
          return result;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v117 != -1)
      {
        v39 = v24;
        v12 = a7;
        v21 = v109;
        v22 = v113;
        v23 = v122;
        v40 = v24 + 2;
        result = 1;
        v41 = v119;
        if (v24 + 2 == v118)
        {
          return result;
        }

LABEL_34:
        v114 = v22;
        v43 = &v18[2 * (v39 != v18)];
        v116 = v40;
        if (v40 != v21)
        {
          v43 = v40;
        }

        v44 = v43 != v18;
        v45 = v43 + 2;
        v46 = &v18[2 * v44];
        if (v45 == v21)
        {
          v45 = v46;
        }

        v115 = v45;
        v108 = v41 + 2;
        v106 = v18;
        while (1)
        {
          v49 = *(a10 + 24) + (v39[1] - *(a10 + 8)) * *(a10 + 32);
          if (v49 >= 0.0)
          {
            v50 = 0.5;
          }

          else
          {
            v50 = -0.5;
          }

          sub_100274990(v49 + v50);
          v51 = *(a10 + 16) + (*v39 - *a10) * *(a10 + 32);
          if (v51 >= 0.0)
          {
            v52 = 0.5;
          }

          else
          {
            v52 = -0.5;
          }

          v53 = v51 + v52;
          sub_100274990(v51 + v52);
          v54 = ceil(v53);
          v55 = floor(v53);
          if (v53 >= 0.0)
          {
            v54 = v55;
          }

          v56 = v54;
          if (v117 == -1)
          {
            if (*(a6 + 4) > v56)
            {
              return 1;
            }
          }

          else if (v117 == 1 && *(a6 + 6) < v56)
          {
            return 1;
          }

          v57 = *(a10 + 16);
          v159 = *a10;
          v156[0] = a3;
          v156[1] = v23;
          v123 = v23;
          v156[2] = v39;
          v156[3] = v116;
          v156[4] = v115;
          v156[5] = v18;
          v156[6] = v21;
          v157 = 1;
          v158 = 0;
          v160 = v57;
          v59 = *(a6 + 8);
          v58 = *(a6 + 9);
          v60 = &v41[2 * v59];
          v161 = *(a10 + 32);
          v61 = v60 + 2;
          v126 = &v108[2 * v58];
          v111 = v39;
          v112 = *(a6 + 13);
          if (v60 + 2 != v126)
          {
            v62 = 0;
            v105 = &v41[2 * v59];
            v63 = *(a6 + 13);
            v64 = v59;
            do
            {
              v66 = *(a10 + 24) + (v61[1] - *(a10 + 8)) * *(a10 + 32);
              if (v66 >= 0.0)
              {
                v67 = 0.5;
              }

              else
              {
                v67 = -0.5;
              }

              sub_100274990(v66 + v67);
              v68 = *(a10 + 16) + (*v61 - *a10) * *(a10 + 32);
              if (v68 >= 0.0)
              {
                v69 = 0.5;
              }

              else
              {
                v69 = -0.5;
              }

              v70 = v68 + v69;
              sub_100274990(v68 + v69);
              v71 = ceil(v70);
              v72 = floor(v70);
              if (v70 >= 0.0)
              {
                v71 = v72;
              }

              v73 = v71;
              if (v124 == 1)
              {
                if (*(a3 + 4) <= v73)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                if (v124 != -1)
                {
                  v60 = v105;
                  goto LABEL_75;
                }

                if (*(a3 + 6) >= v73)
                {
                  v60 = v61 - 2;
                  v112 += v62;
                  v59 += v62;
                  goto LABEL_75;
                }
              }

              v65 = v61 + 2;
              ++v64;
              ++v63;
              ++v62;
              v60 = v61;
              v61 = v65;
            }

            while (v65 != v126);
            v60 = v65 - 2;
LABEL_73:
            v112 = v63;
            v59 = v64;
LABEL_75:
            v12 = a7;
            v41 = v119;
            v39 = v111;
          }

          v74 = v60 + 2;
          if (v60 + 2 != v126)
          {
            break;
          }

          ++v114;
LABEL_40:
          v39 += 2;
          v47 = v116 + 2;
          v23 = v123 + 1;
          v18 = v106;
          v48 = &v106[2 * (v115 != v106)];
          v21 = v109;
          if (v115 + 2 != v109)
          {
            v48 = v115 + 2;
          }

          v115 = v48;
          v116 += 2;
          if (v47 == v118)
          {
            return 1;
          }
        }

        if (v74 == v125)
        {
          v74 = &v41[2 * (v60 != v41)];
        }

        v75 = v74 != v41;
        v76 = v74 + 2;
        v77 = &v41[2 * v75];
        if (v76 == v125)
        {
          v78 = v77;
        }

        else
        {
          v78 = v76;
        }

        v79 = ++v114 - v112;
        while (2)
        {
          v81 = *(a10 + 24) + (v60[1] - *(a10 + 8)) * *(a10 + 32);
          if (v81 >= 0.0)
          {
            v82 = 0.5;
          }

          else
          {
            v82 = -0.5;
          }

          sub_100274990(v81 + v82);
          v83 = *(a10 + 16) + (*v60 - *a10) * *(a10 + 32);
          if (v83 >= 0.0)
          {
            v84 = 0.5;
          }

          else
          {
            v84 = -0.5;
          }

          v85 = v83 + v84;
          sub_100274990(v83 + v84);
          v86 = ceil(v85);
          v87 = floor(v85);
          if (v85 >= 0.0)
          {
            v86 = v87;
          }

          v88 = v86;
          if (v124 == -1)
          {
            if (*(a3 + 4) > v88)
            {
              goto LABEL_39;
            }
          }

          else if (v124 == 1 && *(a3 + 6) < v88)
          {
            goto LABEL_39;
          }

          v89 = *(a3 + 2);
          if (a1 != a4)
          {
            v90 = *(a3 + 3);
            v92 = *(a6 + 2);
            v91 = *(a6 + 3);
            goto LABEL_110;
          }

          v90 = *(a3 + 3);
          v92 = *(a6 + 2);
          v91 = *(a6 + 3);
          if (v89 != v92)
          {
            goto LABEL_110;
          }

          if (v90 != v91)
          {
            v92 = *(a3 + 2);
            goto LABEL_110;
          }

          if (v12)
          {
            if (v123 >= v59 || (a8 & 1) == 0)
            {
              v91 = *(a3 + 3);
              v92 = *(a3 + 2);
              if (v123 < v59)
              {
                goto LABEL_110;
              }

LABEL_84:
              v80 = v60 + 4;
              v60 += 2;
              ++v59;
              if (v78 + 2 == v125)
              {
                v78 = &v41[2 * (v78 != v41)];
              }

              else
              {
                v78 += 2;
              }

              --v79;
              if (v80 == v126)
              {
LABEL_39:
                v39 = v111;
                goto LABEL_40;
              }

              continue;
            }

LABEL_124:
            if (!v79)
            {
              goto LABEL_84;
            }

            if (!v123)
            {
              v91 = *(a3 + 3);
              v92 = *(a3 + 2);
              if (*(a3 + 11) - 2 <= v59)
              {
                goto LABEL_84;
              }

LABEL_110:
              v93 = *(a10 + 16);
              v153 = *a10;
              v150[0] = a6;
              v150[1] = v59;
              v150[2] = v60;
              v150[3] = v60 + 2;
              v150[4] = v78;
              v150[5] = v41;
              v150[6] = v125;
              v151 = 0;
              v152 = 0;
              v154 = v93;
              v155 = *(a10 + 32);
              v128 = 0;
              v129 = 0;
              v130 = -1;
              v131 = 0;
              v132 = 0;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              v147 = 1;
              v148 = 0;
              v149 = 0;
              v133 = a1;
              v134 = v89;
              v135 = v90;
              v136 = v123;
              v137 = xmmword_1003DB120;
              v138 = 1;
              v142 = a4;
              v143 = v92;
              v144 = v91;
              v145 = v59;
              v146 = xmmword_1003DB120;
              v94 = a11[5];
              sub_10029EDFC(v156, v150, v127, a9, a10, a11);
              v95 = a11[4];
              v96 = a11[1];
              v97 = a11[2];
              v98 = (v96 + 8 * (v95 / 0x14));
              if (v97 == v96)
              {
                v99 = 0;
                if (!v94)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                v99 = *v98 + 200 * (v95 % 0x14);
                if (!v94)
                {
                  goto LABEL_117;
                }
              }

              v100 = v94 - 0x70A3D70A3D70A3D7 * ((v99 - *v98) >> 3);
              if (v100 < 1)
              {
                v101 = 19 - v100;
                v98 -= v101 / 0x14;
                v99 = *v98 + 200 * (20 * (v101 / 0x14) - v101) + 3800;
              }

              else
              {
                v98 += v100 / 0x14uLL;
                v99 = *v98 + 200 * (v100 % 0x14uLL);
              }

LABEL_117:
              v41 = v119;
              v102 = a11[5] + v95;
              v103 = (v96 + 8 * (v102 / 0x14));
              if (v97 == v96)
              {
                v104 = 0;
                if (!v99)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v104 = *v103 + 200 * (v102 % 0x14);
                if (v104 == v99)
                {
                  goto LABEL_84;
                }
              }

              if (20 * (v103 - v98) - 0x70A3D70A3D70A3D7 * ((v104 - *v103) >> 3) != 0x8F5C28F5C28F5C29 * ((v99 - *v98) >> 3))
              {
                result = 0;
                *a12 = 1;
                return result;
              }

              goto LABEL_84;
            }
          }

          else if (a8)
          {
            goto LABEL_124;
          }

          break;
        }

        v91 = *(a3 + 3);
        v92 = *(a3 + 2);
        goto LABEL_110;
      }

      if (*(a6 + 6) >= v38)
      {
        v22 = v113 + v26;
        v23 = v122 + v26;
        v39 = v27 - 2;
        goto LABEL_29;
      }
    }

    v30 = v27 + 2;
    ++v23;
    ++v29;
    ++v26;
    v28 = v27;
    v27 = v30;
  }

  while (v30 != v118);
  v39 = v30 - 2;
  v22 = v29;
LABEL_29:
  v12 = a7;
  v21 = v109;
  v40 = v39 + 2;
  result = 1;
  v41 = v119;
  if (v39 + 2 != v118)
  {
    goto LABEL_34;
  }

  return result;
}