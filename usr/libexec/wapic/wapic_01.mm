uint64_t OctetStringToPubKey(uint64_t a1, unsigned int a2, void **a3)
{
  memset(v10, 0, 60);
  v5 = a2 >> 1;
  memset(v9, 0, 60);
  sub_10000F984(a1, a2 >> 1, v10);
  sub_10000F984(a1 + v5, v5, v9);
  v6 = SLODWORD(v10[0]);
  if (SLODWORD(v10[0]) < 1 || (memcpy(*a3, v10 + 4, 4 * LODWORD(v10[0])), v6 <= 5))
  {
    bzero(*a3 + 4 * v6, 4 * (5 - v6) + 4);
  }

  v7 = SLODWORD(v9[0]);
  if (SLODWORD(v9[0]) < 1 || (memcpy(a3[1], v9 + 4, 4 * LODWORD(v9[0])), v7 <= 5))
  {
    bzero(a3[1] + 4 * v7, 4 * (5 - v7) + 4);
  }

  return 0;
}

uint64_t DPrint_string(const char *a1, unsigned __int8 *a2, int a3)
{
  v3 = a3;
  if (a1)
  {
    printf("%s(%d) :\n", a1, a3);
  }

  if (v3 >= 1)
  {
    v5 = 1;
    do
    {
      v6 = *a2++;
      printf("%02X ", v6);
      if ((v5 & 0xF) == 0)
      {
        putchar(10);
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  return putchar(10);
}

uint64_t KTimesPoint(const void *a1, unsigned int *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  memset(v46, 0, 60);
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  sub_100010078(a3, v45);
  v8 = *a2;
  if (v8 >= 1)
  {
    memcpy(v43, a1, 4 * v8);
  }

  v42 = v8;
  if ((sub_10001011C(&v42, &dword_1000234C4) & 0x80000000) == 0)
  {
    return 0;
  }

  memset(v48, 0, 60);
  memset(v47, 0, sizeof(v47));
  if (!v8 || v8 == 1 && !LODWORD(v43[0]))
  {
    goto LABEL_56;
  }

  memset(v60, 0, 60);
  memset(v59, 0, sizeof(v59));
  v58 = 0uLL;
  v57 = 0uLL;
  v56 = 0uLL;
  memset(v50, 0, 60);
  v55 = 0;
  *&v59[1] = 0x100000001;
  v60[1] = 0;
  if (v8 <= 0)
  {
    v23 = 0;
    v24 = 2 * v8;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = v10;
      v16 = *(v43 + v10);
      do
      {
        v17 = (v16 >> v13) & 3 | v11;
        v11 = dword_1000184B4[v17];
        v14 |= dword_1000184D4[v17] << v12;
        ++v13;
        v12 += 2;
      }

      while (v13 != 16);
      v18 = 0;
      v19 = 0;
      v50[2 * v15 + 1] = v14;
      v20 = 16;
      do
      {
        v21 = (v16 >> v20) & 3 | v11;
        v11 = dword_1000184B4[v21];
        v19 |= dword_1000184D4[v21] << v18;
        ++v20;
        v18 += 2;
      }

      while (v18 != 30);
      v22 = v11 | (v16 >> 31);
      v10 = v15 + 1;
      if (v15 != v8 - 1)
      {
        v22 |= 2 * (*(v43 + v10) & 1);
      }

      v11 = dword_1000184B4[v22];
      v50[2 * v15 + 2] = v19 | (dword_1000184D4[v22] << 30);
    }

    while (v10 != v8);
    v23 = 2 * v8;
    v24 = 2 * v8;
    if (((0x17uLL >> v22) & 1) == 0)
    {
      v25 = 1;
      goto LABEL_21;
    }
  }

  v25 = 0;
LABEL_21:
  v50[v23 + 1] = v25;
  v26 = v24 | 1u;
  v27 = v24 + 2;
  v28 = v26 & (v24 >> 31);
  while (v26 >= 1)
  {
    v29 = v50[v26--];
    --v27;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  v27 = v28;
LABEL_26:
  memset(v54, 0, 124);
  v50[0] = v27;
  v30 = DWORD1(v45[0]);
  v54[1] = DWORD1(v45[0]);
  if (SDWORD1(v45[0]) >= 1)
  {
    memcpy(&v54[2], v45 + 8, 4 * DWORD1(v45[0]));
  }

  v54[16] = v46[0];
  if (SLODWORD(v46[0]) >= 1)
  {
    memcpy(&v54[17], v46 + 4, 4 * LODWORD(v46[0]));
  }

  memset(v52, 0, sizeof(v52));
  memset(v53, 0, 60);
  v52[1] = v30;
  if (v30 >= 1)
  {
    memcpy(&v52[2], v45 + 8, 4 * v30);
  }

  FpMinus(v46, dword_100023358, v53);
  v31 = __OFSUB__(v27, 1);
  v32 = (v27 - 1);
  if (v32 < 0 != v31)
  {
    goto LABEL_56;
  }

  v33 = v32;
  do
  {
    v34 = v50[v33 + 1];
    v35 = 32;
    if (v33 != v32 || v34 >> 30)
    {
      goto LABEL_38;
    }

    do
    {
      v36 = v34 >> 28;
      v34 *= 4;
      v35 -= 2;
    }

    while (!v36);
    if (v35 >= 1)
    {
LABEL_38:
      v37 = v35 + 2;
      while (1)
      {
        sub_100012568(&v55, &v55);
        if (v34 >> 30 == 1)
        {
          break;
        }

        if (v34 >> 30 == 3)
        {
          v38 = v52;
LABEL_43:
          sub_1000129F0(&v55, v38, &v55);
        }

        v34 *= 4;
        v37 -= 2;
        if (v37 <= 2)
        {
          goto LABEL_45;
        }
      }

      v38 = v54;
      goto LABEL_43;
    }

LABEL_45:
    ;
  }

  while (v33-- > 0);
  v41 = v60[0] == 1 && v60[1] == 0;
  if (v60[0] && !v41)
  {
    memset(v51, 0, 60);
    memset(v49, 0, 60);
    v47[0] = 0;
    sub_100010EC8(v60, dword_100023358, v51);
    sub_100010C9C(v51, v51, dword_100023358, v49);
    sub_100010C9C(&v55, v49, dword_100023358, &v47[1]);
    sub_100010C9C(v49, v51, dword_100023358, v51);
    sub_100010C9C(&v59[1], v51, dword_100023358, v48);
    goto LABEL_57;
  }

LABEL_56:
  v47[0] = 1;
LABEL_57:
  sub_100010190(v47, a5);
  return 1;
}

uint64_t *sub_100010078(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  v3 = 6;
  while (1)
  {
    v4 = (v3 - 1);
    v5 = *(v2 + 4 * v4);
    if (v5)
    {
      break;
    }

    if (!--v3)
    {
      a2[1] = 0;
      goto LABEL_7;
    }
  }

  a2[1] = v3;
  if (v3 - 1 >= 0)
  {
    do
    {
      a2[v4 + 2] = *(v2 + 4 * v4);
      --v4;
    }

    while (v4 != -1);
  }

LABEL_7:
  v6 = result[1];
  v7 = 6;
  while (1)
  {
    v8 = (v7 - 1);
    v9 = *(v6 + 4 * v8);
    if (v9)
    {
      break;
    }

    if (!--v7)
    {
      a2[16] = 0;
      goto LABEL_13;
    }
  }

  a2[16] = v7;
  if (v7 - 1 >= 0)
  {
    do
    {
      a2[v8 + 17] = *(v6 + 4 * v8);
      --v8;
    }

    while (v8 != -1);
  }

LABEL_13:
  *a2 = (v5 | v9) == 0;
  return result;
}

uint64_t sub_10001011C(unsigned int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > *a2)
  {
    return v2 != 1 || a1[1];
  }

  if (v2 >= v3)
  {
    while (v2 >= 1)
    {
      v5 = a1[v2];
      v6 = a2[v2];
      if (v5 > v6)
      {
        return 1;
      }

      --v2;
      if (v5 < v6)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  if (v3 == 1 && !a2[1])
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_100010190(_DWORD *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = 0;
    a1[1] = 0;
    a1[16] = 0;
LABEL_7:
    bzero((*a2 + 4 * v4), 4 * (5 - v4) + 4);
    goto LABEL_8;
  }

  v4 = a1[1];
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  v5 = a1 + 2;
  v6 = *a2;
  v7 = a1[1];
  do
  {
    v8 = *v5++;
    *v6++ = v8;
    --v7;
  }

  while (v7);
  if (v4 <= 5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = a1[16];
  v10 = v9;
  if (v9 < 1)
  {
    goto LABEL_12;
  }

  v11 = a1 + 17;
  v12 = a2[1];
  do
  {
    v13 = *v11++;
    *v12++ = v13;
    --v9;
  }

  while (v9);
  if (v10 <= 5)
  {
LABEL_12:
    v14 = (a2[1] + 4 * v10);

    bzero(v14, 4 * (5 - v10) + 4);
  }
}

uint64_t Sign_With_Private_Key(uint64_t a1, char *__src, unsigned int a3, void *a4, int a5)
{
  v8 = 0uLL;
  memset(v34, 0, 60);
  memset(v33, 0, 60);
  memset(v32, 0, 60);
  memset(v31, 0, 60);
  memset(v30, 0, 60);
  memset(v29, 0, 124);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26 = a5;
  if (a5 >= 1)
  {
    memcpy(v27, a4, 4 * a5);
    v8 = 0uLL;
  }

  *&v25[12] = v8;
  v24[1] = v8;
  *v25 = v8;
  v24[0] = v8;
  v22[0] = v8;
  v22[1] = v8;
  v23[0] = v8;
  *(v23 + 12) = v8;
  sub_10001054C(__src, a3, v24);
  sub_100010698(v24, dword_1000234C4, v22);
  LODWORD(v24[0]) = v22[0];
  if (SLODWORD(v22[0]) >= 1)
  {
    memcpy(v24 + 4, v22 + 4, 4 * LODWORD(v22[0]));
  }

  while (1)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v35 = dword_1000234C4[0];
    v9 = time(0);
    srand(v9);
    if (dword_1000234C4[0] >= 1)
    {
      v10 = 0;
      do
      {
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = rand();
          v14 = dword_100027374++;
          v12 |= (v14 + v13 + 2 * v14 + (v14 >> 1)) << v11;
          v11 += 11;
        }

        while (v11 != 33);
        v36[v10++] = v12;
      }

      while (v10 < dword_1000234C4[0]);
    }

    sub_100010698(&v35, dword_1000234C4, v34);
    sub_100010A68(v34, v29);
    sub_100010698(v29 + 1, dword_1000234C4, v32);
    v16 = LODWORD(v32[0]) == 1 && DWORD1(v32[0]) == 0;
    if (LODWORD(v32[0]) && !v16)
    {
      sub_100010C9C(&v26, v32, dword_1000234C4, v33);
      sub_100010E3C(v33, v24, dword_1000234C4, v31);
      sub_100010EC8(v34, dword_1000234C4, v33);
      sub_100010C9C(v33, v31, dword_1000234C4, v30);
      v17 = LODWORD(v30[0]) == 1 && DWORD1(v30[0]) == 0;
      v18 = v17;
      if (LODWORD(v30[0]) && !v18)
      {
        break;
      }
    }
  }

  v19 = dword_100023358[0];
  v20 = (4 * dword_100023358[0]);
  sub_10000F704(v32, 4 * dword_100023358[0], 0x64u, &v35, a1);
  sub_10000F704(v30, v20, 0x64u, &v35, a1 + v20);
  return (8 * v19);
}

int8x16_t sub_10001054C(char *__src, unsigned int a2, uint64_t a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = xmmword_1000183E0;
  v12 = xmmword_1000183F0;
  v17 = 0;
  sub_100013048(&v11, __src, a2);
  LOBYTE(__srca) = 0x80;
  sub_100013048(&v11, &__srca, 1u);
  for (i = v17; v17 != 56; i = v17)
  {
    if (i <= 0x38)
    {
      v6 = 56;
    }

    else
    {
      v6 = 64;
    }

    sub_100013048(&v11, byte_10002733C, v6 - i);
  }

  v22 = 8 * a2;
  v21 = a2 >> 5;
  v20 = a2 >> 13;
  v19 = a2 >> 21;
  __srca = 0;
  sub_100013048(&v11, &__srca, 8u);
  v7 = v11;
  v8 = vrev64q_s32(v12);
  *(a3 + 4) = vextq_s8(v8, v8, 8uLL);
  v9 = vrev64q_s32(v7);
  result = vextq_s8(v9, v9, 8uLL);
  *(a3 + 20) = result;
  *a3 = 8;
  return result;
}

uint64_t sub_100010698(unsigned int *a1, int *a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = v6 & (v6 >> 31);
  v8 = v6 + 1;
  while (v6 >= 1)
  {
    v9 = a1[v6--];
    --v8;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v8 = v7;
LABEL_6:
  *a1 = v8;
  v11 = a2 + 1;
  v10 = *a2;
  v12 = v10 & (v10 >> 31);
  v13 = v10 + 1;
  while (v10 >= 1)
  {
    v14 = a2[v10--];
    --v13;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v13 = v12;
LABEL_11:
  *a2 = v13;
  result = sub_10001011C(a1, a2);
  v16 = *a1;
  *a3 = v16;
  if ((result & 0x80000000) != 0)
  {
    if (v16 >= 1)
    {
      v22 = 1;
      do
      {
        a3[v22] = a1[v22];
        v18 = v22++ < *a1;
      }

      while (v18);
    }

    return result;
  }

  if (v16 >= 1)
  {
    v17 = 1;
    do
    {
      a3[v17] = a1[v17];
      v18 = v17++ < *a1;
    }

    while (v18);
  }

  v19 = a2[*a2];
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v20++;
      if (v21 > 0x1E)
      {
        break;
      }

      v18 = v19 > 1;
      v19 >>= 1;
    }

    while (v18);
  }

  else
  {
    v20 = 0;
  }

  v23 = 32 - v20;
  v24 = a3 + 1;
  if (v16 && v20 != 32)
  {
    v25 = 0;
    v26 = a3 + 1;
    v27 = v16;
    do
    {
      v28 = *v26;
      *v26 = (*v26 << v23) | v25;
      ++v26;
      v25 = v28 >> v20;
      --v27;
    }

    while (v27);
    v24[v16] = v25;
    if (!v25)
    {
      goto LABEL_32;
    }

    v16 = (v16 + 1);
  }

  v24[v16] = 0;
LABEL_32:
  v71 = a3;
  v29 = *a2;
  if (v20 != 32 && v29)
  {
    v30 = 0;
    v31 = a2 + 1;
    v32 = *a2;
    do
    {
      v33 = *v31;
      *v31 = (*v31 << v23) | v30;
      ++v31;
      v30 = v33 >> v20;
      --v32;
    }

    while (v32);
  }

  v72 = (v29 - 1);
  v34 = v16 - v29;
  if (v16 - v29 >= 0)
  {
    v35 = v11[v72];
    v36 = &a3[v34];
    v37 = v36 + 1;
    v73 = v35;
    v74 = 0;
    do
    {
      if (v35 == -1)
      {
        v74 = v24[(v29 + v34)];
      }

      else
      {
        result = sub_100013384(&v74, &v24[(v72 + v34)], v35 + 1);
      }

      v38 = 0;
      if (v29)
      {
        v35 = v73;
        v39 = v74;
        v40 = (a2 + 1);
        v41 = v37;
        v42 = v29;
        do
        {
          v43 = *v40++;
          v44 = v43 * v39;
          v45 = HIDWORD(v44);
          v56 = __CFADD__(v38, v44);
          v46 = v38 + v44;
          v47 = v56;
          v48 = *v41 - v46;
          *v41++ = v48;
          v38 = v45 + __CFADD__(v46, v48) + v47;
          --v42;
        }

        while (v42);
      }

      else
      {
        v35 = v73;
      }

      v49 = v29 + v34;
      for (i = v24[(v29 + v34)] - v38; ; i -= v52)
      {
        v24[v49] = i;
        if (!i)
        {
          break;
        }

LABEL_51:
        if (v29)
        {
          v51 = 0;
          v52 = 0;
          do
          {
            v53 = v11[v51];
            v54 = v37[v51];
            v55 = v54 - (v53 + v52);
            v56 = __CFADD__(v53, v52);
            v57 = v53 + v52;
            v58 = v56;
            if (!v56)
            {
              v54 = v55;
            }

            v59 = __CFADD__(v57, v55);
            v52 = (v58 | v59) & 1;
            v37[v51++] = v54;
          }

          while (v29 != v51);
          i = v24[v49];
        }

        else
        {
          v52 = 0;
        }
      }

      v60 = v29;
      do
      {
        if (v60 < 1)
        {
          goto LABEL_51;
        }

        v61 = v36[v60];
        v62 = a2[v60];
        if (v61 > v62)
        {
          goto LABEL_51;
        }

        --v60;
      }

      while (v61 >= v62);
      --v37;
      --v36;
      v18 = v34-- <= 0;
    }

    while (!v18);
  }

  if (v20 != 32 && (v72 & 0x80000000) == 0)
  {
    v63 = 0;
    v64 = 4 * v72 + 4;
    do
    {
      v65 = *(a2 + v64);
      *(a2 + v64) = (v65 >> v23) | v63;
      v63 = v65 << v20;
      v64 -= 4;
    }

    while (v64);
    v66 = 4 * v72 + 4;
    do
    {
      v67 = *(v71 + v66);
      *(v71 + v66) = (v67 >> v23) | v64;
      LODWORD(v64) = v67 << v20;
      v66 -= 4;
    }

    while (v66);
  }

  v68 = v29 & (v29 >> 31);
  v69 = v29 + 1;
  while (v29 >= 1)
  {
    v70 = v71[v29--];
    --v69;
    if (v70)
    {
      goto LABEL_83;
    }
  }

  v69 = v68;
LABEL_83:
  *v71 = v69;
  return result;
}

void sub_100010A68(unsigned int *a1, _DWORD *a2)
{
  if (!*a1 || *a1 == 1 && !a1[1])
  {
    goto LABEL_25;
  }

  memset(v25, 0, 60);
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0;
  *&v24[1] = 0x100000001;
  v25[0] = 0;
  v4 = &unk_10002353C + 124 * (1 << dword_100023358);
  v5 = 16;
  do
  {
    sub_100012568(&v20, &v20);
    v6 = *a1;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = vsub_s32(0x2000000010, vdup_n_s32(v5));
      v9 = 0;
      do
      {
        v10 = &a1[v7 + 1];
        v11 = vld1_dup_f32(v10);
        v12 = vshr_n_u32(vshl_u32(v11, v8), 0x1FuLL);
        if (v7)
        {
          v13 = v7;
          do
          {
            v12 = vadd_s32(v12, v12);
            --v13;
          }

          while (v13);
        }

        v9 = vadd_s32(v12, v9);
        ++v7;
      }

      while (v7 != v6);
      if (v9.i32[1])
      {
        v17 = v9.i32[0];
        sub_1000129F0(&v20, &unk_10002353C + 124 * v9.u32[1], &v20);
        v9.i32[0] = v17;
      }

      if (v9.i32[0])
      {
        sub_1000129F0(&v20, &v4[124 * v9.u32[0]], &v20);
      }
    }

    v14 = v5-- != 0;
  }

  while (v5 != 0 && v14);
  v15 = LODWORD(v25[0]) == 1 && HIDWORD(v25[0]) == 0;
  v16 = v15;
  if (LODWORD(v25[0]) && !v16)
  {
    memset(v19, 0, 60);
    memset(v18, 0, 60);
    *a2 = 0;
    sub_100010EC8(v25, &dword_100023358, v19);
    sub_100010C9C(v19, v19, &dword_100023358, v18);
    sub_100010C9C(&v20, v18, &dword_100023358, a2 + 1);
    sub_100010C9C(v18, v19, &dword_100023358, v19);
    sub_100010C9C(&v24[1], v19, &dword_100023358, a2 + 16);
  }

  else
  {
LABEL_25:
    *a2 = 1;
  }
}

uint64_t sub_100010C9C(unsigned int *a1, unsigned int *a2, int *a3, unsigned int *a4)
{
  v5 = *a1;
  if (v5 && (v5 != 1 || a1[1]) && (v7 = *a2, v7) && (v7 != 1 || a2[1]))
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v8 = (v7 + v5);
    if (v5 >= 1)
    {
      v9 = 0;
      v10 = a1 + 1;
      v11 = a2 + 1;
      v12 = v29;
      do
      {
        v13 = 0;
        v14 = v10[v9];
        v15 = v11;
        v16 = v12;
        v17 = v7;
        do
        {
          v18 = *v15++;
          v19 = v18 * v14;
          v20 = __CFADD__(*v16, v13);
          v21 = *v16 + v13;
          v22 = v20;
          if (v20)
          {
            v23 = 2;
          }

          else
          {
            v23 = 1;
          }

          *v16++ = v21 + v19;
          if (__CFADD__(v21, v19))
          {
            v24 = v23;
          }

          else
          {
            v24 = v22;
          }

          v13 = v24 + HIDWORD(v19);
          --v17;
        }

        while (v17);
        *(v29 + v9 + v7) += v13;
        ++v9;
        v12 = (v12 + 4);
      }

      while (v9 != v5);
    }

    if (v8 >= 1)
    {
      memcpy(a4 + 1, v29, 4 * (v8 - 1) + 4);
    }

    v25 = v8 & (v8 >> 31);
    v26 = v7 + v5 + 1;
    while (v8 >= 1)
    {
      v27 = a4[v8--];
      --v26;
      if (v27)
      {
        goto LABEL_29;
      }
    }

    v26 = v25;
LABEL_29:
    *a4 = v26;
    sub_100010698(a4, a3, a4);
  }

  else
  {
    *a4 = 0;
  }

  return 0;
}

void sub_100010E3C(int *a1, int *a2, int *a3, void *a4)
{
  memset(v7, 0, 60);
  sub_100012F24(a1, a2, v7);
  if ((sub_10001011C(v7, a3) & 0x80000000) != 0)
  {
    v6 = LODWORD(v7[0]);
    *a4 = v7[0];
    if (v6 >= 1)
    {
      memcpy(a4 + 4, v7 + 4, 4 * v6);
    }
  }

  else
  {
    sub_10000F4A8(v7, a3, a4);
  }
}

void sub_100010EC8(unsigned int *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = 0uLL;
  memset(v118, 0, 60);
  memset(v117, 0, 60);
  memset(v116, 0, 60);
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  memset(v99, 0, sizeof(v99));
  v111 = 0x100000001;
  v107 = 0;
  v103 = 0;
  v6 = *a1;
  v108 = v6;
  if (v6 >= 1)
  {
    memcpy(v109, a1 + 1, 4 * v6);
    v5 = 0uLL;
  }

  v115 = 0;
  v114 = v5;
  v113 = v5;
  v112 = v5;
  v101[0] = v5;
  v101[1] = v5;
  v101[2] = v5;
  v102 = 0;
  v7 = *a2;
  v100[0] = v7;
  if (v7 < 1)
  {
    if (!v7)
    {
      v90 = 1;
      *a3 = 1;
LABEL_135:
      memcpy(a3 + 1, &v111 + 4, 4 * v90);
      return;
    }
  }

  else
  {
    memcpy(v101, a2 + 1, 4 * v7);
  }

  v91 = a3;
  v8 = 0;
  v9 = 1;
  v10 = -1;
  do
  {
    v94 = v9;
    v95 = v10;
    v11 = v6 + 1;
    v12 = v6;
    while (v12 >= 1)
    {
      v13 = *&v109[4 * v12-- - 4];
      --v11;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v11 = v6 & (v6 >> 31);
LABEL_12:
    v98 = v8;
    v108 = v11;
    v14 = v7;
    v15 = v7 + 1;
    while (v14 >= 1)
    {
      v16 = v100[v14--];
      --v15;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    v15 = v7 & (v7 >> 31);
LABEL_17:
    v100[0] = v15;
    if ((sub_10001011C(&v108, v100) & 0x80000000) != 0)
    {
      *&v118[0] = 0;
      LODWORD(v116[0]) = v11;
      if (v11 >= 1)
      {
        memcpy(v116 + 4, v109, 4 * v11);
      }

      v21 = 0;
      LODWORD(v7) = v11;
      v9 = v95;
      goto LABEL_93;
    }

    LODWORD(v116[0]) = v11;
    if (v11 >= 1)
    {
      memcpy(v116 + 4, v109, 4 * v11);
    }

    v96 = v15 - 1;
    v17 = *(v101 + v96);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = v18++;
        if (v19 > 0x1E)
        {
          break;
        }

        v20 = v17 > 1;
        v17 >>= 1;
      }

      while (v20);
    }

    else
    {
      v18 = 0;
    }

    v22 = 32 - v18;
    v23 = v11;
    if (v11 && v18 != 32)
    {
      v24 = 0;
      v25 = v116 + 1;
      v26 = v11;
      do
      {
        v27 = *v25;
        *v25 = (*v25 << v22) | v24;
        ++v25;
        v24 = v27 >> v18;
        --v26;
      }

      while (v26);
      *(v116 + v11 + 1) = v24;
      if (!v24)
      {
        goto LABEL_36;
      }

      v23 = ++v11;
    }

    *(v116 + v23 + 1) = 0;
LABEL_36:
    if (v15 && v18 != 32)
    {
      v28 = 0;
      v29 = v15;
      v30 = v101;
      do
      {
        v31 = *v30;
        *v30 = (*v30 << v22) | v28;
        ++v30;
        v28 = v31 >> v18;
        --v29;
      }

      while (v29);
    }

    v92 = 32 - v18;
    v93 = v11 - v15;
    if ((v11 - v15) >= 0)
    {
      v32 = *(v101 + v96);
      __src[0] = 0;
      v33 = v116 + 4 * v93 + 4;
      v34 = v11 - v15;
      v35 = v116 + 4 * v93;
      v97 = v32;
      do
      {
        if (v32 == -1)
        {
          __src[0] = *(v116 + (v15 + v34) + 1);
        }

        else
        {
          sub_100013384(__src, v116 + (v96 + v34) + 1, v32 + 1);
        }

        v36 = __src[0];
        v37 = 0;
        if (v15)
        {
          v38 = v101;
          v39 = v33;
          v40 = v15;
          v32 = v97;
          do
          {
            v41 = *v38++;
            v42 = v41 * v36;
            v43 = HIDWORD(v42);
            v54 = __CFADD__(v37, v42);
            v44 = v37 + v42;
            v45 = v54;
            v46 = *v39 - v44;
            *v39++ = v46;
            v37 = v43 + __CFADD__(v44, v46) + v45;
            --v40;
          }

          while (v40);
        }

        else
        {
          v32 = v97;
        }

        v47 = v15 + v34;
        for (i = *(v116 + (v15 + v34) + 1) - v37; ; i -= v50)
        {
          *(v116 + v47 + 1) = i;
          if (!i)
          {
            break;
          }

LABEL_55:
          if (v15)
          {
            v49 = 0;
            v50 = 0;
            do
            {
              v51 = *(v101 + v49);
              v52 = *&v33[v49];
              v53 = v52 - (v51 + v50);
              v54 = __CFADD__(v51, v50);
              v55 = v51 + v50;
              v56 = v54;
              if (!v54)
              {
                v52 = v53;
              }

              v57 = __CFADD__(v55, v53);
              v50 = (v56 | v57) & 1;
              *&v33[v49] = v52;
              v49 += 4;
            }

            while (4 * v15 != v49);
            i = *(v116 + v47 + 1);
          }

          else
          {
            v50 = 0;
          }

          ++v36;
        }

        v58 = v15;
        do
        {
          if (v58 < 1)
          {
            goto LABEL_55;
          }

          v59 = *&v35[4 * v58];
          v60 = v100[v58];
          if (v59 > v60)
          {
            goto LABEL_55;
          }

          --v58;
        }

        while (v59 >= v60);
        *(v118 + v34 + 1) = v36;
        __src[0] = v36;
        v33 -= 4;
        v35 -= 4;
        v20 = v34-- <= 0;
      }

      while (!v20);
    }

    v9 = v95;
    if (v15 >= 1 && v18 != 32)
    {
      v61 = 0;
      v62 = 4 * v96 + 4;
      v63 = v62;
      do
      {
        v64 = *(v100 + v63);
        *(v100 + v63) = (v64 >> v92) | v61;
        v61 = v64 << v18;
        v63 -= 4;
      }

      while (v63);
      v65 = 0;
      do
      {
        v66 = *(v116 + v62);
        *(v116 + v62) = (v66 >> v92) | v65;
        v65 = v66 << v18;
        v62 -= 4;
      }

      while (v62);
    }

    v67 = v15;
    LODWORD(v7) = v15 + 1;
    while (v67 >= 1)
    {
      v68 = *(v116 + v67--);
      LODWORD(v7) = v7 - 1;
      if (v68)
      {
        goto LABEL_87;
      }
    }

    LODWORD(v7) = v15 & (v15 >> 31);
LABEL_87:
    LODWORD(v116[0]) = v7;
    v69 = v93 + 1;
    v70 = v69 & (v69 >> 31);
    v21 = v93 + 2;
    while (v69 >= 1)
    {
      v71 = *(v118 + v69--);
      --v21;
      if (v71)
      {
        goto LABEL_92;
      }
    }

    v21 = v70;
LABEL_92:
    LODWORD(v118[0]) = v21;
LABEL_93:
    v72 = (v98 + v21);
    if (v72 <= 13)
    {
      if (v72 >= 1)
      {
        bzero(__src, 4 * (v72 - 1) + 4);
      }

      if (v21 >= 1)
      {
        v73 = 0;
        v74 = __src;
        do
        {
          if (v98)
          {
            v75 = 0;
            v76 = *(v118 + v73 + 1);
            v77 = &v103;
            v78 = v74;
            v79 = v98;
            do
            {
              v80 = *v77++;
              v81 = v80 * v76;
              v82 = __CFADD__(*v78, v75);
              v83 = *v78 + v75;
              v84 = v82;
              if (v82)
              {
                v85 = 2;
              }

              else
              {
                v85 = 1;
              }

              *v78++ = v83 + v81;
              if (__CFADD__(v83, v81))
              {
                v86 = v85;
              }

              else
              {
                v86 = v84;
              }

              v75 = v86 + HIDWORD(v81);
              --v79;
            }

            while (v79);
          }

          else
          {
            v75 = 0;
          }

          __src[v73 + v98] += v75;
          ++v73;
          ++v74;
        }

        while (v73 != v21);
      }

      if (v72 >= 1)
      {
        memcpy(&v99[4], __src, 4 * (v72 - 1) + 4);
      }

      v87 = v72 & (v72 >> 31);
      v88 = v21 + v98 + 1;
      while (v72 >= 1)
      {
        v89 = *&v99[4 * v72--];
        --v88;
        if (v89)
        {
          goto LABEL_120;
        }
      }

      v88 = v87;
LABEL_120:
      *v99 = v88;
    }

    sub_100012F24(&v111, v99, v117);
    LODWORD(v111) = v98;
    if (v98 >= 1)
    {
      memcpy(&v111 + 4, &v103, 4 * v98);
    }

    v8 = v117[0];
    if (SLODWORD(v117[0]) >= 1)
    {
      memcpy(&v103, v117 + 4, 4 * LODWORD(v117[0]));
    }

    LODWORD(v6) = v100[0];
    v108 = v100[0];
    if (v100[0] >= 1)
    {
      memcpy(v109, v101, 4 * v100[0]);
    }

    v100[0] = v7;
    if (v7 >= 1)
    {
      memcpy(v101, v116 + 4, 4 * v7);
    }

    v10 = v94;
  }

  while (v7);
  if (v9 < 0)
  {
    sub_10000F4A8(a2, &v111, v91);
    return;
  }

  a3 = v91;
  v90 = v98;
  *v91 = v98;
  if (v98 >= 1)
  {
    goto LABEL_135;
  }
}

BOOL Verify_With_Public_Key(char *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v58[0] = a5;
  v58[1] = a6;
  memset(v52, 0, 60);
  memset(v51, 0, 60);
  memset(v49, 0, 60);
  v9 = a4 / 2;
  memset(v48, 0, sizeof(v48));
  sub_100010078(v58, v48);
  sub_10001054C(a1, a2, v52);
  sub_100010698(v52, dword_1000234C4, v51);
  LODWORD(v52[0]) = v51[0];
  if (SLODWORD(v51[0]) >= 1)
  {
    memcpy(v52 + 4, v51 + 4, 4 * LODWORD(v51[0]));
  }

  memset(v57, 0, 60);
  memset(v56, 0, 60);
  memset(v55, 0, 60);
  memset(v54, 0, 60);
  memset(v53, 0, 60);
  sub_10000F984(a3, v9, v53);
  sub_10000F984(a3 + v9, v9, v54);
  sub_100010EC8(v54, dword_1000234C4, v57);
  sub_100010C9C(v52, v57, dword_1000234C4, v56);
  sub_100010C9C(v53, v57, dword_1000234C4, v55);
  memset(__dst, 0, 56);
  v10 = LODWORD(v56[0]);
  if (SLODWORD(v56[0]) >= 1)
  {
    memcpy(__dst, v56 + 4, 4 * LODWORD(v56[0]));
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v16 = v10;
  if (v10)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = !LODWORD(v55[0]) && v13 == 0;
    if (v17 && v14 == 0)
    {
      break;
    }

    do
    {
LABEL_13:
      v19 = (v13 + BYTE4(v56[0])) & 7;
      v20 = v14 + BYTE4(v55[0]);
      if ((v13 + BYTE4(v56[0])))
      {
        v21 = (v13 + BYTE4(v56[0])) & 3;
        if ((v20 & 3) == 2 && (v19 == 5 || v19 == 3))
        {
          v21 ^= 2u;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v14 + BYTE4(v55[0])))
      {
        v24 = v20 & 7;
        v25 = v20 & 3;
        v26 = v24 == 5 || v24 == 3;
        v27 = v25 ^ 2;
        if (!v26)
        {
          v27 = v25;
        }

        if (((v13 + BYTE4(v56[0])) & 3) == 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = v25;
        }
      }

      else
      {
        v23 = 0;
      }

      v28 = v21 + 1;
      v29 = v23 + 1;
      *(&v62[4] + v12 + 6) = 3 * (v28 >> 1) + (v29 >> 1);
      if ((v28 & 3) == 2 * v13)
      {
        v13 = 1 - v13;
      }

      if ((v29 & 3) == 2 * v14)
      {
        v14 = 1 - v14;
      }

      if (*(v56 + v16) == 1)
      {
        LODWORD(v56[0]) = v16 - 1;
      }

      if (v16 >= 1)
      {
        v30 = 0;
        v31 = 4 * (v16 - 1) + 4;
        do
        {
          v32 = *(v56 + v31);
          *(v56 + v31) = __PAIR64__(v30, v32) >> 1;
          v30 = v32;
          v31 -= 4;
        }

        while (v31);
      }

      v33 = v55[0];
      v34 = LODWORD(v55[0]) - 1;
      if (*(v55 + LODWORD(v55[0])) != 1)
      {
        v34 = v55[0];
      }

      LODWORD(v55[0]) = v34;
      v35 = __OFSUB__(v33, 1);
      v36 = v33 - 1;
      if (v36 < 0 == v35)
      {
        v37 = 0;
        v38 = 4 * v36 + 4;
        do
        {
          v39 = *(v55 + v38);
          *(v55 + v38) = __PAIR64__(v37, v39) >> 1;
          v37 = v39;
          v38 -= 4;
        }

        while (v38);
      }

      ++v12;
      v16 = v56[0];
      ++v11;
      ++v15;
    }

    while (LODWORD(v56[0]));
  }

  LODWORD(v56[0]) = v10;
  if (v10 >= 1)
  {
    memcpy(v56 + 4, __dst, 4 * v10);
  }

  bzero(&unk_100027378, 0x3E0uLL);
  v40 = dword_10002344C;
  dword_100027474 = dword_10002344C;
  if (dword_10002344C >= 1)
  {
    memcpy(&unk_100027478, &unk_100023450, 4 * dword_10002344C);
  }

  dword_1000274B0 = dword_100023488;
  if (dword_100023488 >= 1)
  {
    memcpy(&unk_1000274B4, &unk_10002348C, 4 * dword_100023488);
  }

  v41 = DWORD1(v48[0]);
  dword_10002737C = DWORD1(v48[0]);
  if (SDWORD1(v48[0]) >= 1)
  {
    memcpy(&unk_100027380, v48 + 8, 4 * DWORD1(v48[0]));
  }

  dword_1000273B8 = v49[0];
  if (SLODWORD(v49[0]) >= 1)
  {
    memcpy(&unk_1000273BC, v49 + 4, 4 * LODWORD(v49[0]));
  }

  dword_1000275E8 = v40;
  if (v40 >= 1)
  {
    memcpy(&unk_1000275EC, &unk_100023450, 4 * v40);
  }

  FpMinus(&dword_100023488, dword_100023358, qword_100027624);
  dword_1000273F8 = v41;
  if (v41 >= 1)
  {
    memcpy(&unk_1000273FC, v48 + 8, 4 * v41);
  }

  FpMinus(v49, dword_100023358, qword_100027434);
  sub_1000134AC(v48, &unk_1000274EC);
  v42 = dword_1000274F0;
  dword_1000276E0 = dword_1000274F0;
  if (dword_1000274F0 >= 1)
  {
    v43 = &unk_100027378;
    do
    {
      v43[219] = v43[95];
      ++v43;
      --v42;
    }

    while (v42);
  }

  FpMinus(dword_10002752C, dword_100023358, qword_10002771C);
  sub_1000134AC(&dword_1000273F4, &dword_10002752C[15]);
  v44 = dword_10002756C;
  dword_100027664 = dword_10002756C;
  if (dword_10002756C >= 1)
  {
    v45 = &dword_100027668;
    do
    {
      *v45 = *(v45 - 62);
      ++v45;
      --v44;
    }

    while (v44);
  }

  memset(v60, 0, 60);
  memset(&__dst[8], 0, 112);
  FpMinus(dword_1000275A8, dword_100023358, qword_1000276A0);
  *&__dst[60] = 0x100000001;
  *__dst = 0;
  v60[0] = 0;
  if (v12)
  {
    v46 = v11 - 1;
    do
    {
      sub_100012568(__dst, __dst);
      if (*(&v62[4] + v46 + 6))
      {
        sub_1000129F0(__dst, &unk_100027378 + 124 * *(&v62[4] + v46 + 6) - 124, __dst);
      }

      --v15;
      --v46;
    }

    while (v15 > 1);
  }

  memset(v50, 0, 60);
  memset(&v49[4], 0, 64);
  memset(v62, 0, 60);
  memset(v61, 0, 60);
  sub_100010EC8(v60, dword_100023358, v62);
  sub_100010C9C(v62, v62, dword_100023358, v61);
  sub_100010C9C(__dst, v61, dword_100023358, &v49[4] + 1);
  sub_100010C9C(v61, v62, dword_100023358, v62);
  sub_100010C9C(&__dst[60], v62, dword_100023358, v50);
  sub_100010698(&v49[4] + 1, dword_1000234C4, v56);
  return sub_10001011C(v56, v53) == 0;
}

uint64_t ECC_Init()
{
  sub_10000F984(&unk_100018400, 24, dword_100023358);
  sub_10000F984(&unk_10001841E, 24, &dword_100023394);
  sub_10000F984(&unk_10001843C, 24, dword_1000233D0);
  sub_10000F984(&unk_10001845A, 24, &dword_10002344C);
  sub_10000F984(&unk_100018478, 24, &dword_100023488);
  sub_10000F984(&unk_100018496, 24, dword_1000234C4);
  v0 = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  do
  {
    v1 = 0;
    v2 = (&unk_10002353C + 124 * v0);
    v14 = v0;
    v3 = 12 * v0;
    v15 = 12 * v0 + 6;
    do
    {
      *(v20 + v1) = dword_1000185F4[v1 + v3];
      v4 = dword_1000185F4[v15 + v1];
      v19 = 6;
      *(v17 + v1) = v4;
      v16 = 6;
      v5 = 7;
      v6 = 24;
      while (1)
      {
        v7 = v6;
        if (!v6)
        {
          break;
        }

        v8 = *(&v19 + v6);
        v6 -= 4;
        --v5;
        if (v8)
        {
          goto LABEL_8;
        }
      }

      v5 = 0;
LABEL_8:
      v19 = v5;
      v9 = 7;
      v10 = 24;
      while (1)
      {
        v11 = v10;
        if (!v10)
        {
          break;
        }

        v12 = *(&v16 + v10);
        v10 -= 4;
        --v9;
        if (v12)
        {
          goto LABEL_13;
        }
      }

      v9 = 0;
LABEL_13:
      v16 = v9;
      if (v5 >= 1)
      {
        memcpy(v2 + 2, v20, v7);
      }

      v2[16] = v9;
      if (v9)
      {
        memcpy(v2 + 17, v17, v11);
      }

      ++v1;
    }

    while (v1 != 6);
    v2[1] = v5;
    v0 = v14 + 1;
  }

  while (v14 != 127);
  return 1;
}

uint64_t ecc192_genkey_pc(uint64_t a1, _BYTE *a2)
{
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v9 = 0;
  v7[0] = v16;
  v7[1] = v15;
  memset(v6, 0, 60);
  do
  {
    sub_100012094(v6);
  }

  while ((sub_10001011C(v6, dword_1000234C4) & 0x80000000) == 0);
  memset(v5, 0, 124);
  sub_100010A68(v6, v5);
  sub_100010190(v5, v7);
  PubKeyToOctetString(v7, 0x30u, &v9, (a2 + 1));
  *a2 = 4;
  v13 = 0u;
  v14 = 0u;
  v11 = *(v6 + 4);
  v12 = *(&v6[1] + 4);
  v10 = 6;
  sub_10000F840(&v10, 0x18u, &v8, a1);
  return 0;
}

uint64_t sub_100012094(_DWORD *a1)
{
  *a1 = 6;
  v1 = a1 + 1;
  v2 = time(0);
  srand(v2);
  for (i = 0; i != 6; ++i)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      result = rand();
      v7 = dword_100027374++;
      v5 |= (v7 + result + 2 * v7 + (v7 >> 1)) << v4;
      v4 += 11;
    }

    while (v4 != 33);
    v1[i] = v5;
  }

  return result;
}

uint64_t ecc192_genkey(uint64_t a1, _BYTE *a2)
{
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = 0;
  memset(v8, 0, 60);
  v9[0] = v18;
  v9[1] = v17;
  sub_100012094(v8);
  if ((sub_10001011C(v8, &dword_1000234C4) & 0x80000000) == 0)
  {
    v4 = dword_1000234C4;
    if (dword_1000234C4 >= 1)
    {
      do
      {
        *(v8 + v4) &= dword_100023358[v4 + 91];
      }

      while (v4-- > 1);
    }
  }

  memset(v7, 0, 124);
  sub_100010A68(v8, v7);
  sub_100010190(v7, v9);
  PubKeyToOctetString(v9, 0x30u, &v11, (a2 + 1));
  *a2 = 4;
  v15 = 0u;
  v16 = 0u;
  v13 = *(v8 + 4);
  v14 = *(&v8[1] + 4);
  v12 = 6;
  sub_10000F840(&v12, 0x18u, &v10, a1);
  return 0;
}

uint64_t ecc192_sign(uint64_t a1, char *a2, unsigned int a3, uint64_t a4)
{
  v11 = 0;
  memset(__dst, 0, sizeof(__dst));
  memset(v9, 0, 60);
  sub_10000F984(a1, 24, v9);
  v7 = v9[0];
  if (SLODWORD(v9[0]) >= 1)
  {
    memcpy(__dst, v9 + 4, 4 * LODWORD(v9[0]));
  }

  return Sign_With_Private_Key(a4, a2, a3, __dst, v7);
}

BOOL ecc192_verify(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, int a5)
{
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v10[0] = v12;
  v10[1] = v11;
  OctetStringToPubKey(a1 + 1, 0x30u, v10);
  return Verify_With_Public_Key(a2, a3, a4, a5, v12, v11);
}

uint64_t ecc192_ecdh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 6;
  v7[0] = &v14;
  v7[1] = &v13;
  v10[0] = &v17;
  v10[1] = &v16;
  OctetStringToPubKey(a2 + 1, 0x30u, v10);
  memset(v11, 0, 60);
  sub_10000F984(a1, 24, v11);
  if (SLODWORD(v11[0]) >= 1)
  {
    memcpy(__dst, v11 + 4, 4 * LODWORD(v11[0]));
  }

  result = KTimesPoint(__dst, &v9, v10, v5, v7);
  v8 = result;
  if (result)
  {
    memset(&v11[1] + 12, 0, 32);
    *(v11 + 4) = v14;
    *(&v11[1] + 4) = v15;
    LODWORD(v11[0]) = 6;
    sub_10000F840(v11, 0x18u, &v8, a3);
    return v8;
  }

  return result;
}

void sub_100012568(unsigned int *a1, _DWORD *a2)
{
  v3 = a1[30];
  if (v3 && (v3 != 1 || a1[31]))
  {
    v5 = 0uLL;
    memset(&v24[4], 0, 56);
    v6 = *a1;
    *v24 = v6;
    if (v6 >= 1)
    {
      memcpy(&v24[4], a1 + 1, 4 * v6);
      v5 = 0uLL;
    }

    v23 = 0;
    v22[2] = v5;
    v22[1] = v5;
    v22[0] = v5;
    v7 = a1[15];
    v21 = v7;
    if (v7 >= 1)
    {
      memcpy(v22, a1 + 16, 4 * v7);
    }

    v8 = 0uLL;
    memset(&v20[4], 0, 56);
    *v20 = v3;
    if (v3 >= 1)
    {
      memcpy(&v20[4], a1 + 31, 4 * v3);
      v8 = 0uLL;
    }

    v17 = 0;
    v16[2] = v8;
    v16[1] = v8;
    v16[0] = v8;
    v15 = dword_100023358;
    if (dword_100023358 < 1)
    {
      v9 = -3;
    }

    else
    {
      memcpy(v16, &unk_10002335C, 4 * dword_100023358);
      v9 = LODWORD(v16[0]) - 3;
    }

    memset(v19, 0, sizeof(v19));
    memset(v18, 0, 60);
    LODWORD(v16[0]) = v9;
    if (sub_10001011C(&dword_100023394, &v15))
    {
      *v19 = dword_100023394;
      if (dword_100023394 >= 1)
      {
        memcpy(&v19[4], &unk_100023398, 4 * dword_100023394);
      }

      sub_100010C9C(v20, v20, &dword_100023358, v18);
      sub_100010C9C(v18, v18, &dword_100023358, v18);
      sub_100010C9C(v19, v18, &dword_100023358, v18);
      sub_100010C9C(v24, v24, &dword_100023358, v19);
      sub_100010E3C(v19, v19, &dword_100023358, &v15);
      sub_100010E3C(&v15, v19, &dword_100023358, v19);
      v10 = v18;
      v11 = v19;
    }

    else
    {
      sub_100010C9C(v20, v20, &dword_100023358, v19);
      sub_100012EA4(v24, v19, v18);
      sub_100010E3C(v24, v19, &dword_100023358, v19);
      sub_100010C9C(v19, v18, &dword_100023358, v18);
      sub_100010E3C(v18, v18, &dword_100023358, &v15);
      v10 = &v15;
      v11 = v18;
    }

    sub_100010E3C(v10, v11, &dword_100023358, v19);
    sub_100010C9C(&v21, v20, &dword_100023358, v20);
    sub_100010E3C(v20, v20, &dword_100023358, v20);
    sub_100010C9C(&v21, &v21, &dword_100023358, &v21);
    sub_100010C9C(v24, &v21, &dword_100023358, v18);
    sub_100010E3C(v18, v18, &dword_100023358, &v15);
    sub_100010E3C(&v15, &v15, &dword_100023358, v18);
    sub_100010C9C(v19, v19, &dword_100023358, v24);
    sub_100010E3C(v18, v18, &dword_100023358, &v15);
    sub_100012EA4(v24, &v15, v24);
    sub_100010C9C(&v21, &v21, &dword_100023358, &v21);
    sub_100010E3C(&v21, &v21, &dword_100023358, &v15);
    sub_100010E3C(&v15, &v15, &dword_100023358, &v21);
    v15 = v21;
    if (v21 >= 1)
    {
      memcpy(v16, v22, 4 * v21);
    }

    sub_100010E3C(&v15, &v15, &dword_100023358, &v21);
    sub_100012EA4(v18, v24, v18);
    sub_100010C9C(v19, v18, &dword_100023358, v18);
    sub_100012EA4(v18, &v21, &v21);
    v12 = *v24;
    *a2 = *v24;
    if (v12 >= 1)
    {
      memcpy(a2 + 1, &v24[4], 4 * v12);
    }

    v13 = v21;
    a2[15] = v21;
    if (v13 >= 1)
    {
      memcpy(a2 + 16, v22, 4 * v13);
    }

    v14 = *v20;
    a2[30] = *v20;
    if (v14 >= 1)
    {
      memcpy(a2 + 31, &v20[4], 4 * v14);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 15) = 0x100000001;
    *(a2 + 15) = 0;
  }
}

void sub_1000129F0(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[30];
  if (v5 && (v5 != 1 || a1[31]))
  {
    v7 = 0uLL;
    memset(&v45[4], 0, 56);
    v8 = *a1;
    *v45 = v8;
    if (v8 >= 1)
    {
      memcpy(&v45[4], a1 + 1, 4 * v8);
      v7 = 0uLL;
    }

    v44 = 0;
    v43[2] = v7;
    v43[1] = v7;
    v43[0] = v7;
    v9 = a1[15];
    v42 = v9;
    if (v9 >= 1)
    {
      memcpy(v43, a1 + 16, 4 * v9);
    }

    v41 = 0;
    v10 = 0uLL;
    memset(v40, 0, sizeof(v40));
    v39 = v5;
    if (v5 >= 1)
    {
      memcpy(v40, a1 + 31, 4 * v5);
      v10 = 0uLL;
    }

    *&v38[12] = v10;
    v37[1] = v10;
    *v38 = v10;
    v37[0] = v10;
    v35[0] = v10;
    v35[1] = v10;
    v36[0] = v10;
    *(v36 + 12) = v10;
    v33[0] = v10;
    v33[1] = v10;
    v34[0] = v10;
    *(v34 + 12) = v10;
    sub_100010C9C(&v39, &v39, &dword_100023358, v33);
    sub_100010C9C((a2 + 4), v33, &dword_100023358, v37);
    sub_100010C9C(&v39, v33, &dword_100023358, v33);
    sub_100010C9C((a2 + 64), v33, &dword_100023358, v35);
    sub_100012EA4(v45, v37, v37);
    sub_100012EA4(&v42, v35, v35);
    v12 = LODWORD(v37[0]) == 1 && DWORD1(v37[0]) == 0;
    if (!LODWORD(v37[0]) || v12)
    {
      v24 = LODWORD(v35[0]) == 1 && DWORD1(v35[0]) == 0;
      if (!LODWORD(v35[0]) || v24)
      {

        sub_100012568(a1, a3);
      }

      else
      {
        *a3 = 0;
        *(a3 + 60) = 0x100000001;
        *(a3 + 120) = 0;
      }
    }

    else
    {
      memset(v32, 0, 60);
      sub_100010E3C(v45, v45, &dword_100023358, v32);
      sub_100012EA4(v32, v37, v45);
      sub_100010E3C(&v42, &v42, &dword_100023358, v32);
      sub_100012EA4(v32, v35, &v42);
      sub_100010C9C(&v39, v37, &dword_100023358, &v39);
      sub_100010C9C(v37, v37, &dword_100023358, v33);
      sub_100010C9C(v37, v33, &dword_100023358, v37);
      sub_100010C9C(v45, v33, &dword_100023358, v33);
      sub_100010C9C(v35, v35, &dword_100023358, v45);
      sub_100012EA4(v45, v33, v45);
      sub_100010E3C(v45, v45, &dword_100023358, v32);
      sub_100012EA4(v33, v32, v33);
      sub_100010C9C(v35, v33, &dword_100023358, v35);
      sub_100010C9C(&v42, v37, &dword_100023358, v37);
      sub_100012EA4(v35, v37, (a3 + 60));
      v13 = a3 + 64;
      if (*(a3 + 64))
      {
        sub_100012F24((a3 + 60), &dword_100023358, (a3 + 60));
        v25 = *(a3 + 60);
        v26 = v25 - 1;
        if (*(v13 + 4 * (v25 - 1)) == 1)
        {
          *(a3 + 60) = v26;
        }

        if (v25 >= 1)
        {
          v27 = 0;
          v28 = 4 * v26;
          do
          {
            v29 = *(v13 + v28);
            *(v13 + v28) = __PAIR64__(v27, v29) >> 1;
            v28 -= 4;
            v27 = v29;
          }

          while (v28 != -4);
        }
      }

      else
      {
        v14 = *(a3 + 60);
        v15 = v14 - 1;
        if (*(v13 + 4 * (v14 - 1)) == 1)
        {
          *(a3 + 60) = v15;
        }

        if (v14 >= 1)
        {
          v16 = 0;
          v17 = 4 * v15;
          do
          {
            v18 = *(v13 + v17);
            *(v13 + v17) = __PAIR64__(v16, v18) >> 1;
            v17 -= 4;
            v16 = v18;
          }

          while (v17 != -4);
        }
      }

      v30 = *v45;
      *a3 = *v45;
      if (v30 >= 1)
      {
        memcpy((a3 + 4), &v45[4], 4 * v30);
      }

      v31 = v39;
      *(a3 + 120) = v39;
      if (v31 >= 1)
      {
        memcpy((a3 + 124), v40, 4 * v31);
      }
    }
  }

  else
  {
    v19 = *(a2 + 4);
    *a3 = v19;
    if (v19 >= 1)
    {
      v20 = 0;
      do
      {
        *(a3 + 4 + 4 * v20) = *(a2 + 8 + 4 * v20);
        ++v20;
      }

      while (v20 < *(a2 + 4));
    }

    v21 = *(a2 + 64);
    *(a3 + 60) = v21;
    if (v21 >= 1)
    {
      v22 = 0;
      do
      {
        *(a3 + 64 + 4 * v22) = *(a2 + 68 + 4 * v22);
        ++v22;
      }

      while (v22 < *(a2 + 64));
    }

    *(a3 + 120) = 0x100000001;
  }
}

void sub_100012EA4(unsigned int *a1, int *a2, void *a3)
{
  memset(v6, 0, 60);
  sub_10000F4A8(a1, a2, v6);
  if (v4)
  {
    sub_10000F4A8(&dword_100023358, v6, a3);
  }

  else
  {
    v5 = LODWORD(v6[0]);
    *a3 = v6[0];
    if (v5 >= 1)
    {
      memcpy(a3 + 4, v6 + 4, 4 * v5);
    }
  }
}

int *sub_100012F24(int *result, int *a2, int *a3)
{
  v4 = *result;
  v5 = *a2;
  if (*result <= *a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  if (v4 <= v5)
  {
    v7 = result;
  }

  else
  {
    v7 = a2;
  }

  if (v4 <= v5)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *result;
  }

  if (v4 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  v10 = v6 + 1;
  v11 = a3 + 1;
  if (v9 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = v7 + 1;
    v14 = v9;
    v15 = v6 + 1;
    result = a3 + 1;
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = v17 + v12;
      v20 = *v13++;
      v19 = v20;
      v23 = __CFADD__(v20, v18);
      v21 = v20 + v18;
      v22 = v23;
      v23 = __CFADD__(v16, v12);
      v24 = __CFADD__(v16, v12);
      v12 = (v24 | v22) & 1;
      if (v23)
      {
        v25 = v19;
      }

      else
      {
        v25 = v21;
      }

      *result++ = v25;
      --v14;
    }

    while (v14);
  }

  if (v9 >= v8)
  {
    if (v12)
    {
LABEL_36:
      v11[v8++] = 1;
    }
  }

  else
  {
    v26 = 0;
    if (v4 <= v5)
    {
      v4 = v5;
    }

    v27 = 4 * v9 + 4;
    v28 = v6 + v27;
    v29 = a3 + v27;
    while (1)
    {
      v30 = *&v28[4 * v26];
      *&v29[4 * v26] = v30 + v12;
      if (!__CFADD__(v30, v12))
      {
        break;
      }

      ++v26;
      v12 = 1;
      if (v4 - v9 == v26)
      {
        goto LABEL_36;
      }
    }

    result = memcpy(&v11[v9 + 1 + v26], &v10[v9 + 1 + v26], 4 * (~v9 + v4 - v26));
  }

  *a3 = v8;
  return result;
}

char *sub_100013048(char *result, char *__src, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v6 = result + 32;
    do
    {
      v7 = v5[24];
      if (v3 < 0x40 || v7)
      {
        if (v3 >= 64 - v7)
        {
          v8 = (64 - v7);
        }

        else
        {
          v8 = v3;
        }

        result = memcpy(&v6[v7], __src, v8);
        v9 = v5[24] + v8;
        v5[24] = v9;
        __src += v8;
        v3 -= v8;
        if (v9 >= 0x40)
        {
          result = sub_100013104(v5, v6);
          v5[24] = 0;
        }
      }

      else
      {
        result = sub_100013104(v5, __src);
        __src += 64;
        v3 -= 64;
      }
    }

    while (v3);
  }

  return result;
}

unsigned int *sub_100013104(unsigned int *result, const char *a2)
{
  v2 = 0;
  v47 = vld4q_s8(a2);
  _Q4 = vmovl_u8(*v47.val[0].i8);
  _Q5 = vmovl_high_u8(v47.val[0]);
  v5 = vmovl_u8(*v47.val[1].i8);
  v6 = vmovl_high_u8(v47.val[1]);
  v7 = vmovl_high_u16(v6);
  __asm { SHLL2           V18.4S, V4.8H, #0x10 }

  v13 = vshll_n_s16(*_Q5.i8, 0x10uLL);
  __asm { SHLL2           V5.4S, V5.8H, #0x10 }

  v14 = vmovl_u8(*v47.val[2].i8);
  v15 = vmovl_high_u8(v47.val[2]);
  v16 = vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_u16(*v6.i8), 8uLL), vorrq_s8(v13, vmovl_u16(*v15.i8))), 8uLL);
  v17 = vmovl_u8(*v47.val[3].i8);
  v47.val[0] = vmovl_high_u8(v47.val[3]);
  v46[3] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(v7, 8uLL), vorrq_s8(_Q5, vmovl_high_u16(v15))), 8uLL), vmovl_high_u16(v47.val[0]));
  v46[2] = vorrq_s8(v16, vmovl_u16(*v47.val[0].i8));
  v46[0] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_u16(*v5.i8), 8uLL), vorrq_s8(vshll_n_s16(*_Q4.i8, 0x10uLL), vmovl_u16(*v14.i8))), 8uLL), vmovl_u16(*v17.i8));
  v46[1] = vorrq_s8(vshlq_n_s32(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v5), 8uLL), vorrq_s8(_Q18, vmovl_high_u16(v14))), 8uLL), vmovl_high_u16(v17));
  v18 = v46[0];
  do
  {
    HIDWORD(v19) = *(&v46[3] + v2 + 8);
    LODWORD(v19) = HIDWORD(v19);
    v20 = (v19 >> 17) ^ __ROR4__(HIDWORD(v19), 19) ^ (HIDWORD(v19) >> 10);
    HIDWORD(v19) = *(v46 + v2 + 4);
    LODWORD(v19) = HIDWORD(v19);
    *(&v46[4] + v2) = v20 + *(&v46[2] + v2 + 4) + v18 + ((v19 >> 7) ^ __ROR4__(HIDWORD(v19), 18) ^ (HIDWORD(v19) >> 3));
    v2 += 4;
    v18 = HIDWORD(v19);
  }

  while (v2 != 192);
  v21 = 0;
  v22 = result[1];
  v23 = result[4];
  v24 = result[5];
  v26 = result[6];
  v25 = result[7];
  v27 = *result;
  v28 = v25;
  v29 = v26;
  v30 = v24;
  v32 = result[2];
  v31 = result[3];
  v33 = v23;
  v34 = v31;
  v35 = v32;
  v36 = v22;
  do
  {
    v37 = v36;
    v38 = v35;
    v39 = v33;
    v40 = v30;
    v41 = v29;
    v36 = v27;
    HIDWORD(v42) = v33;
    LODWORD(v42) = v33;
    v43 = (v42 >> 6) ^ __ROR4__(v33, 11);
    v44 = __PAIR64__(v27, __ROR4__(v39, 25));
    v45 = v28 + (v29 & ~v39 | v30 & v39) + (v43 ^ v44) + dword_1000184F4[v21] + *(v46 + v21 * 4);
    LODWORD(v44) = v36;
    v33 = v45 + v34;
    v27 = ((v44 >> 2) ^ __ROR4__(v36, 13) ^ __ROR4__(v36, 22)) + (v36 & (v35 ^ v37) ^ v35 & v37) + v45;
    ++v21;
    v28 = v29;
    v29 = v30;
    v30 = v39;
    v34 = v35;
    v35 = v37;
  }

  while (v21 != 64);
  *result += v27;
  result[1] = v36 + v22;
  result[2] = v37 + v32;
  result[3] = v38 + v31;
  result[4] = v33 + v23;
  result[5] = v39 + v24;
  result[6] = v40 + v26;
  result[7] = v41 + v25;
  return result;
}

int *sub_100013384(int *result, int *a2, unsigned int a3)
{
  v3 = HIWORD(a3);
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 / (HIWORD(a3) + 1);
  if (HIWORD(a3) == 0xFFFF)
  {
    v6 = HIWORD(v4);
  }

  v7 = v6 * a3;
  v8 = v5 - (v7 << 16);
  v9 = __CFADD__(v8, v7 << 16);
  v10 = v4 - (v6 * v3 + HIWORD(v7)) - v9;
  v11 = a3 << 16;
  v12 = v5 + ((~v6 * a3) << 16);
  while (v10 > v3 || v10 == v3 && v8 >= v11)
  {
    v8 -= v11;
    v10 = (__PAIR64__(v10 - v3, ~(a3 << 16)) - v12) >> 32;
    LOWORD(v6) = v6 + 1;
    v12 -= v11;
  }

  LOWORD(v13) = v10;
  if (v3 != 0xFFFF)
  {
    v13 = (__PAIR64__(v10, v8) >> 16) / (v3 + 1);
  }

  v14 = v13 * v3;
  v15 = __CFADD__(v13 * a3, v8 - v13 * a3);
  v16 = -((a3 | (v3 << 16)) * v13);
  v17 = __CFADD__(v8 - (a3 | (v3 << 16)) * v13, v14 << 16);
  v18 = v10 - HIWORD(v14) - v15 - v17;
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v16 + v8 >= a3;
  }

  if (v19)
  {
    v20 = v16 - a3 + v8;
    do
    {
      v18 = (__PAIR64__(v18, ~a3) - v20) >> 32;
      LOWORD(v13) = v13 + 1;
      if (v18)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20 >= a3;
      }

      v20 -= a3;
    }

    while (v21);
  }

  *result = v13 | (v6 << 16);
  return result;
}

void sub_1000134AC(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (dword_100023448 == 1)
  {
    v5 = a1[1];
    *a2 = v4;
    *(a2 + 4) = v5;
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        *(a2 + 8 + 4 * v6) = a1[v6 + 2];
        ++v6;
      }

      while (v6 < a1[1]);
    }

    v7 = a1[16];
    *(a2 + 64) = v7;
    if (v7 >= 1)
    {
      v8 = 0;
      do
      {
        *(a2 + 68 + 4 * v8) = a1[v8 + 17];
        ++v8;
      }

      while (v8 < a1[16]);
    }
  }

  else if (v4 == 1)
  {
    v9 = dword_10002344C;
    *a2 = dword_100023448;
    *(a2 + 4) = v9;
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        *(a2 + 8 + 4 * v10) = dword_100023358[v10 + 62];
        ++v10;
      }

      while (v10 < dword_10002344C);
    }

    v11 = dword_100023488;
    *(a2 + 64) = dword_100023488;
    if (v11 >= 1)
    {
      v12 = 0;
      do
      {
        *(a2 + 68 + 4 * v12) = dword_100023358[v12 + 77];
        ++v12;
      }

      while (v12 < dword_100023488);
    }
  }

  else
  {
    memset(v17, 0, 60);
    memset(v16, 0, 60);
    memset(v15, 0, 60);
    if (sub_10001011C(&dword_10002344C, a1 + 1))
    {
      goto LABEL_18;
    }

    sub_100012EA4(dword_100023358, a1 + 16, v17);
    if (!sub_10001011C(&dword_100023488, v17))
    {
      *a2 = 1;
      return;
    }

    if (sub_10001011C(&dword_100023488, a1 + 16))
    {
LABEL_18:
      sub_100012EA4(a1 + 1, &dword_10002344C, v15);
      sub_100012EA4(a1 + 16, &dword_100023488, v16);
      sub_100010EC8(v15, dword_100023358, v17);
      sub_100010C9C(v16, v17, dword_100023358, v15);
      sub_100010C9C(v15, v15, dword_100023358, v17);
      sub_100012EA4(v17, &dword_10002344C, v16);
      sub_100012EA4(v16, a1 + 1, v17);
      sub_100012EA4(&dword_10002344C, v17, v16);
      v13 = LODWORD(v17[0]);
      *(a2 + 4) = v17[0];
      if (v13 >= 1)
      {
        memcpy((a2 + 8), v17 + 4, 4 * v13);
      }

      sub_100010C9C(v15, v16, dword_100023358, v17);
      sub_100012EA4(v17, &dword_100023488, (a2 + 64));
      *a2 = 0;
    }

    else
    {
      sub_100010C9C(&dword_10002344C, &dword_10002344C, dword_100023358, v17);
      sub_100010E3C(v17, v17, dword_100023358, v15);
      sub_100010E3C(v17, v15, dword_100023358, v16);
      sub_100010E3C(v16, &dword_100023394, dword_100023358, v17);
      sub_100010E3C(&dword_100023488, &dword_100023488, dword_100023358, v15);
      sub_100010EC8(v15, dword_100023358, v16);
      sub_100010C9C(v16, v17, dword_100023358, v15);
      sub_100010C9C(v15, v15, dword_100023358, v17);
      sub_100012EA4(v17, &dword_10002344C, v16);
      sub_100012EA4(v16, a1 + 1, v17);
      sub_100012EA4(&dword_10002344C, v17, v16);
      v14 = LODWORD(v17[0]);
      *(a2 + 4) = v17[0];
      if (v14 >= 1)
      {
        memcpy((a2 + 8), v17 + 4, 4 * v14);
      }

      sub_100010C9C(v15, v16, dword_100023358, v17);
      sub_100012EA4(v17, &dword_100023488, (a2 + 64));
    }
  }
}

uint64_t sub_100013AA8()
{
  v0 = __error();
  v4 = *v0;
  return sub_100007FF8(v0, v1, v2, "pthread_create error (%d).\n");
}