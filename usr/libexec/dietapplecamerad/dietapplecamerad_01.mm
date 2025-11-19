uint64_t sub_10000A928(unsigned int *a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  v12 = a1[4];
  v13 = a1[157];
  bzero(a6, a1[121818]);
  if (!a2)
  {
    sub_10001BDE0();
  }

  v14 = 0;
  v15 = *(a3 + 16);
  v16 = 24;
  if (!v15)
  {
    v16 = 104;
  }

  v17 = *(a3 + v16);
  v18 = *a3;
  v19 = *(a3 + 40);
  v20 = *(a3 + 24);
  v21 = (v13 >> 4);
  do
  {
    v22 = v15;
    v23 = v12;
    v24 = v19;
    v25 = a6;
    v26 = a5;
    v27 = a4;
    LOBYTE(v28) = v20;
    if (v12)
    {
      do
      {
        if (!v22)
        {
          v24 = *(a3 + 120);
          v22 = *(a3 + 96);
          v28 = *(a3 + 104);
        }

        v29 = *v24 >> 3;
        v30 = v24[3];
        if (v28)
        {
          v29 = -v29;
        }

        v31 = (v29 + v30);
        *v27 += v24[3] >> 2;
        *v26 += v31 >> 2;
        if (v21 < v30 || v21 < v31)
        {
          ++*v25;
        }

        ++v25;
        v24 += 4;
        ++v27;
        ++v26;
        --v22;
        LOBYTE(v28) = v28 ^ 1;
        --v23;
      }

      while (v23);
    }

    if (v18 > 2)
    {
      if ((v18 - 3) >= 2)
      {
LABEL_47:
        sub_10001AE68();
      }

      goto LABEL_22;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        if (v18 != 2)
        {
          goto LABEL_47;
        }

        v19 += *(a3 + 8);
        *(a3 + 40) = v19;
        v33 = *(a3 + 20) + 1;
        goto LABEL_26;
      }

LABEL_22:
      v34 = *(a3 + 32);
      if (v34)
      {
        *(a3 + 32) = v34 - 1;
        v19 += *(a3 + 8);
      }

      else
      {
        v19 += 2 * *(a3 + 8);
      }

      *(a3 + 40) = v19;
      v33 = *(a3 + 20) + 2;
LABEL_26:
      *(a3 + 20) = v33;
      goto LABEL_27;
    }

    v19 += *(a3 + 8);
    *(a3 + 40) = v19;
    v20 ^= 1u;
    ++*(a3 + 20);
    *(a3 + 24) = v20;
LABEL_27:
    v35 = *(a3 + 80);
    if (v35 > 2)
    {
      if ((v35 - 3) >= 2)
      {
LABEL_48:
        sub_10001AE68();
      }

      goto LABEL_33;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        if (v35 != 2)
        {
          goto LABEL_48;
        }

        *(a3 + 120) += 2 * *(a3 + 88);
        v36 = *(a3 + 100) + 1;
LABEL_37:
        *(a3 + 100) = v36;
        if (v22)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }

LABEL_33:
      v37 = *(a3 + 112);
      if (v37)
      {
        *(a3 + 112) = v37 - 1;
        v38 = *(a3 + 120) + 2 * *(a3 + 88);
      }

      else
      {
        v38 = *(a3 + 120) + 4 * *(a3 + 88);
      }

      *(a3 + 120) = v38;
      v36 = *(a3 + 100) + 2;
      goto LABEL_37;
    }

    *(a3 + 120) += 2 * *(a3 + 88);
    v39 = *(a3 + 100);
    LODWORD(v40) = vadd_s32(v39, 0x100000001).u32[0];
    HIDWORD(v40) = veor_s8(*&v39, 0x100000001).i32[1];
    *(a3 + 100) = v40;
    if (v22)
    {
LABEL_42:
      sub_10001BDB4();
    }

LABEL_38:
    ++v14;
  }

  while (v14 != a2);

  return sub_100009370((a1 + 152), 0x80 / a2, v12, v17, a4, a5, a6);
}

uint64_t sub_10000ABF0(unsigned int *a1, int a2, unint64_t a3, int *a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v9 = a1[5];
  v10 = *a4;
  v37 = a4[12];
  v12 = *(a4 + 8);
  v11 = *(a4 + 9);
  v13 = a4[20];
  v43 = *(a4 + 11);
  v44 = *(a4 + 1);
  v14 = a4[32];
  v16 = *(a4 + 18);
  v15 = *(a4 + 19);
  v36 = a1[157];
  bzero(a7, a1[121818]);
  if (!a3)
  {
    sub_10001BE0C();
  }

  v17 = 14;
  if (!a4[12])
  {
    v17 = 34;
  }

  v18 = a4[v17];
  if (v9)
  {
    v19 = 0;
    v20 = v37 - a2;
    if (v37 - a2 >= 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    v22 = v21 + v20;
    v23 = (v36 >> 4);
    v24 = a5;
    v25 = a6;
    v26 = a7;
    v27 = v18;
    do
    {
      if (v20 >= 1)
      {
        v28 = (v11 + 8 * a2);
      }

      else
      {
        v28 = &v15[-4 * (v37 - a2)];
      }

      v29 = a3;
      v30 = v22;
      do
      {
        if (!v30)
        {
          v28 = v15;
          v30 = v14;
        }

        v31 = *v28 >> 3;
        v32 = v28[3];
        if (v27)
        {
          v31 = -v31;
        }

        *v24 += v28[3] >> 2;
        *v25 += (v31 + v32) >> 2;
        if (v23 < v32 || v23 < (v31 + v32))
        {
          ++*v26;
        }

        v28 += 4;
        --v30;
        --v29;
      }

      while (v29);
      if ((v10 - 3) >= 2 && v10 != 1)
      {
        if (v10 == 2 || !v10)
        {
          sub_10001AE94();
        }

        sub_10001AEC0();
      }

      if ((v13 - 3) >= 2 && v13 != 1)
      {
        if (v13 == 2 || !v13)
        {
          sub_10001AE94();
        }

        sub_10001AEC0();
      }

      if (v12)
      {
        v11 += 4 * v44;
      }

      else
      {
        v11 += 2 * v44;
      }

      if (v12)
      {
        --v12;
      }

      else
      {
        v12 = 0;
      }

      v34 = v16 - 1;
      if (v16)
      {
        v15 += 2 * v43;
      }

      else
      {
        v34 = 0;
        v15 += v43;
      }

      ++v24;
      ++v25;
      ++v26;
      v27 ^= 1u;
      ++v19;
      v16 = v34;
    }

    while (v19 != v9);
  }

  return sub_100009370((a1 + 152), 0x80 / a3, v9, v18, a5, a6, a7);
}

uint64_t sub_10000AE4C(uint64_t result, unsigned int a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  if (!a2)
  {
    sub_10001BE64();
  }

  v5 = 0;
  v6 = *(result + 4);
  v7 = *(a3 + 16);
  v8 = *a3;
  v9 = *(a3 + 40);
  do
  {
    v10 = v7;
    v11 = v6;
    v12 = a5;
    v13 = a4;
    v14 = v9;
    if (v6)
    {
      do
      {
        if (!v10)
        {
          v14 = *(a3 + 120);
          v10 = *(a3 + 96);
        }

        *v13++ += *(v14 + 6) >> 2;
        v15 = *v12;
        result = v15 + (*(v14 + 14) >> 2);
        *v12++ = v15 + (*(v14 + 14) >> 2);
        v14 += 16;
        --v10;
        --v11;
      }

      while (v11);
    }

    if (v8 > 2)
    {
      if ((v8 - 3) >= 2)
      {
LABEL_39:
        sub_10001AE68();
      }

      goto LABEL_13;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v9 += 2 * *(a3 + 8);
        *(a3 + 40) = v9;
        v16 = *(a3 + 20) + 1;
        goto LABEL_17;
      }

LABEL_13:
      v17 = *(a3 + 32);
      if (v17)
      {
        *(a3 + 32) = v17 - 1;
        v9 += 2 * *(a3 + 8);
      }

      else
      {
        v9 += 4 * *(a3 + 8);
      }

      *(a3 + 40) = v9;
      v16 = *(a3 + 20) + 2;
LABEL_17:
      *(a3 + 20) = v16;
      goto LABEL_18;
    }

    v9 += 2 * *(a3 + 8);
    *(a3 + 40) = v9;
    v22 = *(a3 + 20);
    LODWORD(v23) = vadd_s32(v22, 0x100000001).u32[0];
    HIDWORD(v23) = veor_s8(*&v22, 0x100000001).i32[1];
    *(a3 + 20) = v23;
LABEL_18:
    v18 = *(a3 + 80);
    if (v18 > 2)
    {
      if ((v18 - 3) >= 2)
      {
LABEL_40:
        sub_10001AE68();
      }

      goto LABEL_24;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        if (v18 != 2)
        {
          goto LABEL_40;
        }

        *(a3 + 120) += 2 * *(a3 + 88);
        v19 = *(a3 + 100) + 1;
LABEL_28:
        *(a3 + 100) = v19;
        if (v10)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

LABEL_24:
      v20 = *(a3 + 112);
      if (v20)
      {
        *(a3 + 112) = v20 - 1;
        v21 = *(a3 + 120) + 2 * *(a3 + 88);
      }

      else
      {
        v21 = *(a3 + 120) + 4 * *(a3 + 88);
      }

      *(a3 + 120) = v21;
      v19 = *(a3 + 100) + 2;
      goto LABEL_28;
    }

    *(a3 + 120) += 2 * *(a3 + 88);
    v24 = *(a3 + 100);
    LODWORD(v25) = vadd_s32(v24, 0x100000001).u32[0];
    HIDWORD(v25) = veor_s8(*&v24, 0x100000001).i32[1];
    *(a3 + 100) = v25;
    if (v10)
    {
LABEL_33:
      sub_10001BE38();
    }

LABEL_29:
    ++v5;
  }

  while (v5 != a2);
  if (v6)
  {
    v26 = 0x80 / a2;
    do
    {
      *a4 = (v26 * *a4) >> 5;
      ++a4;
      *a5 = (v26 * *a5) >> 5;
      ++a5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_10000B06C(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  v4 = 0;
  v5 = *(a2 + 340);
  v6 = (a2 + 8);
  do
  {
    v7 = *(v6 - 2);
    v8 = (*(v6 - 1) * v5) - (v7 * v7);
    v9 = 0.0;
    if (v8 >= 0.0)
    {
      v10 = *v6;
      v11 = (v6[2] * v5) - (v10 * v10);
      if (v11 >= 0.0)
      {
        v12 = ((v10 * -v7) + (v6[1] * v5));
        v13 = sqrt(v8) * sqrt(v11);
        if (v13 == 0.0)
        {
          v13 = 1.0;
        }

        v9 = v12 / v13;
      }
    }

    v50[v4++] = v9;
    v6 += 5;
  }

  while (v4 != 17);
  v14 = *(result + 332) - *(result + 328);
  v15 = (v14 + 1);
  v16 = v15 / 2;
  if (v14 < 0)
  {
    v19 = -1.0;
    v18 = 1.0;
    v20 = v15 / 2;
  }

  else
  {
    v17 = 0;
    v18 = 1.0;
    v19 = -1.0;
    v20 = v15 / 2;
    do
    {
      v21 = v50[v17];
      if (v19 < v21)
      {
        v20 = v17;
        v19 = v50[v17];
      }

      if (v18 > v21)
      {
        v18 = v50[v17];
      }

      ++v17;
    }

    while (v15 != v17);
  }

  v22 = *(result + 352);
  if (!v22)
  {
    goto LABEL_44;
  }

  if (v20 > 0xF || ((1 << v20) & 0x8101) == 0)
  {
    v24 = *(result + 356);
    if (v20 >= 8)
    {
      v25 = 7;
    }

    else
    {
      v25 = 14;
    }

    if (v20 >= 8)
    {
      v26 = 1;
    }

    else
    {
      v26 = 9;
    }

    v27 = v25 >= v26;
    v28 = v25 - v26;
    if (!v27)
    {
      v28 = 0;
    }

    v29 = v28 + 1;
    v30 = &v50[v26];
    v31 = -1.0;
    do
    {
      v32 = *v30;
      if (v31 < *v30 && *(v30 - 1) < (v24 + v32) && v30[1] < (v24 + v32))
      {
        v31 = *v30;
      }

      ++v30;
      --v29;
    }

    while (v29);
    v22 = (v19 - v31) < *(result + 360);
  }

  else
  {
    v22 = 0;
  }

  v33 = 0;
  if (v20 < 2 || v20 >= v14 - 1)
  {
    goto LABEL_45;
  }

  v34 = *(result + 364);
  v35 = &v50[v20];
  v36 = *v35;
  if (*v35 >= (v34 + *(v35 - 1)) || v36 >= (v34 + v35[1]))
  {
LABEL_44:
    v33 = 0;
    goto LABEL_45;
  }

  if (v36 < (v34 + *(v35 - 2)))
  {
LABEL_57:
    *a4 = 0.0;
    v39 = 0.0;
    goto LABEL_62;
  }

  v33 = v36 < (v34 + v35[2]);
LABEL_45:
  if ((v19 - v18) < *(result + 368) || (v22 & 1) != 0 || v33)
  {
    goto LABEL_57;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  *a4 = v19;
  if (v20)
  {
    v37 = v20 < v14;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    v40 = v20 - 1;
    v41 = v20;
    v42 = v20 + 1;
    v43 = v50[v40];
    v44 = v50[v20];
    v45 = v50[v42];
    v46 = v44 - v43;
    v47 = v43 - v45;
    v48 = v45 - v44;
    v49 = ((v47 * v20) + (v42 * v46)) + (v40 * v48);
    if (v49 != 0.0)
    {
      v41 = ((((v41 * v41) * v47) + ((v42 * v42) * v46)) + ((v40 * v40) * v48)) / (v49 + v49);
    }

    v38 = v41 - v16;
  }

  else
  {
    v38 = (v20 - v16);
  }

  v39 = v38 * -2.0;
LABEL_62:
  *a3 = v39;
  return result;
}

uint64_t sub_10000B394(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  do
  {
    v6 = *(a2 + v3 * 4);
    v7 = *&dword_10001FF00[v3] * v6;
    *v4.i32 = *v4.i32 + (v6 - v7);
    v5 = v5 + v7;
    ++v3;
  }

  while (v3 != 14);
  if (v5 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = (*v4.i32 / v8) + -1.0;
  if (*v4.i32 == 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *v4.i32;
  }

  if (v5 <= *v4.i32)
  {
    v11 = 1.0 - (v5 / v10);
  }

  else
  {
    v11 = v9;
  }

  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = 0.0;
  if (v12 > 0.2)
  {
    v13 = 1.0;
    if (v12 < 0.6)
    {
      v13 = (v12 + -0.2) / 0.4;
    }
  }

  if (v11 >= 0.0)
  {
    *v4.i32 = v13 * *(result + 36);
  }

  else
  {
    *v4.i32 = -(v13 * *(result + 36));
  }

  v14 = (*v4.i32 + 1.0) * 0.5;
  *v4.i32 = 1.0 - v14;
  v15 = vdupq_lane_s32(v4, 0);
  v16 = a2 + 60;
  v17 = &xmmword_10001FECC;
  v18 = 0uLL;
  v19 = &xmmword_10001FF04;
  v20 = vdupq_n_s32(0x3A800000u);
  v21 = 12;
  __asm { FMOV            V5.4S, #1.0 }

  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  do
  {
    v31 = *(v16 - 56);
    v32 = vsqrtq_f32(vmulq_f32(vcvtq_f32_u32(v31), v20));
    v33 = *v17++;
    v34 = vmulq_f32(vmulq_f32(vcvtq_f32_u32(*v16), vcvtq_f32_u32(v33)), vbslq_s8(vcgtq_f32(v32, _Q5), _Q5, v32));
    v35 = *v19++;
    v36 = vcvtq_u32_f32(v34);
    v37 = vcvtq_u32_f32(vmulq_f32(v34, vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q5, v35), v14), v15, v35)));
    v30 = vaddq_s32(v30, v36);
    v29 = vaddq_s32(v29, v37);
    v18 = vaddq_s32(v31, v18);
    v38 = *(v16 + 56);
    v28 = vmlaq_s32(v28, v38, v36);
    v27 = vmlaq_s32(v27, v38, v37);
    v16 += 16;
    v21 -= 4;
  }

  while (v21);
  v39 = vaddvq_s32(v27);
  v40 = vaddvq_s32(v28);
  v41 = vaddvq_s32(v29);
  v42 = vaddvq_s32(v30);
  if (v42)
  {
    v40 = 16 * v40 / v42;
  }

  v43 = v39;
  if (v41)
  {
    v43 = 16 * v39 / v41;
  }

  *(a3 + 12) = *(a2 + 168);
  if (v42)
  {
    *a3 = (vaddvq_s32(v18) + 8) >> 4;
    *(a3 + 4) = v42;
    *(a3 + 8) = v40;
    if (v41)
    {
      if (v43 >= 0)
      {
        v44 = v43;
      }

      else
      {
        v44 = -v43;
      }

      if (v44 >= 0xA1)
      {
        if (v44 < 0x140)
        {
          *(a3 + 8) = (((v44 << 10) - 163840) / 0xA0 * v43 + (1024 - ((v44 << 10) - 163840) / 0xA0) * v40) >> 10;
        }

        else
        {
          *(a3 + 8) = v43;
        }
      }
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_10000B5E0(uint64_t result, uint64_t a2)
{
  if (result >= 5)
  {
    sub_10001B338();
  }

  v2 = qword_10001FF60[result];
  if (result <= 2)
  {
    if (result >= 2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result == 3)
  {
LABEL_6:
    v3 = (a2 + 32);
    v4 = -1.0;
    do
    {
      v5 = *(v3 - 4);
      if (v5 && *v3 && *(v3 - 8) >= 0x41)
      {
        v6 = (v5 / *v3) + -1.0;
        if (v6 < 0.0)
        {
          v6 = -v6;
        }

        if (fmaxf(v6, 0.0) > v4)
        {
          v4 = v6;
        }
      }

      ++v3;
      --v2;
    }

    while (v2);
    return result;
  }

  v7 = 0;
  v8 = -1.0;
  do
  {
    if ((v7 & 0x7FFFFFFD) != 0)
    {
      v9 = a2 + 4 * v7;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v9 + 32);
        if (v11)
        {
          if (*(a2 + 4 * v7) >= 0x41u)
          {
            v12 = (v10 / v11) + -1.0;
            if (v12 < 0.0)
            {
              v12 = -v12;
            }

            if (fmaxf(v12, 0.0) > v8)
            {
              v8 = v12;
            }
          }
        }
      }
    }

    ++v7;
  }

  while (v2 != v7);
  return result;
}

uint64_t sub_10000B73C(float *a1, float *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

float sub_10000B754(uint64_t a1, float a2)
{
  v2 = (a1 + 8);
  for (i = 1; i != 8; ++i)
  {
    if (*v2 > a2)
    {
      break;
    }

    v2 += 2;
  }

  if (i >= 7)
  {
    i = 7;
  }

  v4 = (a1 + 8 * i);
  v5 = *(v4 - 2);
  if (*v4 == v5)
  {
    return *(v4 - 1);
  }

  v7 = (a2 - v5) / (*v4 - v5);
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = v7 < 0.0;
  v10 = 0.0;
  if (!v9)
  {
    v10 = v8;
  }

  return ((1.0 - v10) * *(v4 - 1)) + (v10 * v4[1]);
}

const void **sub_10000B92C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10000B974(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (!*(result + 24))
    {
      *(result + 48) = os_transaction_create();
    }

    operator new();
  }

  return result;
}

uint64_t sub_10000BA7C(uint64_t result)
{
  if (result <= 5)
  {
    operator new[]();
  }

  return result;
}

void sub_10000BB64(uint64_t a1, void *a2)
{
  __p = a2;
  if (a2)
  {
    sub_10000BC50(a1 + 8, &__p);
    if (*(__p + 2) == 1 && xpc_connection_get_pid(*__p))
    {
      xpc_release(*__p);
      sub_10000BA7C(3);
    }

    else
    {
      sub_10000BA7C(3);
    }

    sub_10000BA7C(3);
    if (!*(a1 + 24))
    {
      os_release(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    kdebug_trace();
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void *sub_10000BC50(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_10000CE74(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_10000CE10(v10);
}

void sub_10000BD08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CE10(va);
  _Unwind_Resume(a1);
}

void sub_10000BD1C(void *a1)
{
  v2 = a1 + 1;
  for (i = a1[2]; i != v2; i = i[1])
  {
    v4 = i[2];
    if (*(v4 + 8) == 1)
    {
      xpc_release(*v4);
      v4 = i[2];
      if (!v4)
      {
        continue;
      }
    }

    operator delete(v4);
  }

  sub_10000CE10(v2);
  v5 = a1[6];
  if (v5)
  {
    os_release(v5);
    a1[6] = 0;
  }
}

uint64_t sub_10000BD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000BA7C(3);
  kdebug_trace();
  if (*a3 == 1)
  {
    v7 = 0;
  }

  else if (*a3 == 2)
  {
    v6 = *(a3 + 8);
    if (v6 <= 5)
    {
      v8 = *(a3 + 12);
      if ((v8 & 1) == 0)
      {
        sub_10000E9D8(*(a1 + 80));
        sub_10000E9D8(*(a1 + 88));
      }

      v7 = 0;
      *(a2 + v6 + 12) = v8;
    }

    else
    {
      v7 = 3758097084;
    }
  }

  else
  {
    v7 = 3758097084;
  }

  sub_10000BA7C(3);
  kdebug_trace();
  return v7;
}

uint64_t sub_10000BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000BA7C(3);
  kdebug_trace();
  if (*a3 == 5)
  {
    v4 = 0;
    *(a3 + 8) = sub_10001437C(0, (a3 + 16));
  }

  else
  {
    v4 = 3758097084;
  }

  sub_10000BA7C(3);
  kdebug_trace();
  return v4;
}

void sub_10000BF84(uint64_t a1, xpc_connection_t *a2, xpc_object_t xdict)
{
  length = 0;
  uint64 = xpc_dictionary_get_uint64(xdict, "H10ISPServicesRemoteTypeKey");
  data = xpc_dictionary_get_data(xdict, "H10ISPServicesRemoteDataKey", &length);
  if (uint64)
  {
    v8 = data == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || length == 0)
  {
    return;
  }

  if (uint64 == 1 && length == 13136)
  {
    v10 = sub_10000BD98(a1, a2, data);
LABEL_14:
    v13 = v10;
    goto LABEL_16;
  }

  if (uint64 == 2 && length == 3680)
  {
    v11 = memcpy(__dst, data, sizeof(__dst));
    v10 = sub_10000BEB8(v11, v12, __dst);
    goto LABEL_14;
  }

  xpc_connection_get_pid(*a2);
  sub_10000BA7C(3);
  v13 = -536870212;
LABEL_16:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    remote_connection = xpc_dictionary_get_remote_connection(reply);
    xpc_connection_get_pid(*a2);
    if (remote_connection)
    {
      xpc_dictionary_set_int64(v15, "H10ISPServicesRemoteReturnKey", v13);
      if (uint64 == 2)
      {
        xpc_dictionary_set_data(v15, "H10ISPServicesRemoteDataKey", __dst, length);
      }

      xpc_connection_send_message(remote_connection, v15);
    }

    else
    {
      sub_10000BA7C(3);
    }

    xpc_release(v15);
  }

  else
  {
    xpc_connection_get_pid(*a2);
    sub_10000BA7C(3);
  }
}

uint64_t sub_10000C124(uint64_t a1, xpc_connection_t *a2)
{
  xpc_connection_get_pid(*a2);
  sub_10000BA7C(3);
  v4 = *(*a1 + 48);

  return v4(a1, a2);
}

uint64_t sub_10000C318(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    v8 = *(a1 + 40);

    return sub_10000C124(v4, v8);
  }

  else
  {
    v6 = *(a1 + 40);
    if (type == &_xpc_type_dictionary)
    {
      v9 = *(*v4 + 64);

      return v9(v4, v6, object);
    }

    else
    {
      xpc_connection_get_pid(*v6);
      return sub_10000BA7C(3);
    }
  }
}

const char *sub_10000C414(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 16);
    if (v5 == a1 + 8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v8 = v5 + 8;
        v5 = *(v5 + 8);
        v7 = *(v8 + 8);
        if (!*(v7 + 8))
        {
          v6 = v7;
        }
      }

      while (v5 != a1 + 8);
    }

    v9 = strlen(*(a1 + 168));
    result = strncmp(v4, *(a1 + 168), v9);
    if (result)
    {
      v10 = strlen(*(a1 + 176));
      result = strncmp(v4, *(a1 + 176), v10);
      if (result)
      {
        return sub_10000BA7C(3);
      }

      else if (v6)
      {
        v11 = *(*a1 + 48);

        return v11(a1, v6);
      }
    }

    else if (!v6)
    {
      operator new();
    }
  }

  return result;
}

uint64_t sub_10000C5B0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 3758097101;
  }

  if (sub_1000193BC(v2))
  {
    return 0;
  }

  if (sub_100015ED8(*(a1 + 72)))
  {
    do
    {
      usleep(0x186A0u);
      sub_10000BA7C(3);
    }

    while ((sub_100015ED8(*(a1 + 72)) & 1) != 0);
  }

  *(a1 + 48) = os_transaction_create();
  v3 = sub_100017EA0(*(a1 + 72));
  os_release(*(a1 + 48));
  if (v3)
  {
    sub_10000BA7C(3);
  }

  return v3;
}

uint64_t sub_10000C678(void *a1)
{
  kdebug_trace();
  v2 = sub_10001A608(a1 + 8, sub_10000B964, 0);
  v3 = a1[8];
  if (!v3)
  {
    v4 = 3758097088;
LABEL_16:
    sub_10000BA7C(3);
    goto LABEL_18;
  }

  v4 = v2;
  if (CFArrayGetCount(*v3))
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1[8], v5);
      a1[9] = ValueAtIndex;
      v4 = sub_100016A78(ValueAtIndex, sub_10000B96C, a1);
      if (!v4)
      {
        break;
      }

      a1[9] = 0;
      ++v5;
    }

    while (v5 < CFArrayGetCount(*a1[8]));
  }

  if (!a1[9])
  {
    sub_10000BA7C(3);
    if (!v4)
    {
      goto LABEL_19;
    }

LABEL_18:
    (*(*a1 + 24))(a1);
    goto LABEL_19;
  }

  v4 = sub_10000C5B0(a1);
  if (v4)
  {
    goto LABEL_18;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = a1[9];
    v11 = &a1[v7 + 10];
    v15[0] = v11;
    v15[1] = v10;
    v12 = sub_10000EA18(v15);
    if (v12)
    {
      v4 = v12;
      goto LABEL_16;
    }

    v13 = sub_10000E748(*v11);
    if (v13)
    {
      v4 = v13;
      goto LABEL_16;
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  if (sub_100017D1C(a1[9], 10))
  {
    sub_10000BA7C(3);
  }

  v4 = 0;
LABEL_19:
  kdebug_trace();
  return v4;
}

uint64_t sub_10000C884(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = sub_10000B960(v2);
    operator delete(v3);
    a1[12] = 0;
  }

  v4 = 0;
  v5 = a1 + 10;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v5[v4];
    if (v8)
    {
      sub_10000E570(v8);
      sub_10000EBE0(v5[v4]);
      v5[v4] = 0;
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = a1[9];
  if (v9)
  {
    sub_1000168AC(v9);
    a1[9] = 0;
  }

  v10 = a1[8];
  if (v10)
  {
    sub_10001A7BC(v10);
    a1[8] = 0;
  }

  return 0;
}

uint64_t sub_10000C918(uint64_t a1)
{
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  if (v2)
  {
    v4 = v2;
    dispatch_source_set_event_handler(v2, &stru_100024738);
    dispatch_resume(v4);
    mach_service = xpc_connection_create_mach_service(*(a1 + 144), *(a1 + 40), 1uLL);
    *(a1 + 32) = mach_service;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_10000CA80;
    handler[3] = &unk_100024758;
    handler[4] = a1;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(*(a1 + 32));
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_10000CB40;
    v7[3] = &unk_100024778;
    v7[4] = a1;
    xpc_set_event_stream_handler("com.apple.iokit.matching", v6, v7);
    dispatch_main();
  }

  sub_10000BA7C(3);
  return 3758097086;
}

xpc_type_t sub_10000CA80(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v5 = *(*v3 + 32);

    return v5(v3, object);
  }

  else
  {
    result = xpc_get_type(object);
    if (result == &_xpc_type_error)
    {

      return sub_10000BA7C(3);
    }
  }

  return result;
}

xpc_type_t sub_10000CB40(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = *(*v3 + 72);

    return v5(v3, object);
  }

  else
  {
    result = xpc_get_type(object);
    if (result == &_xpc_type_error && (object == &_xpc_error_termination_imminent || object == &_xpc_error_connection_invalid || object == &_xpc_error_connection_interrupted))
    {

      return sub_10000BA7C(3);
    }
  }

  return result;
}

uint64_t sub_10000CC48(uint64_t a1)
{
  *a1 = off_1000247A8;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = "com.apple.dietapplecamerad";
  *(a1 + 152) = "com.apple.dietapplecamerad.writer";
  *(a1 + 160) = "com.apple.dietapplecamerad.assistant_active";
  *(a1 + 168) = "com.apple.dietapplecamerad.launch";
  *(a1 + 176) = "com.apple.dietapplecamerad.destroy";
  *(a1 + 184) = "com.apple.dietapplecamerad.firmware_loading";
  *(a1 + 40) = dispatch_queue_create("com.apple.dietapplecamerad", 0);
  *(a1 + 56) = dispatch_queue_create(*(a1 + 152), 0);
  sub_10001A81C(@"EnableHawking", @"com.apple.coremedia", 1);
  sub_10000BA7C(3);
  return a1;
}

uint64_t sub_10000CD3C(uint64_t a1)
{
  *a1 = off_1000247A8;
  sub_10000BA7C(3);
  (*(*a1 + 24))(a1);
  dispatch_release(*(a1 + 40));
  dispatch_sync(*(a1 + 56), &stru_100024818);
  dispatch_release(*(a1 + 56));
  sub_10000CE10((a1 + 8));
  return a1;
}

void sub_10000CDE8(uint64_t a1)
{
  v1 = sub_10000CD3C(a1);

  operator delete(v1);
}

void *sub_10000CE10(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_10000CE74(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t sub_10000CEE8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = *(a2 + 8);
    if (v3 == 208)
    {
      operator new[]();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8.st_dev = 136315650;
      *&v8.st_mode = "RPCFileInfo";
      WORD2(v8.st_ino) = 2048;
      *(&v8.st_ino + 6) = 208;
      HIWORD(v8.st_gid) = 2048;
      *&v8.st_rdev = v3;
      v5 = "%s: Buffer size does not match expected value (expected %ld, recv %lld)";
      v6 = 32;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8.st_dev = 136315394;
    *&v8.st_mode = "RPCFileInfo";
    WORD2(v8.st_ino) = 1024;
    *(&v8.st_ino + 6) = a3;
    v5 = "%s: Number of buffers is not 1 (%d)";
    v6 = 18;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v8, v6);
  }

  return 3;
}

uint64_t sub_10000D130(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *(a2 + 8);
    if (v3 == 208)
    {
      operator new[]();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "RPCFileRead";
      v10 = 2048;
      v11 = 208;
      v12 = 2048;
      v13 = v3;
      v5 = "%s: Buffer size does not match expected value (expected %ld, recv %lld)";
      v6 = 32;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "RPCFileRead";
    v10 = 1024;
    LODWORD(v11) = a3;
    v5 = "%s: Number of buffers is not 2 (%d)";
    v6 = 18;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v8, v6);
  }

  return 3;
}

uint64_t sub_10000D4A4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *(a2 + 8);
    if (v3 == 208)
    {
      operator new[]();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "RPCFileWrite";
      v10 = 2048;
      v11 = 208;
      v12 = 2048;
      v13 = v3;
      v5 = "%s: Buffer size does not match expected value (expected %ld, recv %lld)\n";
      v6 = 32;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "RPCFileWrite";
    v10 = 1024;
    LODWORD(v11) = a3;
    v5 = "%s: Number of buffers is not 2 (%d)\n";
    v6 = 18;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v8, v6);
  }

  return 3;
}

uint64_t sub_10000D824(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "PDAFProcessX1Wrapper";
      v10 = 1024;
      v11 = a3;
      v4 = "%s: Number of buffers is not 2 (%d)\n";
      v5 = 18;
      goto LABEL_7;
    }

    return 3;
  }

  v3 = a2[4];
  if (v3 <= 0x7EF8B)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "PDAFProcessX1Wrapper";
      v10 = 1024;
      v11 = 520076;
      v12 = 2048;
      v13 = v3;
      v4 = "%s: Buffer size does not match expected value (expected %d, recv %lld)\n";
      v5 = 28;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v8, v5);
      return 3;
    }

    return 3;
  }

  sub_1000012D8(*a2, a2[3]);
  return 0;
}

uint64_t sub_10000D984(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "PDAFProcessX2Wrapper";
      v10 = 1024;
      v11 = a3;
      v4 = "%s: Number of buffers is not 3 (%d)\n";
      v5 = 18;
      goto LABEL_7;
    }

    return 3;
  }

  v3 = *(a2 + 56);
  if (v3 <= 0x7EF8B)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "PDAFProcessX2Wrapper";
      v10 = 1024;
      v11 = 520076;
      v12 = 2048;
      v13 = v3;
      v4 = "%s: Buffer size does not match expected value (expected %d, recv %lld)\n";
      v5 = 28;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v8, v5);
      return 3;
    }

    return 3;
  }

  sub_100007C3C(*a2, *(a2 + 24), *(a2 + 48));
  return 0;
}

uint64_t sub_10000DAE8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v3 = *(a2 + 80);
    if (v3 > 0x7EF8B)
    {
      sub_100007D3C(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72));
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "PDAFProcessX3Wrapper";
      v10 = 1024;
      v11 = 520076;
      v12 = 2048;
      v13 = v3;
      v4 = "%s: Buffer size does not match expected value (expected %d, recv %lld)\n";
      v5 = 28;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v8, v5);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "PDAFProcessX3Wrapper";
    v10 = 1024;
    v11 = a3;
    v4 = "%s: Number of buffers is not 4 (%d)\n";
    v5 = 18;
    goto LABEL_7;
  }

  return 3;
}

uint64_t sub_10000DC50(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "PDAFProcessX4Wrapper";
      v10 = 1024;
      v11 = a3;
      v4 = "%s: Number of buffers is not 5 (%d)\n";
      v5 = 18;
      goto LABEL_7;
    }

    return 3;
  }

  v3 = *(a2 + 104);
  if (v3 <= 0x7EF8B)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "PDAFProcessX4Wrapper";
      v10 = 1024;
      v11 = 520076;
      v12 = 2048;
      v13 = v3;
      v4 = "%s: Buffer size does not match expected value (expected %d, recv %lld)\n";
      v5 = 28;
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v8, v5);
      return 3;
    }

    return 3;
  }

  sub_100007EF0(*a2, *(a2 + 24), *(a2 + 48), *(a2 + 72), *(a2 + 96));
  return 0;
}

uint64_t sub_10000DDBC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    v3 = *(a2 + 48);
    v15[0] = *(a2 + 24);
    v15[1] = v3;
    v15[2] = *(a2 + 72);
    v4 = *(a2 + 8);
    if (v4 == 591796)
    {
      sub_100012624(*a2, v15);
      return 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "BlurMProcessWrapper";
      v11 = 1024;
      v12 = 591796;
      v13 = 2048;
      v14 = v4;
      v7 = "%s: Buffer size does not match expected value (expected %d, recv %lld)\n";
      v8 = 28;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "BlurMProcessWrapper";
    v11 = 1024;
    v12 = 4;
    v13 = 1024;
    LODWORD(v14) = a3;
    v7 = "%s: Number of buffers is not %d (%d)\n";
    v8 = 24;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v9, v8);
  }

  return 3;
}

uint64_t sub_10000DF30(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = byte_1002C57E0;
  if (*(a2 + 20))
  {
    v7 = 0;
    v8 = (a2 + 472);
    v9 = (a2 + 76);
    do
    {
      v10 = *v9;
      if (v4)
      {
        v11 = *(a1 + 8 * *(v9 - 13));
        if (v11)
        {
          sub_10000EC94(v11);
        }
      }

      *a3 = 0;
      v12 = kdebug_trace();
      v13 = *(v9 - 13);
      v14 = 5;
      if (v13 > 14)
      {
        if (v13 <= 16)
        {
          if (v13 == 15)
          {
            v16 = sub_10000D984(v12, v8, v10);
          }

          else
          {
            v16 = sub_10000DAE8(v12, v8, v10);
          }

          goto LABEL_25;
        }

        if (v13 == 17)
        {
          v16 = sub_10000DC50(v12, v8, v10);
          goto LABEL_25;
        }

        if (v13 == 18)
        {
          v16 = sub_10000DDBC(v12, v8, v10);
          goto LABEL_25;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v15 = sub_10000D4A4(v12, v8, v10);
          goto LABEL_23;
        }

        if (v13 == 14)
        {
          v16 = sub_10000D824(v12, v8, v10);
LABEL_25:
          v14 = v16;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v15 = sub_10000CEE8(v12, v8, v10);
          goto LABEL_23;
        }

        if (v13 == 5)
        {
          v15 = sub_10000D130(v12, v8, v10);
LABEL_23:
          v14 = v15;
          *a3 = 1;
        }
      }

      kdebug_trace();
      *(v9 - 10) = v14;
      v4 = byte_1002C57E0;
      if (byte_1002C57E0 == 1)
      {
        v17 = *(a1 + 8 * *(v9 - 13));
        if (v17)
        {
          sub_10000ECD0(v17);
          v4 = byte_1002C57E0;
        }

        else
        {
          v4 = 1;
        }
      }

      ++*(a1 + 152);
      ++v7;
      v8 += 24;
      v9 += 14;
    }

    while (v7 < *(a2 + 20));
  }

  if ((v4 & 1) != 0 && *(a1 + 152) >= 0x400u)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "*** Metrics report for firmware work processor ***", buf, 2u);
    }

    for (i = 0; i != 19; ++i)
    {
      v19 = *(a1 + 8 * i);
      if (v19)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = i;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "*** Metrics for command %d ***", buf, 8u);
          v19 = *(a1 + 8 * i);
        }

        sub_10000EECC(v19);
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "*** End report ***", buf, 2u);
    }

    *(a1 + 152) = 0;
  }

  return 0;
}

uint64_t sub_10000E274(uint64_t a1)
{
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v2 = sub_10001A81C(@"FirmwareWorkMetrics", @"com.apple.coremedia", 0);
  byte_1002C57E0 = v2 != 0;
  if (v2)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_10000E328(uint64_t a1)
{
  if (byte_1002C57E0 == 1)
  {
    for (i = 0; i != 152; i += 8)
    {
      v3 = *(a1 + i);
      if (v3)
      {
        v4 = sub_10000F194(v3);
        operator delete(v4);
      }
    }
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    operator delete(v5);
    *(a1 + 160) = 0;
  }

  return a1;
}

void sub_10000E390(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  v3 = (a1 + 240);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x4000000000000000;
  pthread_mutex_init((a1 + 16), 0);
  pthread_mutex_init((a1 + 144), 0);
  *(a1 + 208) = 0;
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_settype(&v5, 2);
  pthread_mutex_init((a1 + 80), &v5);
  pthread_mutexattr_destroy(&v5);
  v4 = 0;
  sub_100015FC4(*v3, &v4, (a1 + 256));
  mach_timebase_info((a1 + 264));
  operator new();
}

uint64_t sub_10000E4A8(uint64_t a1)
{
  if (*a1)
  {
    sub_10000E570(a1);
  }

  if (*(a1 + 232))
  {
    sub_10000E5F0(a1);
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = sub_10001AA1C(v2);
    CFRunLoopRemoveSource(v3, v4, kCFRunLoopDefaultMode);
    v5 = *(a1 + 272);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 272) = 0;
  }

  if (*(a1 + 288))
  {
    v6 = sub_10000E38C();
    operator delete(v6);
  }

  pthread_mutex_destroy((a1 + 16));
  pthread_mutex_destroy((a1 + 80));
  pthread_mutex_destroy((a1 + 144));
  return a1;
}

uint64_t sub_10000E570(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*a1)
  {
    sub_10000E92C(a1);
    pthread_mutex_lock((a1 + 80));
    *(a1 + 248) = 1;
    pthread_mutex_unlock((a1 + 80));
    v2 = sub_100019174(*(a1 + 240), *(a1 + 224));
    *(a1 + 248) = 0;
    *a1 = 0;
  }

  else
  {
    v2 = 3758097122;
  }

  pthread_mutex_unlock((a1 + 16));
  return v2;
}

void sub_10000E5F0(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    CFRunLoopRemoveSource(*(a1 + 8), v2, kCFRunLoopDefaultMode);
    CFRelease(*(a1 + 232));
    *(a1 + 232) = 0;
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(a1 + 216));
    *(a1 + 216) = 0;
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    mach_port_mod_refs(mach_task_self_, v4, 1u, -1);
    *(a1 + 224) = 0;
  }
}

uint64_t sub_10000E674(uint64_t a1)
{
  v2 = IOCreateReceivePort(0x39u, (a1 + 224));
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = a1;
    memset(&context.retain, 0, 24);
    v4 = CFMachPortCreateWithPort(kCFAllocatorDefault, *(a1 + 224), &IODispatchCalloutFromMessage, &context, &shouldFreeInfo);
    *(a1 + 216) = v4;
    if (v4)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v4, 0);
      *(a1 + 232) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_10000E748(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 16));
    return 3758097122;
  }

  else
  {
    *(a1 + 248) = 0;
    *a1 = 1;
    inputStruct[0] = sub_10000E7D8;
    inputStruct[1] = a1;
    v5 = *(a1 + 224);
    v2 = sub_1000190E0(*(a1 + 240), inputStruct);
    pthread_mutex_unlock((a1 + 16));
  }

  return v2;
}

uint64_t sub_10000E92C(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 208);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 208));
    *(a1 + 208) = 0;
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_10000E980(uint64_t a1)
{
  pthread_mutex_lock((a1 + 144));
  v2 = *(a1 + 208);
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v2, Current + *(a1 + 280));
  }

  return pthread_mutex_unlock((a1 + 144));
}

uint64_t sub_10000E9D8(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  sub_100019330(*(a1 + 240), *(a1 + 224));
  pthread_mutex_unlock((a1 + 16));
  return 0;
}

uint64_t sub_10000EA18(uint64_t a1)
{
  v6 = 0;
  sub_10000F204(&v8);
  v2 = *(a1 + 8);
  v7[0] = 0;
  v7[1] = v2;
  v7[2] = &v8;
  pthread_attr_init(&v9);
  pthread_attr_setdetachstate(&v9, 2);
  pthread_create(&v6, &v9, sub_10000EB18, v7);
  pthread_attr_destroy(&v9);
  sub_10000F248(&v8);
  v3 = v7[0];
  **a1 = v7[0];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  sub_10000F240(&v8);
  return v4;
}

void sub_10000EB18(uint64_t a1)
{
  pthread_setname_np("H10ISPFirmwareWorkProcessorThread");
  j__pthread_mutex_lock(*(a1 + 16));
  operator new();
}

uint64_t sub_10000EBE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  CFRetain(v2);
  v3 = sub_10000E4A8(a1);
  operator delete(v3);
  CFRunLoopStop(v2);
  CFRelease(v2);
  return 0;
}

double sub_10000EC2C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  result = 0.0;
  if (a2 - 1 < a3 && v3 != 0)
  {
    v6 = *(a1 + 4);
    *(v3 + 8 * v6) = a3 - a2;
    v8 = *(a1 + 2);
    v7 = *(a1 + 3);
    *(a1 + 4) = (v6 + 1) % v8;
    if (v7 < v8)
    {
      *(a1 + 3) = v7 + 1;
    }

    return ((a3 - a2) * *(a1 + 8) / *(a1 + 9)) / 1000000.0;
  }

  return result;
}

void *sub_10000EC94(void *result)
{
  if (*result)
  {
    v1 = result;
    if (!result[3])
    {
      result = mach_absolute_time();
      v1[3] = result;
    }
  }

  return result;
}

double sub_10000ECD0(uint64_t *a1)
{
  v1 = a1[3];
  if (!v1)
  {
    return 0.0;
  }

  v3 = mach_absolute_time();
  result = sub_10000EC2C(a1, v1, v3);
  a1[3] = 0;
  return result;
}

double sub_10000ED18(_DWORD *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v4 = a1[2];
    v3 = a1[3];
    *a2 = v3;
    *(a2 + 4) = v4;
    *(a2 + 8) = a1[4];
    if (v3)
    {
      operator new[]();
    }
  }

  return result;
}

void sub_10000EECC(_DWORD *a1)
{
  sub_10000ED18(a1, v1);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v8) = v1[0];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Number of samples: %d", buf, 8u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v8) = v1[1];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Maximum samples:   %d", buf, 8u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Minimum time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Maximum time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Average time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Median time (ms): %.3f", buf, 0xCu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " Standard deviation (ms): %.3f", buf, 0xCu);
  }
}

void sub_10000F140(uint64_t a1, int a2)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  operator new[]();
}

void **sub_10000F194(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

uint64_t sub_10000F1C4(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_mutex_lock(a1);
  return a1;
}

uint64_t sub_10000F208(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_10000F254(uint64_t a1)
{
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

void sub_10000F290(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v31 = a4;
  v32 = a2;
  v7 = a6;
  v8 = 2 * a4 - 8;
  v9 = (2 * a2 + 2 * a6 * a3 + a1 + 6);
  v10 = 2 * a6;
  v11 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);
      v14 = *(v9 - 1);
      v15 = *v9;
      v16 = *(v9 + v8 - 6);
      v17 = *(v9 + v8 - 4);
      v18 = *(v9 + v8 - 2);
      v19 = *(v9 + v8);
      *buf = 67110912;
      v36 = v12;
      v37 = 1024;
      v38 = v13;
      v39 = 1024;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      v43 = 1024;
      v44 = v16;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v18;
      v49 = 1024;
      v50 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v9 = (v9 + v10);
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [...... ...... ...... ...... ... ...... ...... ...... ......]\n", buf, 2u);
  }

  v20 = 2 * v31 - 8;
  v21 = (2 * (a3 + a5 - 4) * v7 + 2 * v32 + a1 + 6);
  v22 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v21 - 3);
      v24 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = *v21;
      v27 = *(v21 + v20 - 6);
      v28 = *(v21 + v20 - 4);
      v29 = *(v21 + v20 - 2);
      v30 = *(v21 + v20);
      *buf = 67110912;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v26;
      v43 = 1024;
      v44 = v27;
      v45 = 1024;
      v46 = v28;
      v47 = 1024;
      v48 = v29;
      v49 = 1024;
      v50 = v30;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v21 += v7;
    --v22;
  }

  while (v22);
}

void sub_10000F544(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v7 = a2;
  v8 = a6;
  v9 = a4 - 4;
  v10 = (a2 + (a6 * a3) + a1 + 3);
  v11 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v16 = v10[v9 - 3];
      v17 = v10[v9 - 2];
      v18 = v10[v9 - 1];
      v19 = v10[v9];
      *buf = 67110912;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v10 += v8;
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [... ... ... ... ... ... ... ... ...]\n", buf, 2u);
  }

  v20 = (v7 + (a3 + a5 - 4) * v8 + a1 + 3);
  v21 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      v26 = v20[v9 - 3];
      v27 = v20[v9 - 2];
      v28 = v20[v9 - 1];
      v29 = v20[v9];
      *buf = 67110912;
      v33 = v22;
      v34 = 1024;
      v35 = v23;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v42 = 1024;
      v43 = v27;
      v44 = 1024;
      v45 = v28;
      v46 = 1024;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v20 += v8;
    --v21;
  }

  while (v21);
}

void sub_10000F7CC(int16x8_t *a1, int a2, int a3, _WORD *a4, char a5)
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

    sub_10000F290(v6, 0, 0, a2, a3, a2);
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

void sub_10000FA70(void *__src, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, int16x8_t *__dst, char a8)
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

    sub_10000F290(__src, 0, 0, a2, a3, a2);
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

    sub_10000F290(__dst, 0, 0, a2, a3, a2);
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
  sub_10000F7CC(__dst, a2, a3, &v37, a8);
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

void sub_10000FF24(uint64_t a1, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7, uint64_t a8, char a9)
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

    sub_10000F290(a1, 0, 0, a2, a3, a2);
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

    sub_10000F290(a8, 0, 0, a2, a3, a2);
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

void sub_1000103D4(uint64_t a1, int a2, int a3, int *a4, uint64_t a5, int a6, const __int16 *a7, char a8)
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

    sub_10000F290(a5, 0, 0, a2 / 2, a3 / 2, a2 / 2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", v36, 2u);
    }
  }
}

void sub_10001061C(int16x8_t *a1, int a2, int a3, float *a4, char a5)
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

float32x2_t sub_100010790(int16x8_t *a1, int16x8_t *a2, int a3, int a4, float *a5, float *a6, float *a7, char a8)
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

void sub_100010BE4(int16x8_t *a1, int16x8_t *a2, int16x8_t *a3, int a4, int a5, uint64_t a6, char a7)
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

    sub_10000F290(a6, 0, 0, a4, a5, a4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", &v40, 2u);
    }
  }
}

void sub_100010EA8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int16x8_t *__src, int16x8_t *a9, char a10)
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

    sub_10000F290(a1, 0, 0, a2, a3, a2);
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

    sub_10000F290(v10, 0, 0, v16 >> 1, a3, v16 >> 1);
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

    sub_10000F290(a9, 0, 0, v16 >> 1, a3, v16 >> 1);
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

    sub_10000F290(a9, 0, 0, v33, a3, v33);
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

    sub_10000F290(v10, 0, 0, v33, a3, v33);
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
    sub_10000F290(a4, 0, 0, v33, v63 / 2, v33);
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

    sub_10000F290(a5, 0, 0, v33, v63 / 2, v33);
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

    sub_10000F290(a5, 0, 0, v33, v65, v33);
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

    sub_10000F290(a4, 0, 0, v33, v65, v33);
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

    sub_10000F290(a6, 0, 0, v33, v65, v33);
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

    sub_10000F290(a7, 0, 0, v33, v65, v33);
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

    sub_10000F290(a7, 0, 0, v33, v65, v33);
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

    sub_10000F290(a6, 0, 0, v33, v65, v33);
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

    sub_10000F290(a7, 0, 0, v33, v65, v33);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
    }
  }
}

void sub_100012624(int *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10001BE90();
  }

  v2 = a1;
  v3 = (a1 + 1144);
  v4 = *a1;
  if (*a1 == 1)
  {
    v5 = a2;
    v93 = *(a1 + 4608);
    if (v93)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v2[4];
        v7 = v2[1169];
        v8 = v2[1170];
        v9 = v2[1153];
        *buf = 67109888;
        *v128 = v6;
        *&v128[4] = 1024;
        *&v128[6] = v7;
        LOWORD(v129) = 1024;
        *(&v129 + 2) = v8;
        HIWORD(v129) = 1024;
        *v130 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: #%08d (%4d x %4d) inputCount = %d\n", buf, 0x1Au);
      }

      if (v2[1153])
      {
        v10 = 0;
        do
        {
          v11 = &v2[5 * v10 + 1154];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v5 + 8 * v10);
            v13 = *v11;
            v14 = v11[1];
            v15 = v11[2];
            v17 = v11[3];
            v16 = v11[4];
            *buf = 134219520;
            *v128 = v10;
            *&v128[8] = 2048;
            v129 = v12;
            *v130 = 1024;
            *&v130[2] = v13;
            *v131 = 1024;
            *&v131[2] = v14;
            *v132 = 1024;
            *&v132[2] = v15;
            *v133 = 1024;
            *&v133[2] = v16;
            LOWORD(v134[0]) = 1024;
            *(v134 + 2) = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: input[%zu] = %p (level = %d) %d x %d, stride = %d, size = %d\n", buf, 0x34u);
          }

          v18 = *(v5 + 8 * v10);
          if (v18)
          {
            v19 = v11[1];
            if (v19)
            {
              if (v11[2])
              {
                v20 = &v18[v19 - 1];
                v21 = 4;
                do
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = *v18;
                    v23 = v18[1];
                    v24 = v18[2];
                    v25 = v18[3];
                    v26 = *(v20 - 3);
                    v27 = *(v20 - 2);
                    v28 = *(v20 - 1);
                    v29 = *v20;
                    *buf = 67110912;
                    *v128 = v22;
                    *&v128[4] = 1024;
                    *&v128[6] = v23;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v24;
                    HIWORD(v129) = 1024;
                    *v130 = v25;
                    *&v130[4] = 1024;
                    *v131 = v26;
                    *&v131[4] = 1024;
                    *v132 = v27;
                    *&v132[4] = 1024;
                    *v133 = v28;
                    *&v133[4] = 1024;
                    v134[0] = v29;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                  }

                  v30 = v11[4];
                  v18 += v30;
                  v20 += v30;
                  --v21;
                }

                while (v21);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ... ... ... ... ... ... ... ... ...\n", buf, 2u);
                  v30 = v11[4];
                }

                v31 = (*(a2 + 8 * v10) + (v11[2] - 4) * v30);
                v32 = &v31[v11[1] - 1];
                v33 = 4;
                do
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = *v31;
                    v35 = v31[1];
                    v36 = v31[2];
                    v37 = v31[3];
                    v38 = *(v32 - 3);
                    v39 = *(v32 - 2);
                    v40 = *(v32 - 1);
                    v41 = *v32;
                    *buf = 67110912;
                    *v128 = v34;
                    *&v128[4] = 1024;
                    *&v128[6] = v35;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v36;
                    HIWORD(v129) = 1024;
                    *v130 = v37;
                    *&v130[4] = 1024;
                    *v131 = v38;
                    *&v131[4] = 1024;
                    *v132 = v39;
                    *&v132[4] = 1024;
                    *v133 = v40;
                    *&v133[4] = 1024;
                    v134[0] = v41;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: %3d %3d %3d %3d ... %3d %3d %3d %3d\n", buf, 0x32u);
                    v30 = v11[4];
                  }

                  v31 += v30;
                  v32 += v30;
                  --v33;
                }

                while (v33);
              }
            }
          }

          ++v10;
          v5 = a2;
        }

        while (v10 < v2[1153]);
      }
    }

    v42 = v2 + 40;
    v99 = &v2[5 * *v3];
    v97 = (v2 + 1171);
    bzero(v2 + 1171, 0x400uLL);
    v90 = v2 + 1427;
    memcpy(v2 + 1427, v2 + 40, 0x1160uLL);
    v43 = 0;
    __dst = (v2 + 35309);
    v44 = (v2 + 51693);
    v107 = (v2 + 27117);
    v45 = v93;
    v92 = v2;
    v94 = v3;
    v95 = v2 + 40;
    v103 = (v2 + 51693);
    do
    {
      v46 = &v42[368 * *v3];
      v47 = &v46[v43];
      if (v47[360] == 1)
      {
        v91 = v47[84];
        if (v91 >= 1)
        {
          v102 = 0;
          v48 = 0;
          v49 = &v46[2 * v43];
          v50 = *(v49 + 44);
          v51 = *(v49 + 48);
          v98 = v47[80];
          v112 = v51 / 2;
          v108 = v50 / 2;
          v96 = v50 / 4;
          v52 = v51 + 3;
          *v104 = v51;
          v105 = v43;
          if (v51 >= 0)
          {
            v52 = v51;
          }

          v113 = v52 >> 2;
          do
          {
            if (v98 >= 1)
            {
              v53 = 0;
              v54 = v48;
              do
              {
                v106 = v54;
                v55 = &v42[368 * *v3 + 104 + 64 * v43];
                v110 = *(v55 + 8 * v102 + 128);
                v111 = v53;
                v109 = *(v55 + 8 * v53);
                v56 = v104[0];
                if (v104[0] >= 1)
                {
                  v57 = *v104;
                  v58 = __dst;
                  v59 = *(v55 + 8 * v102 + 128);
                  do
                  {
                    memcpy(v58, (*(a2 + 8 * *v3) + v109 + (v99[1158] * v59++)), v50);
                    v58 += v50;
                    --v57;
                  }

                  while (v57);
                  v60 = 0;
                  v61 = __dst;
                  v44 = v103;
                  v56 = v104[0];
                  v62 = v103;
                  v45 = v93;
                  v2 = v92;
                  LODWORD(v43) = v105;
                  do
                  {
                    if (v50 >= 1)
                    {
                      v63 = v50;
                      v64 = v61;
                      v65 = v62;
                      do
                      {
                        v66 = *v64++;
                        *v65++ = 16 * v66;
                        --v63;
                      }

                      while (v63);
                    }

                    ++v60;
                    v62 += v50;
                    v61 += v50;
                  }

                  while (v60 != *v104);
                }

                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v128 = v50;
                    *&v128[4] = 1024;
                    *&v128[6] = v56;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v43;
                    HIWORD(v129) = 1024;
                    *v130 = v102;
                    *&v130[4] = 1024;
                    *v131 = v111;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: PYRYU8[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  sub_10000F544(*(a2 + 8 * *v3), v109, v110, v50, v56, v99[1158]);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67110144;
                    *v128 = v50;
                    *&v128[4] = 1024;
                    *&v128[6] = v56;
                    LOWORD(v129) = 1024;
                    *(&v129 + 2) = v43;
                    HIWORD(v129) = 1024;
                    *v130 = v102;
                    *&v130[4] = 1024;
                    *v131 = v111;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ROIS16[%dx%df][OBJ=%d][Y=%d][X=%d]=[\n", buf, 0x20u);
                  }

                  sub_10000F290(v44, 0, 0, v50, v56, v50);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  sub_100010EA8(v44, v50, v56, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v107, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v112;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 2;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_l1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a1 = [\n", buf, 2u);
                  }

                  sub_10000F290((v2 + 84461), 0, 0, v108, v112, v108);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }
                }

                else
                {
                  sub_100010EA8(v44, v50, v56, (v2 + 84461), (v2 + 92653), (v2 + 100845), (v2 + 109037), (v2 + 18925), v107, v45);
                }

                v67 = v50 / 2;
                v68 = v112;
                sub_100010BE4((v2 + 92653), (v2 + 100845), (v2 + 109037), v108, v112, (v2 + 117229), v45);
                v126 = 0;
                sub_10000F7CC((v2 + 109037), v108, v112, &v126, v45);
                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v126;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_median = %d\n", buf, 8u);
                  }

                  v67 = v50 / 2;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v112;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_d1 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 2;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_d1 = %d\n", buf, 8u);
                  }

                  v68 = v112;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1 = [\n", buf, 2u);
                  }

                  sub_10000F290((v2 + 109037), 0, 0, v108, v112, v108);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  v125 = 0;
                  sub_10000FA70(v2 + 109037, v108, v112, &v126, &v125 + 1, &v125, (v2 + 10731), v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = SHIWORD(v125);
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v125;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d1_mad_sigma = %d\n", buf, 8u);
                  }

                  v124 = 0;
                  sub_10000F7CC((v2 + 117229), v108, v112, &v124, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v124;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: emap1_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  v125 = 0;
                  sub_10000FA70(v2 + 109037, v108, v112, &v126, &v125 + 1, &v125, (v2 + 10731), v45);
                  v124 = 0;
                  sub_10000F7CC((v2 + 117229), v108, v112, &v124, v45);
                }

                v123 = 1;
                v122 = 0;
                sub_10000FF24((v2 + 117229), v67, v68, &v124, &v123, &v122, &v125, (v2 + 125421), v45);
                v121 = 2;
                sub_1000103D4((v2 + 125421), v67, v68, &v121, (v2 + 133613), v96, v2 + 37846, v45);
                v120 = 0;
                v69 = v113;
                sub_10001061C((v2 + 133613), v96, v113, &v120, v45);
                sub_100010EA8((v2 + 84461), v67, v68, (v2 + 135661), (v2 + 137709), (v2 + 139757), (v2 + 141805), (v2 + 18925), v107, v45);
                if (v45)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v113;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 4;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_l2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: a2 = [\n", buf, 2u);
                  }

                  sub_10000F290((v2 + 135661), 0, 0, v96, v113, v96);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  sub_100010BE4((v2 + 137709), (v2 + 139757), (v2 + 141805), v96, v113, (v2 + 143853), v45);
                  v119 = 0;
                  sub_10000F7CC((v2 + 141805), v96, v113, &v119, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v119;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_median = %d\n", buf, 8u);
                  }

                  v3 = v94;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v113;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: height_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v50 / 4;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: width_d2 = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2 = [\n", buf, 2u);
                  }

                  sub_10000F290((v2 + 141805), 0, 0, v96, v113, v96);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
                  }

                  v118 = 0;
                  sub_10000FA70(v2 + 141805, v96, v113, &v119, &v118 + 1, &v118, (v2 + 10731), v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = SHIWORD(v118);
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_median = %d\n", buf, 8u);
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v118;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: d2_mad_sigma = %d\n", buf, 8u);
                  }

                  v117 = 0;
                  v69 = v113;
                  sub_10000F7CC((v2 + 143853), v96, v113, &v117, v45);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *v128 = v117;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: emap2_median = %d\n", buf, 8u);
                  }
                }

                else
                {
                  sub_100010BE4((v2 + 137709), (v2 + 139757), (v2 + 141805), v96, v113, (v2 + 143853), v45);
                  v119 = 0;
                  sub_10000F7CC((v2 + 141805), v96, v113, &v119, v45);
                  v118 = 0;
                  sub_10000FA70(v2 + 141805, v96, v113, &v119, &v118 + 1, &v118, (v2 + 10731), v45);
                  v117 = 0;
                  sub_10000F7CC((v2 + 143853), v96, v113, &v117, v45);
                  v3 = v94;
                }

                v116 = 0;
                sub_10000FF24((v2 + 143853), v96, v69, &v117, &v123, &v116, &v118, (v2 + 145901), v45);
                *buf = 0;
                sub_10001061C((v2 + 145901), v96, v69, buf, v45);
                v42 = v95;
                v115 = v95[368 * *v3 + 364 + v105];
                v114 = 0;
                v43 = v105;
                sub_100010790((v2 + 133613), (v2 + 145901), v96, v69, &v115, &v114 + 1, &v114, v45);
                v70 = &v97[16 * v106 + v105];
                *v70 = v120;
                v70[4] = *buf;
                v71 = v114;
                v70[8] = *(&v114 + 1);
                *(v70 + 12) = v71;
                v54 = v106 + 1;
                v53 = v111 + 1;
                v44 = v103;
              }

              while (v111 + 1 != v98);
              v48 = v106 + 1;
            }

            ++v102;
          }

          while (v102 != v91);
        }
      }

      ++v43;
    }

    while (v43 != 4);
    if (v3[32])
    {
      v72 = 0;
      v73 = (v2 + 1175);
      v74 = (v2 + 1179);
      v75 = (v2 + 1183);
      do
      {
        if (v90[368 * *(v2 + 10124) + 360 + v72] == 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v76 = off_100024848[v72];
            *buf = 136315138;
            *v128 = v76;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: Output[OBJ=%s]:\n", buf, 0xCu);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL1 = [\n", buf, 2u);
          }

          v77 = 0;
          v78 = v97;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v79 = *v78;
              *buf = 134218240;
              *v128 = v77;
              *&v128[8] = 2048;
              v129 = v79;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v77;
            v78 += 16;
          }

          while (v77 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: sharpnessL2 = [\n", buf, 2u);
          }

          v80 = 0;
          v81 = v73;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *v81;
              *buf = 134218240;
              *v128 = v80;
              *&v128[8] = 2048;
              v129 = v82;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v80;
            v81 += 16;
          }

          while (v80 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurConf = [\n", buf, 2u);
          }

          v83 = 0;
          v84 = v74;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v85 = *v84;
              *buf = 134218240;
              *v128 = v83;
              *&v128[8] = 2048;
              v129 = v85;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v83;
            v84 += 16;
          }

          while (v83 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: blurExtent = [\n", buf, 2u);
          }

          v86 = 0;
          v87 = v75;
          do
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v88 = *v87;
              *buf = 134218240;
              *v128 = v86;
              *&v128[8] = 2048;
              v129 = v88;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%2zu %010.6f];\n", buf, 0x16u);
            }

            ++v86;
            v87 += 16;
          }

          while (v86 != 16);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: ];\n", buf, 2u);
          }
        }

        ++v72;
        ++v97;
        ++v73;
        ++v74;
        ++v75;
      }

      while (v72 != 4);
    }

    v89 = 0;
  }

  else if (a1[1152])
  {
    v89 = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v128 = 1;
      *&v128[4] = 1024;
      *&v128[6] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: incompatible context version (expected %d, got %d)\n", buf, 0xEu);
    }
  }

  else
  {
    v89 = 1;
  }

  v2[2] = v89;
}

uint64_t sub_100013E08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5, char a6, const char *a7)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  *(a1 + 84) = a6;
  strncpy(a1, a2, 0x20uLL);
  if (a7)
  {
    strncpy((a1 + 32), a7, 0x20uLL);
    *(a1 + 63) = 0;
  }

  return a1;
}

BOOL sub_100013E6C(uint64_t a1, const char *a2)
{
  __ptr = 2;
  strncpy(v9, (a1 + 32), 0x20uLL);
  strncpy(v10, a1, 0x20uLL);
  v11 = *(a1 + 64);
  v4 = *(a1 + 84);
  v12 = *(a1 + 80);
  v13 = v4;
  v5 = qword_100031000;
  if (qword_100031000 <= 0x5B)
  {
    do
    {
      v9[v5 - 4] ^= byte_100020030[v5 & 7];
      ++v5;
    }

    while (v5 != 92);
  }

  v6 = fopen(a2, "w");
  if (v6)
  {
    fwrite(&__ptr, 1uLL, 0x5CuLL, v6);
    fclose(v6);
  }

  return v6 != 0;
}

uint64_t sub_100013F80(uint64_t a1, char *__filename)
{
  result = fopen(__filename, "r");
  if (result)
  {
    v4 = result;
    v5 = fread(&__ptr, 1uLL, 0x24uLL, result) == 36 && __ptr == 2;
    if (v5 && fread(&v9[qword_100031000 - 4], 1uLL, 0x38uLL, v4) == 56)
    {
      v6 = qword_100031000;
      if (qword_100031000 <= 0x5B)
      {
        do
        {
          v9[v6 - 4] ^= byte_100020030[v6 & 7];
          ++v6;
        }

        while (v6 != 92);
      }

      strncpy(a1, v10, 0x20uLL);
      *(a1 + 64) = v11;
      v7 = v13;
      *(a1 + 80) = v12;
      *(a1 + 84) = v7 != 0;
      strncpy((a1 + 32), v9, 0x20uLL);
      *(a1 + 63) = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000140CC()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [NSString stringWithUTF8String:"/var/mobile/Documents/Pearl/ProjectorValid.bin"];
  if ([(NSFileManager *)v0 fileExistsAtPath:v1]&& (v11 = 0, ![(NSFileManager *)v0 removeItemAtPath:v1 error:&v11]))
  {
    NSLog(@"Failed to remove %s token: %@", "Pearl", [v11 description]);
    return 0;
  }

  else
  {
    sub_100014178("token was removed", v2, v3, v4, v5, v6, v7, v8, v10);
    return 1;
  }
}

void sub_100014178(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = objc_opt_new();
  [v10 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v11 = snprintf(__str, 0x800uLL, "[%s] ", [objc_msgSend(v10 stringFromDate:{+[NSDate date](NSDate, "date")), "UTF8String"}]);

  v12 = vsnprintf(&__str[v11], 0x800uLL, a1, &a9) + v11;
  v15[0] = 0;
  v15[1] = &a9;
  if (vasprintf(v15, a1, &a9) >= 1)
  {
    NSLog(@"%s", v15[0]);
  }

  if (v15[0])
  {
    free(v15[0]);
    v15[0] = 0;
  }

  *&__str[v12] = 10;
  v13 = fopen("/var/mobile/Documents/Tokens.log", "a");
  if (v13)
  {
    v14 = v13;
    fwrite(__str, v12 + 1, 1uLL, v13);
    fclose(v14);
  }

  else
  {
    NSLog(@"Failed to open token log file.");
  }
}

BOOL sub_1000142F0(char *a1)
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
    sprintf(a1, "%lld", valuePtr);
    CFRelease(v3);
  }

  else
  {
    NSLog(@"Failed to read unique chip identifier");
  }

  return v3 != 0;
}

uint64_t sub_10001437C(uint64_t a1, time_t *a2)
{
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v51 = "Pearl";
    v27 = "Can't activate %s projector: no projector token found";
LABEL_6:
    sub_100014178(v27, v3, v4, v5, v6, v7, v8, v9, v51);
    return 0;
  }

  v10 = nullsub_3(__s2);
  if ((sub_100013F80(v10, "/var/mobile/Documents/Pearl/ProjectorValid.bin") & 1) == 0)
  {
    sub_100014178("Failed to read %s projector token file. Token will be removed.", v11, v12, v13, v14, v15, v16, v17, "Pearl");
    goto LABEL_9;
  }

  v18 = time(0);
  v26 = v58;
  if (v18 > v58)
  {
    sub_100014178("%s token timeout was reached (current time %ld). Token will be removed.", v19, v20, v21, v22, v23, v24, v25, "Pearl");
LABEL_9:
    sub_1000140CC();
    return 0;
  }

  if (v18 > v57 + 43200)
  {
    sub_100014178("%s token has exceeded max allowed timeout. Token will be removed.", v19, v20, v21, v22, v23, v24, v25, "Pearl");
    goto LABEL_9;
  }

  if (!sub_1000142F0(__s1))
  {
    v27 = "Failed to read unique chip ID";
    goto LABEL_6;
  }

  if (strcmp(__s1, __s2))
  {
    sub_100014178("%s token does not match device. Token will be removed.", v29, v30, v31, v32, v33, v34, v35, "Pearl");
    goto LABEL_9;
  }

  if (v60 == 1)
  {
    v36 = sub_1000145F8();
    if (v36 == -1 || v36 > v57)
    {
      sub_100014178("System performed boot since %s token creation (boot time: %ld). Token will be removed.", v29, v30, v31, v32, v33, v34, v35, "Pearl");
      goto LABEL_9;
    }
  }

  if (!v59)
  {
    sub_100014178("Number of allowed activations has reached zero. %s token will be removed.", v29, v30, v31, v32, v33, v34, v35, "Pearl");
    goto LABEL_9;
  }

  if (v59 >= 1)
  {
    sub_100013E68(v52, __s2, v57, v58, (v59 - 1), v60, &v56);
    if (v53)
    {
      if (!sub_100013E6C(v52, "/var/mobile/Documents/Pearl/ProjectorValid.bin"))
      {
        sub_100014178("Failed to update %s token file. Will return false so someone looks at that...", v44, v45, v46, v47, v48, v49, v50, "Pearl");
        return 0;
      }

      sub_100014178("%s token activation count updated to %d", v44, v45, v46, v47, v48, v49, v50, "Pearl");
    }

    else
    {
      sub_100014178("Using last allowed activation. %s token will be removed.", v37, v38, v39, v40, v41, v42, v43, "Pearl");
      sub_1000140CC();
    }
  }

  if (a2)
  {
    *a2 = v26;
  }

  return 1;
}

uint64_t sub_1000145F8()
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

double sub_100014698(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a3 - a2) / a6 - (a4 - a2) / (a6 + a7);
  v9 = (a4 - a3) / a7;
  *&v8 = v9 + v8;
  v10 = (a5 - a4) / a8 + v9 - (a5 - a3) / (a7 + a8);
  *&v8 = *&v8 * a7;
  v11 = v10 * a7;
  v12 = *&v8;
  v13 = v11;
  *a1 = a3;
  a1[1] = v12;
  v14 = a4 * 3.0 + a3 * -3.0 + v12 * -2.0 - v13;
  result = a4 * -2.0 + a3 * 2.0 + v12 + v13;
  a1[2] = v14;
  a1[3] = result;
  return result;
}

void sub_10001479C(double *a1, double *a2, double *a3, double a4, double a5)
{
  v10[0] = sub_10001473C(a1, a3, a5);
  v10[1] = sub_10001473C(a1 + 4, a3, a5);
  v10[2] = sub_10001473C(a1 + 8, a3, a5);
  v10[3] = sub_10001473C(a1 + 12, a3, a5);
  sub_10001473C(v10, a2, a4);
}

void sub_10001486C(unsigned __int16 *a1, long double *a2, unsigned int a3)
{
  v3 = a1[7];
  if (a1[7])
  {
    v6 = 0;
    v7 = vcvtd_n_f64_u32(*a1 + 1, 1uLL);
    v8 = a1[6];
    v9 = vcvtd_n_f64_u32(a1[1] + 1, 1uLL);
    v10 = 0.0;
    do
    {
      if (a1[6])
      {
        v11 = a1[4];
        v12 = (a1[5] + v6 * a1[3]) - v9;
        v13 = v12 * v12;
        v14 = a1[6];
        do
        {
          v15 = sqrt((v11 - v7) * (v11 - v7) + v13);
          if (v15 > v10)
          {
            v10 = v15;
          }

          v11 += a1[2];
          --v14;
        }

        while (v14);
      }

      ++v6;
    }

    while (v6 != v3);
    v16 = pow(a3 / 100.0, 0.25);
    v17 = acos(v16);
    v18 = 0;
    v19 = v10 / tan(v17);
    do
    {
      if (v8)
      {
        v20 = a1[4];
        v21 = a1[2];
        v22 = (a1[5] + v18 * a1[3]) - v9;
        v23 = v22 * v22;
        v24 = v8;
        v25 = a2;
        do
        {
          v26 = atan(sqrt((v20 - v7) * (v20 - v7) + v23) / v19);
          v27 = cos(v26);
          *v25++ = pow(v27, 4.0);
          v20 += v21;
          --v24;
        }

        while (v24);
      }

      ++v18;
      a2 += v8;
    }

    while (v18 != v3);
  }
}

void sub_1000149E8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v71 = a3[7];
  if (a3[7])
  {
    v69 = a3[3];
    v14 = a3[2];
    v68 = a3[5];
    v15 = a4 + 56;
    v16 = a4 + 140;
    v17 = a3[4];
    v18 = a3[6];
    v74 = v18;
    v75 = a2 - 2;
    v72 = 0;
    v73 = v17;
    while (!v18)
    {
LABEL_43:
      if (++v72 == v71)
      {
        return;
      }
    }

    v19 = 0;
    v20 = (v68 + v72 * v69);
    v21 = *(a4 + 40);
    v22 = *(a4 + 42);
    v23 = a1 + 8 * v72 * v18;
    while (1)
    {
      v24 = (v17 + v19 * v14);
      if (v21)
      {
        v25 = 0;
        LOWORD(a7) = *a4;
        *&a7 = LODWORD(a7);
        while (v24 >= (*(v15 + 4 * v25) * *&a7))
        {
          if (v21 == ++v25)
          {
            LOWORD(v25) = v21;
            if (v22)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }
        }

        if (v22)
        {
          goto LABEL_12;
        }
      }

      else
      {
        LOWORD(v25) = 0;
        if (v22)
        {
LABEL_12:
          v26 = 0;
          LOWORD(a7) = *(a4 + 2);
          *&a7 = LODWORD(a7);
          while (v20 >= (*(v16 + 4 * v26) * *&a7))
          {
            if (v22 == ++v26)
            {
              v27 = v22;
              goto LABEL_19;
            }
          }

          v27 = v26;
          goto LABEL_19;
        }
      }

LABEL_17:
      v27 = 0;
LABEL_19:
      v28 = v25;
      v29 = v25 - 1;
      v30 = v29;
      v31 = v27;
      v32 = v27 - 1;
      v33 = v32;
      if (v28 < 2 || (v34 = v31 - 2, v31 < 2) || (v21 + -3.0 >= v30 ? (v35 = a5 == 0) : (v35 = 1), !v35 ? (v36 = v22 + -3.0 < v33) : (v36 = 1), v36))
      {
        if (!v28)
        {
          v30 = 0.0;
        }

        if (!v31)
        {
          v33 = 0.0;
        }

        if (v30 >= (v21 - 2))
        {
          v30 = (v21 - 2);
        }

        if (v33 >= (v22 - 2))
        {
          v33 = (v22 - 2);
        }

        v51 = vcvtmd_u64_f64(v30);
        v52 = vcvtmd_u64_f64(v33);
        v53 = v51 + v52 * v21;
        LOBYTE(v30) = *(a2 + v53);
        v54 = *(a4 + 48);
        v55 = *&v30 / v54;
        LOBYTE(a9) = *(a2 + v53 + 1);
        v56 = *&a9 / v54;
        v57 = v51 + (v52 + 1) * v21;
        LOBYTE(a10) = *(a2 + v57);
        v58 = *&a10 / v54;
        LOBYTE(a11) = *(a2 + v57 + 1);
        v59 = *&a11 / v54;
        LOWORD(a12) = *a4;
        v60 = LODWORD(a12);
        v61 = roundf(*(v15 + 4 * v51) * v60);
        LOWORD(v12) = *(a4 + 2);
        v62 = LODWORD(v12);
        v63 = roundf(*(v16 + 4 * v52) * v62);
        a12 = roundf(*(v15 + 4 * (v51 + 1)) * v60);
        v12 = roundf(*(v16 + 4 * (v52 + 1)) * v62);
        a11 = v24 - v61;
        v64 = a12 - v24;
        v65 = v58 * v64 + a11 * v59;
        a10 = a11 + v64;
        v66 = v65 / (a11 + v64);
        v67 = (v55 * v64 + a11 * v56) / (a11 + v64);
        a9 = v12 - v20;
        a7 = v20 - v63 + v12 - v20;
        *(v23 + 8 * v19) = fmax(fmin(((v12 - v20) * v67 + (v20 - v63) * v66) / a7, 1.0), 0.0);
      }

      else
      {
        v37 = 0;
        v38 = *(a4 + 48);
        v39 = v34;
        v40 = (v75 + v28 + v21 * v34);
        v41 = v80;
        do
        {
          v42 = 0;
          v79[v37] = *(v15 + 4 * (v37 + v28 - 2));
          v43 = *(v16 + 4 * (v37 + v39));
          v78[v37] = v43;
          v44 = v40;
          do
          {
            LOBYTE(v43) = *v44;
            v43 = *&v43 / v38;
            v41[v42] = v43;
            v44 += v21;
            ++v42;
          }

          while (v42 != 4);
          ++v37;
          ++v40;
          v41 += 4;
        }

        while (v37 != 4);
        LOWORD(v38) = *a4;
        v45 = v24 / *&v38;
        v46 = *(v15 + 4 * v29);
        v47 = v45 - v46;
        *&v48 = (*(v15 + 4 * v28) - v46);
        v49 = v47 / *&v48;
        LOWORD(v48) = *(a4 + 2);
        sub_10001479C(v80, v79, v78, v49, (v20 / v48 - *(v16 + 4 * v32)) / (*(v16 + 4 * v31) - *(v16 + 4 * v32)));
        *(v23 + 8 * v19) = v50;
        v17 = v73;
        v18 = v74;
      }

      if (++v19 == v18)
      {
        goto LABEL_43;
      }
    }
  }
}

uint64_t sub_100014E14(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v7 = *(a5 + 14);
  if (*(a5 + 14))
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a5 + 12);
    do
    {
      if (v10)
      {
        for (i = 0; i < v10; ++i)
        {
          v12 = i + v9 * v10;
          v13 = 1 << a6;
          if (a7 != 2)
          {
            LOWORD(v13) = llround(fmin(*(a3 + 8 * v12) / *(a4 + 8 * v12) * (1 << a6), 65535.0));
          }

          *(result + 2 * v12) = v13;
          if (v13 > v8)
          {
            v8 = v13;
          }

          v10 = *(a5 + 12);
        }

        v7 = *(a5 + 14);
      }

      ++v9;
    }

    while (v9 < v7);
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

void sub_100014EB0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 14) >> 1;
  v12 = *(a1 + 16) >> 1;
  if (a3)
  {
    v8 = 0;
    do
    {
      v10[v8] = *(a7 + 4 * v8);
      ++v8;
    }

    while (a3 > v8);
  }

  if (a4)
  {
    v9 = 0;
    do
    {
      v10[v9 + 21] = *(a8 + 4 * v9);
      ++v9;
    }

    while (a4 > v9);
  }

  v15 = a1 + 18;
  v16 = a1 + 36;
  v17 = a1 + 54;
  v18 = a1 + 72;
  v13 = *(a1 + 20);
  v14 = *(a1 + 28);
  operator new[]();
}

uint64_t sub_100015108(uint64_t result)
{
  v1 = 0;
  v9[0] = result + 18;
  v9[1] = result + 36;
  v9[2] = result + 54;
  v9[3] = result + 72;
  do
  {
    v2 = v9[v1];
    v3 = (((v2[7] * v2[8]) << 32) - 0x100000000) >> 31;
    if (v3 >= 1)
    {
      v4 = v2[3];
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

unint64_t sub_100015368(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1[1] * *a1;
  v5 = a1 + 156;
  v6 = (v4 - 1);
  v7 = a2 + v6;
  v8 = &a1[v6 + 156];
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

unsigned __int16 *sub_1000153E0(unsigned __int16 *result)
{
  v1 = result[16];
  if (v1 != result[43])
  {
    sub_10001BEBC();
  }

  v2 = result[17];
  if (v2 != result[44])
  {
    sub_10001BEE8();
  }

  v3 = v2 * v1;
  if (v3)
  {
    v4 = 0;
    v5 = &result[result[39] + 46];
    v6 = &result[result[12] + 46];
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

uint64_t sub_100015460(uint64_t a1, uint64_t a2)
{
  v4 = vcvtd_n_f64_u32(*(a2 + 14), 1uLL);
  v5 = vcvtd_n_f64_u32(*(a2 + 16), 1uLL);
  memset(v39, 0, 32);
  bzero(v38, 0x808uLL);
  v6 = 0;
  v7 = v4;
  v37[0] = a2 + 18;
  v37[1] = a2 + 36;
  v37[2] = a2 + 54;
  v37[3] = a2 + 72;
  do
  {
    v39[v6] = a2 + 92 + 2 * *(v37[v6] + 6);
    ++v6;
  }

  while (v6 != 4);
  v8 = v5;
  v9 = sqrt(v7 * v7 + v8 * v8);
  v10 = log2f(v9 * 0.0039062);
  v11 = 0;
  *(a1 + 12) = vcvtps_s32_f32(v10);
  do
  {
    v12 = 0;
    v13 = v37[v11];
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[7];
    v17 = (v13[8] - 2);
    result = v39[v11];
    do
    {
      v19 = 0;
      v20 = dword_100020050[v12];
      v21 = dword_100020060[v12];
      do
      {
        v22 = (v9 * v19) * 0.0039062;
        v23 = (v7 + (v20 * ((v7 / v9) * v22))) * 0.5;
        v24 = (v8 + (v21 * ((v8 / v9) * v22))) * 0.5;
        if (v23 < 0.0)
        {
          v23 = 0.0;
        }

        if (v24 < 0.0)
        {
          v24 = 0.0;
        }

        v25 = (v24 / v15);
        v26 = (v23 / v14);
        if (v26 >= (v16 - 2))
        {
          v26 = (v16 - 2);
        }

        v27 = v26;
        v28 = v25;
        if (v25 >= v17)
        {
          v28 = v17;
        }

        v29 = v28;
        v30 = (result + 2 * v28 * v16 + 2 * v27);
        v31 = (result + 2 * (v28 + 1) * v16 + 2 * v27);
        v32 = v27 * v14;
        v33 = v23 - v32;
        v34 = (v14 + v32) - v23;
        v38[v19] = v38[v19] + 1.0 / sqrt(((((v29 + 1) * v15) - v24) * ((v34 * vcvts_n_f32_u32(*v30, 0xDuLL) + v33 * vcvts_n_f32_u32(v30[1], 0xDuLL)) / (v33 + v34)) + (v24 - (v29 * v15)) * ((v34 * vcvts_n_f32_u32(*v31, 0xDuLL) + v33 * vcvts_n_f32_u32(v31[1], 0xDuLL)) / (v33 + v34))) / (v24 - (v29 * v15) + ((v29 + 1) * v15) - v24));
        ++v19;
      }

      while (v19 != 257);
      ++v12;
    }

    while (v12 != 4);
    ++v11;
  }

  while (v11 != 4);
  for (i = 0; i != 257; ++i)
  {
    v36 = v38[i] * 0.0625;
    v38[i] = v36;
    *(a1 + 14 + 2 * i) = vcvtd_n_s64_f64(v36, 0xCuLL);
  }

  return result;
}

uint64_t sub_100015770(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x27u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_1000157E0(uint64_t a1)
{
  if (!*(a1 + 416))
  {
    return 3758097112;
  }

  __src[0] = 0x300000000uLL;
  DWORD2(__src[1]) = 0;
  *&__src[1] = 0;
  v2 = sub_100015B94(a1, __src, 0x1Cu, 0, 0xFFFFFFFF);
  if (!v2)
  {
    *(a1 + 376) = __src[0];
    *(a1 + 388) = *(__src + 12);
    printf("H10ISP: maxChannels=%d, timeStampFrequency=%d\n", HIDWORD(__src[0]), DWORD2(__src[0]));
    if (!*(a1 + 408))
    {
      operator new[]();
    }

    LODWORD(v3) = *(a1 + 416);
    if (!v3)
    {
LABEL_23:
      v2 = 0;
      *(a1 + 368) = v3;
      *(a1 + 372) = 1;
      return v2;
    }

    v4 = 0;
    while (1)
    {
      v23 = 0u;
      memset(v24, 0, sizeof(v24));
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      memset(__src, 0, sizeof(__src));
      WORD2(__src[0]) = 269;
      DWORD2(__src[0]) = v4;
      v2 = sub_100015B94(a1, __src, 0xFCu, 0, 0xFFFFFFFF);
      if (v2)
      {
        break;
      }

      v5 = (*(a1 + 408) + 280 * v4);
      *v5 = v16;
      memmove(v5 + 6, __src, 0xFCuLL);
      v6 = *(a1 + 408) + 280 * v4;
      if (*v6)
      {
        if (!*(v6 + 8) && !*(v6 + 16))
        {
          operator new[]();
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          v14 = 0u;
          __src[1] = 0u;
          v12 = 0u;
          *&__src[0] = 0x10600000000;
          *(&__src[0] + 1) = __PAIR64__(v9, v4);
          v2 = sub_100015B94(a1, __src, 0xB0u, 0, 0xFFFFFFFF);
          if (v2)
          {
            break;
          }

          if ((BYTE12(__src[1]) & 0x80) != 0)
          {
            WORD6(__src[1]) = (WORD6(__src[1]) & 0xFF00) + 256;
          }

          memmove((*(*(a1 + 408) + 280 * v4 + 8) + v8), &__src[1], 0xA0uLL);
          *&__src[0] = 0x14200000000;
          __src[1] = 0u;
          v12 = 0u;
          v13 = 0u;
          *&v14 = 0;
          *(&__src[0] + 1) = __PAIR64__(v9, v4);
          v2 = sub_100015B94(a1, __src, 0x48u, 0, 0xFFFFFFFF);
          if (v2)
          {
            break;
          }

          memmove((*(*(a1 + 408) + 280 * v4 + 16) + v7), __src, 0x48uLL);
          ++v9;
          v8 += 160;
          v7 += 72;
          if (v9 >= *(*(a1 + 408) + 280 * v4))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v2 = 0;
      }

      ++v4;
      v3 = *(a1 + 416);
      if (v4 >= v3)
      {
        if (v2)
        {
          break;
        }

        goto LABEL_23;
      }
    }
  }

  sub_100015C8C(a1);
  return v2;
}

uint64_t sub_100015B94(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  kdebug_trace();
  v10 = *(a1 + 96);
  if (v10)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    v11 = IOConnectCallScalarMethod(v10, 0xAu, input, 4u, 0, 0);
  }

  else
  {
    v11 = 3758097084;
  }

  kdebug_trace();
  return v11;
}

uint64_t sub_100015C8C(uint64_t a1)
{
  if (*(a1 + 372) == 1)
  {
    *(a1 + 372) = 0;
    *(a1 + 368) = 0;
    v2 = *(a1 + 408);
    if (v2)
    {
      if (!*(a1 + 416))
      {
        goto LABEL_11;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(a1 + 408);
        v6 = *(v5 + v3 + 8);
        if (v6)
        {
          operator delete[](v6);
          v5 = *(a1 + 408);
          *(v5 + v3 + 8) = 0;
        }

        v7 = *(v5 + v3 + 16);
        if (v7)
        {
          operator delete[](v7);
          v5 = *(a1 + 408);
          *(v5 + v3 + 16) = 0;
        }

        v8 = v5 + v3;
        *v8 = 0;
        *(v8 + 40) = 0u;
        *(v8 + 56) = 0u;
        *(v8 + 72) = 0u;
        *(v8 + 88) = 0u;
        *(v8 + 104) = 0u;
        *(v8 + 120) = 0u;
        *(v8 + 136) = 0u;
        *(v8 + 152) = 0u;
        *(v8 + 168) = 0u;
        *(v8 + 184) = 0u;
        *(v8 + 200) = 0u;
        *(v8 + 216) = 0u;
        *(v8 + 232) = 0u;
        *(v8 + 248) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 260) = 0u;
        ++v4;
        v3 += 280;
      }

      while (v4 < *(a1 + 416));
      v2 = *(a1 + 408);
      if (v2)
      {
LABEL_11:
        operator delete[](v2);
      }

      *(a1 + 408) = 0;
    }
  }

  return 0;
}

uint64_t sub_100015D94(uint64_t a1, void *a2)
{
  v2 = 3758097085;
  err = 0;
  if (!a2 || *a2)
  {
    return 3758097090;
  }

  v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/usr/local/share/firmware/isp/ISPUnitInfo.plist", kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    format = 0;
    v7 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v5);
    if (v7)
    {
      v8 = v7;
      if (CFReadStreamOpen(v7))
      {
        fwrite("Parsing ISPUnitInfo.plist \n", 0x1BuLL, 1uLL, __stderrp);
        v9 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v8, 0, 0, &format, &err);
        if (err)
        {
          puts("Failure loading override ISPUnitInfo property list : CFPropertyListCreateWithStream failed ");
          v10 = CFErrorCopyDescription(err);
          if (v10)
          {
            v11 = v10;
            CFShow(v10);
            CFRelease(v11);
          }
        }

        else
        {
          v2 = 0;
          *a2 = v9;
        }
      }

      else
      {
        v2 = 3758097136;
      }

      CFReadStreamClose(v8);
      CFRelease(v8);
    }

    CFRelease(v6);
  }

  return v2;
}

uint64_t sub_100015ED8(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 96);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 5u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_100015F30(uint64_t a1, unsigned int a2, void *outputStruct)
{
  v5 = 1688;
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 3758097084;
  }

  input = a2;
  return IOConnectCallMethod(v3, 0xEu, &input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t sub_100015FC4(uint64_t a1, unsigned int *a2, double *a3)
{
  if (*(a1 + 372) != 1)
  {
    return 3758097112;
  }

  v12 = v3;
  v13 = v4;
  mach_timebase_info(&info);
  result = 0;
  v9 = *(a1 + 384);
  *a2 = v9;
  LODWORD(v10) = info.numer;
  *a3 = 1.0 / v9 * 1000000000.0 * ((info.denom | 0x41CDCD6500000000uLL) / v10);
  return result;
}

uint64_t sub_10001605C(uint64_t a1, int a2, int a3, int a4, unsigned int a5)
{
  v12 = 0x12200000000;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v7 = sub_100015B94(a1, &v12, 0x14u, 0, a5);
  v8 = v7;
  if (a3 == 6914 && !v7)
  {
    if (*(a1 + 416))
    {
      v9 = 0;
      while (1)
      {
        v10 = sub_100016114(a1, v9);
        if (v10)
        {
          break;
        }

        if (++v9 >= *(a1 + 416))
        {
          return 0;
        }
      }

      v8 = v10;
      printf("WritePropertyValue - UpdateChannelConfigCache channel %d error: 0x%08X\n", v9, v10);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100016114(uint64_t a1, unsigned int a2)
{
  memset(v6, 0, 252);
  WORD2(v6[0]) = 269;
  DWORD2(v6[0]) = a2;
  v4 = sub_100015B94(a1, v6, 0xFCu, 0, 0xFFFFFFFF);
  if (!v4)
  {
    memmove((*(a1 + 408) + 280 * a2 + 24), v6, 0xFCuLL);
  }

  return v4;
}

uint64_t sub_1000161E4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = 3758097090;
  if (*(a1 + 416) > a2 && a3 <= 0x40)
  {
    memset(v8, 0, sizeof(v8));
    WORD2(v8[0]) = 1285;
    DWORD2(v8[0]) = a2;
    WORD6(v8[0]) = a3;
    if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        *(v8 + i + 7) = *(a4 + 2 * i);
        *(&v8[8] + i + 14) = *(a5 + i);
      }
    }

    return sub_100015B94(a1, v8, 0xD0u, 0, 0xFFFFFFFF);
  }

  return v5;
}

uint64_t sub_1000162C8(uint64_t a1, uint64_t a2, io_registry_entry_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 168) = 0;
  *(a1 + 372) = 0;
  *(a1 + 408) = 0;
  *(a1 + 368) = 0;
  *(a1 + 416) = 0;
  *(a1 + 88) = a3;
  *a1 = 0;
  v5 = &byte_1002C57E9;
  byte_1002C5814 = sub_10001A81C(@"LsInterpMode", @"com.apple.coremedia", 1);
  dword_1002C5818 = sub_10001A81C(@"LsBypassVerify", @"com.apple.coremedia", 0);
  byte_1002C581C = sub_10001A81C(@"LsEnableGreenAvg", @"com.apple.coremedia", 1) != 0;
  byte_1002C581D = sub_10001A81C(@"RadialGainEnable", @"com.apple.coremedia", 1) != 0;
  v6 = 0;
  dword_1002C5820 = sub_10001A81C(@"UnitInfoNVMChannelMask", @"com.apple.coremedia", 0xFFFFFFFFLL);
  do
  {
    v7 = CFStringCreateWithFormat(0, 0, @"LsAdjustEnableCam%d", v6);
    *(v5 - 5) = sub_10001A81C(v7, @"com.apple.coremedia", 0xFFFFFFFFLL);
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(0, 0, @"LsAdjustInvertCam%d", v6);
    *(v5 - 1) = sub_10001A81C(v8, @"com.apple.coremedia", 0) != 0;
    CFRelease(v8);
    v9 = CFStringCreateWithFormat(0, 0, @"LsIdealPctCam%d", v6);
    *v5 = sub_10001A81C(v9, @"com.apple.coremedia", 0xFFFFFFFFLL);
    v5 += 8;
    CFRelease(v9);
    ++v6;
  }

  while (v6 != 6);
  v10 = IORegistryEntrySearchCFProperty(a3, "IOService", @"sensor-type", kCFAllocatorDefault, 3u);
  if (v10)
  {
    v11 = v10;
    BytePtr = CFDataGetBytePtr(v10);
    if (BytePtr)
    {
      v13 = *BytePtr;
    }

    else
    {
      v13 = -1;
    }

    *(a1 + 48) = v13;
    CFRelease(v11);
    v14 = *(a1 + 48);
  }

  else
  {
    v14 = -1;
    *(a1 + 48) = -1;
  }

  v15 = &dword_1000249A8;
  *(a1 + 56) = &dword_1000249A8;
  v16 = 32;
  while (*v15 != v14)
  {
    v15 += 222;
    if (!--v16)
    {
      printf("H10ISPDevice - Did not find platform-info for platform:%d. Defaulting to 0.\n", v14);
      goto LABEL_14;
    }
  }

  *(a1 + 56) = v15;
LABEL_14:
  pthread_mutexattr_init(&v18);
  pthread_mutexattr_settype(&v18, 2);
  pthread_mutex_init((a1 + 104), &v18);
  pthread_mutexattr_destroy(&v18);
  sub_1000165E4(a1);
  sub_100015C8C(a1);
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 340) = 0;
  *(a1 + 348) = 0;
  *(a1 + 356) = 0;
  *(a1 + 360) = 0;
  if (sub_100015ED8(a1) && !sub_100015770(a1, (a1 + 416)))
  {
    sub_1000157E0(a1);
  }

  return a1;
}

uint64_t sub_1000165E4(uint64_t refCon)
{
  if (!*(refCon + 92))
  {
    return IOServiceAddInterestNotification(*(*(refCon + 16) + 16), *(refCon + 88), "IOGeneralInterest", sub_100016A58, refCon, (refCon + 92));
  }

  return refCon;
}

uint64_t sub_100016624(uint64_t a1)
{
  if (*(a1 + 96))
  {
    sub_1000168AC(a1);
  }

  v2 = *(a1 + 92);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 92) = 0;
  }

  sub_100015C8C(a1);
  for (i = 0; i != 6; ++i)
  {
    if (*(a1 + i + 248))
    {
      v4 = *(*(a1 + 16) + 72);
      if (v4)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100016950;
        block[3] = &unk_100024868;
        block[4] = a1;
        v17 = i;
        dispatch_sync(v4, block);
      }
    }

    if (*(a1 + i + 328))
    {
      v5 = *(*(a1 + 16) + 72);
      if (v5)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 0x40000000;
        v14[2] = sub_100016990;
        v14[3] = &unk_100024888;
        v14[4] = a1;
        v15 = i;
        dispatch_sync(v5, v14);
      }
    }
  }

  if (*(a1 + 340))
  {
    v6 = *(*(a1 + 16) + 72);
    if (v6)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_1000169D0;
      v13[3] = &unk_1000248A8;
      v13[4] = a1;
      dispatch_sync(v6, v13);
    }
  }

  if (*(a1 + 348))
  {
    v7 = *(*(a1 + 16) + 72);
    if (v7)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_1000169FC;
      v12[3] = &unk_1000248C8;
      v12[4] = a1;
      dispatch_sync(v7, v12);
    }
  }

  if (*(a1 + 356))
  {
    v8 = *(*(a1 + 16) + 72);
    if (v8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_100016A28;
      v11[3] = &unk_1000248E8;
      v11[4] = a1;
      dispatch_sync(v8, v11);
    }
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 24) = 0;
  }

  pthread_mutex_destroy((a1 + 104));
  return a1;
}

uint64_t sub_1000168AC(uint64_t a1)
{
  pthread_mutex_lock((a1 + 104));
  v2 = IOConnectCallScalarMethod(*(a1 + 96), 4u, 0, 0, 0, 0);
  v3 = *(a1 + 96);
  if (v3)
  {
    IOServiceClose(v3);
    *(a1 + 96) = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock((a1 + 104));
  return v2;
}

uint64_t sub_100016920(uint64_t a1)
{
  result = *(a1 + 92);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 92) = 0;
  }

  return result;
}

uint64_t sub_100016950(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = notify_cancel(*(v2 + 4 * *(a1 + 40) + 224));
  *(v2 + *(a1 + 40) + 248) = 0;
  return result;
}

uint64_t sub_100016990(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = notify_cancel(*(v2 + 4 * *(a1 + 40) + 304));
  *(v2 + *(a1 + 40) + 328) = 0;
  return result;
}

uint64_t sub_1000169D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 336));
  *(v1 + 340) = 0;
  return result;
}

uint64_t sub_1000169FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 344));
  *(v1 + 348) = 0;
  return result;
}

uint64_t sub_100016A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 352));
  *(v1 + 356) = 0;
  return result;
}

uint64_t sub_100016A58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    return (*result)(result, a3, a4, *(result + 8));
  }

  return result;
}

uint64_t sub_100016A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 104));
  if (*(a1 + 96))
  {
    pthread_mutex_unlock((a1 + 104));
    return 3758097093;
  }

  else
  {
    v7 = IOServiceOpen(*(a1 + 88), mach_task_self_, 0x2Au, (a1 + 96));
    v8 = *(a1 + 96);
    if (v8)
    {
      v6 = v7;
    }

    else
    {
      v6 = 3758097084;
    }

    if (!v6)
    {
      v10 = 0;
      v6 = IOConnectCallScalarMethod(v8, 3u, &v10, 1u, 0, 0);
      if (!v6)
      {
        *a1 = a2;
        *(a1 + 8) = a3;
        sub_100016B74(a1, (a1 + 64));
      }
    }

    pthread_mutex_unlock((a1 + 104));
  }

  return v6;
}

uint64_t sub_100016B74(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x26u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t sub_100016BE4(uint64_t a1)
{
  kdebug_trace();
  v2 = 3758097084;
  if (!*(a1 + 96))
  {
    goto LABEL_6;
  }

  if ((sub_100015ED8(a1) & 1) == 0 && *(a1 + 372) == 1)
  {
    sub_100015C8C(a1);
  }

  v2 = IOConnectCallScalarMethod(*(a1 + 96), 0xBu, 0, 0, 0, 0);
  if (v2)
  {
LABEL_6:
    v39 = v2;
    if (*(a1 + 416))
    {
      v3 = 0;
      v4 = a1 + 176;
      v5 = (a1 + 256);
      v6 = 16;
      do
      {
        v7 = *(*(a1 + 56) + v6);
        if (v7 <= 1919246705)
        {
          if (v7 == 1718775412 || v7 == 1718776695)
          {
            v8 = "com.apple.isp.frontcamerapower";
            v9 = "com.apple.isp.frontcamerasensorconfig";
            goto LABEL_21;
          }
        }

        else
        {
          switch(v7)
          {
            case 1919246706:
              v8 = "com.apple.isp.backcamerapower";
              v9 = "com.apple.isp.backcamerasensorconfig";
              goto LABEL_21;
            case 1919251319:
              v8 = "com.apple.isp.backsuperwidecamerapower";
              v9 = "com.apple.isp.backsuperwidesensorconfig";
LABEL_21:
              *(v5 - 10) = v8;
              *v5 = v9;
              if (*(v4 + v3 + 72) || (v12 = *(*(a1 + 16) + 72)) == 0 || (v47[0] = _NSConcreteStackBlock, v47[1] = 0x40000000, v47[2] = sub_100017BC8, v47[3] = &unk_100024908, v47[4] = a1, v48 = v3, dispatch_sync(v12, v47), *v5))
              {
                if (!*(v4 + v3 + 152))
                {
                  v11 = *(*(a1 + 16) + 72);
                  if (v11)
                  {
                    block[0] = _NSConcreteStackBlock;
                    block[1] = 0x40000000;
                    block[2] = sub_100017C18;
                    block[3] = &unk_100024928;
                    block[4] = a1;
                    v46 = v3;
                    dispatch_sync(v11, block);
                  }
                }
              }

              goto LABEL_29;
            case 1919251564:
              v8 = "com.apple.isp.backtelecamerapower";
              v9 = "com.apple.isp.backtelecamerasensorconfig";
              goto LABEL_21;
          }
        }

        *(v5 - 10) = 0;
        *v5 = 0;
LABEL_29:
        ++v3;
        ++v5;
        v6 += 128;
      }

      while (v3 < *(a1 + 416));
    }

    if (!*(a1 + 340))
    {
      v13 = *(*(a1 + 16) + 72);
      if (v13)
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 0x40000000;
        v44[2] = sub_100017C68;
        v44[3] = &unk_100024948;
        v44[4] = a1;
        dispatch_sync(v13, v44);
      }
    }

    if (!*(a1 + 348))
    {
      v14 = *(*(a1 + 16) + 72);
      if (v14)
      {
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 0x40000000;
        v43[2] = sub_100017CA4;
        v43[3] = &unk_100024968;
        v43[4] = a1;
        dispatch_sync(v14, v43);
      }
    }

    if (!*(a1 + 356))
    {
      v15 = *(*(a1 + 16) + 72);
      if (v15)
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 0x40000000;
        v42[2] = sub_100017CE0;
        v42[3] = &unk_100024988;
        v42[4] = a1;
        dispatch_sync(v15, v42);
      }
    }

    if (!sub_100015ED8(a1) || *(a1 + 372) != 1 || v39 || !*(a1 + 416))
    {
      goto LABEL_73;
    }

    v16 = 0;
    v40 = 0;
    v17 = 0;
    v18 = 0;
LABEL_44:
    sprintf(__filename.i8, "/usr/local/share/firmware/isp/cam%dclocks.txt", v16);
    v19 = fopen(__filename.i8, "r");
    if (!v19)
    {
      goto LABEL_72;
    }

    printf("Found camera clock override information file for camera channel %d\n");
    while (1)
    {
      if (!fgets(__str, 40, v19))
      {
        fclose(v19);
        if (v40)
        {
          v32 = *(a1 + 96);
          if (v32 && (input[0] = v16, input[1] = v17, !IOConnectCallScalarMethod(v32, 0x1Eu, input, 2u, 0, 0)))
          {
            printf("Successfully set camera %d clock divider over-ride: 0x%08X\n");
          }

          else
          {
            printf("Error: ISP_OverrideSensorClockFrequency returned an error: 0x%08X\n");
          }
        }

        if (v18)
        {
          if (sub_1000161E4(a1, v16, v18, &__dst, v51))
          {
            printf("Error: SetSensorCustomSettings returned an error: 0x%08X\n");
          }

          else
          {
            printf("Successfully sent camera %d sensor register over-ride values for %d registers\n");
          }
        }

LABEL_72:
        if (++v16 >= *(a1 + 416))
        {
LABEL_73:
          kdebug_trace();
          return v39;
        }

        goto LABEL_44;
      }

      v20 = strtok(__str, "=");
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!strncmp(v20, "clockdiv", 8uLL))
      {
        v26 = strtok(0, " \n");
        if (!v26)
        {
          break;
        }

        v17 = strtoul(v26, 0, 0);
        printf("Set clock divider reg to 0x%08X\n", v17);
        v40 = 1;
      }

      else if (!strncmp(v21, "property", 8uLL))
      {
        v27 = strtok(0, " :");
        if (!v27)
        {
          break;
        }

        v28 = strtoul(v27, 0, 0);
        v29 = strtok(0, " \n");
        if (!v29)
        {
          break;
        }

        v30 = strtoul(v29, 0, 0);
        printf("Setting FW property 0x%08x to 0x%08X\n", v28, v30);
        if (sub_10001605C(a1, v16, v28, v30, 0xFFFFFFFF))
        {
          printf("Error setting FW property: 0x%08x\n");
        }
      }

      else
      {
        v22 = strtoul(v21, 0, 0);
        v23 = strtok(0, " \n");
        if (!v23)
        {
          break;
        }

        if (v18 > 0x3F)
        {
          v31 = "Error: too many camera sensor register over-rides in file";
LABEL_60:
          puts(v31);
        }

        else
        {
          v24 = strtoul(v23, 0, 0);
          v25 = v24;
          printf("Set sensor reg 0x%08x to val 0x%08X\n", v22, v24);
          *(v51 + v18 + 708) = v22;
          v51[v18++] = v25;
        }
      }
    }

    v31 = "Error parsing camera clock override file";
    goto LABEL_60;
  }

  v34 = *(a1 + 96);
  if (!v34)
  {
    return 3758097084;
  }

  __filename.i64[0] = 63;
  result = IOConnectCallScalarMethod(v34, 0x3Eu, &__filename, 1u, 0, 0);
  if (!result)
  {
    v41 = (a1 + 416);
    if (!*(a1 + 416))
    {
      v35 = sub_100015770(a1, v41);
      if (v35)
      {
        printf("ISP_PowerOnCamera - ISP_GetNumChannels failed with 0x%08x\n", v35);
      }
    }

    v36 = *(a1 + 96);
    if (v36)
    {
      __filename = vdupq_n_s64(1uLL);
      IOConnectCallScalarMethod(v36, 0x23u, &__filename, 2u, 0, 0);
    }

    if (*v41)
    {
      v37 = 0;
      v38 = &byte_1002C57E9;
      do
      {
        bzero(&__filename, 0x698uLL);
        sub_100015F30(a1, v37, &__filename);
        if (__filename.u8[4] == 1 && (__filename.i8[12] & 1) == 0)
        {
          operator new();
        }

        ++v37;
        v38 += 8;
      }

      while (v37 < *v41);
    }

    if ((*(a1 + 372) & 1) == 0)
    {
      sub_1000157E0(a1);
    }

    v2 = 0;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100017BC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = notify_register_check(*(v2 + 8 * *(a1 + 40) + 176), (v2 + 4 * *(a1 + 40) + 224));
  *(v2 + *(a1 + 40) + 248) = result == 0;
  return result;
}

uint64_t sub_100017C18(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = notify_register_check(*(v2 + 8 * *(a1 + 40) + 256), (v2 + 4 * *(a1 + 40) + 304));
  *(v2 + *(a1 + 40) + 328) = result == 0;
  return result;
}

uint64_t sub_100017C68(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check("com.apple.isp.cameratorch", (v1 + 336));
  *(v1 + 340) = result == 0;
  return result;
}

uint64_t sub_100017CA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check("com.apple.isp.cameratorchcoolcurrent", (v1 + 344));
  *(v1 + 348) = result == 0;
  return result;
}

uint64_t sub_100017CE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check("com.apple.isp.cameratorchwarmcurrent", (v1 + 352));
  *(v1 + 356) = result == 0;
  return result;
}

uint64_t sub_100017D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 3758097084;
    goto LABEL_12;
  }

  v2 = a2;
  while (1)
  {
    v4 = sub_100016BE4(a1);
    if (v4 != -536870187)
    {
      break;
    }

    --v2;
    usleep(0x493E0u);
    if (!v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 3758097109;
      goto LABEL_12;
    }
  }

  v7 = v4;
  if (v4)
  {
LABEL_11:
    v5 = 0;
    v6 = 0;
    goto LABEL_12;
  }

  if (!sub_100015ED8(a1))
  {
    v7 = 0;
    goto LABEL_11;
  }

  v7 = sub_100017E10(a1);
  v6 = v7 == 0;
  v5 = 1;
LABEL_12:
  printf("%s - poweredOn=%d, poweredOff=%d, res=0x%08X\n", "ISP_PowerCycle", v5, v6, v7);
  return v7;
}

uint64_t sub_100017E10(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 0xCu, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097084;
  }

  kdebug_trace();
  return v3;
}

uint64_t sub_100017EA0(uint64_t a1)
{
  v2 = sub_10001819C(a1);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ISP_LoadFirmware";
      *&buf[12] = 1024;
      *&buf[14] = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Failed to load Bin-format firmware binary: %#08x\n", buf, 0x12u);
    }
  }

  else
  {
    sub_100000C50(a1);
    sub_100000F80(a1);
    sub_10001852C(a1);
    sub_100018C70();
    theDict = 0;
    sub_100015D94(v4, &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"ChannelArray");
      if (Value && (v6 = Value, CFArrayGetCount(Value) >= 1))
      {
        v7 = 0;
        v3 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
          if (ValueAtIndex)
          {
            v9 = CFDictionaryGetValue(ValueAtIndex, @"NVM");
            if (v9)
            {
              if ((dword_1002C5820 >> v7))
              {
                v10 = v9;
                Length = CFDataGetLength(v9);
                printf("sending camera channel %d over-ride NVM bytes to kernel (%d bytes)\n", v7, Length);
                *buf = CFDataGetBytePtr(v10);
                *&buf[8] = CFDataGetLength(v10);
                *&buf[16] = v7;
                v3 = IOConnectCallScalarMethod(*(a1 + 96), 0x1Au, buf, 3u, 0, 0);
                if (v3)
                {
                  printf("error sending camera channel %d over-ride NVM bytes to kernel: 0x%08X\n");
                }
              }

              else
              {
                printf("bypassing sending over-ride NVM bypass from unit-info plist for channel %d (mask bit not set)\n");
              }
            }
          }

          ++v7;
        }

        while (CFArrayGetCount(v6) > v7);
      }

      else
      {
        v3 = 0;
      }

      if (theDict)
      {
        v12 = CFDictionaryGetValue(theDict, @"MultiCameraCalWide");
        if (v12)
        {
          v13 = v12;
          *buf = CFDataGetLength(v12);
          *&buf[8] = CFDataGetBytePtr(v13);
          v14 = IOConnectCallScalarMethod(*(a1 + 96), 0x4Fu, buf, 3u, 0, 0);
          v3 = v14;
          if (v14)
          {
            printf("error sending multi camera w calibration to kernel: 0x%08X\n", v14);
          }
        }

        if (theDict)
        {
          v15 = CFDictionaryGetValue(theDict, @"MultiCameraCalSwide");
          if (v15)
          {
            v16 = v15;
            *buf = CFDataGetLength(v15);
            *&buf[8] = CFDataGetBytePtr(v16);
            *&buf[16] = 1;
            v17 = IOConnectCallScalarMethod(*(a1 + 96), 0x4Fu, buf, 3u, 0, 0);
            v3 = v17;
            if (v17)
            {
              printf("error sending multi camera sw calibration to kernel: 0x%08X\n", v17);
            }
          }

          if (theDict)
          {
            CFRelease(theDict);
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_10001819C(uint64_t a1)
{
  *outputStructCnt = 24;
  v2 = *(a1 + 96);
  if (v2 && (IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, outputStructCnt), (outputStruct[20] & 1) == 0))
  {
    v4 = *(a1 + 64);
    if (v4 == 10)
    {
      v6 = 0;
      v5 = "/usr/local/share/firmware/isp/h12_isp_fw.bin";
    }

    else if (v4 == 9)
    {
      if (**(a1 + 56) == 178)
      {
        v6 = "/usr/local/share/firmware/isp/adc-oceanus.bin";
      }

      else
      {
        v6 = 0;
      }

      v5 = "/usr/local/share/firmware/isp/h11_isp_fw.bin";
    }

    else
    {
      if (v4 == 8)
      {
        v5 = "/usr/local/share/firmware/isp/h10_isp_fw.bin";
      }

      else
      {
        v5 = 0;
      }

      v6 = 0;
    }

    v7 = fopen(v6, "rb");
    v8 = fopen(v5, "rb");
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        fclose(v7);
      }
    }

    else
    {
      v5 = v6;
      v9 = v7;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *outputStructCnt = 136315394;
      *&outputStructCnt[4] = "LoadFirmwareBinary";
      *&outputStructCnt[12] = 2080;
      *&outputStructCnt[14] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Load firmware from %s\n", outputStructCnt, 0x16u);
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *outputStructCnt = 136315138;
        *&outputStructCnt[4] = "LoadFirmwareBinary";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: (Bin) Using ISPCPU firmware override file\n", outputStructCnt, 0xCu);
      }

      fseeko(v9, 0, 2);
      ftello(v9);
      fseeko(v9, 0, 0);
      operator new[]();
    }

    perror("error loading ISPCPU firmware");
    *outputStructCnt = 0;
    *&outputStructCnt[8] = 0;
    *&outputStructCnt[16] = *(a1 + 48);
    return IOConnectCallScalarMethod(*(a1 + 96), 7u, outputStructCnt, 3u, 0, 0);
  }

  else
  {
    *outputStructCnt = 0;
    *&outputStructCnt[8] = 0;
    *&outputStructCnt[16] = *(a1 + 48);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "LoadFirmwareBinary";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: CTRR still call the kernel to make fISPCPUFirmwareLoaded true\n", buf, 0xCu);
    }

    return IOConnectCallScalarMethod(*(a1 + 96), 7u, outputStructCnt, 3u, 0, 0);
  }
}

void sub_10001852C(uint64_t a1)
{
  v2 = IOServiceNameMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", kCFAllocatorDefault, 3u);
  v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      *buf = 136315138;
      v23 = "LoadFCClDataFile";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: FrontCameraModuleSerialNumString exists - load FDR FCCl calibration data\n", buf, 0xCu);
    }

    CFRelease(v4);
    v6 = 0;
    v7 = (*(a1 + 56) + 16);
    while (1)
    {
      if (*(v7 - 2))
      {
        if (*v7 == 1718775412 || *v7 == 1718776695)
        {
          break;
        }
      }

      ++v6;
      v7 += 32;
      if (v6 == 6)
      {
        LODWORD(v6) = 0;
        break;
      }
    }

    v9 = fopen("/usr/local/share/firmware/isp/FCCl-Override.DAT", "rb");
    if (v9)
    {
      v10 = v9;
      fseeko(v9, 0, 2);
      ftello(v10);
      fseeko(v10, 0, 0);
      operator new[]();
    }

    v11 = CFStringCreateWithCString(kCFAllocatorDefault, "FCCl", 0x8000100u);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", kCFBooleanTrue);
    AMFDRLogSetHandler();
    v13 = AMFDRSealingMapCopyLocalDataForClass();
    if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "LoadFCClDataFile";
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: AMFDRSealingMapCopyLocalDataForClass failed! channel:%u\n", buf, 0x12u);
    }

    if (v13 || (*(*(a1 + 56) + 881) & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = AMFDRSealingManifestCopyLocalDataForClass();
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        *buf = 136315394;
        v23 = "LoadFCClDataFile";
        v24 = 1024;
        v25 = v6;
        v15 = "%s: Unauthorized swap detected! channel:%u\n";
LABEL_26:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, 0x12u);
      }
    }

    else if (v14)
    {
      *buf = 136315394;
      v23 = "LoadFCClDataFile";
      v24 = 1024;
      v25 = v6;
      v15 = "%s: AMFDRSealingManifestCopyLocalDataForClass failed! channel:%u\n";
      goto LABEL_26;
    }

LABEL_27:
    if (v13)
    {
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      v18 = sub_100019414(a1, v6 | 0x80000000, BytePtr, Length, 0x300u);
      v19 = CFCopyDescription(v13);
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v20, 0);
          *buf = 136315906;
          v23 = "LoadFCClDataFile";
          v24 = 1024;
          v25 = v6;
          v26 = 1024;
          v27 = v18;
          v28 = 2080;
          v29 = CStringPtr;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: channel = %u, status = %#08x, FCCl data = %s\n", buf, 0x22u);
        }

        CFRelease(v20);
      }

      CFRelease(v13);
    }

    else
    {
      sub_100019414(a1, v6 | 0x80000000, 0, 0, 0x300u);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "LoadFCClDataFile";
        v24 = 1024;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: channel = %u; No module or No FCCl data (perhaps cuz the device does not support FCCl)\n", buf, 0x12u);
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return;
  }

  if (v5)
  {
    *buf = 136315138;
    v23 = "LoadFCClDataFile";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s : Couldn't read front camera module serial number. Sensor is hosed/disconnected. Skip loading FDR FCCl calibration data \n", buf, 0xCu);
  }
}

void sub_100018C70()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    Length = CFStringGetLength(v0);
    if (CFStringHasSuffix(v1, @"AP"))
    {
      v3.length = Length - 2;
    }

    else
    {
      if (!CFStringHasSuffix(v1, @"DEV"))
      {
        v6 = kCFAllocatorDefault;
        goto LABEL_12;
      }

      v3.length = Length - 3;
    }

    v6 = kCFAllocatorDefault;
    if (v3.length >= 1)
    {
      v3.location = 0;
      v7 = CFStringCreateWithSubstring(kCFAllocatorDefault, v1, v3);
      CFRelease(v1);
      v1 = v7;
    }

LABEL_12:
    MutableCopy = CFStringCreateMutableCopy(v6, 0, v1);
    CFStringLowercase(MutableCopy, 0);
    CFShow(MutableCopy);
    CFRelease(v1);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
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
    memset(buf, 0, sizeof(buf));
    strcat(buf, "/System/Library/Isp/afpp/");
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    strcat(buf, CStringPtr);
    strcat(buf, "/ispane.afpp");
    CFRelease(MutableCopy);
    v10 = fopen(buf, "rb");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = buf;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loading file for ISP-ANE networks - %s \n", &v13, 0xCu);
    }

    v11 = fopen("/usr/local/share/firmware/isp/ispane.afpp", "rb");
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Using override ISP-ANE AFPP file \n", &v13, 2u);
      }

      if (v10)
      {
        fclose(v10);
      }

      v10 = v12;
LABEL_21:
      fseeko(v10, 0, 2);
      ftello(v10);
      fseeko(v10, 0, 0);
      operator new[]();
    }

    if (v10)
    {
      goto LABEL_21;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v4 = "Error opening ISP-ANE networks file. \n";
      v5 = &v13;
      goto LABEL_6;
    }

    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Failed to copy model string from MobileGestalt";
    v5 = buf;
LABEL_6:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

uint64_t sub_1000190E0(uint64_t a1, _DWORD *inputStruct)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x2Bu, inputStruct[4], &reference, 8u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
}

uint64_t sub_100019174(uint64_t a1, mach_port_t wake_port)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x2Cu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_100019200(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2008;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Du, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_100019298(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2008;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Eu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_100019330(uint64_t a1, mach_port_t wake_port)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x32u, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_1000193BC(uint64_t a1)
{
  output = 0;
  outputCnt = 1;
  result = *(a1 + 96);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 0x3Du, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t sub_100019414(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v7 = *(a1 + 96);
  if (v7)
  {
    input[0] = a3;
    input[1] = a4;
    input[2] = a2;
    input[3] = a5;
    v8 = IOConnectCallScalarMethod(v7, 0x28u, input, 4u, 0, 0);
  }

  else
  {
    v8 = 3758097084;
  }

  v9 = "true";
  if (a2 >= 0)
  {
    v9 = "false";
  }

  printf("Load data file: channel: %d, type: %d, isEarlyBootDataFile: %s, status: %08x\n", a2 & 0x7FFFFFFF, a5, v9, v8);
  return v8;
}

void sub_1000194EC(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "fdrLogMessages";
    v5 = 2080;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: %s \n", &v3, 0x16u);
  }
}

uint64_t sub_1000195A0(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 56);
  result = *(v3 + 843);
  for (i = (v3 + 16); ; i += 32)
  {
    if (*(i - 2))
    {
      if (*i == 1718776695 || *i == 1718775412)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return result;
    }
  }

  *a2 = v2;
  return result;
}

BOOL sub_1000195F4(uint64_t a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *(a1 + 56) + 16;
  v4 = 1;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 += 32;
    if (v6 == 1718186595 && *(v3 - 8) == 1)
    {
      break;
    }

    v4 = v2 < 5;
    v3 = v5;
    if (++v2 == 6)
    {
      return 0;
    }
  }

  *a2 = v2;
  return v4;
}

__n128 sub_100019658(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, int a9, unsigned int a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  if (a2 > 1028)
  {
    if (a2 > 1554)
    {
      if (a2 > 3413)
      {
        switch(a2)
        {
          case 3414:
            if (a3 == 2)
            {
              *a1 = &unk_100091000;
              *(a1 + 8) = 7040;
              v10 = "/usr/local/share/firmware/isp/6222_01XX.dat";
            }

            else
            {
              *a1 = &unk_10008F000;
              *(a1 + 8) = 7040;
              v10 = "/usr/local/share/firmware/isp/6221_01XX.dat";
            }

            break;
          case 26384:
            *a1 = &unk_1002C4000;
            *(a1 + 8) = 6112;
            v10 = "/usr/local/share/firmware/isp/6920_01XX.dat";
            break;
          case 38754:
            if (a3 == 3)
            {
              *a1 = &unk_1002B3000;
              *(a1 + 8) = 48148;
              v10 = "/usr/local/share/firmware/isp/7153_02XX.dat";
            }

            else if (a3 == 2)
            {
              *a1 = &unk_1002A7000;
              *(a1 + 8) = 48148;
              v10 = "/usr/local/share/firmware/isp/7152_02XX.dat";
            }

            else
            {
              *a1 = &unk_10029B000;
              *(a1 + 8) = 48148;
              v10 = "/usr/local/share/firmware/isp/7151_02XX.dat";
            }

            break;
          default:
            return result;
        }
      }

      else
      {
        switch(a2)
        {
          case 1555:
            *a1 = &unk_100277000;
            *(a1 + 8) = 38072;
            v10 = "/usr/local/share/firmware/isp/4920_01XX.dat";
            break;
          case 1556:
            *a1 = &unk_10028C000;
            *(a1 + 8) = 60780;
            v10 = "/usr/local/share/firmware/isp/2921_11XX.dat";
            break;
          case 1812:
            *a1 = &unk_100281000;
            *(a1 + 8) = 41368;
            v10 = "/usr/local/share/firmware/isp/2021_01XX.dat";
            break;
          default:
            return result;
        }
      }
    }

    else if (a2 > 1284)
    {
      switch(a2)
      {
        case 1285:
          *a1 = &unk_100264000;
          *(a1 + 8) = 35480;
          v10 = "/usr/local/share/firmware/isp/3911_01XX.dat";
          break;
        case 1300:
          if (a5 == 175)
          {
            *a1 = &unk_10020E000;
            *(a1 + 8) = 41368;
            v10 = "/usr/local/share/firmware/isp/2851_02XX.dat";
          }

          else
          {
            *a1 = &unk_100219000;
            *(a1 + 8) = 41368;
            v10 = "/usr/local/share/firmware/isp/2851_01XX.dat";
          }

          break;
        case 1539:
          *a1 = &unk_10026D000;
          *(a1 + 8) = 38136;
          v10 = "/usr/local/share/firmware/isp/7920_01XX.dat";
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 1029:
          if ((a5 & 0xFFFFFFFC) == 0x50)
          {
            if (a10 > 2)
            {
              *a1 = &unk_100197000;
              *(a1 + 8) = 39168;
              v10 = "/usr/local/share/firmware/isp/9711_04XX.dat";
            }

            else
            {
              *a1 = &unk_10018D000;
              *(a1 + 8) = 39096;
              v10 = "/usr/local/share/firmware/isp/9711_03XX.dat";
            }
          }

          else if (a10 > 2)
          {
            *a1 = &unk_1001A6000;
            *(a1 + 8) = 38628;
            v10 = "/usr/local/share/firmware/isp/9711_02XX.dat";
          }

          else
          {
            *a1 = &unk_1001A1000;
            *(a1 + 8) = 18364;
            v10 = "/usr/local/share/firmware/isp/9711_01XX.dat";
          }

          break;
        case 1044:
          if (a9)
          {
            *a1 = &unk_100135000;
            *(a1 + 8) = 41516;
            v10 = "/usr/local/share/firmware/isp/2561_01XX.dat";
          }

          else if (a5 == 196)
          {
            if (a10 > 5)
            {
              *a1 = &unk_10014B000;
              *(a1 + 8) = 41996;
              v10 = "/usr/local/share/firmware/isp/2561_06XX.dat";
            }

            else
            {
              *a1 = &unk_100140000;
              *(a1 + 8) = 41604;
              v10 = "/usr/local/share/firmware/isp/2561_05XX.dat";
            }
          }

          else if ((a5 - 167) > 3)
          {
            if ((a5 & 0xFFFFFFFC) == 0x50)
            {
              *a1 = &unk_10016C000;
              *(a1 + 8) = 42052;
              v10 = "/usr/local/share/firmware/isp/2561_09XX.dat";
            }

            else if (a10 > 5)
            {
              *a1 = &unk_100182000;
              *(a1 + 8) = 41996;
              v10 = "/usr/local/share/firmware/isp/2561_04XX.dat";
            }

            else
            {
              *a1 = &unk_100177000;
              *(a1 + 8) = 41604;
              v10 = "/usr/local/share/firmware/isp/2561_02XX.dat";
            }
          }

          else if (a10 > 5)
          {
            *a1 = &unk_100161000;
            *(a1 + 8) = 41996;
            v10 = "/usr/local/share/firmware/isp/2561_08XX.dat";
          }

          else
          {
            *a1 = &unk_100156000;
            *(a1 + 8) = 41604;
            v10 = "/usr/local/share/firmware/isp/2561_07XX.dat";
          }

          break;
        case 1283:
          if (a3 == 3)
          {
            if (a5 == 178)
            {
              *a1 = &unk_1001F6000;
              *(a1 + 8) = 45980;
              v10 = "/usr/local/share/firmware/isp/7811_82XX.dat";
            }

            else
            {
              *a1 = &unk_100202000;
              *(a1 + 8) = 45720;
              v10 = "/usr/local/share/firmware/isp/7811_02XX.dat";
            }
          }

          else if (a3 == 2)
          {
            if (a5 == 178)
            {
              *a1 = &unk_1001DE000;
              *(a1 + 8) = 45980;
              v10 = "/usr/local/share/firmware/isp/7811_83XX.dat";
            }

            else
            {
              *a1 = &unk_1001EA000;
              *(a1 + 8) = 45720;
              v10 = "/usr/local/share/firmware/isp/7811_03XX.dat";
            }
          }

          else if (a5 == 178)
          {
            *a1 = &unk_1001C6000;
            *(a1 + 8) = 45980;
            v10 = "/usr/local/share/firmware/isp/7811_81XX.dat";
          }

          else
          {
            *a1 = &unk_1001D2000;
            *(a1 + 8) = 45720;
            v10 = "/usr/local/share/firmware/isp/7811_01XX.dat";
          }

          break;
        default:
          return result;
      }
    }

    goto LABEL_147;
  }

  if (a2 <= 834)
  {
    if (a2 <= 770)
    {
      if (a2 == 553)
      {
        if (a3 == 2)
        {
          *a1 = &unk_1001BB000;
          *(a1 + 8) = 41872;
          v10 = "/usr/local/share/firmware/isp/8522_01XX.dat";
        }

        else
        {
          *a1 = &unk_1001B0000;
          *(a1 + 8) = 41872;
          v10 = "/usr/local/share/firmware/isp/8521_01XX.dat";
        }
      }

      else
      {
        if (a2 != 584)
        {
          return result;
        }

        *a1 = &unk_1002BF000;
        *(a1 + 8) = 17428;
        v10 = "/usr/local/share/firmware/isp/1820_01XX.dat";
      }
    }

    else
    {
      switch(a2)
      {
        case 771:
          if (a4 == 2)
          {
            *a1 = &unk_10003D000;
            *(a1 + 8) = 18552;
            v10 = "/usr/local/share/firmware/isp/5121_01XX.dat";
          }

          else
          {
            *a1 = &unk_100042000;
            *(a1 + 8) = 18552;
            v10 = "/usr/local/share/firmware/isp/5111_01XX.dat";
          }

          break;
        case 787:
          if (a3 == 1)
          {
            *a1 = &unk_100047000;
            *(a1 + 8) = 18532;
            v10 = "/usr/local/share/firmware/isp/4121_01XX.dat";
          }

          else
          {
            *a1 = &unk_10004C000;
            *(a1 + 8) = 18532;
            v10 = "/usr/local/share/firmware/isp/4123_01XX.dat";
          }

          break;
        case 788:
          *a1 = &unk_100032000;
          *(a1 + 8) = 42440;
          v10 = "/usr/local/share/firmware/isp/9151_01XX.dat";
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    if (a2 <= 853)
    {
      if (a2 == 835)
      {
        if (a5 == 162)
        {
          *a1 = &unk_100051000;
          *(a1 + 8) = 18656;
          v10 = "/usr/local/share/firmware/isp/5221_01XX.dat";
        }

        else
        {
          *a1 = &unk_100056000;
          *(a1 + 8) = 18544;
          v10 = "/usr/local/share/firmware/isp/5221_02XX.dat";
        }

        goto LABEL_147;
      }

      if (a2 != 851)
      {
        if (a2 != 852)
        {
          return result;
        }

        if (a5 == 162)
        {
          *a1 = &unk_10006F000;
          *(a1 + 8) = 42420;
          v10 = "/usr/local/share/firmware/isp/9251_01XX.dat";
        }

        else
        {
          *a1 = &unk_10007A000;
          *(a1 + 8) = 42476;
          v10 = "/usr/local/share/firmware/isp/9251_02XX.dat";
        }

        goto LABEL_147;
      }

      if (a5 == 161)
      {
        goto LABEL_102;
      }

      if (a5 == 162)
      {
        *a1 = &unk_10005B000;
        *(a1 + 8) = 18656;
        v10 = "/usr/local/share/firmware/isp/4221_01XX.dat";
        goto LABEL_147;
      }

      if ((a5 & 0xFFFFFFFE) != 0xC2)
      {
LABEL_102:
        *a1 = &unk_100060000;
        *(a1 + 8) = 18544;
        v10 = "/usr/local/share/firmware/isp/4221_02XX.dat";
        goto LABEL_147;
      }

      if (a8 != 5)
      {
        *a1 = &unk_10006A000;
        *(a1 + 8) = 18708;
        v10 = "/usr/local/share/firmware/isp/4521_02XX.dat";
        goto LABEL_147;
      }

LABEL_101:
      *a1 = &unk_100065000;
      *(a1 + 8) = 18724;
      v10 = "/usr/local/share/firmware/isp/4521_01XX.dat";
      goto LABEL_147;
    }

    if (a2 == 854)
    {
      if ((a5 - 172) <= 0x36 && ((1 << (a5 + 84)) & 0x40000000000003) != 0)
      {
        *a1 = &unk_100085000;
        *(a1 + 8) = 37660;
        v10 = "/usr/local/share/firmware/isp/4811_01XX.dat";
        goto LABEL_147;
      }

      goto LABEL_101;
    }

    if (a2 == 882)
    {
      if (a5 == 94)
      {
        *a1 = &unk_100244000;
        *(a1 + 8) = 63416;
        v10 = "/usr/local/share/firmware/isp/3811_61XX.dat";
      }

      else if (a5 == 178)
      {
        if (a7 && *(a7 + 4) <= 0x12u)
        {
          *a1 = &unk_100224000;
          *(a1 + 8) = 65188;
          v10 = "/usr/local/share/firmware/isp/3811_91XX.dat";
        }

        else
        {
          *a1 = &unk_100234000;
          *(a1 + 8) = 65244;
          v10 = "/usr/local/share/firmware/isp/3811_81XX.dat";
        }
      }

      else
      {
        *a1 = &unk_100254000;
        *(a1 + 8) = 64936;
        v10 = "/usr/local/share/firmware/isp/3811_01XX.dat";
      }

      goto LABEL_147;
    }

    if (a2 != 1027)
    {
      return result;
    }

    if ((a5 & 0xFFFFFFFE) == 0x5E)
    {
      *a1 = &unk_100093000;
      *(a1 + 8) = 37644;
      v10 = "/usr/local/share/firmware/isp/7521_51XX.dat";
    }

    else if (a8 == 4)
    {
      *a1 = &unk_100130000;
      *(a1 + 8) = 18932;
      v10 = "/usr/local/share/firmware/isp/7521_02XX.dat";
    }

    else
    {
      if (a8 != 5)
      {
        goto LABEL_114;
      }

      if (a10 > 1)
      {
        if (a3 == 3)
        {
          if (a5 == 178)
          {
            *a1 = &unk_100115000;
            *(a1 + 8) = 66548;
            v10 = "/usr/local/share/firmware/isp/7521_99XX.dat";
          }

          else
          {
            *a1 = &unk_100126000;
            *(a1 + 8) = 39268;
            v10 = "/usr/local/share/firmware/isp/7521_09XX.dat";
          }
        }

        else if (a3 == 2)
        {
          if (a5 == 178)
          {
            *a1 = &unk_1000FA000;
            *(a1 + 8) = 66548;
            v10 = "/usr/local/share/firmware/isp/7521_98XX.dat";
          }

          else
          {
            *a1 = &unk_10010B000;
            *(a1 + 8) = 39268;
            v10 = "/usr/local/share/firmware/isp/7521_08XX.dat";
          }
        }

        else if (a3 == 1 && a5 == 178)
        {
          *a1 = &unk_1000DF000;
          *(a1 + 8) = 66548;
          v10 = "/usr/local/share/firmware/isp/7521_97XX.dat";
        }

        else
        {
          *a1 = &unk_1000F0000;
          *(a1 + 8) = 39268;
          v10 = "/usr/local/share/firmware/isp/7521_07XX.dat";
        }

        goto LABEL_147;
      }

      if (a3 == 3)
      {
        if (a5 == 178)
        {
          *a1 = &unk_1000C9000;
          *(a1 + 8) = 66548;
          v10 = "/usr/local/share/firmware/isp/7521_93XX.dat";
        }

        else
        {
          *a1 = &unk_1000DA000;
          *(a1 + 8) = 19004;
          v10 = "/usr/local/share/firmware/isp/7521_03XX.dat";
        }

        goto LABEL_147;
      }

      if (a3 == 2)
      {
        if (a5 == 178)
        {
          *a1 = &unk_1000B3000;
          *(a1 + 8) = 66548;
          v10 = "/usr/local/share/firmware/isp/7521_95XX.dat";
        }

        else
        {
          *a1 = &unk_1000C4000;
          *(a1 + 8) = 19004;
          v10 = "/usr/local/share/firmware/isp/7521_05XX.dat";
        }

        goto LABEL_147;
      }

      if (a3 == 1 && a5 == 178)
      {
        *a1 = &unk_10009D000;
        *(a1 + 8) = 66548;
        v10 = "/usr/local/share/firmware/isp/7521_91XX.dat";
      }

      else
      {
LABEL_114:
        *a1 = &unk_1000AE000;
        *(a1 + 8) = 19004;
        v10 = "/usr/local/share/firmware/isp/7521_01XX.dat";
      }
    }
  }

LABEL_147:
  v11 = *(v10 + 1);
  *(a1 + 12) = *v10;
  *(a1 + 28) = v11;
  result = *(v10 + 28);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10001A1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 64) = pthread_self();
  Current = CFRunLoopGetCurrent();
  *(a1 + 48) = CFRetain(Current);
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_10001A1FC(uint64_t a1)
{
  for (i = 0; i < CFArrayGetCount(*a1); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
    sub_100016920(ValueAtIndex);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRunLoopRemoveSource(*(a1 + 48), v6, kCFRunLoopDefaultMode);
      *(a1 + 24) = 0;
      v5 = *(a1 + 16);
    }

    IONotificationPortDestroy(v5);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    dispatch_sync(v7, &stru_10002B8C8);
    dispatch_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  return a1;
}

uint64_t sub_10001A2D0(uint64_t a1)
{
  v2 = 3758097086;
  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = sub_10001A4E0;
  v3 = CFArrayCreateMutable(0, 0, &callBacks);
  *a1 = v3;
  if (!v3)
  {
    return 3758097085;
  }

  v4 = IOMasterPort(bootstrap_port, (a1 + 8));
  if (v4)
  {
    return v4;
  }

  v6 = IOServiceMatching("AppleH10CamIn");
  v7 = IONotificationPortCreate(*(a1 + 8));
  *(a1 + 16) = v7;
  if (v7)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    *(a1 + 24) = RunLoopSource;
    if (RunLoopSource)
    {
      CFRunLoopAddSource(*(a1 + 48), RunLoopSource, kCFRunLoopDefaultMode);
      v2 = IOServiceAddMatchingNotification(*(a1 + 16), "IOServiceMatched", v6, sub_10001A514, a1, (a1 + 56));
      if (!v2)
      {
        *(a1 + 72) = dispatch_queue_create("com.apple.h10ispdevicecontroller.notifications.queue", 0);
        sub_10001A514(a1, *(a1 + 56));
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "IOReturn H10ISP::H10ISPDeviceController::SetupDeviceController()";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: IONotificationPortGetRunLoopSource returned NULL ", buf, 0xCu);
      }

      IONotificationPortDestroy(*(a1 + 16));
      *(a1 + 16) = 0;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "IOReturn H10ISP::H10ISPDeviceController::SetupDeviceController()";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: IONotificationPortCreate returned NULL ", buf, 0xCu);
  }

  return v2;
}

void sub_10001A4E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_100016A54(a2);

    operator delete(v2);
  }
}

uint64_t sub_10001A514(CFArrayRef *a1, io_iterator_t iterator)
{
  properties = 0;
  while (1)
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      break;
    }

    if (!IORegistryEntryCreateCFProperties(result, &properties, kCFAllocatorDefault, 0))
    {
      if (!CFArrayGetCount(*a1))
      {
        operator new();
      }

      CFRelease(properties);
    }
  }

  return result;
}

uint64_t sub_10001A608(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  sub_10000F204(&v10);
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = &v10;
  v7 = 48;
  pthread_attr_init(&v11);
  pthread_attr_setschedparam(&v11, &v7);
  pthread_attr_setdetachstate(&v11, 1);
  pthread_create(&v8, &v11, sub_10001A714, v9);
  pthread_attr_destroy(&v11);
  sub_10000F248(&v10);
  *a1 = v9[0];
  sub_10000F240(&v10);
  return 0;
}

void sub_10001A714(uint64_t a1)
{
  pthread_setname_np("H10ISPServicesThread");
  j__pthread_mutex_lock(*(a1 + 24));
  operator new();
}

uint64_t sub_10001A7BC(uint64_t a1)
{
  v2 = CFRetain(*(a1 + 48));
  CFRunLoopStop(v2);
  v5 = 0;
  pthread_join(*(a1 + 64), &v5);
  v3 = sub_10001A2CC(a1);
  operator delete(v3);
  CFRelease(v2);
  return 0;
}

uint64_t sub_10001A81C(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID())
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, kCFBooleanTrue);
        }
      }

      goto LABEL_19;
    }

    IntValue = CFStringGetIntValue(v5);
    if (!IntValue)
    {
      SystemEncoding = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
      if (!CStringPtr)
      {
        goto LABEL_7;
      }

      IntValue = strtol(CStringPtr, 0, 0);
    }

    if (IntValue > 0)
    {
LABEL_19:
      CFRelease(v5);
      return IntValue;
    }

LABEL_7:
    IntValue = 1;
    if (CFStringCompare(v5, @"true", 1uLL))
    {
      IntValue = 1;
      if (CFStringCompare(v5, @"yes", 1uLL))
      {
        if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
        {
          IntValue = 0;
        }
      }
    }

    goto LABEL_19;
  }

  return a3;
}

unsigned int *sub_10001A9D0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 20);
    do
    {
      v5 = *v4;
      if (v4 + v5 > a1 + a2)
      {
        break;
      }

      if (*(v4 + 4) == a3)
      {
        return v4 + 1;
      }

      v4 = (v4 + (v5 + 4));
      --v3;
    }

    while (v3);
  }

  return 0;
}

CFRunLoopSourceRef sub_10001AA1C(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(a1 + 8), 0);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10001AA54(thread_act_t a1, int a2)
{
  v8 = 0;
  v4 = getpid();
  if (proc_pidinfo(v4, 2, 0, buffer, 232) <= 0)
  {
    fwrite("H10ISPSetMachThreadPriority - proc_pidinfo() failed\n", 0x34uLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  else
  {
    policy_info = a2 - v11;
    v5 = thread_policy_set(a1, 3u, &policy_info, 1u);
    if (v5)
    {
      v6 = v5;
      fprintf(__stderrp, "H10ISPSetMachThreadPriority - thread_policy_set(...,THREAD_PRECEDENCE_POLICY,...) failed, err=%d\n", v5);
    }

    else
    {
      v6 = thread_policy_set(a1, 1u, &v8, 1u);
      if (v6)
      {
        fprintf(__stderrp, "H10ISPSetMachThreadPriority - thread_policy_set(...,THREAD_EXTENDED_POLICY,...) failed, err=%d\n", v6);
      }
    }
  }

  return v6;
}

uint64_t sub_10001AB84(io_registry_entry_t a1, void *a2, void *a3)
{
  v6 = IORegistryEntrySearchCFProperty(a1, "IOService", @"SavageDeviceRev", kCFAllocatorDefault, 0);
  *a2 = v6;
  v7 = IORegistryEntrySearchCFProperty(a1, "IOService", @"SavageMNS", kCFAllocatorDefault, 0);
  *a3 = v7;
  if (v6 && v7)
  {
    return 1;
  }

  NSLog(@"IR sensor not detected");
  return 0;
}

uint64_t sub_10001AC30(io_registry_entry_t a1, void *a2, void *a3)
{
  v6 = IORegistryEntrySearchCFProperty(a1, "IOService", @"YonkersFabRevision", kCFAllocatorDefault, 0);
  *a2 = v6;
  v7 = IORegistryEntrySearchCFProperty(a1, "IOService", @"YonkersMNS", kCFAllocatorDefault, 0);
  *a3 = v7;
  if (v7 && v6)
  {
    return 1;
  }

  NSLog(@"Secure RGB sensor not detected");
  return 0;
}

void sub_10001B25C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 4);
  v4 = 5;
  do
  {
    bzero((a2 + *(v3 - 1)), *v3);
    v3 += 3;
    --v4;
  }

  while (v4);
  __assert_rtn("CorrProfileSumCols2x1V", "PDAFPixelEngine.cpp", 4247, "false");
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}