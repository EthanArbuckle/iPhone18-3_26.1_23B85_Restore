double sub_1003E3AA8(uint64_t a1, uint64_t *a2, double result)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v5 = 0;
    v6 = *(a1 + 32);
    v7 = (v4 - v3) >> 3;
    v8 = 0.0;
    do
    {
      v8 = v8 + *(v3 + 8 * v5++);
    }

    while (v7 != v5);
    result = v8 / v7 + *(v6 + 88);
    *(v6 + 88) = result;
    ++*(v6 + 112);
  }

  return result;
}

void sub_1003E3B00(uint64_t a1)
{
  v2 = *(a1 + 48);
  dispatch_release(*(a1 + 32));
  v3 = 0;
  v4 = (v2 + 40);
  v5 = 1;
  do
  {
    v20 = v3;
    v6 = *v4;
    if (!*v4)
    {
      goto LABEL_9;
    }

    v7 = v2 + 40;
    do
    {
      if (*(v6 + 32) >= v3)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v3));
    }

    while (v6);
    if (v7 != v4 && v3 >= *(v7 + 32))
    {
      *buf = &v20;
      v8 = *(sub_1003E3DEC(v2 + 32, &v20) + 5) >= *(v2 + 16);
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

    v5 &= v8;
    ++v3;
  }

  while (v3 != 5);
  if (qword_1025D44E0 != -1)
  {
    sub_101877DFC();
  }

  v9 = qword_1025D44E8;
  if (os_log_type_enabled(qword_1025D44E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v5 & 1;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CardioChange HealthKit inputs queried success, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878648((v5 & 1));
    if (v5)
    {
      goto LABEL_19;
    }
  }

  else if (v5)
  {
LABEL_19:
    v10 = *(v2 + 100);
    if (v10 >= 1)
    {
      *(v2 + 64) = *(v2 + 64) / v10;
    }

    v11 = *(v2 + 112);
    if (v11 >= 1)
    {
      *(v2 + 88) = *(v2 + 88) / v11;
    }

    v12 = *(a1 + 40);
    v13 = *(v2 + 72);
    v14 = *(v2 + 56);
    v15 = *(v2 + 104);
    v23 = *(v2 + 88);
    v24 = v15;
    *buf = v14;
    v22 = v13;
    (*(v12 + 16))();
    goto LABEL_26;
  }

  v16 = *(a1 + 40);
  v17 = *(v2 + 72);
  v18 = *(v2 + 56);
  v19 = *(v2 + 104);
  v23 = *(v2 + 88);
  v24 = v19;
  *buf = v18;
  v22 = v17;
  (*(v16 + 16))();
  if (*(v2 + 26) == 1)
  {
LABEL_26:
    *(v2 + 25) = 0;
    sub_1003C93BC(v2 + 32, *(v2 + 40));
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 32) = v4;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 100) = 0u;
  }

  *(v2 + 24) = 0;
}

void sub_1003E3DA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1003E3DEC(uint64_t a1, int *a2)
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

void sub_1003E3EC0(double *a1, double *a2, double *a3, double a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      sub_1003E418C(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 4];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

double sub_1003E418C(double *a1, double *a2, double result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void sub_1003E4200(void *a1, float64x2_t *a2, char a3)
{
  if (a3)
  {
    v5 = a1[18];
    if (a1[17] != v5)
    {
      v6 = vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5[-1], *a2))));
      if ((vorr_s8(v6, vdup_lane_s32(v6, 1)).u32[0] & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    v5 = a1[18];
  }

  v7 = a1[19];
  if (v5 >= v7)
  {
    v9 = a1[17];
    v10 = (v5 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v12 = v7 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1003E5FE8((a1 + 17), v13);
    }

    v14 = (16 * v10);
    *v14 = *a2;
    v8 = 16 * v10 + 16;
    v15 = a1[17];
    v16 = a1[18] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = a1[17];
    a1[17] = v17;
    a1[18] = v8;
    a1[19] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v5 = *a2;
    v8 = &v5[1];
  }

  a1[18] = v8;
}

uint64_t sub_1003E432C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (((*(a1 + 144) - v2) >> 4) > a2)
  {
    return v2 + 16 * a2;
  }

  else
  {
    return 0;
  }
}

void *sub_1003E4354(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_1000B9708(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t sub_1003E43F4(void *a1)
{
  v1 = (a1 + 23);
  if (a1[23] != a1[24])
  {
    return 1;
  }

  if (a1[17] != a1[18])
  {
    sub_10018D404(v30);
    sub_1003E4354(v1, ((a1[18] - a1[17]) >> 4) - 1);
    ++qword_102636B48;
    v4 = a1[17];
    if ((a1[18] - v4) >= 0x11)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = (v4 + v5);
        v8 = sub_1002E9798(v30, *(v4 + v5), *(v4 + v5 + 8), *(v4 + v5 + 16), *(v4 + v5 + 24));
        if (v8 < 0.0)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101878824();
          }

          v9 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
          {
            v10 = v7[2];
            v11 = v7[3];
            v12 = *v7;
            v13 = v7[1];
            *buf = 134546433;
            v40 = v10;
            v41 = 2053;
            v42 = v11;
            v43 = 2053;
            v44 = v12;
            v45 = 2053;
            v46 = v13;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "CLMM,invalid heading for CLMapRoad coordinate,%{sensitive}.7lf,%{sensitive}.7lf,prev,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x2Au);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D46B0 != -1)
            {
              sub_101878824();
            }

            v24 = v7[2];
            v25 = v7[3];
            v26 = *v7;
            v27 = v7[1];
            v31 = 134546433;
            v32 = v24;
            v33 = 2053;
            v34 = v25;
            v35 = 2053;
            v36 = v26;
            v37 = 2053;
            v38 = v27;
            v28 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapRoad::computeSegmentHeadings()", "%s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }
        }

        v15 = a1[24];
        v14 = a1[25];
        if (v15 >= v14)
        {
          v17 = *v1;
          v18 = v15 - *v1;
          v19 = (v18 >> 3) + 1;
          if (v19 >> 61)
          {
            sub_10028C64C();
          }

          v20 = v14 - v17;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_1000B9708(v1, v21);
          }

          v22 = (8 * (v18 >> 3));
          *v22 = v8;
          v16 = v22 + 1;
          memcpy(0, v17, v18);
          v23 = a1[23];
          a1[23] = 0;
          a1[24] = v16;
          a1[25] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v15 = v8;
          v16 = v15 + 1;
        }

        a1[24] = v16;
        ++v6;
        v4 = a1[17];
        v5 += 16;
      }

      while (v6 < (a1[18] - v4) >> 4);
    }

    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101878734();
  }

  v29 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "CLMM,computeSegmentLengthsAndHeading,CoordinateCount is 0", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10187884C();
    return 0;
  }

  return result;
}

double sub_1003E47CC(uint64_t *a1, int a2)
{
  sub_1003E43F4(a1);
  v4 = a1[23];
  if (a2 < ((a1[24] - v4) >> 3))
  {
    return *(v4 + 8 * a2);
  }

  v5 = -1.0;
  if (((a1[18] - a1[17]) >> 4) - 1 > a2)
  {
    v5 = sub_1003E493C(a1, a2, a2 + 1);
    if (qword_1025D46B0 != -1)
    {
      sub_101878734();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v7 = *a1;
      v9 = 134283777;
      v10 = v7;
      v11 = 1026;
      v12 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLMM,getHeadingForSegment,stored bearing value unavailble,had to be calculated,%{private}lld,index,%{public}d", &v9, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101878928(a1, a2);
    }
  }

  return v5;
}

double sub_1003E491C(uint64_t *a1)
{
  v1 = (a1[18] - a1[17]) >> 4;
  if (v1 >= 2)
  {
    return sub_1003E47CC(a1, v1 - 2);
  }

  else
  {
    return -1.0;
  }
}

double sub_1003E493C(uint64_t a1, int a2, unsigned int a3)
{
  result = -1.0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 136);
    v7 = (*(a1 + 144) - v6) >> 4;
    if (v7 > a2 && (a3 & 0x80000000) == 0 && v6 && v7 > a3)
    {
      v11 = v3;
      v12 = v4;
      v8 = (v6 + 16 * a2);
      v9 = (v6 + 16 * a3);
      sub_10018D404(v10);
      return sub_1002E9798(v10, *v8, v8[1], *v9, v9[1]);
    }
  }

  return result;
}

uint64_t sub_1003E49B0(uint64_t *a1)
{
  v1 = (a1[18] - a1[17]) >> 4;
  if (v1 < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 - 1;
  v6 = -1.0;
  do
  {
    v7 = sub_1003E47CC(a1, v4);
    if (v7 >= 0.0)
    {
      v8 = v7;
      if (v6 >= 0.0)
      {
        v9 = fmod(v7 - v6, 360.0);
        if (v9 < 0.0)
        {
          v9 = v9 + 360.0;
        }

        if (v9 > 180.0)
        {
          v9 = v9 + -360.0;
        }

        if (fabs(v9) <= 7.5)
        {
          v3 = v3;
        }

        else
        {
          v3 = (v3 + 1);
        }
      }
    }

    else
    {
      v8 = v6;
    }

    ++v4;
    v6 = v8;
  }

  while (v5 != v4);
  return v3;
}

BOOL sub_1003E4AA4(uint64_t a1, int a2, double a3, double a4)
{
  if (((*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0) == 0x20)
  {
    return 0;
  }

  sub_10029244C(a1);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168) - v9;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = v10 >> 3;
  v13 = *(a1 + 40) * a3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v14 = -v12;
  while (1)
  {
    v13 = v13 - *v9;
    if (v13 <= 0.0)
    {
      break;
    }

    --v11;
    ++v9;
    if (v14 == v11)
    {
      return 0;
    }
  }

  if (!v11)
  {
    v23 = sub_1003E47CC(a1, 0);
    v24 = sub_1003E47CC(a1, 1);
    v17 = v24;
    if (v23 >= 0.0 && v24 >= 0.0)
    {
      v25 = fmod(v23 - v24, 360.0);
      if (v25 < 0.0)
      {
        v25 = v25 + 360.0;
      }

      if (v25 > 180.0)
      {
        v25 = v25 + -360.0;
      }

      if (fabs(v25) > a4)
      {
        return 1;
      }
    }

    if (a2)
    {
      v22 = a1;
      v21 = 2;
      goto LABEL_36;
    }

    return 0;
  }

  v15 = sub_1003E47CC(a1, ~v11);
  v16 = sub_1003E47CC(a1, -v11);
  v17 = v16;
  if (v15 >= 0.0 && v16 >= 0.0)
  {
    v18 = fmod(v15 - v16, 360.0);
    if (v18 < 0.0)
    {
      v18 = v18 + 360.0;
    }

    if (v18 > 180.0)
    {
      v18 = v18 + -360.0;
    }

    if (fabs(v18) > a4)
    {
      return 1;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v19 = sub_1003E47CC(a1, -2 - v11);
  if (v15 >= 0.0 && v19 >= 0.0)
  {
    v20 = fmod(v19 - v15, 360.0);
    if (v20 < 0.0)
    {
      v20 = v20 + 360.0;
    }

    if (v20 > 180.0)
    {
      v20 = v20 + -360.0;
    }

    if (fabs(v20) > a4)
    {
      return 1;
    }
  }

  v21 = 1 - v11;
  v22 = a1;
LABEL_36:
  v26 = sub_1003E47CC(v22, v21);
  if (v17 < 0.0 || v26 < 0.0)
  {
    return 0;
  }

  v27 = fmod(v17 - v26, 360.0);
  if (v27 < 0.0)
  {
    v27 = v27 + 360.0;
  }

  if (v27 > 180.0)
  {
    v27 = v27 + -360.0;
  }

  return fabs(v27) > a4;
}

uint64_t sub_1003E4D3C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = sub_1003E4E28(a1, a2);
  if (result)
  {
    result = sub_1003E4E8C(a1, a2);
    if (result)
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144) - v6;
      v8 = v7 >> 4;
      v9 = *(v2 + 136);
      if ((v7 >> 4) == ((*(v2 + 144) - v9) >> 4))
      {
        if (v8 < 3)
        {
          return 1;
        }

        v10 = (v7 >> 4) & 0x7FFFFFFF;
        v11 = v9 + 1;
        v12 = (v8 - 1) - 1;
        v13 = v10 - 2;
        v14 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        result = 1;
        while (1)
        {
          if (v6)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              v15 = vmovn_s64(vcgtq_f64(v14, vabdq_f64(*v11, *(v6 + 16 * v13))));
              if ((vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0] & 1) == 0)
              {
                break;
              }
            }
          }

          ++v11;
          --v13;
          if (!--v12)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003E4E28(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4E8C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4EF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4F54(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_1003E4FB8(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4EF0(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E8C(a1, a2);
}

uint64_t sub_1003E501C(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4F54(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E28(a1, a2);
}

uint64_t sub_1003E5080(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4EF0(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E28(a1, a2);
}

uint64_t sub_1003E50E4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_1003E4F54(a1, a2))
  {
    return 1;
  }

  return sub_1003E4E8C(a1, a2);
}

uint64_t sub_1003E5148(uint64_t *a1, uint64_t a2, void *a3, int a4)
{
  if (a3)
  {
    if ([a3 valueForKey:@"roadID"])
    {
      *a1 = [objc_msgSend(a3 valueForKey:{@"roadID", "longLongValue"}];
    }

    if ([a3 valueForKey:@"roadClass"])
    {
      *(a1 + 5) = [objc_msgSend(a3 valueForKey:{@"roadClass", "intValue"}];
    }

    if ([a3 valueForKey:@"formOfWay"])
    {
      *(a1 + 6) = [objc_msgSend(a3 valueForKey:{@"formOfWay", "intValue"}];
    }

    if ([a3 valueForKey:@"travelDirection"])
    {
      *(a1 + 18) = [objc_msgSend(a3 valueForKey:{@"travelDirection", "intValue"}];
    }

    if ([a3 valueForKey:@"rampType"])
    {
      *(a1 + 19) = [objc_msgSend(a3 valueForKey:{@"rampType", "intValue"}];
    }

    if ([a3 valueForKey:@"speedLimit"])
    {
      *(a1 + 4) = [objc_msgSend(a3 valueForKey:{@"speedLimit", "intValue"}];
    }

    if ([a3 valueForKey:@"isDrivable"])
    {
      *(a1 + 81) = [objc_msgSend(a3 valueForKey:{@"isDrivable", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isRoadPedestrianNavigable"])
    {
      v29 = [objc_msgSend(a3 valueForKey:{@"isRoadPedestrianNavigable", "BOOLValue"}];
    }

    else
    {
      v29 = 0;
    }

    if ([a3 valueForKey:@"isTunnel"])
    {
      *(a1 + 18) = [objc_msgSend(a3 valueForKey:{@"isTunnel", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isBridge"])
    {
      *(a1 + 19) = [objc_msgSend(a3 valueForKey:{@"isBridge", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"isRail"])
    {
      *(a1 + 17) = [objc_msgSend(a3 valueForKey:{@"isRail", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"startJunction"])
    {
      *(a1 + 27) = [objc_msgSend(a3 valueForKey:{@"startJunction", "intValue"}];
    }

    if ([a3 valueForKey:@"stopJunction"])
    {
      *(a1 + 28) = [objc_msgSend(a3 valueForKey:{@"stopJunction", "intValue"}];
    }

    if ([a3 valueForKey:@"startTileBorder"])
    {
      *(a1 + 116) = [objc_msgSend(a3 valueForKey:{@"startTileBorder", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"endTileBorder"])
    {
      *(a1 + 117) = [objc_msgSend(a3 valueForKey:{@"endTileBorder", "BOOLValue"}];
    }

    if ([a3 valueForKey:@"bikeableSide"])
    {
      *(a1 + 22) = [objc_msgSend(a3 valueForKey:{@"bikeableSide", "intValue"}];
    }

    if ([a3 valueForKey:@"walkableSide"])
    {
      *(a1 + 21) = [objc_msgSend(a3 valueForKey:{@"walkableSide", "intValue"}];
    }

    if ([a3 valueForKey:@"coordinateCount"])
    {
      v8 = [objc_msgSend(a3 valueForKey:{@"coordinateCount", "intValue"}];
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        while (1)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = [objc_msgSend(a3 valueForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"coord%i", v10)), "componentsSeparatedByString:", @", "}];
          if ([v12 count] != 3)
          {
            break;
          }

          [objc_msgSend(v12 objectAtIndexedSubscript:{0), "doubleValue"}];
          v14 = v13;
          [objc_msgSend(v12 objectAtIndexedSubscript:{1), "doubleValue"}];
          *buf = v14;
          *&buf[8] = v15;
          sub_1003E4200(a1, buf, 1);
          v16 = (a1[18] - a1[17]) & 0xFFFFFFFF0;
          [objc_msgSend(v12 objectAtIndexedSubscript:{2), "doubleValue"}];
          if (v16 == 16)
          {
            v18 = 15;
          }

          else
          {
            v18 = 16;
          }

          a1[v18] = v17;
          objc_autoreleasePoolPop(v11);
          v10 = (v10 + 1);
          if (v9 == v10)
          {
            goto LABEL_51;
          }
        }

        objc_autoreleasePoolPop(v11);
        return 0;
      }
    }

LABEL_51:
    v19 = *(a1 + 17);
    if ((*(a1 + 21) - 1) < 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = v29;
    }

    *(a1 + 80) = v20 & (v19 ^ 1);
    if (v20 & (v19 ^ 1))
    {
      v21 = 1;
    }

    else
    {
      v21 = ((*(a1 + 22) - 1) < 3) & (v19 ^ 1);
    }

    *(a1 + 82) = v21;
    *(a1 + 12) = sub_1003E5878(*(a1 + 5), *(a1 + 18) != 0);
    v22 = (*(a1 + 17) & 1) == 0 && *(a1 + 18) != 0;
    *(a1 + 16) = v22;
    v23 = a1[17];
    v24 = a1[18] - v23;
    if (a4)
    {
      if ((v24 >> 4) <= 1)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101878734();
        }

        v25 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v26 = *a1;
          v27 = (a1[18] - a1[17]) >> 4;
          *buf = 134283777;
          *&buf[4] = v26;
          *&buf[12] = 1026;
          *&buf[14] = v27;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,id,%{private}lld,has less than two coordinate,%{public}d", buf, 0x12u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D46B0 != -1)
          {
            sub_101878824();
          }

          v28 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapRoad::fillFromMapHelperNSDictionaryArray(CLDistanceCalc &, NSDictionary * _Nonnull, BOOL)", "%s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }

          return 0;
        }

        return result;
      }
    }

    else
    {
      result = 1;
      if (!v23 || (v24 & 0xFFFFFFFF0) != 0x10)
      {
        return result;
      }

      *buf = *v23;
      sub_1003E4200(a1, buf, 0);
    }

    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101878734();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,fillFromMapHelperNSDictionaryArray,array is null", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101878A58();
    return 0;
  }

  return result;
}

float sub_1003E5878(unsigned int a1, int a2)
{
  result = 7.4;
  if (a2)
  {
    result = 5.55;
  }

  if (a1 <= 7)
  {
    v3 = &unk_101C75DA0;
    if (a2)
    {
      v3 = &unk_101C75D80;
    }

    return v3[a1];
  }

  return result;
}

uint64_t sub_1003E58B8(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (a3)
  {
    if ([a2 coordinateCount] < 2)
    {
      return 0;
    }
  }

  if ([a2 internalRoadName])
  {
    v7 = [objc_msgSend(a2 "internalRoadName")];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    __dst.__r_.__value_.__s.__data_[v9] = 0;
    std::string::operator=((a1 + 48), &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v10 = [a2 roadID];
  v11 = sub_1003E5C9C(a2);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 17) = [a2 isRail];
  *(a1 + 18) = [a2 isTunnel];
  *(a1 + 19) = [a2 isBridge];
  *(a1 + 20) = [a2 roadClass];
  *(a1 + 24) = [a2 formOfWay];
  v12 = [a2 travelDirection];
  *(a1 + 72) = v12;
  *(a1 + 16) = (v12 != 0) & ~*(a1 + 17);
  *(a1 + 76) = [a2 rampType];
  v13 = [a2 isRoadPedestrianNavigable];
  v14 = [a2 walkableSide];
  v15 = [a2 isRail];
  if (v14 - 1 < 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  *(a1 + 80) = v16 & (v15 ^ 1);
  *(a1 + 81) = [a2 isDrivable];
  v17 = [a2 isRoadPedestrianNavigable];
  v18 = [a2 walkableSide];
  v19 = [a2 isRail];
  if (((v18 - 1 > 2) & ~v17) != 0 || v19)
  {
    v21 = [a2 bikeableSide];
    v20 = [a2 isRail] ^ 1;
    if (v21 - 1 >= 3)
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  *(a1 + 82) = v20;
  *(a1 + 84) = [a2 walkableSide];
  *(a1 + 108) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 112) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 116) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 117) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 96) = sub_1003E5878([a2 roadClass], objc_msgSend(a2, "travelDirection") != 0);
  if ([a2 speedLimitIsMPH])
  {
    v22 = 0.44704;
  }

  else
  {
    v22 = 0.277778;
  }

  *(a1 + 32) = v22 * [a2 speedLimit];
  *(a1 + 104) = [a2 laneCount];
  *(a1 + 88) = [a2 bikeableSide];
  if ([a2 coordinateCount])
  {
    v23 = 0;
    v24 = 0;
    do
    {
      sub_1003E4200(a1, ([a2 coordinates] + v23), 1);
      ++v24;
      v23 += 16;
    }

    while ([a2 coordinateCount] > v24);
  }

  if ((v3 & 1) == 0 && [a2 coordinateCount] == 1)
  {
    sub_1003E4200(a1, [a2 coordinates], 0);
  }

  if ([a2 coordinateCount])
  {
    *(a1 + 120) = *([a2 coordinates3d] + 2);
    v25 = [a2 coordinates3d];
    *(a1 + 128) = v25[3 * [a2 coordinateCount] - 1];
  }

  return 1;
}

void sub_1003E5C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1003E5C9C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 roadID];
  v40 = v2;
  if ([a1 coordinateCount] >= 2)
  {
    __src = 0;
    v38 = 0;
    v39 = 0;
    v36 = *[a1 coordinates];
    v3 = __src;
    v4 = v38 - __src;
    v5 = (v38 - __src) >> 4;
    v6 = v5 + 1;
    if ((v5 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v7 = v39 - __src;
    if ((v39 - __src) >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    v8 = v7 >= 0x7FFFFFFFFFFFFFF0;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v6;
    }

    if (v9)
    {
      sub_1003E5FE8(&__src, v9);
    }

    *(16 * v5) = v36;
    memcpy(0, v3, v4);
    v10 = __src;
    __src = 0;
    v38 = (16 * v5 + 16);
    v39 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *&v11 = v36;
    v12 = 0;
    v38 = (16 * v5 + 16);
    v13 = *(&v36 + 1);
    v14 = 1;
    while ([a1 coordinateCount] > v14)
    {
      v15 = [a1 coordinates];
      v16 = *&v15[v12 + 24];
      v17 = [NSString stringWithFormat:@"%.7lf", *&v15[v12 + 16]];
      v18 = [NSString stringWithFormat:@"%.7lf", v16];
      [(NSString *)v17 doubleValue];
      v20 = v19;
      [(NSString *)v18 doubleValue];
      v21 = *&v11;
      *(&v11 + 1) = *(&v36 + 1);
      if (vabdd_f64(*&v36, v20) >= 0.0000001 || vabdd_f64(v13, *&v11) >= 0.0000001)
      {
        v22 = v38;
        if (v38 >= v39)
        {
          v24 = __src;
          v25 = v38 - __src;
          v26 = (v38 - __src) >> 4;
          v27 = v26 + 1;
          if ((v26 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v28 = v39 - __src;
          if ((v39 - __src) >> 3 > v27)
          {
            v27 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            sub_1003E5FE8(&__src, v29);
          }

          v30 = (v38 - __src) >> 4;
          v31 = (16 * v26);
          *v31 = v20;
          *(v31 + 1) = v11;
          v23 = 16 * v26 + 16;
          v32 = (16 * v26 - 16 * v30);
          memcpy(&v31[-2 * v30], v24, v25);
          v33 = __src;
          __src = v32;
          v38 = v23;
          v39 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v38 = v20;
          *(v22 + 1) = v11;
          v23 = (v22 + 16);
        }

        v38 = v23;
      }

      ++v14;
      v12 += 16;
      v13 = v21;
      *&v11 = v20;
      v36 = v11;
    }

    v34 = __src;
    if ((v38 - __src) >= 0x11)
    {
      sub_1003E6060([a1 isRail], objc_msgSend(a1, "isBridge"), objc_msgSend(a1, "isTunnel"), &__src, &v40);
      v2 = v40;
      v34 = __src;
    }

    if (v34)
    {
      v38 = v34;
      operator delete(v34);
    }
  }

  return v2;
}

void sub_1003E5FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E5FE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1003E6060(int a1, int a2, int a3, uint64_t *a4, unint64_t *a5)
{
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 2;
  }

  if (a1)
  {
    v6 = 4;
  }

  if (a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v20 = 0uLL;
  v8 = *a4;
  v9 = (a4[1] - *a4) >> 4;
  if (v9 >= 2 * v7 + 2)
  {
    v20 = *(v8 + 16 * v7);
  }

  else
  {
    v10 = 0.7;
    if (a3)
    {
      v10 = 0.9;
    }

    if (a1)
    {
      v10 = 0.775;
    }

    if (a2)
    {
      v11 = 0.825;
    }

    else
    {
      v11 = v10;
    }

    v12 = v9 > 2;
    v13 = (v8 + 16 * (v9 > 2));
    v14 = *v13;
    v15 = v13[1];
    v16 = 16;
    if (v12)
    {
      v16 = 32;
    }

    sub_1003E61A8(&v20, v14, v15, *(v8 + v16), *(v8 + v16 + 8), v11);
  }

  result = *(&v20 + 1);
  v18 = vabdd_f64(0.0, *&v20) >= 0.0000001;
  v19 = vabdd_f64(0.0, *(&v20 + 1)) >= 0.0000001 || v18;
  if (v19 == 1)
  {
    result = (*(&v20 + 1) + 180.0) * 10000000.0;
    *a5 = result | (((*&v20 + 90.0) * 10000000.0) << 32);
  }

  return result;
}

void sub_1003E61A8(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  *a1 = a2 + (a4 - a2) * a6;
  v7 = a3 + 360.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  v8 = a5 + 360.0;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  v9 = v8 - v7;
  if (v9 <= 180.0)
  {
    if (v9 < -180.0)
    {
      v9 = v9 + 360.0;
    }
  }

  else
  {
    v9 = v9 + -360.0;
  }

  v10 = fmod(a3 + v9 * a6, 360.0);
  if (v10 <= -180.0)
  {
    v10 = v10 + 360.0;
  }

  else if (v10 > 180.0)
  {
    v10 = v10 + -360.0;
  }

  a1[1] = v10;
}

uint64_t sub_1003E626C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1003E629C(void *a1@<X0>, void *a2@<X8>)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1003E6370;
  v5[3] = &unk_10244FBA0;
  v3 = a1[1];
  v5[4] = *a1;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (qword_102656148 != -1)
  {
    dispatch_once(&qword_102656148, v5);
  }

  v4 = *(&xmmword_1025D53C0 + 1);
  *a2 = xmmword_1025D53C0;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

uint64_t sub_1003E63CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003E63E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t sub_1003E63F8(uint64_t a1, uint64_t *a2)
{
  result = sub_1003E646C((a1 + 64), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

uint64_t sub_1003E646C(unsigned __int16 *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *a1;
  if (v5 == v4)
  {
    v7 = &a1[16 * v6];
    v8 = *(v7 + 2);
    if (v8)
    {
      *(v7 + 3) = v8;
      operator delete(v8);
      LODWORD(v6) = *a1;
      v4 = a1[1];
      v5 = *(a1 + 1);
    }

    else
    {
      v5 = v4;
    }
  }

  v9 = v4 + v6;
  v10 = v5;
  if (v9 < v5)
  {
    v10 = 0;
  }

  v11 = &a1[16 * (v9 - v10)];
  v12 = *a2;
  *(v11 + 16) = 0;
  v11 += 16;
  *(v11 - 8) = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  result = sub_10038EB38(v11, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  v14 = a1[1];
  v15 = *(a1 + 1);
  if (v15 <= v14)
  {
    v16 = *a1 + 1;
    if (v16 < v15)
    {
      LOWORD(v15) = 0;
    }

    *a1 = v16 - v15;
  }

  else
  {
    a1[1] = v14 + 1;
  }

  return result;
}

void sub_1003E653C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (!v4 && *(a1 + 16) == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "creating IMUFoundationModel dispatcher", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878B44();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        if (*(a1 + 48))
        {
          v9 = 0;
          operator new();
        }

        sub_100008080(v7);
      }
    }
  }
}

void sub_1003E66D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003E7670(va);
  sub_100008080(v2);
  _Unwind_Resume(a1);
}

void sub_1003E66FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    v13 = 134218240;
    v14 = a2;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "request stream obs %p attachClient leech %d", &v13, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878C20(a2, a3);
  }

  if ((a3 & 1) == 0)
  {
    ++*(a1 + 8);
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 8);
      v13 = 67109120;
      LODWORD(v14) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "incrementing active ref count %d", &v13, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878D3C();
    }
  }

  v9 = a1 + 16;
  for (i = *(a1 + 24); ; i = *(i + 8))
  {
    if (i == v9)
    {
      goto LABEL_25;
    }

    if (*(i + 24) == a2)
    {
      break;
    }
  }

  if (i == v9)
  {
LABEL_25:
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v12 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "request stream adding observer %p", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101878F14();
    }

    operator new();
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101878D14();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "refusing to add redundant observer", &v13, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101878E38();
  }
}

void sub_1003E69E4(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_101879000(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "removing IMUFoundationModel delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018791D0();
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 48);
        if (v8)
        {
          (*(*v8 + 184))(v8);
        }

        sub_100008080(v7);
      }
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101878D14();
  }

  v9 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "detaching IMUFoundationModel client", v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018792AC();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

uint64_t sub_1003E6B84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    for (i = *(a1 + 24); i != a1 + 16; i = *(i + 8))
    {
      if (*(i + 24) == a2 && (*(i + 16) & 1) == 0)
      {
        if (qword_1025D45A0 != -1)
        {
          sub_101878B30();
        }

        v6 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
        {
          *v8 = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach 1", v8, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101879464();
        }

        return 1;
      }
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v5 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach 0", v7, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101879540();
      return 0;
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101878B30();
    }

    v3 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "shouldReleaseResourceOnDetach early 0", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101879388();
      return 0;
    }
  }

  return result;
}

void sub_1003E6D3C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v4 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    v15 = 134217984;
    v16 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "detachClient %p", &v15, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187961C();
  }

  v5 = (a1 + 16);
  v6 = *(a1 + 24);
  if (v6 != (a1 + 16))
  {
    while (v6[3] != a2)
    {
      v6 = v6[1];
      if (v6 == v5)
      {
        return;
      }
    }
  }

  if (v6 != v5)
  {
    v7 = *(v6 + 16);
    if (qword_1025D45A0 != -1)
    {
      sub_101878D14();
    }

    v8 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v15 = 134218240;
      v16 = a2;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "release stream removing observer %p leech %d", &v15, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879708(a2, v7);
    }

    v10 = *v6;
    v9 = v6[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    --*(a1 + 32);
    operator delete(v6);
    if ((v7 & 1) == 0)
    {
      v12 = *(a1 + 8);
      v11 = (a1 + 8);
      *v11 = v12 - 1;
      if (qword_1025D45A0 != -1)
      {
        sub_101878D14();
      }

      v13 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
      {
        v14 = *v11;
        v15 = 134218240;
        v16 = a2;
        v17 = 1024;
        v18 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "release stream observer %p decrementing active ref count %d", &v15, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018797FC(a2, v11);
      }
    }
  }
}

double sub_1003E6FB4(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 32 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1003E6FF4(uint64_t a1)
{
  sub_1003E70C4(a1);

  operator delete();
}

void sub_1003E7058(uint64_t a1)
{
  sub_1003E70C4(a1 - 8);

  operator delete();
}

uint64_t sub_1003E70C4(uint64_t a1)
{
  *a1 = off_10244FBE0;
  *(a1 + 8) = off_10244FC48;
  if (qword_1025D45A0 != -1)
  {
    sub_101878B30();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream imu foundation model destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018798F0(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryIMUFoundationModel::~CMDataProviderFactoryIMUFoundationModel()", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  sub_1003E72A4((a1 + 64));
  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *(a1 + 8) = off_10244FCF8;
  sub_1001FB750((a1 + 24));
  return a1;
}

void sub_1003E7298(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

unsigned __int16 *sub_1003E72A4(unsigned __int16 *a1)
{
  v2 = a1[1];
  if (a1[1])
  {
    v3 = *a1;
    v4 = &a1[16 * v3];
    do
    {
      v5 = *(a1 + 1);
      if (v3 < v5)
      {
        v5 = 0;
      }

      v6 = &v4[-16 * v5];
      v7 = *(v6 + 2);
      if (v7)
      {
        *(v6 + 3) = v7;
        operator delete(v7);
      }

      ++v3;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return a1;
}

void *sub_1003E737C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10244FD30;
  sub_1003E7474((a1 + 3), a2);
  return a1;
}

void sub_1003E73F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10244FD30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003E7474(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4;
  *a1 = off_10244FBE0;
  *(a1 + 8) = off_10244FC48;
  *(a1 + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 64) = 0xA00000000;
    sub_100008080(v3);
  }

  else
  {
    *(a1 + 64) = 0xA00000000;
  }

  return a1;
}

__n128 sub_1003E75A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_10244FD80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1003E75DC(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1003E7624(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E7670(uint64_t a1)
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

uint64_t sub_1003E76F0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

id sub_1003E7A00()
{
  v0 = +[NSMutableArray array];
  v1 = objc_autoreleasePoolPush();
  if (qword_102656158 - qword_102656150 != 8)
  {
    v2 = 0;
    do
    {
      v3 = [GPSCalCoreAnalyticsBin alloc];
      v4 = (qword_102656150 + 8 * v2++);
      [v0 addObject:{-[GPSCalCoreAnalyticsBin initWithSpeeds:speedUB:](v3, "initWithSpeeds:speedUB:", *v4, v4[1])}];
    }

    while (v2 < ((qword_102656158 - qword_102656150) >> 3) - 1);
  }

  objc_autoreleasePoolPop(v1);
  return v0;
}

uint64_t sub_1003E7AB4(uint64_t a1, char a2, char a3)
{
  v6 = sub_1003E7A00();
  sub_1003E7E00(a1, @"GPSSpeedToKValueTable", v6, 1, a2, a3);
  *a1 = off_10244FE40;
  sub_100536F74(a1 + 56, "CMGPSRawSpeedKValueMtex", 0, 1);
  *(a1 + 48) = sub_1003E7A00();
  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v7 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 48) count];
    *buf = 67109120;
    v14 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "GPSRawSpeedToKValueTable: number of def bins: %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101879948(buf);
    [*(a1 + 48) count];
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMMobilityCal::GPSRawSpeedToKValueTable::GPSRawSpeedToKValueTable(BOOL, BOOL)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_1003E8078(a1);
  sub_1003E81CC(a1, 1);
  if (qword_1025D4270 != -1)
  {
    sub_10187998C();
  }

  v9 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Log GPSRawSpeedToKValueTable bins on start up.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101879948(buf);
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMMobilityCal::GPSRawSpeedToKValueTable::GPSRawSpeedToKValueTable(BOOL, BOOL)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  sub_1003E8728(a1);
  return a1;
}

void sub_1003E7DC4(_Unwind_Exception *a1)
{
  sub_10053700C(v2);
  sub_1003E8A2C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E7E00(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, char a6)
{
  *a1 = &off_10244FF00;
  *(a1 + 8) = [NSMutableArray arrayWithArray:?];
  *(a1 + 16) = a4;
  *(a1 + 20) = -1;
  *(a1 + 32) = a2;
  *(a1 + 40) = a5;
  *(a1 + 41) = a6;
  *(a1 + 24) = sub_1000206B4();
  if ((sub_1003EA044(a1) & 0x80000000) != 0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v11 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Unable to restore table %@.", &v18, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018799B4();
    }

    v13 = *(a1 + 8);
    if (v13 && [v13 count])
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 16);
        v18 = 67109120;
        LODWORD(v19) = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Use default bins version %d and store them.", &v18, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101879AA0((a1 + 16));
      }

      if (sub_1003E93F4(a1) == 100)
      {
        *(a1 + 20) = *(a1 + 16);
      }
    }

    else
    {
      *(a1 + 8) = 0;
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v16 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Unexpected error in calibration table initialization.", &v18, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101879B9C();
      }
    }
  }

  return a1;
}

uint64_t sub_1003E8078(uint64_t a1)
{
  if (*(a1 + 16) != *(a1 + 20))
  {
    v9 = v1;
    v10 = v2;
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "The version of restored table does not match runtime version. Restoring default.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879C80();
    }

    *(a1 + 8) = [NSMutableArray arrayWithArray:sub_1003E7A00()];
    if (sub_1003E93F4(a1) == 100)
    {
      *(a1 + 20) = *(a1 + 16);
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v5 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Table display error.", v7, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101879D5C();
      }
    }
  }

  return 100;
}

uint64_t sub_1003E81CC(uint64_t a1, char a2)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (a2)
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v5 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "* CMMobilityCal::GPSRawSpeedToKValueTable *", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879F1C();
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_101879934();
    }

    v6 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "* CMMobilityCal::GPSRawSpeedToKValueTable *", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101879E40();
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = *(a1 + 8);
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        if (v13)
        {
          if (a2)
          {
            if (qword_1025D4270 != -1)
            {
              sub_10187998C();
            }

            v14 = p_info[79];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [v13 mean];
              v16 = v15;
              [v13 variance];
              v18 = v17;
              v19 = [v13 updateCount];
              [v13 lastUpdateTime];
              *buf = 67110144;
              v52 = v10;
              v53 = 2048;
              v54 = v16;
              v55 = 2048;
              v56 = v18;
              v57 = 1024;
              v58 = v19;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v59 = 2048;
              v60 = v20;
              _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", buf, 0x2Cu);
              ++v10;
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 == -1)
              {
                goto LABEL_36;
              }

              goto LABEL_39;
            }
          }

          else
          {
            if (qword_1025D4270 != -1)
            {
              sub_10187998C();
            }

            v21 = p_info[79];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              [v13 mean];
              v23 = v22;
              [v13 variance];
              v25 = v24;
              v26 = [v13 updateCount];
              [v13 lastUpdateTime];
              *buf = 67110144;
              v52 = v10;
              v53 = 2048;
              v54 = v23;
              v55 = 2048;
              v56 = v25;
              v57 = 1024;
              v58 = v26;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v59 = 2048;
              v60 = v27;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "Bin #%d | mean: %f | variance: %f | updateCount: %d | lastUpdateTime: %f", buf, 0x2Cu);
              ++v10;
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4270 == -1)
              {
LABEL_36:
                [v13 mean];
                v29 = v28;
                [v13 variance];
                v31 = v30;
                v32 = [v13 updateCount];
                [v13 lastUpdateTime];
                v41 = 67110144;
                v42 = v10;
                v43 = 2048;
                v44 = v29;
                v45 = 2048;
                v46 = v31;
                v47 = 1024;
                v48 = v32;
                v49 = 2048;
                v50 = v33;
                v34 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "CMError CMMobilityCal::GPSRawSpeedToKValueTable::show(BOOL)", "%s\n", v34);
                if (v34 != buf)
                {
                  free(v34);
                }

                ++v10;
                p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                goto LABEL_33;
              }

LABEL_39:
              sub_10187998C();
              goto LABEL_36;
            }
          }
        }

LABEL_33:
        v12 = v12 + 1;
      }

      while (v9 != v12);
      v35 = [v7 countByEnumeratingWithState:&v37 objects:v61 count:16];
      v9 = v35;
    }

    while (v35);
  }

  return 100;
}

unsigned __int8 *sub_1003E8728(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = *(a1 + 8);
  result = [v1 countByEnumeratingWithState:&v25 objects:v29 count:16];
  v3 = result;
  if (result)
  {
    v4 = *v26;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v26 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v6 = *(*(&v25 + 1) + 8 * v5);
      buf[0] = 0;
      result = sub_100126E84(v24, "SaveGPSCalTable", buf, 0);
      if (v24[1] != 1)
      {
        break;
      }

      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v7 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CMMobilityCal::GPSRawSpeedToKValueTable Logging Bins to MSL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101879FF8(&v22, v23);
      }

      sub_10147CAB4(buf);
      [v6 speedLB];
      v21 |= 4u;
      v17 = v8;
      [v6 speedUB];
      v21 |= 8u;
      v18 = v9;
      [v6 mean];
      v21 |= 2u;
      v16 = v10;
      [v6 variance];
      v21 |= 0x10u;
      v19 = v11;
      v12 = [v6 updateCount];
      v21 |= 0x20u;
      v20 = v12;
      [v6 lastUpdateTime];
      v21 |= 1u;
      v15 = v13;
      if (qword_102637F48 != -1)
      {
        sub_10187A10C();
      }

      if (qword_102637F50)
      {
        operator new();
      }

      PB::Base::~Base(buf);
      if (v3 == ++v5)
      {
        result = [v1 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v3 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_1003E89F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E8A2C(uint64_t a1)
{
  *a1 = &off_10244FF00;

  *(a1 + 32) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {

    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_1003E8A90(uint64_t a1)
{
  *a1 = off_10244FE40;

  sub_10053700C(a1 + 56);

  return sub_1003E8A2C(a1);
}

void sub_1003E8AF8(uint64_t a1)
{
  sub_1003E8A90(a1);

  operator delete();
}

void *sub_1003E8B30(uint64_t a1, double *a2)
{
  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Attempt to lookup bin.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A16C();
  }

  v6 = a1 + 56;
  v5 = *(a1 + 56);
  *buf = a1 + 56;
  (*(v5 + 16))(a1 + 56);
  v22 = 256;
  v7 = *a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(a1 + 8);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v7 + 0.00001;
    v11 = *v18;
LABEL_9:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      if (v13)
      {
        [*(*(&v17 + 1) + 8 * v12) speedLB];
        if (v10 >= v14)
        {
          [v13 speedUB];
          if (v10 < v15)
          {
            break;
          }
        }
      }

      if (v9 == ++v12)
      {
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  (*(*v6 + 24))(v6);
  return v13;
}

void sub_1003E8D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E8D6C(uint64_t a1, double *a2, void *a3)
{
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v22 = a1 + 56;
  (*(v6 + 16))(a1 + 56);
  v23 = 256;
  v8 = *a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = *(v7 - 48);
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v8 + 0.00001;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v14)
        {
          [*(*(&v18 + 1) + 8 * i) speedLB];
          if (v11 >= v15)
          {
            [v14 speedUB];
            if (v11 < v16)
            {
              [a3 mean];
              [v14 setMean:?];
              [a3 variance];
              [v14 setVariance:?];
              [v14 setUpdateCount:{objc_msgSend(a3, "updateCount")}];
              [a3 lastUpdateTime];
              [v14 setLastUpdateTime:?];
              goto LABEL_13;
            }
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  sub_1003E8728(a1);
  (*(*v7 + 24))(v7);
  return 100;
}

void sub_1003E8F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E8F88(uint64_t a1, void *a2)
{
  [a2 distanceRawPed];
  if (v4 != 0.0)
  {
    [objc_msgSend(a2 "stop")];
    v6 = v5;
    [objc_msgSend(a2 "start")];
    if (v6 - v7 != 0.0)
    {
      [a2 distanceGps];
      v9 = v8;
      [a2 distanceRawPed];
      v24 = v9 / v10;
      [a2 distanceRawPed];
      v12 = v11;
      [objc_msgSend(a2 "stop")];
      v14 = v13;
      [objc_msgSend(a2 "start")];
      v23 = v12 / (v14 - v15);
      [a2 distanceGps];
      v17 = v16 / 400.0;
      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      v22 = v17 * 0.4;
      if (qword_1025D4270 != -1)
      {
        sub_101879934();
      }

      v18 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "Attempt to update GPS calibration table.", v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A250();
      }

      sub_1003E9174(a1, &v24, &v23, &v22);
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v19 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Attempt to persist GPS calibration table.", v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A32C();
      }

      sub_1003E93F4(a1);
    }
  }

  return 100;
}

uint64_t sub_1003E9174(uint64_t a1, double *a2, double *a3, double *a4)
{
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v34 = a1 + 56;
  (*(v8 + 16))(a1 + 56);
  v35 = 256;
  v10 = *a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = *(v9 - 48);
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v10 + 0.00001;
    v14 = *v31;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (v16)
        {
          [*(*(&v30 + 1) + 8 * i) speedLB];
          if (v13 >= v17)
          {
            [v16 speedUB];
            if (v13 < v18)
            {
              [v16 mean];
              v20 = v19;
              v21 = *a4;
              v22 = *a2;
              [v16 variance];
              v24 = v23;
              v25 = *a4;
              v26 = *a2;
              [v16 mean];
              v28 = v27;
              [v16 setMean:v21 * v22 + v20 * (1.0 - v21)];
              [v16 setVariance:(1.0 - v21) * (v24 + v25 * ((v26 - v28) * (v26 - v28)))];
              [v16 setUpdateCount:{objc_msgSend(v16, "updateCount") + 1}];
              [v16 setLastUpdateTime:CFAbsoluteTimeGetCurrent()];
              goto LABEL_13;
            }
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  sub_1003E8728(a1);
  (*(*v9 + 24))(v9);
  return 100;
}

void sub_1003E93BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E93F4(uint64_t a1)
{
  if (*(a1 + 41) != 1)
  {
    return 100;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (v14[0] = @"version", v2 = [NSNumber numberWithInt:*(a1 + 16)], v14[1] = @"bins", v15[0] = v2, v15[1] = [NSArray arrayWithArray:*(a1 + 8)], [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2] requiringSecureCoding:1 error:0]))
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v3 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Attempt to store %@.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187A408();
    }

    v5 = (a1 + 32);
    sub_1003046B4(*(v5 - 1));
    if ((*(**(v5 - 1) + 944))())
    {
      if (qword_1025D4270 != -1)
      {
        sub_10187998C();
      }

      v6 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v5;
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Table %@ stored successfully.", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187A5E8();
      }

      return 100;
    }

    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v10 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      v11 = *v5;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Failed to store %@.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A4F4();
    }

    return 103;
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Failed to serialize calibration table for storage.", &v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A6D4();
    }

    return 112;
  }
}

uint64_t sub_1003E9734(uint64_t a1, __int128 *a2)
{
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v66 = a1 + 56;
  (*(v4 + 16))(a1 + 56);
  v67 = 256;
  v6 = a2[1];
  buf = *a2;
  v89 = v6;
  *v90 = a2[2];
  *&v90[12] = *(a2 + 44);
  v44 = sub_101270708(&buf);
  v7 = a2[1];
  buf = *a2;
  v89 = v7;
  *v90 = a2[2];
  *&v90[12] = *(a2 + 44);
  v8 = sub_100187E48(&buf);
  v9 = a2[1];
  buf = *a2;
  v89 = v9;
  *v90 = a2[2];
  *&v90[12] = *(a2 + 44);
  v10 = sub_1012707B4(&buf);
  v11 = a2[1];
  buf = *a2;
  v89 = v11;
  *v90 = a2[2];
  *&v90[12] = *(a2 + 44);
  v12 = sub_101270878(&buf);
  v42 = v5;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 8);
  v13 = [obj countByEnumeratingWithState:&v62 objects:v95 count:16];
  if (v13)
  {
    v14 = *v63;
    do
    {
      v15 = 0;
      do
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v62 + 1) + 8 * v15);
        if (v16)
        {
          if ([*(*(&v62 + 1) + 8 * v15) updateCount] < 1)
          {
            v18 = 0.0;
          }

          else
          {
            [v16 variance];
            v18 = sqrt(v17 / [v16 updateCount]) * 1.98;
          }

          v51 = _NSConcreteStackBlock;
          v52 = 3221225472;
          if (v18 <= 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = 1.0 - v18;
          }

          v53 = sub_1003E9DB4;
          v54 = &unk_10244FE68;
          v58 = v44;
          v59 = v8;
          v55 = v16;
          v60 = v10;
          v61 = v12;
          v56 = v19;
          v57 = v18;
          AnalyticsSendEventLazy();
          if (qword_1025D4270 != -1)
          {
            sub_10187998C();
          }

          v20 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            [v16 speedLB];
            v22 = v21;
            __p = 0;
            v49 = 0;
            v50 = 0;
            sub_1002AD2D8(&__p, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
            if (v49 == __p)
            {
              LODWORD(v23) = 0;
            }

            else
            {
              v23 = 0;
              v24 = (v49 - __p) >> 3;
              if (v24 <= 1)
              {
                v24 = 1;
              }

              while (*(__p + v23) < v22)
              {
                if (v24 == ++v23)
                {
                  LODWORD(v23) = v24;
                  break;
                }
              }
            }

            [v16 mean];
            v26 = v25;
            [v16 variance];
            v28 = v27;
            [v16 lastUpdateTime];
            LODWORD(buf) = 67111424;
            DWORD1(buf) = v44;
            WORD4(buf) = 1024;
            *(&buf + 10) = v8;
            HIWORD(buf) = 1024;
            LODWORD(v89) = v23;
            WORD2(v89) = 1024;
            *(&v89 + 6) = v10;
            WORD5(v89) = 1024;
            HIDWORD(v89) = v12;
            *v90 = 2048;
            *&v90[2] = v26;
            *&v90[10] = 2048;
            *&v90[12] = v28;
            *&v90[20] = 2048;
            *&v90[22] = v19;
            v91 = 2048;
            v92 = v18;
            v93 = 2048;
            v94 = v29;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "GPS Calibration, sent Core Analytics event. ageGroup %d | gender: %d | speedBin: %d | userBmiBin: %d | userHeightBin: %d | kvalueMovingMean: %f | kvalueMovingVar: %f | kvalueConfidenceMetric: %f | kvalueStandardError: %f | timeFromLastUpdate: %f", &buf, 0x52u);
            if (__p)
            {
              v49 = __p;
              operator delete(__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101879948(&buf);
            [v16 speedLB];
            v31 = v30;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            sub_1002AD2D8(&v45, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
            if (v46 == v45)
            {
              LODWORD(v32) = 0;
            }

            else
            {
              v32 = 0;
              v33 = (v46 - v45) >> 3;
              if (v33 <= 1)
              {
                v33 = 1;
              }

              while (*(v45 + v32) < v31)
              {
                if (v33 == ++v32)
                {
                  LODWORD(v32) = v33;
                  break;
                }
              }
            }

            [v16 mean];
            v35 = v34;
            [v16 variance];
            v37 = v36;
            [v16 lastUpdateTime];
            v68 = 67111424;
            v69 = v44;
            v70 = 1024;
            v71 = v8;
            v72 = 1024;
            v73 = v32;
            v74 = 1024;
            v75 = v10;
            v76 = 1024;
            v77 = v12;
            v78 = 2048;
            v79 = v35;
            v80 = 2048;
            v81 = v37;
            v82 = 2048;
            v83 = v19;
            v84 = 2048;
            v85 = v18;
            v86 = 2048;
            v87 = v38;
            v39 = _os_log_send_and_compose_impl();
            if (v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            sub_100152C7C("Generic", 1, 0, 2, "CMError CMMobilityCal::GPSRawSpeedToKValueTable::sendCoreAnalytics(const CLBodyMetrics &)", "%s\n", v39);
            if (v39 != &buf)
            {
              free(v39);
            }
          }
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v40 = [obj countByEnumeratingWithState:&v62 objects:v95 count:16];
      v13 = v40;
    }

    while (v40);
  }

  (*(*v42 + 24))(v42);
  return 100;
}

NSDictionary *sub_1003E9DB4(uint64_t a1)
{
  v11[0] = @"ageGroup";
  v12[0] = [NSNumber numberWithInt:*(a1 + 56)];
  v11[1] = @"gender";
  v12[1] = [NSNumber numberWithInt:*(a1 + 60)];
  v11[2] = @"speedBin";
  [*(a1 + 32) speedLB];
  v3 = v2;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_1002AD2D8(&__p, qword_102656150, qword_102656158, (qword_102656158 - qword_102656150) >> 3);
  if (v9 == __p)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = (v9 - __p) >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    while (*(__p + v4) < v3)
    {
      if (v5 == ++v4)
      {
        v4 = v5;
        break;
      }
    }
  }

  v12[2] = [NSNumber numberWithInt:v4];
  v11[3] = @"userBmiBin";
  v12[3] = [NSNumber numberWithInt:*(a1 + 64)];
  v11[4] = @"userHeightBin";
  v12[4] = [NSNumber numberWithInt:*(a1 + 68)];
  v11[5] = @"kvalueMovingMean";
  [*(a1 + 32) mean];
  v12[5] = [NSNumber numberWithDouble:?];
  v11[6] = @"kvalueMovingVar";
  [*(a1 + 32) variance];
  v12[6] = [NSNumber numberWithDouble:?];
  v11[7] = @"kvalueConfidenceMetric";
  v12[7] = [NSNumber numberWithDouble:*(a1 + 40)];
  v11[8] = @"kvalueStandardError";
  v12[8] = [NSNumber numberWithDouble:*(a1 + 48)];
  v11[9] = @"timeFromLastUpdate";
  [*(a1 + 32) lastUpdateTime];
  v12[9] = [NSNumber numberWithDouble:?];
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:10];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

uint64_t sub_1003EA044(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101879934();
  }

  v2 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    *v25 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Attempt to restore %@ from cache.", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A7B8();
  }

  v23 = 0;
  v4 = (a1 + 32);
  if (!sub_1003045C8(*(a1 + 24), *(a1 + 32), &v23))
  {
    goto LABEL_28;
  }

  v5 = v23;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v22 = 0;
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v6 fromData:v7 error:v8, v9, objc_opt_class(), 0], v5, &v22];
  if (v22)
  {
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v11 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      v12 = *v4;
      *buf = 138412546;
      *v25 = v12;
      *&v25[8] = 2112;
      v26 = v22;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Failed to decode %@, %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187A8A4(v4, &v22);
    }

    return 0xFFFFFFFFLL;
  }

  v13 = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = (a1 + 8);
  v14 = *(a1 + 8);
  if (v14)
  {

    *v15 = 0;
  }

  *(a1 + 20) = [objc_msgSend(v13 objectForKeyedSubscript:{@"version", "shortValue"}];
  v16 = (a1 + 20);
  *(v16 - 12) = [objc_msgSend(v13 objectForKeyedSubscript:{@"bins", "mutableCopy"}];
  if (qword_1025D4270 != -1)
  {
    sub_10187998C();
  }

  v17 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*v15 count];
    v19 = *v16;
    *buf = 67109376;
    *v25 = v18;
    *&v25[4] = 1024;
    *&v25[6] = v19;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "Restored %d bins of version %d.", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187A9C0(v15, v16);
  }

  if (![*v15 count] || (result = *v16, result <= 0))
  {
LABEL_28:
    if (qword_1025D4270 != -1)
    {
      sub_10187998C();
    }

    v21 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "Failed to restore bins.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187AAF0();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1003EA410()
{
  v1[0] = xmmword_101C76140;
  v1[1] = unk_101C76150;
  v1[2] = xmmword_101C76160;
  v2 = 0x4003333333333333;
  qword_102656158 = 0;
  unk_102656160 = 0;
  qword_102656150 = 0;
  sub_1002EBFD4(&qword_102656150, v1, &v3, 7uLL);
  return __cxa_atexit(sub_1003E76F0, &qword_102656150, dword_100000000);
}

uint64_t sub_1003EA530()
{
  if (qword_102656168 != -1)
  {
    sub_10187ABD4();
  }

  return qword_102636B58;
}

void sub_1003EAB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10054B4D4(va);
  v8 = v5[45];
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_1003EE27C(v6);
  sub_10095D914(v5);
  _Unwind_Resume(a1);
}

void sub_1003EABDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100011660();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003ED45C;
  v11[3] = &unk_10244FF80;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  sub_10017A794(v10, v11);
}

void *sub_1003EAC84(void *a1)
{
  *a1 = off_10244FF50;
  sub_1003EACF0(a1);
  v2 = a1[45];
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_1003EE27C(a1 + 13);

  return sub_10095D914(a1);
}

void sub_1003EACF0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_1003EE27C(v2 + 90);
    sub_1003EE27C(v2 + 61);
    sub_1003EE27C(v2 + 32);
    sub_1003EE27C(v2 + 3);
    operator delete();
  }

  if (a1[6])
  {
    v3 = sub_1001C3FFC();
    sub_10095D9F8(v3, 0, a1[6]);
    v4 = a1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    a1[6] = 0;
  }

  if (a1[8])
  {
    v5 = sub_10098EAD4();
    sub_10095D9F8(v5, 0, a1[8]);
    v6 = a1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    a1[8] = 0;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v7 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Stopping orientation detection.", v8, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187AC68();
  }
}

void sub_1003EAE60(void *a1)
{
  sub_1003EAC84(a1);

  operator delete();
}

void sub_1003EAE98(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 3)
  {
    if (!*(a1 + 352))
    {
      v6 = sub_1012D0640();
      sub_101860780(v6);
    }

    if (a3 == 1)
    {
      if ((sub_100023B30() & 0x80) != 0)
      {
        sub_1009B5D14(*(a1 + 352), sub_1003EB348, a1);
        sub_1009B5DB0(*(a1 + 352), sub_1003EB350, a1);
        sub_1009B5E04(*(a1 + 352), nullsub_99, a1);
        sub_1003EB390(a1);
        if (a2 == 2)
        {
          if (qword_1025D4280 != -1)
          {
            sub_10187AC40();
          }

          v9 = qword_1025D4288;
          if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
          {
            *buf = 67240192;
            *&buf[4] = 2;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unrecognized notification request %{public}u", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10187AD4C();
          }
        }

        else
        {
          sub_10017A214(*(a1 + 352), 1);
        }
      }

      else if (a2 == 1)
      {
        sub_1003EB408(a1, 1);
      }

      else if (a2)
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v10 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187AE4C();
        }
      }

      else
      {
        sub_1003EB408(a1, 0);
      }

      if (!*(a1 + 392))
      {
        operator new();
      }

      *(a1 + 33) = 1;
    }

    else if (!a3)
    {
      *(a1 + 33) = 0;
      if (*(a1 + 392))
      {
        v7 = sub_10017BFF4();
        sub_10095D9F8(v7, 0, *(a1 + 392));
        v8 = *(a1 + 392);
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        *(a1 + 392) = 0;
      }

      if ((sub_100023B30() & 0x80) != 0)
      {
        sub_10017A214(*(a1 + 352), 0);
        sub_1003EB2DC(a1);
        sub_1009B5E04(*(a1 + 352), 0, 0);
        sub_1009B5DB0(*(a1 + 352), 0, 0);
        sub_1009B5D14(*(a1 + 352), 0, 0);
      }

      if (*(a1 + 48))
      {
        sub_1003EACF0(a1);
      }
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v3 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187AF38();
    }
  }
}

void sub_1003EB2DC(uint64_t a1)
{
  v1 = *(a1 + 368) - 1;
  *(a1 + 368) = v1;
  if (!v1)
  {
    sub_1009B5F5C(*(a1 + 352), 0, 0);
    if (sub_10026E634(*(a1 + 352)))
    {

      sub_1003EBFCC(a1);
    }
  }
}

unint64_t sub_1003EB350(uint64_t a1)
{
  sub_1003ECA38(a1);

  return sub_1003ED46C(a1, 1);
}

void sub_1003EB390(uint64_t a1)
{
  v2 = *(a1 + 368);
  *(a1 + 368) = v2 + 1;
  if (!v2)
  {
    sub_1009B5F5C(*(a1 + 352), sub_1003EBF94, a1);
    if (sub_10026E634(*(a1 + 352)))
    {
      sub_1003EBFCC(a1);
    }

    sub_1003EC11C(a1);
  }
}

void sub_1003EB408(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_1003EE27C(v3 + 90);
    sub_1003EE27C(v3 + 61);
    sub_1003EE27C(v3 + 32);
    sub_1003EE27C(v3 + 3);
    operator delete();
  }

  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4 < 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  if (v6 == 1)
  {
    if (v4 >= 2 && a2 != 0)
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187ABE8();
      }

      v8 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v5;
        *buf = 67240192;
        *&buf[4] = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "forceAccelOnly for device %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187B024((a1 + 32));
      }

      *v5 = 0;
    }

    *(a1 + 56) = 1092616192;
    *(a1 + 76) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 56) = 0x41A0000041C80000;
    v10 = sub_100011660();
    sub_100185AC0(v10, buf);
    sub_1000B9370(*buf, "OrientationGyroTimeout", (a1 + 88));
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    v11 = *(a1 + 88);
    *(a1 + 80) = v11 > 0.0;
    if (v11 > 0.0)
    {
      sub_1003ECC28((a1 + 104), 8);
      *(a1 + 76) = 2;
    }

    v12 = sub_100011660();
    sub_100185AC0(v12, buf);
    v13 = sub_1004FBE40(*buf, "OrientationStableVariance", (a1 + 84));
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if ((v13 & 1) == 0)
    {
      *(a1 + 84) = 961656599;
    }

    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v14 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 88);
      v16 = *(a1 + 80);
      v17 = *(a1 + 84);
      *buf = 134349568;
      *&buf[4] = v15;
      *&buf[12] = 1026;
      *&buf[14] = v16;
      v26 = 2050;
      v27 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "fOrientationGyroTimeout,%{public}f,fEnableGyroTimeout,%{public}d,fMaxAccelerationVarianceForStability,%{public}f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationNotifier::startDetection(BOOL)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  v18 = sub_100011660();
  sub_100185AC0(v18, buf);
  sub_10005BBE4(*buf, "OrientationAccelDecimation", (a1 + 76));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  *(a1 + 72) = *(a1 + 76);
  if (*(a1 + 56) <= 0.0)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v21 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Not starting orientation detection since requested accelerometer frequency < 0", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B120();
    }
  }

  else if (sub_1001C3FFC())
  {
    if ((v6 & 1) != 0 || sub_10098EAD4())
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v19 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 34);
        *buf = 67240192;
        *&buf[4] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187B2F8(a1);
      }

      operator new();
    }

    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v23 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "No gyro; not detecting orientation!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B20C();
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v22 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "No accelerometer; not detecting orientation!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B3F4();
    }
  }
}

void sub_1003EBD40(unsigned __int8 *a1, uint64_t a2)
{
  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v4 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    *buf = 67240192;
    LODWORD(v17) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Received keyboard state %{public}u", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187B4E0(a1);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    sub_1003F9798(v6, *a1);
  }

  if (*(a2 + 384))
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v7 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v8 = *a1;
      *buf = 67109120;
      LODWORD(v17) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Sending keyboard state %u to AOP", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187B5D4(a1);
    }

    v15 = 5;
    HIBYTE(v15) = *a1;
    v14 = 0;
    v13 = 1;
    v9 = (*(**(a2 + 384) + 160))(*(a2 + 384), 32, &v15, 2, &v14, &v13);
    if (v9)
    {
      v10 = v9;
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v11 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        v12 = mach_error_string(v10);
        *buf = 136315394;
        v17 = v12;
        v18 = 1026;
        v19 = v10;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187B6C8();
      }
    }
  }
}

void sub_1003EBF94(void *a1)
{
  sub_1003EBFCC(a1);

  sub_1003EC11C(a1);
}

void sub_1003EBFCC(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current == sub_10018D3EC())
  {
    if (*(a1 + 352))
    {
      v5 = *(a1 + 384);
      if (v5)
      {
        (*(*v5 + 72))(v5, 0);
      }

      v6 = *(a1 + 376);
      if (v6)
      {
        (*(*v6 + 24))(v6);
        IODestroyPlugInInterface(*(a1 + 376));
      }

      *(*(a1 + 352) + 8) = 0;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v3 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "closeHidDriverInterface should be called from motion thread", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B7D4();
    }

    v4 = sub_100011660();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003ECC20;
    v7[3] = &unk_102449A78;
    v7[4] = a1;
    sub_10017A794(v4, v7);
  }
}

void sub_1003EC11C(void *a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v3 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187B8B8();
    }

    v4 = sub_100011660();
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1003ECA30;
    v56[3] = &unk_102449A78;
    v56[4] = a1;
    sub_10017A794(v4, v56);
    return;
  }

  v5 = a1[44];
  if (!v5)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v53 = 0;
  v6 = sub_10026E634(v5);
  if (v6)
  {
    v7 = v6;
    RegistryID = IOHIDServiceClientGetRegistryID(v6);
    CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
    theScore = 0;
    v9 = IORegistryEntryIDMatching(valuePtr);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v9);
    if (MatchingService)
    {
      v11 = MatchingService;
      v50 = 0;
      parent = 0;
      ParentEntry = IORegistryEntryGetParentEntry(MatchingService, "IOService", &parent);
      if (ParentEntry)
      {
        v13 = ParentEntry;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v14 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v15 = mach_error_string(v13);
          *buf = 67240450;
          *v68 = v13;
          *&v68[4] = 2082;
          *&v68[6] = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Unable to get parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187B99C();
        }

        v16 = v11;
LABEL_41:
        IOObjectRelease(v16);
        return;
      }

      IOObjectRelease(v11);
      v19 = IORegistryEntryGetParentEntry(parent, "IOService", &v50);
      if (v19)
      {
        v20 = v19;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v21 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v22 = mach_error_string(v20);
          *buf = 67240450;
          *v68 = v20;
          *&v68[4] = 2082;
          *&v68[6] = v22;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Unable to get grand parent of orientation service,retCode,0x%{public}x,retStr,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BAA8();
        }

        v16 = parent;
        goto LABEL_41;
      }

      IOObjectRelease(parent);
      v23 = v50;
      v24 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x7Au, 0xCFu, 0x53u, 0x32u, 0x1Au, 0x35u, 0x48u, 0x93u, 0x87u, 0xCBu, 0xBAu, 0x64u, 0xE1u, 0x88u, 0x7Fu, 0xAEu);
      v25 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v26 = IOCreatePlugInInterfaceForService(v23, v24, v25, &theInterface, &theScore);
      if (v26)
      {
        v27 = v26;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v28 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v29 = mach_error_string(v27);
          *buf = 67240706;
          *v68 = v27;
          *&v68[4] = 2082;
          *&v68[6] = v29;
          *&v68[14] = 2114;
          *&v68[16] = v7;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "Unable to create plugin interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BBB4();
        }

        return;
      }

      v30 = theInterface;
      QueryInterface = (*theInterface)->QueryInterface;
      v32 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 1u, 0x64u, 0x69u, 0xD8u, 0x77u, 0x3Bu, 0x46u, 0xACu, 0x90u, 0x9Eu, 0xF9u, 0xCu, 0x4Au, 0x6Eu, 0x75u, 0x77u);
      v33 = CFUUIDGetUUIDBytes(v32);
      v34 = (QueryInterface)(v30, *&v33.byte0, *&v33.byte8, &v53);
      if (v34)
      {
        v35 = v34;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v36 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v37 = mach_error_string(v35);
          *buf = 67240706;
          *v68 = v35;
          *&v68[4] = 2082;
          *&v68[6] = v37;
          *&v68[14] = 2114;
          *&v68[16] = v7;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_FAULT, "Unable to set up query interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BCB8();
        }

LABEL_56:
        if (theInterface)
        {
          ((*theInterface)->Release)(theInterface);
          IODestroyPlugInInterface(theInterface);
        }

        return;
      }

      v38 = (*(*v53 + 64))(v53, 0);
      if (v38)
      {
        v39 = v38;
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v40 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
        {
          v41 = mach_error_string(v39);
          *buf = 67240706;
          *v68 = v39;
          *&v68[4] = 2082;
          *&v68[6] = v41;
          *&v68[14] = 2114;
          *&v68[16] = v7;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "Unable to open hid device interface,retCode,0x%{public}x,retStr,%{public}s,service,%{public}@", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187BDBC();
        }

        if (v53)
        {
          (*(*v53 + 72))(v53, 0);
        }

        goto LABEL_56;
      }

      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v42 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v43 = a1[47];
        v44 = a1[48];
        *buf = 134219008;
        *v68 = valuePtr;
        *&v68[8] = 2048;
        *&v68[10] = v43;
        *&v68[18] = 2048;
        *&v68[20] = v44;
        v69 = 2048;
        v70 = theInterface;
        v71 = 2048;
        v72 = v53;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v47 = a1[47];
        v48 = a1[48];
        v57 = 134219008;
        v58 = valuePtr;
        v59 = 2048;
        v60 = v47;
        v61 = 2048;
        v62 = v48;
        v63 = 2048;
        v64 = theInterface;
        v65 = 2048;
        v66 = v53;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationNotifier::openHidDriverInterface()", "%s\n", v49);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      v45 = theInterface;
      *(a1[44] + 8) = valuePtr;
      v46 = v53;
      a1[47] = v45;
      a1[48] = v46;
      sub_1003ECA38(a1);
    }

    else
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v18 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "AOP service doesn't exist", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187BEC0();
      }
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v17 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "IoHidDevice is not ready!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187BFA4();
    }
  }
}

void sub_1003ECA38(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    sub_10187C088();
  }

  v11[0] = 4;
  v3 = *(a1 + 32);
  v11[1] = *(a1 + 32);
  v4 = *(a1 + 34);
  v11[2] = *(a1 + 34);
  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v5 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    *buf = 67240448;
    *v13 = v3;
    *&v13[4] = 1026;
    *&v13[6] = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Sending config,formFactor,%{public}d,handleCover,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187C258(v3, v4);
  }

  v10 = 3;
  v6 = (*(**(a1 + 384) + 160))(*(a1 + 384), 32, v11, 3, v11, &v10);
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v8 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      v9 = mach_error_string(v7);
      *buf = 136446466;
      *v13 = v9;
      *&v13[8] = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "SendCommand(Config) = %{public}s (0x%{public}x)", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187C374();
    }
  }
}

void sub_1003ECC28(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[3] = a2;
  v4 = a1[6];
  v5 = a1[7];
  a1[10] = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = a1[7];
      v4 = (a1[6] + 8);
      a1[6] = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 512;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 1024;
  }

  a1[9] = v8;
LABEL_8:
  a1[4] = 0;
  a1[12] = a2;
  v9 = a1[15];
  v10 = a1[16];
  a1[19] = 0;
  v11 = (v10 - v9) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v9);
      v12 = a1[16];
      v9 = (a1[15] + 8);
      a1[15] = v9;
      v11 = (v12 - v9) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 512;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_15;
    }

    v13 = 1024;
  }

  a1[18] = v13;
LABEL_15:
  a1[13] = 0;
  a1[21] = a2;
  v14 = a1[24];
  v15 = a1[25];
  a1[28] = 0;
  v16 = (v15 - v14) >> 3;
  if (v16 >= 3)
  {
    do
    {
      operator delete(*v14);
      v17 = a1[25];
      v14 = (a1[24] + 8);
      a1[24] = v14;
      v16 = (v17 - v14) >> 3;
    }

    while (v16 > 2);
  }

  if (v16 == 1)
  {
    v18 = 512;
    goto LABEL_21;
  }

  if (v16 == 2)
  {
    v18 = 1024;
LABEL_21:
    a1[27] = v18;
  }

  a1[22] = 0;
}

void sub_1003ECD7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 336) == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    *(a2 + 336) = CFAbsoluteTimeGetCurrent();
    if (*(a2 + 48))
    {
      v4 = sub_1001C3FFC();
      v5 = *(a2 + 48);
      *buf = (1.0 / (*(a2 + 56) * *(a2 + 76)));
      sub_10095DD24(v4, 0, v5, buf);
    }
  }

  v6 = *(a2 + 72);
  v7 = __OFSUB__(v6--, 1);
  *(a2 + 72) = v6;
  if ((v6 < 0) ^ v7 | (v6 == 0))
  {
    *(a2 + 72) = *(a2 + 76);
    sub_1003F81C4(*(a2 + 40), (a1 + 8), a1);
    if (sub_1003FB948(*(a2 + 40), &v15, buf))
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v8 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Sending orientation changed notification", v13, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187C480();
      }

      sub_100013B00(a2, 0, buf, 16);
      sub_100013B00(a2, 1, buf, 16);
    }
  }

  if (*(a2 + 80) == 1)
  {
    sub_1000423D4(a2 + 120, (a1 + 8));
    sub_1000423D4(a2 + 192, (a1 + 12));
    sub_1000423D4(a2 + 264, (a1 + 16));
    if (*(a2 + 184) < *(a2 + 128) || sub_1003ED270(a2))
    {
      *(a2 + 96) = *a1;
      if (!*(a2 + 64))
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187AC40();
        }

        v9 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Device is in motion, re-enabling Gyro.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187C658();
        }

        operator new();
      }
    }

    else if (*(a2 + 64) && *a1 > *(a2 + 96) + *(a2 + 88))
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v10 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "Device is stationary and OrientationGyroTimeout exceeded, disabling Gyro.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187C56C();
      }

      v11 = sub_10098EAD4();
      sub_10095D9F8(v11, 0, *(a2 + 64));
      v12 = *(a2 + 64);
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      *(a2 + 64) = 0;
      sub_1003FBB18(*(a2 + 40));
    }
  }
}

void sub_1003ED154(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 344) == -1.79769313e308)
  {
    CFAbsoluteTimeGetCurrent();
    kdebug_trace();
    *(a2 + 344) = CFAbsoluteTimeGetCurrent();
  }

  sub_1003F8624(*(a2 + 40), (a1 + 8), a1);
  if (!*(a2 + 48) && sub_1003FB948(*(a2 + 40), &v7, &v6))
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v4 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "GYRO: Sending orientation changed notification", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187C744();
    }

    sub_100013B00(a2, 0, &v6, 16);
  }
}

BOOL sub_1003ED270(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 < *(a1 + 128))
  {
    return 0;
  }

  v3 = 0.0;
  v4 = 0.0;
  if (v1 >= 2)
  {
    v5 = (v1 * *(a1 + 140)) - (*(a1 + 136) * *(a1 + 136));
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v1 - 1) * v1);
    }
  }

  v6 = *(a1 + 256);
  if (v6 >= 2)
  {
    v7 = (v6 * *(a1 + 212)) - (*(a1 + 208) * *(a1 + 208));
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(a1 + 328);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = (v8 * *(a1 + 284)) - (*(a1 + 280) * *(a1 + 280));
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  if (v4 >= v3)
  {
    v3 = v4;
  }

  if (v3 < v9)
  {
    v3 = v9;
  }

  return v3 > *(a1 + 84);
}

void sub_1003ED354(uint64_t a1, int a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0) == kCFCompareEqualTo)
  {
    *(a1 + 34) = 1;
    if (*(a1 + 384))
    {
      sub_1003ECA38(a1);
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187ABE8();
  }

  v4 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 34);
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187C828(a1);
  }
}

unint64_t sub_1003ED46C(uint64_t a1, int a2)
{
  if ((sub_100023B30() & 0x80) == 0)
  {
    return 0xBFF0000000000000;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x4012000000;
  v41 = sub_1000473CC;
  v42 = nullsub_39;
  v43 = &unk_10238AE8B;
  v45 = 0;
  v5 = 3;
  v44 = 2;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 10;
  while (1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v6 = sub_100011660();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003EDF8C;
    v29[3] = &unk_10244FFA8;
    v29[4] = &v30;
    v29[5] = &v38;
    v29[6] = &v34;
    v29[7] = a1;
    sub_10017A794(v6, v29);
    if (!*(v31 + 6))
    {
      break;
    }

    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v7 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
    {
      v8 = mach_error_string(*(v31 + 6));
      v9 = *(v31 + 6);
      *buf = 136315394;
      v51 = v8;
      v52 = 1026;
      v53 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "SendCommand() = %s (0x%{public}x)", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187ABFC(buf);
      v10 = mach_error_string(*(v31 + 6));
      v11 = *(v31 + 6);
      v46 = 136315394;
      v47 = v10;
      v48 = 1026;
      v49 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    usleep(0x3E8u);
    _Block_object_dispose(&v30, 8);
    if (!--v5)
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187AC40();
      }

      v20 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "No reply for LastOrientation", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187ABFC(buf);
        LOWORD(v30) = 0;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

LABEL_38:
      v4 = 0xBFF0000000000000;
      goto LABEL_39;
    }
  }

  if (v35[3] != 10)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187AC40();
    }

    v22 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      v23 = v35[3];
      *buf = 134349056;
      v51 = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "SendCommand() got unexpected response size %{public}zd", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187ABFC(buf);
      v27 = v35[3];
      v46 = 134349056;
      v47 = v27;
      v28 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    _Block_object_dispose(&v30, 8);
    goto LABEL_38;
  }

  v13 = v39;
  if (*(a1 + 402) > *(v39 + 50))
  {
    v14 = *(a1 + 400);
    *(v39 + 28) = *(a1 + 408);
    v13[6] = v14;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187AC40();
  }

  v15 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v39 + 49);
    *buf = 67240192;
    LODWORD(v51) = v16;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "Got cached orientation %{public}u", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187ABFC(buf);
    v25 = *(v39 + 49);
    v46 = 67240192;
    LODWORD(v47) = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLOrientationNotifier::Sample CLOrientationNotifier::orientationBlocking(const BOOL)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  _Block_object_dispose(&v30, 8);
  v17 = *(v39 + 50);
  v18 = sub_1000080EC(v17);
  v19 = v18;
  if (a2)
  {
    sub_1003EDDC8(a1, v17, *(v39 + 49), v18);
  }

  v4 = *&v19;
LABEL_39:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v4;
}

void sub_1003EDB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1003EDBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!*(a1 + 48))
  {
    if (IOHIDEventGetType() == 10)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      if (IntegerValue - 107 > 0xFFFFFFFFFFFFFFF8)
      {
        v10 = sub_1012ABB78();
        TimeStamp = IOHIDEventGetTimeStamp();
        v12 = sub_1000080EC(TimeStamp);

        sub_1003EDDC8(a1, v10, (IntegerValue - 100), v12);
      }

      else
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187ABE8();
        }

        v8 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_ERROR))
        {
          v13 = 134349056;
          v14 = IntegerValue;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Received invalid orientation %{public}ld", &v13, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10187CA24(IntegerValue);
        }
      }
    }

    else
    {
      if (qword_1025D4280 != -1)
      {
        sub_10187ABE8();
      }

      v9 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67240192;
        LODWORD(v14) = IOHIDEventGetType();
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Received wrong event type %{public}u", &v13, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187C91C(a5);
      }
    }
  }
}

void sub_1003EDDC8(uint64_t a1, void *a2, void *a3, double a4)
{
  if (*(a1 + 402) >= a2)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v8 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      *&buf[4] = a3;
      LOWORD(v11[0]) = 2050;
      *(v11 + 2) = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Skipping stale orientation (%{public}u @ %{public}llu)", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CB28(a3, a2);
    }
  }

  else
  {
    *(a1 + 401) = a3;
    *(a1 + 402) = a2;
    *buf = a4;
    v11[0] = a3;
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v7 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "AOO update: %u", v9, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CC38(a3);
    }

    sub_100013B00(a1, 0, buf, 16);
    sub_100013B00(a1, 1, buf, 16);
  }
}

uint64_t sub_1003EDF8C(void *a1)
{
  v2 = *(a1[7] + 384);
  if (v2)
  {
    result = (*(*v2 + 160))(v2, 32, *(a1[5] + 8) + 48, 1, *(a1[5] + 8) + 48, *(a1[6] + 8) + 24);
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187ABE8();
    }

    v4 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "fHidDeviceInterface NULL", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187CD30();
    }

    result = 4160749568;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void *sub_1003EE0A0(void *a1)
{
  *a1 = off_102450040;
  sub_1003EE180(a1 + 3);
  return a1;
}

void sub_1003EE0E4(void *a1)
{
  sub_1003EE27C(a1);

  operator delete();
}

void sub_1003EE11C(void *a1)
{
  *a1 = off_102450040;
  sub_1003EE180(a1 + 3);

  operator delete();
}

uint64_t sub_1003EE180(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
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

uint64_t sub_1003EE22C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1003EE27C(void *a1)
{
  *a1 = off_102450010;
  a1[20] = off_102450040;
  sub_1003EE180(a1 + 23);
  a1[11] = off_102450040;
  sub_1003EE180(a1 + 14);
  a1[2] = off_102450040;
  sub_1003EE180(a1 + 5);
  return a1;
}

void sub_1003EE3EC(uint64_t a1)
{
  sub_1017E7D44(a1);

  operator delete();
}

const void **sub_1003EE424(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003EE744(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1003EE530(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003EE744(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1003EE638(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003EE744(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1003EE744(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1003EE8EC(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF04())
  {
    byte_102656218 = 1;
  }
}

void sub_1003EEDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EF2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003EF2F0(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    [*(a1 + 32) onP6MWDActivity:activity];
    if (xpc_activity_get_state(activity) == 2 && !xpc_activity_set_state(activity, 4))
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v4 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
      {
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Continue. Current state is %{public}ld", &v13, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187CFA0(activity);
      }
    }
  }

  else
  {
    v5 = xpc_activity_copy_criteria(activity);
    if (!v5)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
    }

    int64 = xpc_dictionary_get_int64(v5, XPC_ACTIVITY_DELAY);
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    if (int64 == v8)
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v9 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: %{public}s activity already scheduled with a delay of %{public}lld seconds", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D1B8();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v11 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v7;
        v13 = 136446466;
        v14 = "com.apple.locationd.P6MWD";
        v15 = 2050;
        state = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: Setting up %{public}s activity with a delay of %{public}lld seconds", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D0C0();
      }

      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, *v7);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

void sub_1003EF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003EF870(uint64_t a1)
{
  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v2 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating bout records", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187D2B0();
  }

  return sub_1003EF91C(*(*(a1 + 32) + 24));
}

uint64_t sub_1003EF91C(char *a1)
{
  if (a1[40])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10187D38C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187D3A0(a1);
    }

    v5 = (*(**(a1 + 3) + 32))(*(a1 + 3), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_10187D4A0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 3) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187D4C8(a1 + 24);
    }

    v9 = *(a1 + 3);
    v10 = *(v9 + 132);
    if (sub_1003F79D8(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10187D4A0();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 3);
        v13 = *(v12 + 132);
        v14 = sub_1003F79D8(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187D5C8(a1 + 3, a1);
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 3) + 32);

    return v16();
  }
}

void sub_1003F0FC0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  v2 = STACK[0x440];
  if (STACK[0x440])
  {
    STACK[0x448] = v2;
    operator delete(v2);
  }

  _Block_object_dispose(&STACK[0x458], 8);
  v3 = STACK[0x488];
  if (STACK[0x488])
  {
    STACK[0x490] = v3;
    operator delete(v3);
  }

  _Block_object_dispose(&STACK[0x4A0], 8);
  v4 = STACK[0x4D0];
  if (STACK[0x4D0])
  {
    STACK[0x4D8] = v4;
    operator delete(v4);
  }

  _Block_object_dispose(&STACK[0x4E8], 8);
  v5 = STACK[0x518];
  if (STACK[0x518])
  {
    STACK[0x520] = v5;
    operator delete(v5);
  }

  _Block_object_dispose(&STACK[0x530], 8);
  v6 = STACK[0x560];
  if (STACK[0x560])
  {
    STACK[0x568] = v6;
    operator delete(v6);
  }

  _Block_object_dispose(&STACK[0x578], 8);
  v7 = STACK[0x5A8];
  if (STACK[0x5A8])
  {
    STACK[0x5B0] = v7;
    operator delete(v7);
  }

  _Block_object_dispose(&STACK[0x5C0], 8);
  v8 = STACK[0x5F0];
  if (STACK[0x5F0])
  {
    STACK[0x5F8] = v8;
    operator delete(v8);
  }

  _Block_object_dispose(&STACK[0x608], 8);
  v9 = STACK[0x638];
  if (STACK[0x638])
  {
    STACK[0x640] = v9;
    operator delete(v9);
  }

  _Block_object_dispose(&STACK[0x650], 8);
  v10 = STACK[0x680];
  if (STACK[0x680])
  {
    STACK[0x688] = v10;
    operator delete(v10);
  }

  _Block_object_dispose(&STACK[0x698], 8);
  v11 = STACK[0x6C8];
  if (STACK[0x6C8])
  {
    STACK[0x6D0] = v11;
    operator delete(v11);
  }

  _Block_object_dispose(&STACK[0x6E0], 8);
  _Block_object_dispose(&STACK[0x700], 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003F118C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1003F11B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F11C8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1003F11EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F1204(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1003F1228(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F1240(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1003F1264(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_1003F127C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1003F1294(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v4 = v3;
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  if ((*(*v2 + 168))(v2, *(*(a1 + 64) + 8) + 48, 0, 0xFFFFFFFFLL, 0, v4, v5) == 109)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v6 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Bout query failed due to device lock", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DBB8();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v7 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0xEEEEEEEEEEEEEEEFLL * ((*(*(*(a1 + 64) + 8) + 56) - *(*(*(a1 + 64) + 8) + 48)) >> 3);
      v9 = 134349056;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Retrieved %{public}lu bout records", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DABC();
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

__n128 sub_1003F1494(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

void sub_1003F14B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || a4)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v32 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = [objc_msgSend(a4 "localizedDescription")];
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "No remote StepCadenceToStrideLength table, error:%s\n", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187DD78(a4);
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Parsing remote StepCadenceToStrideLength table", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DC94();
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = *(*(a1 + 40) + 8);
          [a3 timeIntervalSinceReferenceDate];
          v15 = v14;
          [v12 center];
          v17 = v16;
          v18 = [v12 state];
          [v12 valueOut];
          v20 = v13[7];
          v21 = v13[8];
          if (v20 >= v21)
          {
            v23 = v13[6];
            v24 = v20 - v23;
            v25 = (v20 - v23) >> 5;
            v26 = v25 + 1;
            if ((v25 + 1) >> 59)
            {
              sub_10028C64C();
            }

            v27 = v21 - v23;
            if (v27 >> 4 > v26)
            {
              v26 = v27 >> 4;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              sub_1003E3DA4((v13 + 6), v26);
            }

            v28 = v25;
            v29 = 32 * v25;
            *v29 = v15;
            *(v29 + 8) = v17;
            *(v29 + 16) = v18;
            *(v29 + 24) = v19;
            v22 = 32 * v25 + 32;
            v30 = (v29 - 32 * v28);
            memcpy(v30, v23, v24);
            v31 = v13[6];
            v13[6] = v30;
            v13[7] = v22;
            v13[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v20 = v15;
            *(v20 + 8) = v17;
            *(v20 + 16) = v18;
            v22 = v20 + 32;
            *(v20 + 24) = v19;
          }

          v13[7] = v22;
        }

        v9 = [a2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F17CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || a4)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v32 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = [objc_msgSend(a4 "localizedDescription")];
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "No StepCadenceToStrideLength table, error:%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187DF5C(a4);
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v8 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Parsing StepCadenceToStrideLength table", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187DE78();
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = *(*(a1 + 40) + 8);
          [a3 timeIntervalSinceReferenceDate];
          v15 = v14;
          [v12 center];
          v17 = v16;
          v18 = [v12 state];
          [v12 valueOut];
          v20 = v13[7];
          v21 = v13[8];
          if (v20 >= v21)
          {
            v23 = v13[6];
            v24 = v20 - v23;
            v25 = (v20 - v23) >> 5;
            v26 = v25 + 1;
            if ((v25 + 1) >> 59)
            {
              sub_10028C64C();
            }

            v27 = v21 - v23;
            if (v27 >> 4 > v26)
            {
              v26 = v27 >> 4;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v26 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              sub_1003E3DA4((v13 + 6), v26);
            }

            v28 = v25;
            v29 = 32 * v25;
            *v29 = v15;
            *(v29 + 8) = v17;
            *(v29 + 16) = v18;
            *(v29 + 24) = v19;
            v22 = 32 * v25 + 32;
            v30 = (v29 - 32 * v28);
            memcpy(v30, v23, v24);
            v31 = v13[6];
            v13[6] = v30;
            v13[7] = v22;
            v13[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v20 = v15;
            *(v20 + 8) = v17;
            *(v20 + 16) = v18;
            v22 = v20 + 32;
            *(v20 + 24) = v19;
          }

          v13[7] = v22;
        }

        v9 = [a2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v9);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F1AE4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  if ((*(*v2 + 168))(v2, *(*(a1 + 56) + 8) + 48, 1.0, v3) == 109)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "WalkingSpeedCal query failed due to device lock", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E158();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * ((*(*(*(a1 + 56) + 8) + 56) - *(*(*(a1 + 56) + 8) + 48)) >> 4);
      v7 = 134349056;
      v8 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Retrieved %{public}lu walkingSpeedCal records", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E05C();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F1CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F1D70;
  v11[3] = &unk_102450228;
  v11[4] = a4;
  v11[5] = a3;
  v8 = *(a1 + 56);
  v14 = *(a1 + 72);
  v9 = *(a1 + 40);
  v13 = v8;
  v12 = v9;
  return [v7 async:v11];
}

void sub_1003F1D70(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v4 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "HealthKit Activity Summary query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E330();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v68 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v69 = [*v3 code];
        *buf = 134349056;
        v88 = v69;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "HealthKit Activity Summary query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E234(v3);
      }
    }
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = *(a1 + 40);
    v72 = [obj countByEnumeratingWithState:&v73 objects:v97 count:16];
    if (v72)
    {
      v71 = *v74;
      do
      {
        v5 = 0;
        do
        {
          if (*v74 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v73 + 1) + 8 * v5);
          [objc_msgSend(v6 "_flightsClimbed")];
          v8 = v7;
          [objc_msgSend(v6 "stepCount")];
          v10 = v9;
          [objc_msgSend(v6 "appleExerciseTime")];
          v12 = v11;
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v13 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v14 = [objc_msgSend(v6 "_startDate")];
            v15 = [objc_msgSend(v6 "_endDate")];
            *buf = 138478851;
            v88 = v14;
            v89 = 2113;
            v90 = v15;
            v91 = 2049;
            v92 = v8;
            v93 = 2049;
            v94 = v10;
            v95 = 2049;
            v96 = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Retrieved activity summary... startDate: %{private}@, endDate: %{private}@, Flights climbed: %{private}f, Step count: %{private}f, Exercise minutes: %{private}f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v64 = [objc_msgSend(v6 "_startDate")];
            v65 = [objc_msgSend(v6 "_endDate")];
            v77 = 138478851;
            v78 = v64;
            v79 = 2113;
            v80 = v65;
            v81 = 2049;
            v82 = v8;
            v83 = 2049;
            v84 = v10;
            v85 = 2049;
            v86 = v12;
            v66 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v66);
            if (v66 != buf)
            {
              free(v66);
            }
          }

          v16 = *(*(a1 + 64) + 8);
          [objc_msgSend(v6 "_startDate")];
          v18 = v17;
          [objc_msgSend(v6 "_endDate")];
          v21 = v16[7];
          v20 = v16[8];
          if (v21 >= v20)
          {
            v23 = v16[6];
            v24 = v21 - v23;
            v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 3);
            v26 = v25 + 1;
            if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v27 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 3);
            if (2 * v27 > v26)
            {
              v26 = 2 * v27;
            }

            if (v27 >= 0x555555555555555)
            {
              v28 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_1001AB518((v16 + 6), v28);
            }

            v29 = 24 * v25;
            *v29 = v18;
            *(v29 + 8) = v19;
            *(v29 + 16) = v8;
            v22 = 24 * v25 + 24;
            v30 = 24 * v25 - v24;
            memcpy((v29 - v24), v23, v24);
            v31 = v16[6];
            v16[6] = v30;
            v16[7] = v22;
            v16[8] = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v21 = v18;
            *(v21 + 1) = v19;
            v22 = (v21 + 24);
            *(v21 + 2) = v8;
          }

          v16[7] = v22;
          v32 = *(*(a1 + 72) + 8);
          [objc_msgSend(v6 "_startDate")];
          v34 = v33;
          [objc_msgSend(v6 "_endDate")];
          v37 = v32[7];
          v36 = v32[8];
          if (v37 >= v36)
          {
            v39 = v32[6];
            v40 = v37 - v39;
            v41 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v39) >> 3);
            v42 = v41 + 1;
            if (v41 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v43 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v39) >> 3);
            if (2 * v43 > v42)
            {
              v42 = 2 * v43;
            }

            if (v43 >= 0x555555555555555)
            {
              v44 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v44 = v42;
            }

            if (v44)
            {
              sub_1001AB518((v32 + 6), v44);
            }

            v45 = 24 * v41;
            *v45 = v34;
            *(v45 + 8) = v35;
            *(v45 + 16) = v12;
            v38 = 24 * v41 + 24;
            v46 = 24 * v41 - v40;
            memcpy((v45 - v40), v39, v40);
            v47 = v32[6];
            v32[6] = v46;
            v32[7] = v38;
            v32[8] = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v37 = v34;
            *(v37 + 1) = v35;
            v38 = (v37 + 24);
            *(v37 + 2) = v12;
          }

          v32[7] = v38;
          v48 = *(*(a1 + 80) + 8);
          [objc_msgSend(v6 "_startDate")];
          v50 = v49;
          [objc_msgSend(v6 "_endDate")];
          v53 = v48[7];
          v52 = v48[8];
          if (v53 >= v52)
          {
            v55 = v48[6];
            v56 = v53 - v55;
            v57 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v55) >> 3);
            v58 = v57 + 1;
            if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v59 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v55) >> 3);
            if (2 * v59 > v58)
            {
              v58 = 2 * v59;
            }

            if (v59 >= 0x555555555555555)
            {
              v60 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v60 = v58;
            }

            if (v60)
            {
              sub_1001AB518((v48 + 6), v60);
            }

            v61 = 24 * v57;
            *v61 = v50;
            *(v61 + 8) = v51;
            *(v61 + 16) = v10;
            v54 = 24 * v57 + 24;
            v62 = 24 * v57 - v56;
            memcpy((v61 - v56), v55, v56);
            v63 = v48[6];
            v48[6] = v62;
            v48[7] = v54;
            v48[8] = 0;
            if (v63)
            {
              operator delete(v63);
            }
          }

          else
          {
            *v53 = v50;
            *(v53 + 1) = v51;
            v54 = (v53 + 24);
            *(v53 + 2) = v10;
          }

          v48[7] = v54;
          v5 = v5 + 1;
        }

        while (v72 != v5);
        v67 = [obj countByEnumeratingWithState:&v73 objects:v97 count:16];
        v72 = v67;
      }

      while (v67);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F2598;
  v11[3] = &unk_102450228;
  v11[4] = a4;
  v11[5] = a3;
  v8 = *(a1 + 56);
  v14 = *(a1 + 72);
  v9 = *(a1 + 40);
  v13 = v8;
  v12 = v9;
  return [v7 async:v11];
}

void sub_1003F2598(void *a1)
{
  v3 = (a1 + 4);
  v2 = a1[4];
  v62 = a1;
  if (!v2)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = a1[5];
    v61 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
    if (!v61)
    {
      goto LABEL_69;
    }

    v60 = *v68;
    while (1)
    {
      v5 = 0;
      do
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v67 + 1) + 8 * v5);
        v7 = [objc_msgSend(objc_msgSend(v6 "metadata")];
        if (qword_1025D4430 != -1)
        {
          sub_10187CF34();
        }

        v8 = qword_1025D4438;
        if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v6 workoutActivityType];
          [objc_msgSend(v6 "startDate")];
          v11 = v10;
          [objc_msgSend(v6 "endDate")];
          *buf = 134284289;
          v81 = v9;
          v82 = 1025;
          v83 = v7;
          v84 = 2049;
          v85 = v11;
          v86 = 2049;
          v87 = v12;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Found workout... Type: %{private}lu, indoor: %{private}d, startTime: %{private}f, endTime: %{private}f", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v51 = [v6 workoutActivityType];
          [objc_msgSend(v6 "startDate")];
          v53 = v52;
          [objc_msgSend(v6 "endDate")];
          v72 = 134284289;
          v73 = v51;
          v74 = 1025;
          v75 = v7;
          v76 = 2049;
          v77 = v53;
          v78 = 2049;
          v79 = v54;
          v55 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }

        v13 = *(v62[8] + 8);
        [objc_msgSend(v6 "startDate")];
        v15 = v14;
        [objc_msgSend(v6 "endDate")];
        v17 = v16;
        v18 = [v6 workoutActivityType];
        v19 = v13[7];
        v20 = v13[8];
        if (v19 >= v20)
        {
          v22 = v13[6];
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v22) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          if (v25 >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            sub_1003F6ABC((v13 + 6), v26);
          }

          v27 = 24 * v23;
          *v27 = v15;
          *(v27 + 8) = v17;
          *(v27 + 16) = v18;
          *(v27 + 20) = v7;
          v21 = 24 * v23 + 24;
          v28 = v13[6];
          v29 = v13[7] - v28;
          v30 = v27 - v29;
          memcpy((v27 - v29), v28, v29);
          v31 = v13[6];
          v13[6] = v30;
          v13[7] = v21;
          v13[8] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v19 = v15;
          *(v19 + 8) = v17;
          *(v19 + 16) = v18;
          v21 = v19 + 24;
          *(v19 + 20) = v7;
        }

        v13[7] = v21;
        [objc_msgSend(v6 "totalDistance")];
        if (v32 > 0.0 && ([v6 workoutActivityType] == 52 || objc_msgSend(v6, "workoutActivityType") == 37))
        {
          [objc_msgSend(v6 "startDate")];
          v34 = v33;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v35 = [v6 workoutEvents];
          v36 = [v35 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v36)
          {
            v37 = *v64;
            v38 = 1;
            v39 = 0.0;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v64 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v41 = *(*(&v63 + 1) + 8 * i);
                if (v38)
                {
                  [objc_msgSend(objc_msgSend(*(*(&v63 + 1) + 8 * i) "dateInterval")];
                  v39 = v39 + v42 - v34;
                }

                [objc_msgSend(objc_msgSend(v41 "dateInterval")];
                v34 = v43;
                v44 = [v41 type];
                if ((0x33u >> (v44 - 1)))
                {
                  v45 = 0x22u >> (v44 - 1);
                }

                else
                {
                  v45 = v38;
                }

                if ((v44 - 1) <= 5)
                {
                  v38 = v45;
                }
              }

              v36 = [v35 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v36);
            if ((v38 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v39 = 0.0;
          }

          [objc_msgSend(v6 "endDate")];
          v39 = v39 + v46 - v34;
LABEL_52:
          v47 = [v6 workoutActivityType];
          v48 = 10;
          if (v47 == 52)
          {
            v48 = 9;
          }

          v49 = *(v62[v48] + 8);
          [objc_msgSend(v6 "totalDistance")];
          sub_1003F2C74((v49 + 48), v39 / v50);
        }

        v5 = v5 + 1;
      }

      while (v5 != v61);
      v56 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
      v61 = v56;
      if (!v56)
      {
        goto LABEL_69;
      }
    }
  }

  if ([v2 code] == 6)
  {
    *(*(a1[7] + 8) + 24) = 1;
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "HealthKit Workout query failed due to device lock", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187E510();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v57 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      v58 = [*v3 code];
      *buf = 134349056;
      v81 = v58;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_ERROR, "HealthKit Workout query encountered error,%{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187E414(v3);
    }
  }

LABEL_69:
  dispatch_group_leave(v62[6]);
}

double *sub_1003F2C74(double *result, double a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (v2)
  {
    v4 = result[1];
    v5 = a2 - v4;
    v6 = v4 + (a2 - v4) / v3;
    v7 = result[3];
    result[1] = v6;
    result[2] = v6;
    v8 = v7 + v5 * (a2 - v6);
    result[3] = v8;
    result[4] = v8;
  }

  else
  {
    result[1] = a2;
    result[2] = a2;
    result[3] = 0.0;
  }

  return result;
}

id sub_1003F2CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003F2D60;
  v9[3] = &unk_1024502A0;
  v9[4] = a4;
  v9[5] = a3;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  return [v7 async:v9];
}

void sub_1003F2D60(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v4 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "HealthKit Stand Hour query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E6F0();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v34 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v35 = [*v3 code];
        *buf = 134349056;
        v48 = *&v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "HealthKit Stand Hour query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E5F4(v3);
      }
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v5)
    {
      v6 = *v38;
      do
      {
        v7 = 0;
        do
        {
          if (*v38 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v37 + 1) + 8 * v7);
          v9 = [v8 value];
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v10 = 1.0 - v9;
          v11 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v12 = [objc_msgSend(v8 "startDate")];
            v13 = [objc_msgSend(v8 "endDate")];
            *buf = 134284035;
            v48 = v10;
            v49 = 2113;
            v50 = v12;
            v51 = 2113;
            v52 = v13;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Retrieved sample... Stand hour: %{private}f, startTime: %{private}@, endTime: %{private}@", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v30 = [objc_msgSend(v8 "startDate")];
            v31 = [objc_msgSend(v8 "endDate")];
            v41 = 134284035;
            v42 = v10;
            v43 = 2113;
            v44 = v30;
            v45 = 2113;
            v46 = v31;
            v32 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v32);
            if (v32 != buf)
            {
              free(v32);
            }
          }

          v14 = *(*(a1 + 64) + 8);
          [objc_msgSend(v8 "startDate")];
          v16 = v15;
          [objc_msgSend(v8 "endDate")];
          v19 = v14[7];
          v18 = v14[8];
          if (v19 >= v18)
          {
            v21 = v14[6];
            v22 = v19 - v21;
            v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 3);
            v24 = v23 + 1;
            if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v21) >> 3);
            if (2 * v25 > v24)
            {
              v24 = 2 * v25;
            }

            if (v25 >= 0x555555555555555)
            {
              v26 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              sub_1001AB518((v14 + 6), v26);
            }

            v27 = 24 * v23;
            *v27 = v16;
            *(v27 + 8) = v17;
            *(v27 + 16) = v10;
            v20 = 24 * v23 + 24;
            v28 = 24 * v23 - v22;
            memcpy((v27 - v22), v21, v22);
            v29 = v14[6];
            v14[6] = v28;
            v14[7] = v20;
            v14[8] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v19 = v16;
            *(v19 + 8) = v17;
            v20 = v19 + 24;
            *(v19 + 16) = v10;
          }

          v14[7] = v20;
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v33 = [obj countByEnumeratingWithState:&v37 objects:v53 count:16];
        v5 = v33;
      }

      while (v33);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1003F3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F32F0;
  v10[3] = &unk_1024502F0;
  v10[4] = a4;
  v10[5] = a3;
  v8 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v8;
  return [v7 async:v10];
}

void sub_1003F32F0(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v4 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "HealthKit Flights query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187E8D0();
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v37 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v38 = [*v3 code];
        *buf = 134349056;
        v55 = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "HealthKit Flights query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187E7D4(v3);
      }
    }
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v42 objects:v62 count:16];
    if (v5)
    {
      v6 = *v43;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v42 + 1) + 8 * v7);
          [objc_msgSend(v8 "quantity")];
          v10 = v9;
          if (qword_1025D4430 != -1)
          {
            sub_10187CF34();
          }

          v11 = qword_1025D4438;
          if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
          {
            v12 = [objc_msgSend(v8 "startDate")];
            v13 = [objc_msgSend(v8 "endDate")];
            v14 = [objc_msgSend(v8 "sourceRevision")];
            *buf = 134284291;
            v55 = v10;
            v56 = 2113;
            v57 = v12;
            v58 = 2113;
            v59 = v13;
            v60 = 2113;
            v61 = v14;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Retrieved sample... Flights climbed: %{private}f, startDate: %{private}@, endDate: %{private}@ from %{private}@", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v32 = [objc_msgSend(v8 "startDate")];
            v33 = [objc_msgSend(v8 "endDate")];
            v34 = [objc_msgSend(v8 "sourceRevision")];
            v46 = 134284291;
            v47 = v10;
            v48 = 2113;
            v49 = v32;
            v50 = 2113;
            v51 = v33;
            v52 = 2113;
            v53 = v34;
            v35 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || ![objc_msgSend(objc_msgSend(v8 "sourceRevision")])
          {
            if ([objc_msgSend(objc_msgSend(v8 "sourceRevision")])
            {
              v16 = *(*(a1 + 72) + 8);
              [objc_msgSend(v8 "startDate")];
              v18 = v17;
              [objc_msgSend(v8 "endDate")];
              v21 = v16[7];
              v20 = v16[8];
              if (v21 >= v20)
              {
                v23 = v16[6];
                v24 = v21 - v23;
                v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 3);
                v26 = v25 + 1;
                if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_10028C64C();
                }

                v27 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 3);
                if (2 * v27 > v26)
                {
                  v26 = 2 * v27;
                }

                if (v27 >= 0x555555555555555)
                {
                  v28 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  sub_1001AB518((v16 + 6), v28);
                }

                v29 = 24 * v25;
                *v29 = v18;
                *(v29 + 8) = v19;
                *(v29 + 16) = v10;
                v22 = 24 * v25 + 24;
                v30 = 24 * v25 - v24;
                memcpy((v29 - v24), v23, v24);
                v31 = v16[6];
                v16[6] = v30;
                v16[7] = v22;
                v16[8] = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                *v21 = v18;
                *(v21 + 1) = v19;
                v22 = (v21 + 24);
                *(v21 + 2) = v10;
              }

              v16[7] = v22;
            }
          }

          else
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
            if (qword_1025D4430 != -1)
            {
              sub_10187CF34();
            }

            v15 = qword_1025D4438;
            if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Flights from series 4 watch observed, consider only phone flights", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10187E9B4(&v40, v41);
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v36 = [obj countByEnumeratingWithState:&v42 objects:v62 count:16];
        v5 = v36;
      }

      while (v36);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1003F38EC(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = (a1 + 40);
  if (!xpc_activity_should_defer(*(a1 + 40)))
  {
    goto LABEL_15;
  }

  if (qword_1025D4430 != -1)
  {
    sub_10187CE3C();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to defer activity", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187EAC8();
  }

  if (!xpc_activity_set_state(*v2, 3))
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(*v2);
      *buf = 134349056;
      *&buf[4] = state;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Failed to mark activity as deferred. Current state is %{public}ld", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187EBAC((a1 + 40));
    }

LABEL_15:
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v7 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "At least one required query failed due to device lock. Rescheduling the activity to try again soon.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187ECB0();
      }

      v10 = *(a1 + 48);
      v8 = a1 + 48;
      v9 = v10;
      v11 = *(v8 - 8);
      Current = CFAbsoluteTimeGetCurrent();
      v13 = *(*v8 + 176);
      if (v13 >= XPC_ACTIVITY_INTERVAL_1_HOUR)
      {
        v13 = XPC_ACTIVITY_INTERVAL_1_HOUR;
      }

      [v9 completeActivity:v11 withNextEstimateTime:Current + v13];
      return;
    }

    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 48);
    v16 = *(v14 + 56);
    if (v15 == v16)
    {
      v17 = 1.79769313e308;
    }

    else
    {
      v17 = 1.79769313e308;
      v3 = 0.0;
      do
      {
        v18 = *(v15 + 8);
        if (v18 < v17 && v18 > 0.0)
        {
          v17 = *(v15 + 8);
        }

        v15 += 120;
      }

      while (v15 != v16);
    }

    [*(a1 + 56) timeIntervalSinceReferenceDate];
    v21 = v20;
    v110 = 0;
    v111 = 0;
    __src = 0;
    v22 = *(*(a1 + 80) + 8);
    v23 = *(v22 + 48);
    for (i = *(v22 + 56); v23 != i; v23 += 3)
    {
      v26 = *v23;
      v25 = v23[1];
      v27 = *(*(a1 + 88) + 8);
      v28 = *(v27 + 48);
      v29 = *(v27 + 56);
      v30 = 0.0;
      while (v28 != v29)
      {
        v31 = *v28;
        v32 = v28[1];
        v28 += 3;
        if (v32 <= v25 && v31 >= v26)
        {
          v30 = v30 + 1.0;
        }
      }

      if (v17 >= v25)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v30;
      }

      v35 = v110;
      if (v110 >= v111)
      {
        v37 = __src;
        v38 = v110 - __src;
        v39 = (v110 - __src) >> 5;
        v40 = v39 + 1;
        if ((v39 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v41 = v111 - __src;
        if ((v111 - __src) >> 4 > v40)
        {
          v40 = v41 >> 4;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFE0)
        {
          v40 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          sub_1003F6B14(&__src, v40);
        }

        v42 = (32 * v39);
        *v42 = v26;
        v42[1] = v25;
        v42[2] = v34;
        v42[3] = v30;
        v36 = 32 * v39 + 32;
        memcpy(0, v37, v38);
        v43 = __src;
        __src = 0;
        v110 = v36;
        v111 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v110 = v26;
        v35[1] = v25;
        v36 = (v35 + 4);
        v35[2] = v34;
        v35[3] = v30;
      }

      v110 = v36;
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v44 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
      {
        v45 = *(v110 - 2);
        *buf = 134284289;
        *&buf[4] = v26;
        *&buf[12] = 2049;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        *&buf[24] = v30;
        *&buf[32] = 2048;
        *&buf[34] = v45;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "Hours for day %{private}f - %{private}f, %f (%f)\n", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        v46 = *(v110 - 2);
        *v114 = 134284289;
        *&v114[4] = v26;
        *&v114[12] = 2049;
        *&v114[14] = v25;
        *&v114[22] = 2048;
        *&v114[24] = v30;
        LOWORD(v115) = 2048;
        *(&v115 + 2) = v46;
        v47 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }
      }
    }

    *&v104 = 0;
    DWORD2(v104) = 0;
    *&v106 = 0;
    v105 = 0uLL;
    DWORD2(v106) = 0;
    v108 = 0;
    v107 = 0uLL;
    v48 = sub_100625C4C((*(*(a1 + 96) + 8) + 48), (*(*(a1 + 112) + 8) + 48), (*(*(a1 + 120) + 8) + 48), &v104, *(*(*(a1 + 104) + 8) + 56), *(*(*(a1 + 104) + 8) + 60), *(*(*(a1 + 104) + 8) + 68));
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v49 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283521;
      *&buf[4] = v48;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "Using cadenceStrideLengthOffset of %{private}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CF5C(buf);
      *v114 = 134283521;
      *&v114[4] = v48;
      v81 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v81);
      if (v81 != buf)
      {
        free(v81);
      }
    }

    v103 = 0.0;
    v50 = sub_1000206B4();
    sub_100023B78(v50, @"PredictedWalkDistanceResetDate", &v103);
    if (qword_1025D4430 != -1)
    {
      sub_10187CF34();
    }

    v51 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v103;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "p6MWD lastResetTime, %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187CF5C(buf);
      *v114 = 134217984;
      *&v114[4] = v103;
      v82 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }

    if (*(*(*(a1 + 128) + 8) + 24) == 1)
    {
      v52 = *(*(a1 + 48) + 40);
      v53 = v103;
      v54 = *(*(a1 + 72) + 8);
      v101 = 0;
      v102 = 0;
      v100 = 0;
      sub_1003F6B5C(&v100, *(v54 + 48), *(v54 + 56), 0xEEEEEEEEEEEEEEEFLL * ((*(v54 + 56) - *(v54 + 48)) >> 3));
      v55 = *(*(a1 + 136) + 8);
      v56 = *(*(a1 + 144) + 8);
      v57 = *(*(a1 + 152) + 8);
      v58 = *(*(a1 + 160) + 8);
      v98 = 0;
      v99 = 0;
      __p = 0;
      sub_1003F6C7C(&__p, *(v58 + 48), *(v58 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v58 + 56) - *(v58 + 48)) >> 3));
      sub_100F7AAF8(v52, &v100, (v55 + 48), (v56 + 48), (v57 + 48), &__src, &__p, (*(*(a1 + 104) + 8) + 48), buf, v53, v21, v48);
      v84 = *buf;
      v59 = *&buf[16];
      v125 = *&buf[20];
      v126[0] = *&buf[36];
      *(v126 + 12) = *&buf[48];
      v60 = v128;
      v121 = v137;
      v122 = v138;
      v123 = v139;
      v124 = v140;
      v117 = v133;
      v118 = v134;
      v119 = v135;
      v120 = v136;
      *v114 = v129;
      *&v114[16] = v130;
      v115 = v131;
      v116 = v132;
      if (__p)
      {
        v98 = __p;
        operator delete(__p);
      }

      v61 = v100;
      if (!v100)
      {
        goto LABEL_87;
      }

      v101 = v100;
    }

    else
    {
      v62 = *(*(a1 + 48) + 40);
      v63 = v103;
      v64 = *(*(a1 + 72) + 8);
      v95 = 0;
      v96 = 0;
      v94 = 0;
      sub_1003F6B5C(&v94, *(v64 + 48), *(v64 + 56), 0xEEEEEEEEEEEEEEEFLL * ((*(v64 + 56) - *(v64 + 48)) >> 3));
      v65 = *(*(a1 + 80) + 8);
      v66 = *(*(a1 + 144) + 8);
      v67 = *(*(a1 + 152) + 8);
      v68 = *(*(a1 + 160) + 8);
      v92 = 0;
      v93 = 0;
      v91 = 0;
      sub_1003F6C7C(&v91, *(v68 + 48), *(v68 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v68 + 56) - *(v68 + 48)) >> 3));
      sub_100F7AAF8(v62, &v94, (v65 + 48), (v66 + 48), (v67 + 48), &__src, &v91, (*(*(a1 + 104) + 8) + 48), buf, v63, v21, v48);
      v84 = *buf;
      v59 = *&buf[16];
      v125 = *&buf[20];
      v126[0] = *&buf[36];
      *(v126 + 12) = *&buf[48];
      v60 = v128;
      v121 = v137;
      v122 = v138;
      v123 = v139;
      v124 = v140;
      v117 = v133;
      v118 = v134;
      v119 = v135;
      v120 = v136;
      *v114 = v129;
      *&v114[16] = v130;
      v115 = v131;
      v116 = v132;
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      v61 = v94;
      if (!v94)
      {
        goto LABEL_87;
      }

      v95 = v94;
    }

    operator delete(v61);
LABEL_87:
    if (v59 == 1)
    {
      [*(a1 + 48) writeToHealthKitPrediction:SDWORD2(v106) > 12 estimateTime:v60 earliestTimeUsed:v84 calibrationStatus:?];
      v69 = v84;
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CF34();
      }

      v70 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = v59;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_INFO, "Weekly p6MWD estimate unavailable, status %{public}d\n", buf, 8u);
      }

      v71 = sub_10000A100(121, 2);
      v69 = v84;
      if (v71)
      {
        sub_10187CF5C(buf);
        LODWORD(v112[0]) = 67240192;
        DWORD1(v112[0]) = v59;
        v83 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion getSixMinuteWalkDistancePrediction:]_block_invoke", "%s\n", v83);
        if (v83 != buf)
        {
          free(v83);
        }

        v69 = v84;
      }
    }

    *buf = v69;
    *&buf[16] = v59;
    *&buf[20] = v125;
    *&buf[36] = v126[0];
    *&buf[48] = *(v126 + 12);
    v128 = v60;
    v137 = v121;
    v138 = v122;
    v139 = v123;
    v140 = v124;
    v133 = v117;
    v134 = v118;
    v135 = v119;
    v136 = v120;
    v129 = *v114;
    v130 = *&v114[16];
    v131 = v115;
    v132 = v116;
    v112[2] = v106;
    v112[3] = v107;
    v113 = v108;
    v112[0] = v104;
    v112[1] = v105;
    v72 = *(a1 + 176);
    v73 = *(*(a1 + 168) + 8);
    v74 = *(v73 + 64);
    v89[0] = *(v73 + 48);
    v89[1] = v74;
    v90 = *(v73 + 80);
    v75 = *(v72 + 8);
    v76 = *(v75 + 64);
    v87[0] = *(v75 + 48);
    v87[1] = v76;
    v88 = *(v75 + 80);
    v77 = *(*(a1 + 104) + 8);
    v78 = v77[3];
    v79 = v77[4];
    *&v86[12] = *(v77 + 92);
    v80 = *(a1 + 48);
    v85[0] = v78;
    v85[1] = v79;
    *v86 = v77[5];
    [v80 sendAnalyticsWeeklyEstimate:buf strideCalInfo:v112 walkingWorkoutPaceStats:v89 runningWorkoutPaceStats:v87 userInfo:v85];
    [*(a1 + 48) completeActivity:*(a1 + 40) withNextEstimateTime:CFAbsoluteTimeGetCurrent() + *(*(a1 + 48) + 176)];
    if (__src)
    {
      v110 = __src;
      operator delete(__src);
    }
  }
}

void sub_1003F462C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F4820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F4B8C(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v3 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "saveObjects successfully pushed 6MWD update", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187EFB0();
    }
  }

  else
  {
    if (qword_1025D4430 != -1)
    {
      sub_10187CE3C();
    }

    v5 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "saveObjects failed to insert a 6MWD sample, error, %{public}@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10187EEB8();
    }
  }
}

uint64_t sub_1003F5018(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  (*(*a1 + 120))(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_1003F50E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1003F5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_msgSend(*(a1 + 32) "universe")];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003F56CC;
  v18[3] = &unk_1024503A8;
  v18[4] = a4;
  v18[5] = a3;
  v8 = *(a1 + 264);
  v9 = *(a1 + 280);
  v32 = *(a1 + 248);
  v33 = v8;
  v34 = v9;
  v31 = *(a1 + 232);
  v27 = *(a1 + 168);
  v28 = *(a1 + 184);
  v29 = *(a1 + 200);
  v30 = *(a1 + 216);
  v23 = *(a1 + 104);
  v24 = *(a1 + 120);
  v25 = *(a1 + 136);
  v26 = *(a1 + 152);
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  v22 = *(a1 + 88);
  v10 = *(a1 + 344);
  v37 = *(a1 + 328);
  v38 = v10;
  v11 = *(a1 + 312);
  v35 = *(a1 + 296);
  v36 = v11;
  v39 = *(a1 + 360);
  v12 = *(a1 + 384);
  v40 = *(a1 + 368);
  v41 = v12;
  v13 = *(a1 + 400);
  v14 = *(a1 + 440);
  v15 = *(a1 + 424);
  v43 = *(a1 + 408);
  v44 = v15;
  v42 = v13;
  v45 = v14;
  *(v48 + 12) = *(a1 + 492);
  v16 = *(a1 + 480);
  v47 = *(a1 + 464);
  v48[0] = v16;
  v46 = *(a1 + 448);
  v18[6] = *(a1 + 32);
  return [v7 async:v18];
}

void sub_1003F56CC(int32x2_t *a1)
{
  __src = 0;
  v44 = 0;
  v45 = 0;
  v2 = a1[4];
  if (v2)
  {
    if ([v2 code] == 6)
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v3 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Prediction history query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187CF5C(buf);
        LOWORD(v47) = 0;
        v4 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLPredictedWalkDistanceServiceCompanion sendAnalyticsWeeklyEstimate:strideCalInfo:walkingWorkoutPaceStats:runningWorkoutPaceStats:userInfo:]_block_invoke", "%s\n", v4);
        goto LABEL_39;
      }
    }

    else
    {
      if (qword_1025D4430 != -1)
      {
        sub_10187CE3C();
      }

      v30 = qword_1025D4438;
      if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_ERROR))
      {
        v31 = [*&a1[4] code];
        *buf = 134349056;
        v50 = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_ERROR, "Prediction history query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10187CF5C(buf);
        v32 = [*&a1[4] code];
        v47 = 134349056;
        v48 = v32;
        v4 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "[CLPredictedWalkDistanceServiceCompanion sendAnalyticsWeeklyEstimate:strideCalInfo:walkingWorkoutPaceStats:runningWorkoutPaceStats:userInfo:]_block_invoke", "%s\n", v4);
LABEL_39:
        if (v4 != buf)
        {
          free(v4);
        }
      }
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v5 = a1[5];
    v6 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v6)
    {
      v7 = *v40;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v39 + 1) + 8 * i);
          [objc_msgSend(v9 "quantity")];
          v11 = v10;
          [objc_msgSend(v9 "startDate")];
          v13 = v12;
          [objc_msgSend(v9 "endDate")];
          v15 = v44;
          if (v44 >= v45)
          {
            v17 = __src;
            v18 = v44 - __src;
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __src) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v45 - __src) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v45 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v45 - __src) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              sub_1001AB518(&__src, v21);
            }

            v22 = (8 * ((v44 - __src) >> 3));
            *v22 = v13;
            v22[1] = v14;
            v22[2] = v11;
            v16 = 24 * v19 + 24;
            v23 = (24 * v19 - v18);
            memcpy(v22 - v18, v17, v18);
            v24 = __src;
            __src = v23;
            v44 = v16;
            v45 = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v44 = v13;
            *(v15 + 1) = v14;
            v16 = (v15 + 24);
            *(v15 + 2) = v11;
          }

          v44 = v16;
        }

        v6 = [v5 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v6);
    }

    v25 = __src;
    v26 = v44;
    if ((__src == v44 || *(v44 - 3) != *&a1[7]) && a1[9].i32[0] == 1)
    {
      v27 = a1[7];
      v28 = a1[15];
      if (v44 >= v45)
      {
        v33 = v44 - __src;
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v44 - __src) >> 3);
        v35 = v34 + 1;
        if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v45 - __src) >> 3) > v35)
        {
          v35 = 0x5555555555555556 * ((v45 - __src) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v45 - __src) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        if (v35)
        {
          sub_1001AB518(&__src, v35);
        }

        v36 = (8 * ((v44 - __src) >> 3));
        *v36 = v27;
        v36[1] = v27;
        v36[2] = v28;
        v29 = 24 * v34 + 24;
        v37 = v36 - v33;
        memcpy(v36 - v33, v25, v33);
        v38 = __src;
        __src = v37;
        v44 = v29;
        v45 = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v44 = v27;
        *(v26 + 1) = v27;
        v29 = (v26 + 24);
        *(v26 + 2) = v28;
      }

      v44 = v29;
    }
  }

  sub_100626FA4(&a1[7], &a1[39], &__src, &a1[48], &a1[53], a1 + 58, buf);
  [*&a1[6] sendToCoreAnalyticsWeeklyEstimate:buf];
  if (__src)
  {
    v44 = __src;
    operator delete(__src);
  }
}

void sub_1003F5C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F5F88(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

NSDictionary *sub_1003F5FBC(uint64_t a1)
{
  v39[0] = @"weeklyEstimateStatus";
  v40[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 8)];
  v39[1] = @"numBouts";
  v40[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 12)];
  v39[2] = @"numBoutsTimeWStepsGreater300";
  v40[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 16)];
  v39[3] = @"numBoutsTimeWStepsGreater330";
  v40[3] = [NSNumber numberWithInt:*(*(a1 + 32) + 20)];
  v39[4] = @"pRaw";
  LODWORD(v2) = *(*(a1 + 32) + 24);
  v40[4] = [NSNumber numberWithFloat:v2];
  v39[5] = @"pSpeed";
  LODWORD(v3) = *(*(a1 + 32) + 28);
  v40[5] = [NSNumber numberWithFloat:v3];
  v39[6] = @"pActivity";
  LODWORD(v4) = *(*(a1 + 32) + 32);
  v40[6] = [NSNumber numberWithFloat:v4];
  v39[7] = @"pDistance";
  LODWORD(v5) = *(*(a1 + 32) + 36);
  v40[7] = [NSNumber numberWithFloat:v5];
  v39[8] = @"userGender";
  v40[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 40)];
  v39[9] = @"userAge_bin";
  v6 = *(*(a1 + 32) + 44);
  v35 = 0;
  v36 = 0;
  v34 = 0;
  sub_10038EB38(&v34, qword_102656228, qword_102656230, (qword_102656230 - qword_102656228) >> 2);
  sub_1003F6558(&v34, v37, v6);
  if (v38 >= 0)
  {
    v7 = v37;
  }

  else
  {
    v7 = v37[0];
  }

  v40[9] = [NSString stringWithUTF8String:v7];
  v39[10] = @"userHeight_bin";
  v8 = *(*(a1 + 32) + 52);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  sub_10038EB38(&v29, qword_102656248, qword_102656250, (qword_102656250 - qword_102656248) >> 2);
  sub_1003F6558(&v29, v32, v8);
  if (v33 >= 0)
  {
    v9 = v32;
  }

  else
  {
    v9 = v32[0];
  }

  v40[10] = [NSString stringWithUTF8String:v9];
  v39[11] = @"userWeight_bin";
  v10 = *(*(a1 + 32) + 48);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_10038EB38(&v24, qword_102656268, qword_102656270, (qword_102656270 - qword_102656268) >> 2);
  sub_1003F6558(&v24, __p, v10);
  if (v28 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v40[11] = [NSString stringWithUTF8String:v11];
  v39[12] = @"numWatchPedometerGPSCalibrations";
  v40[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v39[13] = @"numWalkingSpeedCalibrations";
  v40[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 60)];
  v39[14] = @"userStdDevEstimate";
  LODWORD(v12) = *(*(a1 + 32) + 64);
  v40[14] = [NSNumber numberWithFloat:v12];
  v39[15] = @"userRatioMeanSignedVarMeanAbsVar";
  LODWORD(v13) = *(*(a1 + 32) + 68);
  v40[15] = [NSNumber numberWithFloat:v13];
  v39[16] = @"percentLast13WeeksWithEstimate";
  LODWORD(v14) = *(*(a1 + 32) + 72);
  v40[16] = [NSNumber numberWithFloat:v14];
  v39[17] = @"slopeLast13Weeks";
  LODWORD(v15) = *(*(a1 + 32) + 76);
  v40[17] = [NSNumber numberWithFloat:v15];
  v39[18] = @"timeSinceFirstAvailable";
  LODWORD(v16) = *(*(a1 + 32) + 80);
  v40[18] = [NSNumber numberWithFloat:v16];
  v39[19] = @"numDaysWithSufficientWearTime";
  v40[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v39[20] = @"avgStepsPerDayLast4Weeks";
  LODWORD(v17) = *(*(a1 + 32) + 88);
  v40[20] = [NSNumber numberWithFloat:v17];
  v39[21] = @"avgFlightsPerDayLast4Weeks";
  LODWORD(v18) = *(*(a1 + 32) + 92);
  v40[21] = [NSNumber numberWithFloat:v18];
  v39[22] = @"numWalkingWorkoutsLast4Weeks";
  LODWORD(v19) = *(*(a1 + 32) + 96);
  v40[22] = [NSNumber numberWithFloat:v19];
  v39[23] = @"avgPaceWalkingWorkoutsLast4Weeks";
  LODWORD(v20) = *(*(a1 + 32) + 100);
  v40[23] = [NSNumber numberWithFloat:v20];
  v39[24] = @"avgPaceRunningWorkoutsLast4Weeks";
  LODWORD(v21) = *(*(a1 + 32) + 104);
  v40[24] = [NSNumber numberWithFloat:v21];
  v22 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:25];
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v22;
}

void sub_1003F64B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F6558(uint64_t *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_10038EB38(&v33, *a1, a1[1], (a1[1] - *a1) >> 2);
  v6 = v34 - v33;
  if (v34 == v33)
  {
    if (!v34)
    {
      v9 = *a1;
      if (a1[1] != *a1)
      {
        goto LABEL_30;
      }

LABEL_36:
      sub_10000EC00(a2, "(--inf,inf)");
      return;
    }

    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = v6 >> 2;
    if ((v6 >> 2) <= 1)
    {
      v8 = 1;
    }

    while (v33[v7] < a3)
    {
      if (v8 == ++v7)
      {
        LODWORD(v7) = v8;
        break;
      }
    }
  }

  v34 = v33;
  operator delete(v33);
  v9 = *a1;
  v10 = a1[1];
  if (v10 == *a1)
  {
    goto LABEL_36;
  }

  if (!v7)
  {
LABEL_30:
    std::to_string(&v31, *v9);
    v25 = std::string::insert(&v31, 0, "(--inf,", 7uLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v32, "]", 1uLL);
LABEL_31:
    v27 = *&v13->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
    *a2 = v27;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v31.__r_.__value_.__r.__words[0];
      goto LABEL_35;
    }

    return;
  }

  if ((v10 - *a1) >> 2 == v7)
  {
    std::to_string(&v31, *(v10 - 4));
    v11 = std::string::insert(&v31, 0, "(", 1uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v32, ",inf)", 5uLL);
    goto LABEL_31;
  }

  std::to_string(&v29, v9[v7 - 1]);
  v14 = std::string::insert(&v29, 0, "(", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v30, ",", 1uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(*a1 + 4 * v7));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v31, p_p, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v32, "]", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v22->__r_.__value_.__l + 2);
  *a2 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    v24 = v29.__r_.__value_.__r.__words[0];
LABEL_35:
    operator delete(v24);
  }
}

void sub_1003F6850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F6ABC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1003F6B14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1003F6B5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003F6BD8(result, a4);
  }

  return result;
}

void sub_1003F6BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F6BD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_1003F6C24(a1, a2);
  }

  sub_10028C64C();
}

void sub_1003F6C24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1003F6C7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003F6CF8(result, a4);
  }

  return result;
}

void sub_1003F6CDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F6CF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1003F6ABC(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1003F6D44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10038EBB4(result, a4);
  }

  return result;
}

void sub_1003F6D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003F6E40(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1003F6E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6EB8(uint64_t a1)
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

double sub_1003F6FC0(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1003F7010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F70F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F7140(uint64_t a1)
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

uint64_t sub_1003F7260(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003F7318(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102450640;
  sub_1003F7410((a1 + 3), a2);
  return a1;
}

void sub_1003F7394(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102450640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003F7410(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_10000EC00(__p, "");
  sub_100FFDCAC(a1, v3, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1003F7470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F748C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    if (v5)
    {
      sub_100008080(v5);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = v3;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_10013E290(a1, v12);
    }

    v13 = 24 * v9;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    v8 = 24 * v9 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v13 - v14;
    memcpy((v13 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 0;
    v8 = v6 + 24;
    *(v6 + 16) = 0;
  }

  *(a1 + 8) = v8;
  return a1;
}