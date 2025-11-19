void sub_1004AA754(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 296);
  v5 = floor(*a2 + v4) - (vcvtmd_s64_f64(*a2 + v4) % 3600) - v4;
  v6 = floor(*a2 + 3600.0 + v4) - (vcvtmd_s64_f64(*a2 + 3600.0 + v4) % 3600) - v4;
  if (vabdd_f64(*a2, v5) >= vabdd_f64(*a2, v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(a2 + 16);
  if (v8 == 2)
  {
    v24 = v7 + 3600.0 + -1.0;
    v9 = (a2 + 8);
    if (*(a2 + 8) >= v24)
    {
      v9 = &v24;
    }
  }

  else
  {
    v9 = (a2 + 8);
  }

  v10 = *v9;
  v24 = v7;
  v25 = v10;
  v26 = v8;
  v27 = *(a2 + 20);
  v28 = *(a2 + 24);
  v29 = 0;
  sub_1004AAA2C((a1 + 160), &v24);
  v11 = *(a2 + 16);
  if (v11 > 2)
  {
    if ((v11 - 3) > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  switch(v11)
  {
    case 0:
LABEL_15:
      sub_1004AAAE4(a1);
      break;
    case 1:
      sub_1004AAF64(a1);
      break;
    case 2:
      sub_1004AB0EC(a1);
      break;
  }

LABEL_17:
  if (*(a1 + 200) >= 8uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v12 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,sedentaryTimer", &v24, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895208();
    }

    v13 = *(a1 + 192);
    v14 = *(a1 + 168);
    v15 = (v14 + 8 * (v13 / 0x66));
    if (*(a1 + 176) == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*v15 + 40 * (v13 % 0x66));
    }

    v17 = *(a1 + 200);
    *&v24 = v14 + 8 * (v13 / 0x66);
    v25 = v16;
    sub_1000C5804(&v24, v17);
    v18 = &v25[-**&v24];
    v19 = 0xCCCCCCCCCCCCCCCDLL * (v18 >> 3);
    if (v18 < 321)
    {
      v23 = 109 - v19;
      v21 = (*&v24 - 8 * (v23 / 0x66));
      v22 = (*v21 + 40 * (102 * (v23 / 0x66) - v23) + 4040);
    }

    else
    {
      v20 = v19 - 8;
      v21 = (*&v24 + 8 * (v20 / 0x66));
      v22 = (*v21 + 40 * (v20 % 0x66));
    }

    sub_1004AA4E8((a1 + 160), v15, v16, v21, v22);
  }
}

__n128 sub_1004AAA2C(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1004AC788(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_1004AAAE4(uint64_t *a1)
{
  v2 = a1[21];
  if (a1[22] == v2)
  {
    sub_1004A9CA4(a1);
    v17 = v18;
    v9 = 0;
  }

  else
  {
    v3 = a1[24];
    v4 = v3 + a1[25];
    v5 = *(v2 + 8 * (v4 / 0x66));
    v6 = (v2 + 8 * (v4 / 0x66));
    v7 = v5 + 40 * (v4 % 0x66);
    v8 = *(v2 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
    if (v7 == v8)
    {
      sub_1004A9CA4(a1);
      v17 = v19;
      v9 = v7;
    }

    else
    {
      v9 = v5 + 40 * (v4 % 0x66);
      do
      {
        v10 = v9;
        if (v9 == v5)
        {
          v10 = *(v6 - 1) + 4080;
        }

        v11 = *(v10 - 24);
        v12 = v11 > 4;
        v13 = (1 << v11) & 0x19;
        if (!v12 && v13 != 0)
        {
          break;
        }

        if (v9 == v5)
        {
          v15 = *--v6;
          v5 = v15;
          v9 = v15 + 4080;
        }

        v9 -= 40;
      }

      while (v8 != v9);
      sub_1004A9CA4(a1);
      v17 = v16;
    }

    if (v9 != v8 && v7 == v17)
    {
      a1[36] = a1[35];
      sub_1008AFA98(a1 + 1);
      v20 = v9;
      if (v9 == *v6)
      {
        v20 = *(v6 - 1) + 4080;
      }

      if ((*(v20 - 8) & 1) == 0)
      {
        if (qword_1025D4230 != -1)
        {
          sub_101894CDC();
        }

        v21 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
        {
          v22 = v9;
          if (v9 == *v6)
          {
            v22 = *(v6 - 1) + 4080;
          }

          v23 = *(v22 - 32);
          *buf = 134217984;
          *&buf[4] = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "StandPlus,firing reminder immediately,firedTime,%f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018952EC(v6);
        }

        if (v9 == *v6)
        {
          *(*(v6 - 1) + 4072) = 1;
          v9 = *(v6 - 1) + 4080;
        }

        else
        {
          *(v9 - 8) = 1;
        }

        v29 = *(v9 - 24);
        *buf = *(v9 - 40);
        v32 = v29;
        sub_1004AB4DC(a1, buf);
      }

      return;
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_101894CDC();
  }

  v24 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[21];
    if (a1[22] == v25)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v26 = a1[24];
      v27 = *(v25 + 8 * (v26 / 0x66)) + 40 * (v26 % 0x66);
      v28 = *(v25 + 8 * ((a1[25] + v26) / 0x66)) + 40 * ((a1[25] + v26) % 0x66);
    }

    *buf = 67109376;
    *&buf[4] = v9 == v27;
    *&buf[8] = 1024;
    *&buf[10] = v17 != v28;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "StandPlus,no reminder %d,hour earned %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLStandPlusMinuteEstimator::checkAndFireReminder()", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }
}

uint64_t *sub_1004AAF64(uint64_t *result)
{
  v1 = *(result + 32);
  if (*(result + 35) > v1 + 3600.0)
  {
    v2 = result;
    v3 = result[24];
    v4 = v3 + result[25];
    v5 = result[21];
    v6 = (v5 + 8 * (v4 / 0x66));
    if (result[22] == v5)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v7 = *(v5 + 8 * (v4 / 0x66));
      v8 = v7 + 40 * (v4 % 0x66);
      v9 = *(v5 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
      if (v8 != v9)
      {
        v10 = (v5 + 8 * (v4 / 0x66));
        do
        {
          if (v8 == v7)
          {
            v11 = *--v10;
            v7 = v11;
            if (*(v11 + 4056) == 1)
            {
              break;
            }

            v8 = v7 + 4080;
            v6 = v10;
          }

          else if (*(v8 - 24) == 1)
          {
            break;
          }

          v8 -= 40;
        }

        while (v9 != v8);
      }
    }

    if (v9 != v8)
    {
      result = sub_1004AB3CC(result, *(result + 32), v1 + 3600.0);
      if (v8 == *v6)
      {
        v13 = *(v6 - 1);
        v14 = *(v13 + 4040) == v1 && result == 0;
        if (v14 && (*(v13 + 4072) & 1) == 0)
        {
          *(v13 + 4072) = 1;
          v8 = *(v6 - 1) + 4080;
          goto LABEL_29;
        }
      }

      else
      {
        v12 = *(v8 - 40) == v1 && result == 0;
        if (v12 && (*(v8 - 8) & 1) == 0)
        {
          *(v8 - 8) = 1;
LABEL_29:
          v15 = *(v8 - 24);
          v16[0] = *(v8 - 40);
          v16[1] = v15;
          return sub_1004AB4DC(v2, v16);
        }
      }
    }
  }

  return result;
}

void sub_1004AB0EC(uint64_t a1)
{
  sub_1004A9CA4(a1);
  v3 = v2;
  v4 = *(a1 + 168);
  if (*(a1 + 176) == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 200) + *(a1 + 192);
    v6 = *(v4 + 8 * (v5 / 0x66)) + 40 * (v5 % 0x66);
  }

  if (v6 == v2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v13 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "StandPlus,no hour earned", v16, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895614();
    }
  }

  else
  {
    v7 = v2 + 1;
    if (*(a1 + 280) > *(v2 + 1) && !*(a1 + 152))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v8 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v3;
        v10 = *(v3 + 1);
        *v16 = 134349312;
        *&v16[4] = v9;
        *&v16[12] = 2050;
        *&v16[14] = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "StandPlus,empty minute buffer,forcing minute from early stand hour,startTime,%{public}f,firedTime,%{public}f", v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101895408(v3);
      }

      v12 = *v3;
      v11 = v3[1];
      if (vabdd_f64(v11, *v3) >= 60.0)
      {
        *v16 = v11 + -60.0;
        *&v16[8] = v11;
      }

      else
      {
        *v16 = *v3;
        *&v16[8] = v12 + 60.0;
      }

      sub_1004AB450((a1 + 112), v16);
      sub_1008AFA98((a1 + 8));
    }

    if ((v3[4] & 1) == 0)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894DFC();
      }

      v14 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
      {
        v15 = *v7;
        *v16 = 134217984;
        *&v16[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "StandPlus,firing stand hour immediately,firedTime,%f", v16, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101895520();
      }

      *(v3 + 32) = 1;
      *v16 = *v3;
      *&v16[16] = *(v3 + 1);
      sub_1004AB4DC(a1, v16);
    }
  }
}

uint64_t sub_1004AB3CC(void *a1, double a2, double a3)
{
  v3 = a1[15];
  if (a1[16] == v3)
  {
    return 0;
  }

  v4 = a1[18];
  v5 = (v3 + 8 * (v4 >> 8));
  v6 = *v5;
  v7 = *v5 + 16 * v4;
  v8 = *(v3 + (((a1[19] + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 152) + v4);
  if (v7 == v8)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v10 = *(v7 + 8);
    v11 = v10 >= a2;
    if (v10 >= a3)
    {
      v11 = 0;
    }

    v7 += 16;
    if (v7 - v6 == 4096)
    {
      v12 = v5[1];
      ++v5;
      v6 = v12;
      v7 = v12;
    }

    result = (result + v11);
  }

  while (v7 != v8);
  return result;
}

__n128 sub_1004AB450(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1004AC95C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t *sub_1004AB4DC(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = *(a2 + 4);
      *v10 = 134349568;
      *&v10[4] = v5;
      *&v10[12] = 2050;
      *&v10[14] = v6;
      *&v10[22] = 1026;
      *&v10[24] = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,enforced alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d", v10, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895700(a2);
    }

    v8 = *v3;
    v9 = *(a2 + 1);
    *v10 = *a2;
    *&v10[16] = v9;
    return (*(*v8 + 8))(v8, v10);
  }

  return result;
}

void sub_1004AB618(int64x2_t *a1, uint64_t a2)
{
  sub_1004A9CA4(a1);
  v5 = v4;
  v6 = a1[10].i64[1];
  if (a1[11].i64[0] == v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[12].i64[1] + a1[12].i64[0];
    v8 = *(v6 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  if (v8 == v4)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v18 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a2 + 8);
      *buf = 134349056;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "StandPlus,forcing reset from early stand minute,endTime,%{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189581C();
    }

    v20 = *(a2 + 8);
    *buf = floor(v20 + a1[18].i32[2]) - (vcvtmd_s64_f64(v20 + a1[18].i32[2]) % 3600) - a1[18].i32[2];
    *&buf[8] = floor(v20);
    *&buf[16] = 2;
    buf[20] = 1;
    *&buf[24] = 0;
    v31 = 0;
    sub_1004AAA2C(a1[10].i64, buf);
    v21 = a1[12].i64[0] + a1[12].i64[1];
    v22 = a1[10].i64[1];
    v23 = (v22 + 8 * (v21 / 0x66));
    v24 = *v23;
    v25 = *v23 + 40 * (v21 % 0x66);
    if (a1[11].i64[0] == v22)
    {
      v25 = 0;
    }

    v26 = v25 - v24;
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3);
    if (v26 < 41)
    {
      v5 = v23[-((102 - v27) / 0x66)] + 40 * (102 * ((102 - v27) / 0x66) - (102 - v27)) + 4040;
    }

    else
    {
      v5 = v23[(v27 - 1) / 0x66] + 40 * ((v27 - 1) % 0x66);
    }
  }

  else
  {
    v9 = *v4 + 60.0;
    if (v4[1] >= v9)
    {
      v9 = v4[1];
    }

    if (v9 < floor(*(*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0] + 8)))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v10 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v5 + 8);
        v12 = *(*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0] + 8);
        *buf = 134349312;
        *&buf[4] = v11;
        *&buf[12] = 2050;
        *&buf[14] = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "StandPlus,forcing minute from early stand hour,%{public}f,endTime,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_101894DFC();
        }

        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLStandPlusMinuteEstimator::checkAndFireResetWithMinute(const CLStandPlusMinute &)", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v13 = *(v5 + 8);
      v14 = (*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0]);
      if (vabdd_f64(v13, v14[1]) >= 60.0)
      {
        v28 = *v5;
        if (vabdd_f64(v13, *v5) >= 60.0)
        {
          *buf = v13 + -60.0;
          *&buf[8] = v13;
        }

        else
        {
          *buf = *v5;
          *&buf[8] = v28 + 60.0;
        }

        sub_1004ABB34(a1 + 7, buf);
      }

      else
      {
        v15 = v13 + -60.0;
        v16 = *v5;
        if (*v5 >= v15)
        {
          v15 = *v5;
        }

        *v14 = v15;
        v17 = v16 + 60.0;
        if (v16 + 60.0 < *(v5 + 8))
        {
          v17 = *(v5 + 8);
        }

        v14[1] = v17;
      }
    }
  }

  if ((*(v5 + 32) & 1) == 0)
  {
    *(v5 + 32) = 1;
    *buf = *v5;
    *&buf[16] = *(v5 + 16);
    sub_1004AB4DC(a1->i64, buf);
  }
}

int64x2_t sub_1004ABB34(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1004ACB30(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

uint64_t sub_1004ABBB4(uint64_t a1, unint64_t a2, __int128 *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a2)
  {
    sub_1004ABC04(a1, a2, a3);
  }

  return a1;
}

void *sub_1004ABC04(void *a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 170 * ((v7 - v6) >> 3) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  v11 = a2 > v10;
  v12 = a2 - v10;
  if (v11)
  {
    sub_1004ABD60(a1, v12);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v13 = (v6 + 8 * (v9 / 0xAA));
  if (v7 == v6)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 24 * (v9 % 0xAA);
    v15 = v14;
  }

  v23 = v13;
  v24 = v15;
  result = sub_1000C9AF4(&v23, a2);
  v17 = v24;
  if (v14 != v24)
  {
    v18 = v23;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4080;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3;
          *(v20 + 16) = *(a3 + 2);
          *v20 = v21;
          v20 += 24;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x5555555555555555 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v22 = v13[1];
      ++v13;
      v14 = v22;
    }

    while (v22 != v17);
  }

  return result;
}

void *sub_1004ABD60(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = result[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 170 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_1004AC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AC0A4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 170;
  }

  a1[4] = v6;
}

uint64_t sub_1004AC150(void **a1, uint64_t a2)
{
  sub_1004AC0A4(a1);
  sub_1004AC1A0(a1);
  result = sub_1004AC37C(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1004AC1A0(void **a1)
{
  if (a1[5])
  {
    sub_10027E208(a1, 0);
    sub_1004AC224(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_1004AC29C(a1);
}

uint64_t sub_1004AC224(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1004AC29C(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1004AC37C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1004AC29C(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t sub_1004AC3E4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
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
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

__n128 sub_1004AC444@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1004AC514(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4080;
    }

    v12 = *v17 + 4080;
    v11 = a2;
  }

  sub_1004AC514(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1004AC514@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (&a4[-v10] >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - a1) >> 3);
      }

      v11 -= 40 * v12;
      a4 -= 40 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 40 * v12 - 7);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 4080);
    }

    if ((*v6 + 4080) == a4)
    {
      v15 = v6[1];
      ++v6;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_1004AC604(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = (*a1 + 4080); ; i = v12 + 4080)
    {
      sub_1004AC6A8(a2, v8, i, v7, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_1004AC6A8(a2, v8, a4, v7, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

void *sub_1004AC6A8@<X0>(_BYTE *__src@<X1>, char *__dst@<X4>, _BYTE *a3@<X2>, void **a4@<X3>, void *a5@<X8>)
{
  v6 = a4;
  v7 = __src;
  if (__src != a3)
  {
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v7) >> 3);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        result = memmove(__dst, v7, v13 - 7);
      }

      v7 += 8 * v12;
      if (v7 == a3)
      {
        break;
      }

      v15 = *v6++;
      v10 = v15;
      __dst = v15;
    }

    __dst += v13;
    if (*(v6 - 1) + 4080 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = v7;
  a5[1] = v6;
  a5[2] = __dst;
  return result;
}

void *sub_1004AC788(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1004AC910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004AC95C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1004ACAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_1004ACB30(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_10045E858(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10045E538(a1, v11);
}

void sub_1004ACD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004ACD78(void *a1)
{
  *a1 = 0x10000000000;
  sub_10082C208(a1 + 129, &off_1024572B0);
  return a1;
}

unsigned __int16 *sub_1004ACDB8(unsigned __int16 *a1, char a2, float a3)
{
  result = sub_10082C20C(a1 + 516, a3);
  if ((a2 & 1) == 0)
  {
    v7 = a1[1];
    v8 = *(a1 + 1);
    v9 = *a1;
    if (v9 + v7 >= v8)
    {
      v10 = *(a1 + 1);
    }

    else
    {
      v10 = 0;
    }

    *&a1[2 * (v9 + v7 - v10) + 4] = v6;
    if (v8 <= v7)
    {
      if (v9 + 1 < v8)
      {
        LOWORD(v8) = 0;
      }

      *a1 = v9 + 1 - v8;
    }

    else
    {
      a1[1] = v7 + 1;
    }
  }

  return result;
}

unsigned __int16 *sub_1004ACE40(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 3288);
  sub_100AEA7C8((a2 + 32), v10);
  sub_1004ACED8(v10, v11);
  v4 = sub_10011FB70(v11, (a2 + 8));
  v6 = v5;
  v8 = v7;
  sub_1004ACDB8(a1, *(a1 + 3288), v4);
  sub_1004ACDB8((a1 + 1096), *(a1 + 3288), v6);
  return sub_1004ACDB8((a1 + 2192), *(a1 + 3288), v8);
}

float *sub_1004ACED8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = 0;
    do
    {
      v6 = sub_10011AECC(a1, v4, v5);
      result = sub_1004ACF54(a2, v5, v4);
      *result = v6;
      ++v5;
    }

    while (v5 != 3);
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_1004ACF54(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_101895C94(a2);
  }

  if (a3 >= 3)
  {
    sub_101895DC0(a3);
  }

  return a1 + 4 * (a2 + 3 * a3);
}

BOOL sub_1004ACFB8()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_1004ACFD8(uint64_t result, int a2, int a3, double a4)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

BOOL sub_1004ACFEC(uint64_t a1, double a2)
{
  sub_1004AD044(a1, a2);
  v4 = *a1;
  if (*a1 == *(a1 + 16))
  {
    *(a1 + 8) = a2;
  }

  if (v4 >= 1)
  {
    *a1 = v4 - 1;
  }

  return v4 > 0;
}

uint64_t sub_1004AD044(double *a1, double a2)
{
  v3 = a1[1];
  v4 = vabdd_f64(a2, v3);
  v5 = a1[3];
  if (v4 < v5)
  {
    return *a1;
  }

  result = *(a1 + 4);
  if (v4 >= v5 * result)
  {
    *a1 = result;
  }

  else
  {
    v7 = vcvtmd_s64_f64(v4 / v5);
    v8 = *a1 + *(a1 + 5) * v7;
    if (v8 >= result)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

    *a1 = result;
    a2 = v3 + v7 * v5;
  }

  a1[1] = a2;
  return result;
}

id sub_1004AD104(double *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *a1), @"value"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a1[1]), @"lastUpdateTime"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a1 + 4)), @"maxAmount"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a1 + 5)), @"refillAmount"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a1[3]), @"refillTime"}];
  return v2;
}

void sub_1004AD1E4(void *a1)
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"maxAmount", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"refillAmount", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"refillTime", "doubleValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"value", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"lastUpdateTime", "doubleValue"}];
  operator new();
}

uint64_t sub_1004AD5BC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v39 = 0;
            v27 = [a2 position] + 4;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 40;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_62;
            }

            v39 = 0;
            v17 = [a2 position] + 4;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 36;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v39 & 0x7F) << v21;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v23;
            }

LABEL_67:
            *(a1 + 12) = v26;
            goto LABEL_85;
          }

          if (v12 != 2)
          {
            goto LABEL_62;
          }

          v39 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 16;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v39 = 0;
          v31 = [a2 position] + 4;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 8;
        }

        else
        {
          if (v12 != 6)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_85;
          }

          v39 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 24;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v39 = 0;
            v29 = [a2 position] + 4;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 20;
            break;
          case 8:
            v39 = 0;
            v33 = [a2 position] + 4;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 28;
            break;
          case 9:
            v39 = 0;
            v13 = [a2 position] + 4;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 32;
            break;
          default:
            goto LABEL_62;
        }
      }

      *(a1 + v37) = v36;
LABEL_85:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004AE64C(uint64_t a1, int a2, char a3, char a4)
{
  result = sub_10015EFE0(a1, a2);
  *result = off_1024572F8;
  *(result + 200) = a3;
  *(result + 201) = a4;
  *(result + 202) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  return result;
}

uint64_t sub_1004AE6A0(void *a1)
{
  *a1 = off_1024572F8;
  sub_1004AE904(a1);
  v2 = a1[27];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_10015AC4C(a1);
}

void sub_1004AE708(void *a1)
{
  sub_1004AE6A0(a1);

  operator delete();
}

void sub_1004AE740(uint64_t a1)
{
  sub_1004AE85C(a1, (a1 + 40));
  if (*(a1 + 201) == 1)
  {
    v3 = *(a1 + 208);
    v2 = (a1 + 208);
    v4 = sub_100FB37E8(v3);
    *(v2 - 6) = v4;
    if (v4)
    {
      if (qword_1025D42C0 != -1)
      {
        sub_101896018();
      }

      v5 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_10026E634(*v2);
        v7 = *(*v2 + 16);
        v8 = *(*v2 + 20);
        v9 = 134349568;
        v10 = v6;
        v11 = 1026;
        v12 = v8;
        v13 = 1026;
        v14 = v7;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath opened,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", &v9, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189602C(v2);
      }
    }
  }
}

void sub_1004AE85C(uint64_t a1, double *a2)
{
  v3 = *(a1 + 208);
  if (!v3)
  {
    v4 = sub_1009B38EC();
    sub_1004AEA30(v4);
  }

  sub_10017A1F4(v3, *a2);
  sub_1009B5D14(*(a1 + 208), sub_1004AEAC8, a1);
}

void sub_1004AE904(uint64_t a1)
{
  *v8 = 0;
  sub_1004AE85C(a1, v8);
  if (*(a1 + 202) == 1)
  {
    v3 = *(a1 + 208);
    v2 = (a1 + 208);
    *(v2 - 6) = 0;
    sub_100FB3A3C(v3);
    if (qword_1025D42C0 != -1)
    {
      sub_101896018();
    }

    v4 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_10026E634(*v2);
      v6 = *(*v2 + 16);
      v7 = *(*v2 + 20);
      *v8 = 134349568;
      *&v8[4] = v5;
      v9 = 1026;
      v10 = v7;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath closed,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", v8, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189613C(v2);
    }
  }
}

void sub_1004AEAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100008080(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AEAC8(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v7 = 0xBFF0000000000000;
  sub_10011E648((&v7 + 8), a2);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = xmmword_101C79540;
  v13 = 0x1FF00000000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_1004AEC68(a5, 0, &v7, xmmword_101C79540))
  {
    sub_10015EB18(a1, &v7);
  }
}

double sub_1004AEB58(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v5 = *(a1 + 208);
  if (v5)
  {
    if (*(a1 + 202) == 1 && (v6 = (*(*v5 + 32))(v5)) != 0)
    {
      v8 = v6;
      sub_1004AEC68(v6, 0, a2, v7);

      CFRelease(v8);
    }

    else
    {

      sub_1005653B0(a1, a2);
    }
  }

  else
  {
    *a2 = 0xBFF0000000000000;
    v10 = 0uLL;
    sub_10011E648(&v10, a3);
    result = *v10.i64;
    *(a2 + 8) = v10;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 96) = 0;
    *(a2 + 36) = 0;
    *(a2 + 52) = 0;
    *(a2 + 44) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

uint64_t sub_1004AEC68(uint64_t a1, int a2, uint64_t a3, float32x4_t a4)
{
  *a3 = 0xBFF0000000000000;
  *buf = 0;
  *&buf[8] = 0;
  sub_10011E648(buf, a4);
  *(a3 + 8) = *buf;
  *(a3 + 96) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  if (a1)
  {
    v48 = 0;
    v49 = 0;
    IOHIDEventGetVendorDefinedData();
    if (v49 && v48 > 0)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v8 = sub_1000080EC(TimeStamp);
      sub_1001F96F0(buf, v49, v48);
      if (buf[0] > 3u)
      {
        if (buf[0] == 4)
        {
          *a3 = v8;
          *v50 = *&buf[12];
          sub_10011E648(v50, *&buf[12]);
          *(a3 + 8) = *v50;
          *&v15 = *&v38[12];
          *(&v15 + 1) = __PAIR64__(*v38, v39);
          *(a3 + 24) = v15;
          *(a3 + 40) = *&v38[4];
          *(a3 + 84) = 2;
          return 1;
        }

        if (buf[0] == 255)
        {
          if (v48 < 1)
          {
            v13 = 0;
          }

          else
          {
            v13 = *v49;
          }

          if (qword_1025D4210 != -1)
          {
            sub_10189624C();
          }

          v32 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
          {
            *v50 = 67109376;
            *&v50[4] = v13;
            *&v50[8] = 2048;
            *&v50[10] = v48;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "Bad device motion report,type,%d,size,%lu", v50, 0x12u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101896274(&v48, v13);
            return 0;
          }

          return result;
        }
      }

      else
      {
        if (buf[0] == 2)
        {
          if (a2 && *&buf[4] != a2)
          {
            return 0;
          }

          *v50 = *v38;
          sub_10011E648(v50, *v38);
          v33 = vsub_f32(*&buf[16], v44);
          v35 = v33;
          v36 = *&buf[24] - v45;
          v16 = sub_10011E6AC(v50);
          v18 = 0;
          v19 = 0.0;
          do
          {
            v19 = v19 + (v35.f32[v18] * v35.f32[v18]);
            ++v18;
          }

          while (v18 != 3);
          v20 = sqrtf(v19);
          _V4.S[1] = v33.i32[1];
          __asm { FMLA            S2, S1, V4.S[1] }

          v27 = v20 * sqrtf(1.0 - (((_S2 + (v16 * v33.f32[0])) / v20) * ((_S2 + (v16 * v33.f32[0])) / v20)));
          v28 = sub_10017C3BC();
          sub_1009BC3C4(v28, v43, fabsf(v27));
          v30 = v29;
          *a3 = v8;
          v34 = *v38;
          sub_10011E648(&v34, *v38);
          *(a3 + 8) = v34;
          *&v31 = v40;
          *(&v31 + 1) = __PAIR64__(*&v38[16], v41);
          *(a3 + 24) = v31;
          *(a3 + 40) = v39;
          *(a3 + 48) = v35;
          *(a3 + 56) = v36;
          *(a3 + 80) = buf[1];
          *(a3 + 60) = v42;
          *(a3 + 64) = v30;
          *(a3 + 68) = v46;
          *(a3 + 76) = v47;
          *(a3 + 81) = 2;
          *(a3 + 82) = *&buf[2];
          *(a3 + 84) = 15;
          *(a3 + 96) = *&buf[4];
          result = 1;
          *(a3 + 88) = 0;
          return result;
        }

        if (buf[0] == 3)
        {
          if (!a2 || *&buf[4] == a2)
          {
            *a3 = v8;
            *v50 = *&buf[12];
            sub_10011E648(v50, *&buf[12]);
            *(a3 + 8) = *v50;
            *&v9 = *&v38[12];
            *(&v9 + 1) = __PAIR64__(*v38, v39);
            *(a3 + 24) = v9;
            *(a3 + 40) = *&v38[4];
            *(a3 + 80) = 511;
            *(a3 + 48) = xmmword_101C79550;
            *(a3 + 64) = -1082130432;
            *(a3 + 82) = *&buf[1];
            *(a3 + 84) = 3;
            *(a3 + 96) = *&buf[4];
            *(a3 + 88) = 0;
            return 1;
          }

          return 0;
        }
      }

      if (qword_1025D42C0 != -1)
      {
        sub_101896394();
      }

      v14 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_FAULT))
      {
        *v50 = 67240192;
        *&v50[4] = buf[0];
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Unexpected device motion report type %{public}d, returning", v50, 8u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018963BC(buf);
        return 0;
      }
    }

    else
    {
      if (qword_1025D42C0 != -1)
      {
        sub_101896394();
      }

      v12 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1018964C8();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D42C0 != -1)
    {
      sub_101896394();
    }

    v10 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#Warning Device motion event ref invalid", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018965C0();
      return 0;
    }
  }

  return result;
}

void *sub_1004AF2B4(void *a1, int *a2, int *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024573A0;
  sub_100FB3618((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void sub_1004AF340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024573A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004B1564(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v64 & 0x7F) << v35;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v37;
            }

LABEL_111:
            v59 = 52;
          }

          else
          {
            if (v12 != 2)
            {
LABEL_106:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_143;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v64 & 0x7F) << v30;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v32;
            }

LABEL_115:
            v59 = 32;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 60) |= 0x20u;
              while (1)
              {
                LOBYTE(v64) = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v64 & 0x7F) << v49;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v10 = v50++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_125;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v51;
              }

LABEL_125:
              v59 = 44;
              break;
            case 4:
              v40 = 0;
              v41 = 0;
              v42 = 0;
              *(a1 + 60) |= 0x10u;
              while (1)
              {
                LOBYTE(v64) = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v64 & 0x7F) << v40;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v10 = v41++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_119;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v42;
              }

LABEL_119:
              v59 = 40;
              break;
            case 5:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 60) |= 0x80u;
              while (1)
              {
                LOBYTE(v64) = 0;
                v22 = [a2 position] + 1;
                if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v21 |= (v64 & 0x7F) << v19;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  LOBYTE(v24) = 0;
                  goto LABEL_121;
                }
              }

              v24 = (v21 != 0) & ~[a2 hasError];
LABEL_121:
              v60 = 56;
LABEL_133:
              *(a1 + v60) = v24;
              goto LABEL_143;
            default:
              goto LABEL_106;
          }
        }
      }

      else
      {
        if (v12 > 8)
        {
          if (v12 == 9)
          {
            *(a1 + 60) |= 1u;
            v64 = 0;
            v56 = [a2 position] + 8;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 8, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v64;
            v62 = 8;
            goto LABEL_142;
          }

          if (v12 == 10)
          {
            *(a1 + 60) |= 2u;
            v64 = 0;
            v47 = [a2 position] + 8;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v64;
            v62 = 16;
            goto LABEL_142;
          }

          if (v12 != 11)
          {
            goto LABEL_106;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v64 & 0x7F) << v25;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              LOBYTE(v24) = 0;
              goto LABEL_132;
            }
          }

          v24 = (v27 != 0) & ~[a2 hasError];
LABEL_132:
          v60 = 57;
          goto LABEL_133;
        }

        if (v12 == 6)
        {
          *(a1 + 60) |= 0x40u;
          LODWORD(v64) = 0;
          v54 = [a2 position] + 4;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 4, v55 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 48) = v64;
          goto LABEL_143;
        }

        if (v12 == 7)
        {
          v64 = 0;
          v45 = [a2 position] + 8;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v64;
          v62 = 24;
LABEL_142:
          *(a1 + v62) = v61;
          goto LABEL_143;
        }

        if (v12 != 8)
        {
          goto LABEL_106;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          LOBYTE(v64) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v64 & 0x7F) << v13;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_129;
          }
        }

        if ([a2 hasError])
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

LABEL_129:
        v59 = 36;
      }

      *(a1 + v59) = v18;
LABEL_143:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004B2F04(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(ALCLMotionActivity);

        *(a1 + 8) = v18;
        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = sub_1004B1564(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 16) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004B3D14(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v42 & 0x7F) << v6;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v12 = 0;
          goto LABEL_16;
        }
      }

      if ([a2 hasError])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

LABEL_16:
      if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
      {
        switch((v12 >> 3))
        {
          case 1u:
            v42 = 0;
            v13 = [a2 position] + 8;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v42;
            goto LABEL_100;
          case 2u:
            v28 = objc_alloc_init(ALActivityOverrideMsg);

            *(a1 + 16) = v28;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004B2F04(v28, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 3u:
            v24 = objc_alloc_init(ALCLBodyMetrics);

            *(a1 + 32) = v24;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004AD5BC(v24, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 4u:
            v26 = objc_alloc_init(ALMotionState);

            *(a1 + 120) = v26;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100490A98(v26, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 5u:
            v19 = objc_alloc_init(ALCLNatalieDataDeprecated);

            *(a1 + 128) = v19;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F8EB10(v19, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 6u:
            v31 = objc_alloc_init(ALCLSedentaryAlarmDataDeprecated);

            *(a1 + 160) = v31;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100E36950(v31, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 7u:
            v34 = objc_alloc_init(ALCLStepCountEntry);

            *(a1 + 184) = v34;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10049B750(v34, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 8u:
            v27 = objc_alloc_init(ALCLStrideCalEntryDeprecated);

            *(a1 + 200) = v27;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1005A617C(v27, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 9u:
            v37 = objc_alloc_init(ALCLSessionCatherine);

            *(a1 + 168) = v37;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10074B858(v37, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xAu:
            v21 = objc_alloc_init(ALCLJacksonData);

            *(a1 + 112) = v21;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100521F14(v21, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xBu:
            v36 = objc_alloc_init(ALCLStrideCalEntry);

            *(a1 + 192) = v36;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100495648(v36, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xCu:
            v18 = objc_alloc_init(ALCLSedentaryAlarmData);

            *(a1 + 152) = v18;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10049F2C0(v18, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xDu:
            v20 = objc_alloc_init(ALCLAllDayHeartRate);

            *(a1 + 24) = v20;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10092D8CC(v20, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xEu:
            v33 = objc_alloc_init(ALCMCalorieDataDeprecated);

            *(a1 + 48) = v33;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100AE1468(v33, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xFu:
            v17 = objc_alloc_init(ALCMCoarseElevationDeprecated);

            *(a1 + 64) = v17;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F32D34(v17, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x10u:
            v25 = objc_alloc_init(ALCMFitnessTracking);

            *(a1 + 96) = v25;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10132EFF4(v25, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x11u:
            v15 = objc_alloc_init(ALCLOdometer);

            *(a1 + 136) = v15;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_101349404(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x12u:
            v29 = objc_alloc_init(ALCLElevationDeprecated);

            *(a1 + 80) = v29;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100BE1E5C(v29, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x13u:
            v35 = objc_alloc_init(ALCLIDSStatus);

            *(a1 + 104) = v35;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1009ED9B4(v35, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x14u:
            v39 = objc_alloc_init(ALCLStairClimbingModel);

            *(a1 + 176) = v39;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100905EFC(v39, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x15u:
            v30 = objc_alloc_init(ALCLRowingModel);

            *(a1 + 144) = v30;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100945890(v30, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x16u:
            v32 = objc_alloc_init(ALCMExerciseMinute);

            *(a1 + 88) = v32;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10115671C(v32, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x17u:
            v38 = objc_alloc_init(ALCMWorkoutEventDeprecated);

            *(a1 + 216) = v38;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F78C7C(v38, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x18u:
            v40 = objc_alloc_init(ALCMElevation);

            *(a1 + 72) = v40;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10046FB5C(v40, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x19u:
            v23 = objc_alloc_init(ALCMCoarseElevation);

            *(a1 + 56) = v23;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1008FBFC0(v23, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x1Au:
            v22 = objc_alloc_init(ALCMCalorieData);

            *(a1 + 40) = v22;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10075C184(v22, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x1Bu:
            v41 = objc_alloc_init(ALCMWorkoutEvent);

            *(a1 + 208) = v41;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1012A221C(v41, a2);
            if (!result)
            {
              return result;
            }

LABEL_99:
            PBReaderRecallMark();
LABEL_100:
            v4 = a2;
            continue;
          default:
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_100;
            }

            return 0;
        }
      }
    }

    return [a2 hasError] ^ 1;
  }
}

void sub_1004B5F3C(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_1004B6340(_Unwind_Exception *a1)
{
  sub_10053700C(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004B6404(void *a1)
{
  v2 = a1 + 4;
  (*(a1[4] + 16))(a1 + 4);
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:*a1 attributes:0, 0];
  }

  v3 = a1[1];
  if (v3)
  {
    [v3 closeFile];
  }

  v4 = [NSFileHandle fileHandleForWritingAtPath:*a1];
  v5 = v4;
  a1[1] = v4;
  if (v4)
  {
    [(NSFileHandle *)v4 seekToEndOfFile];
    if (qword_1025D48A0 != -1)
    {
      sub_101896750();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*a1 UTF8String];
      v8 = a1[1];
      *buf = 136315394;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLActivityLoggerWriter open log file filePath is %s, file is %p.", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189670C(buf);
      [*a1 UTF8String];
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLActivityLoggerWriter::open()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v2 + 24))(v2);
  return v5 != 0;
}

void sub_1004B6680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1004B66B8(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v2 = [*(v1 - 24) offsetInFile];
  (*(*v1 + 24))(v1);
  return v2;
}

void sub_1004B6750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B6764(void *a1, void *a2)
{
  v4 = a1[4];
  v13 = a1 + 4;
  (*(v4 + 16))();
  v15 = 256;
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v5 = [a2 data];
    v6 = [v5 length];
    v12 = v6;
    if (qword_1025D48A0 != -1)
    {
      sub_101896750();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v19 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLActivityLoggerWriter logData, prepare to log %d bytes", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189670C(buf);
      v16 = 67109120;
      v17 = v12;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLActivityLoggerWriter::logData(PBCodable *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v8 = a1[2];
    while (1)
    {
      v9 = (**v8)(v8, v5);
      if (!v9)
      {
        break;
      }

      v8 = *(v8 + 8);
      if (!v8)
      {
        [a1[1] writeData:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v12, 2)}];
        [a1[1] writeData:v5];
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v15)
  {
    pthread_mutex_unlock(v14);
  }

  else
  {
    (*(*v13 + 24))(v13);
  }

  return v9;
}

void sub_1004B6A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B6BBC(uint64_t a1)
{
  [*(a1 + 8) closeFile];

  sub_10053700C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1004B6C7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B6C98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004B6CD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6D00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B6DA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B6DC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B6E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B6EB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6EE0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B71D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B7570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B7688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B79AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B7B20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100710F18(result);

    operator delete();
  }

  return result;
}

void sub_1004B7B6C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018968C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceSubscription::onFenceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018968DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceSubscription::onFenceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004BD1BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1004B7D38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018968C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceSubscription::onBTLEFenceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018968DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceSubscription::onBTLEFenceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004BEA00(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1004B7F08@<X0>(uint64_t a1@<X8>)
{
  v6[0] = off_102457768;
  v6[1] = sub_100157570;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v7, "kCLConnectionMessageRegionState");
  sub_1004BF5CC(&v8, v6);
  v5[0] = off_1024577F8;
  v5[1] = sub_1004B814C;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v9, "kCLConnectionMessageRegionMonitoring");
  sub_1004BF5CC(&v10, v5);
  v4[0] = off_102457768;
  v4[1] = sub_1004BC18C;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v11, "kCLConnectionMessageChangeFencesStateMatchingHandoffTags");
  sub_1004BF5CC(v12, v4);
  sub_1004C0C00(a1, v7, 3);
  for (i = 0; i != -168; i -= 56)
  {
    sub_1004C0818(&v12[i]);
    if (v11[i + 23] < 0)
    {
      operator delete(*&v11[i]);
    }
  }

  sub_1004C0818(v4);
  sub_1004C0818(v5);
  return sub_1004C0818(v6);
}

void sub_1004B80C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = -168;
  v20 = v17;
  do
  {
    v20 = sub_1004BF64C(v20) - 56;
    v19 += 56;
  }

  while (v19);
  sub_1004C0818(&a9);
  sub_1004C0818(&a13);
  sub_1004C0818(&a17);
  _Unwind_Resume(a1);
}

void sub_1004B814C(uint64_t a1, BOOL a2, uint64_t a3)
{
  v196 = a2;
  v5 = objc_alloc_init(NSAutoreleasePool);
  v195 = 0;
  v194 = 0;
  v193 = 1;
  v192 = 1;
  if (sub_10005BBE4(a3, "kCLConnectionMessageRegionTypeKey", &v195))
  {
    if (sub_10001CB4C(a3, "kCLConnectionMessageSubscribeKey", &v196))
    {
      if (sub_1004FBF14(a3, "kCLConnectionMessageNameKey", &v194))
      {
        if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyOnEntryKey", &v193))
        {
          if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyOnExitKey", &v192))
          {
            v191 = 0;
            if (sub_10001CB4C(a3, "kCLConnectionMessageConservativeEntry", &v191 + 1))
            {
              if (sub_10001CB4C(a3, "kCLConnectionMessageEmergencyKey", &v191))
              {
                if (v191 != 1 || (sub_1004BC7F8(a1) & 1) != 0)
                {
                  sub_1000238CC(v194, &v189);
                  sub_10000EC00(&__src, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
                  sub_10000EC00(&__p, "");
                  sub_10000EC00(&__str, "");
                  if (sub_100175094(a3, "kCLConnectionMessageOnBehalfOfKey", &__str))
                  {
                    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      size = __str.__r_.__value_.__l.__size_;
                    }

                    if (size)
                    {
                      if ((sub_1004BC690(a1) & 1) == 0)
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v40 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          v41 = *(a1 + 24);
                          p_p = &__p;
                          if (SHIBYTE(v186) < 0)
                          {
                            p_p = __p;
                          }

                          *buf = 138543618;
                          *&buf[4] = v41;
                          *&buf[12] = 2082;
                          *&buf[14] = p_p;
                          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", buf, 0x16u);
                        }

                        if (sub_10000A100(121, 0))
                        {
                          sub_10189692C(buf);
                          v43 = *(a1 + 24);
                          v44 = &__p;
                          if (SHIBYTE(v186) < 0)
                          {
                            v44 = __p;
                          }

                          LODWORD(v202[0]) = 138543618;
                          *(v202 + 4) = v43;
                          WORD2(v202[1]) = 2082;
                          *(&v202[1] + 6) = v44;
                          v45 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v45);
                          if (v45 != buf)
                          {
                            free(v45);
                          }
                        }

                        goto LABEL_344;
                      }

                      sub_100034EE4(&__str, buf);
                      sub_100037ACC(buf, v202);
                      if (SHIBYTE(v186) < 0)
                      {
                        operator delete(__p);
                      }

                      __p = *v202;
                      v186 = v202[2];
                      HIBYTE(v202[2]) = 0;
                      LOBYTE(v202[0]) = 0;
                      sub_100039BE8(buf);
                    }
                  }

                  else
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v15 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
                    {
                      p_src = &__src;
                      if (v188 < 0)
                      {
                        p_src = __src;
                      }

                      v17 = &v189;
                      if (v190 < 0)
                      {
                        v17 = v189;
                      }

                      *buf = 136381187;
                      *&buf[4] = "kCLConnectionMessageOnBehalfOfKey";
                      *&buf[12] = 2081;
                      *&buf[14] = p_src;
                      *&buf[22] = 2081;
                      *&buf[24] = v17;
                      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't get value for key %{private}s, %{private}s/%{private}s", buf, 0x20u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10189692C(buf);
                      v109 = &__src;
                      if (v188 < 0)
                      {
                        v109 = __src;
                      }

                      v110 = &v189;
                      if (v190 < 0)
                      {
                        v110 = v189;
                      }

                      LODWORD(v202[0]) = 136381187;
                      *(v202 + 4) = "kCLConnectionMessageOnBehalfOfKey";
                      WORD2(v202[1]) = 2081;
                      *(&v202[1] + 6) = v109;
                      HIWORD(v202[2]) = 2081;
                      v203 = v110;
                      v111 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v111);
                      if (v111 != buf)
                      {
                        free(v111);
                      }
                    }
                  }

                  sub_10000EC00(&v181, "");
                  sub_100175094(a3, "kCLConnectionMessageDeviceIDKey", &v181);
                  v18 = v183;
                  if ((v183 & 0x80u) != 0)
                  {
                    v18 = v182;
                  }

                  if (v18)
                  {
                    if ((sub_1004BC8E8(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v28 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v29 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v29;
                        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
                      }

                      if (sub_10000A100(121, 0))
                      {
                        sub_10189692C(buf);
                        v30 = *(a1 + 24);
                        LODWORD(v202[0]) = 138543362;
                        *(v202 + 4) = v30;
                        v31 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v31);
                        if (v31 != buf)
                        {
                          free(v31);
                        }
                      }

                      goto LABEL_342;
                    }

                    v19 = [NSUUID alloc];
                    if ((v183 & 0x80u) == 0)
                    {
                      v20 = &v181;
                    }

                    else
                    {
                      v20 = v181;
                    }

                    v21 = [v19 initWithUUIDString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v20)}];
                  }

                  sub_10000EC00(&v179, "");
                  sub_100175094(a3, "kCLConnectionMessageHandoffTagKey", &v179);
                  v25 = v183;
                  if ((v183 & 0x80u) != 0)
                  {
                    v25 = v182;
                  }

                  if (!v25)
                  {
                    goto LABEL_91;
                  }

                  v26 = HIBYTE(v180);
                  if (v180 < 0)
                  {
                    v26 = *(&v179 + 1);
                  }

                  if (!v26)
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v46 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      v47 = &v189;
                      if (v190 < 0)
                      {
                        v47 = v189;
                      }

                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2082;
                      *&buf[20] = v47;
                      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#FenceHandoff Handoff is empty for a handed of region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }
                    }

                    v48 = qword_1025D4798;
                    if (!os_signpost_enabled(qword_1025D4798))
                    {
                      goto LABEL_340;
                    }

                    v49 = &v189;
                    if (v190 < 0)
                    {
                      v49 = v189;
                    }

                    *buf = 68289282;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2082;
                    *&buf[20] = v49;
                    v50 = "#FenceHandoff Handoff is empty for a handed of region";
                    v51 = "{msg%{public}.0s:#FenceHandoff Handoff is empty for a handed of region, fenceName:%{public, location:escape_only}s}";
                  }

                  else
                  {
LABEL_91:
                    v27 = 0;
                    if (v195 <= 1)
                    {
                      if (v195)
                      {
                        if (v195 != 1)
                        {
LABEL_338:
                          if ((v27 & sub_1000F3B70(a1)) == 1)
                          {
                            sub_1000F3388(a1);
                          }

                          goto LABEL_340;
                        }

LABEL_104:
                        *v197 = 0;
                        v178 = 0;
                        v177 = 0;
                        v176 = 0;
                        v175 = 0;
                        if ((sub_10001CB4C(a3, "kCLConnectionMessageMonitoringNearby", &v175) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v61 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                            _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_340;
                          }

                          sub_10189692C(buf);
                          LODWORD(v202[0]) = 136446210;
                          *(v202 + 4) = "kCLConnectionMessageMonitoringNearby";
                          v62 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                          goto LABEL_468;
                        }

                        v32 = v195;
                        if (v195 == 3 && (sub_1004BC960(a1) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v69 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            v70 = *(a1 + 24);
                            *buf = 138543362;
                            *&buf[4] = v70;
                            _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use significant", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_340;
                          }

                          sub_10189692C(buf);
                          v71 = *(a1 + 24);
                          LODWORD(v202[0]) = 138543362;
                          *(v202 + 4) = v71;
                          v62 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                          goto LABEL_468;
                        }

                        v174 = 0;
                        if ((sub_10001CB4C(a3, "kCLConnectionMessageLowPowerFenceKey", &v174) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v68 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageLowPowerFenceKey";
                            _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_340;
                          }

                          sub_10189692C(buf);
                          LODWORD(v202[0]) = 136446210;
                          *(v202 + 4) = "kCLConnectionMessageLowPowerFenceKey";
                          v62 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                          goto LABEL_468;
                        }

                        if (v174 && (sub_1004BC870(a1) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v75 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            v76 = *(a1 + 24);
                            *buf = 138543362;
                            *&buf[4] = v76;
                            _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use low power fence", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_340;
                          }

                          sub_10189692C(buf);
                          v77 = *(a1 + 24);
                          LODWORD(v202[0]) = 138543362;
                          *(v202 + 4) = v77;
                          v62 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                          goto LABEL_468;
                        }

                        sub_1004F9A30(a1 + 72, a3);
                        *(a1 + 65) = 1;
                        if (*(a1 + 64) == 1)
                        {
                          if (v196)
                          {
                            if ((sub_1000B9370(a3, "kCLConnectionMessageLatitudeKey", v197) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v90 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageLatitudeKey";
                                _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_340;
                              }

                              sub_10189692C(buf);
                              LODWORD(v202[0]) = 136446210;
                              *(v202 + 4) = "kCLConnectionMessageLatitudeKey";
                              v62 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                              goto LABEL_468;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageLongitudeKey", &v178) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v96 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageLongitudeKey";
                                _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_340;
                              }

                              sub_10189692C(buf);
                              LODWORD(v202[0]) = 136446210;
                              *(v202 + 4) = "kCLConnectionMessageLongitudeKey";
                              v62 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                              goto LABEL_468;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageRadiusKey", &v177) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v99 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageRadiusKey";
                                _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_340;
                              }

                              sub_10189692C(buf);
                              LODWORD(v202[0]) = 136446210;
                              *(v202 + 4) = "kCLConnectionMessageRadiusKey";
                              v62 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                              goto LABEL_468;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageDesiredAccuracyKey", &v176) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v108 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageDesiredAccuracyKey";
                                _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_340;
                              }

                              sub_10189692C(buf);
                              LODWORD(v202[0]) = 136446210;
                              *(v202 + 4) = "kCLConnectionMessageDesiredAccuracyKey";
                              v62 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                              goto LABEL_468;
                            }

                            *v173 = 0;
                            if (sub_10005BBE4(a3, "kCLConnectionMessageReferenceFrameKey", v173))
                            {
                              if (qword_1025D4640 != -1)
                              {
                                sub_101896970();
                              }

                              v33 = off_1025D4648;
                              if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                              {
                                if (SHIBYTE(v186) >= 0)
                                {
                                  v34 = &__p;
                                }

                                else
                                {
                                  v34 = __p;
                                }

                                v35 = &__src;
                                if (v188 < 0)
                                {
                                  v35 = __src;
                                }

                                v135 = v35;
                                v136 = v34;
                                v36 = &v189;
                                if (v190 < 0)
                                {
                                  v36 = v189;
                                }

                                v134 = v36;
                                v133 = LocationLogEncryptionDataSize();
                                v37 = LocationLogEncryptionEncryptData();
                                v38 = LocationLogEncryptionDataSize();
                                v39 = LocationLogEncryptionEncryptData();
                                *buf = 68291331;
                                *&buf[4] = 0;
                                *&buf[8] = 2082;
                                *&buf[10] = "";
                                *&buf[18] = 2082;
                                *&buf[20] = v136;
                                *&buf[28] = 2082;
                                *&buf[30] = v135;
                                v209 = 2081;
                                v210 = v134;
                                v211 = 1040;
                                v212 = v133;
                                v213 = 2098;
                                v214 = v37;
                                v215 = 1040;
                                v216 = v38;
                                v217 = 2098;
                                v218 = v39;
                                v219 = 2050;
                                v220 = v177;
                                v221 = 2050;
                                v222 = v176;
                                _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Adding geographic fence, onBehalf:%{public, location:escape_only}s, clientKey:%{public, location:escape_only}s, fenceName:%{private, location:escape_only}s, center.latitude:%{public, location:Encrypted_latitude}.*P, center.longitude:%{public, location:Encrypted_longitude}.*P, radius:%{public}f, desiredAccuracy:%{public}f}", buf, 0x64u);
                              }

                              if (SHIBYTE(v188) < 0)
                              {
                                sub_100007244(&v171, __src, *(&__src + 1));
                              }

                              else
                              {
                                v171 = __src;
                                v172 = v188;
                              }

                              if (SHIBYTE(v190) < 0)
                              {
                                sub_100007244(&v169, v189, *(&v189 + 1));
                              }

                              else
                              {
                                v169 = v189;
                                v170 = v190;
                              }

                              if (SHIBYTE(v186) < 0)
                              {
                                sub_100007244(&v167, __p, *(&__p + 1));
                              }

                              else
                              {
                                v167 = __p;
                                v168 = v186;
                              }

                              if (SHIBYTE(v180) < 0)
                              {
                                sub_100007244(&v165, v179, *(&v179 + 1));
                              }

                              else
                              {
                                v165 = v179;
                                v166 = v180;
                              }

                              sub_100BC8698(buf);
                              if (SHIBYTE(v166) < 0)
                              {
                                operator delete(v165);
                              }

                              if (SHIBYTE(v168) < 0)
                              {
                                operator delete(v167);
                              }

                              if (SHIBYTE(v170) < 0)
                              {
                                operator delete(v169);
                              }

                              if (SHIBYTE(v172) < 0)
                              {
                                operator delete(v171);
                              }

                              if (v193 == 1)
                              {
                                v223 |= 1uLL;
                              }

                              if (v192 == 1)
                              {
                                v223 |= 2uLL;
                              }

                              if (v174)
                              {
                                v223 |= 0x20uLL;
                              }

                              if (v32 == 3)
                              {
                                v223 |= 0x80uLL;
                              }

                              if (HIBYTE(v191) == 1)
                              {
                                v223 |= 4uLL;
                              }

                              if (v191 == 1)
                              {
                                v223 |= 0x10uLL;
                              }

                              if (v175)
                              {
                                v223 |= 0x40uLL;
                              }

                              v224 = *v173;
                              v118 = *(*sub_10005BA08(a1) + 16);
                              sub_1004BF718(v164, buf);
                              [v118 addFence:sub_1004BCF74(v164)];
                              sub_1004BF9B8(v164);
                              sub_100F354F8(a1);
                              goto LABEL_336;
                            }

                            if (qword_1025D4790 != -1)
                            {
                              sub_101896904();
                            }

                            v112 = qword_1025D4798;
                            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                              _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                            }

                            if (!sub_10000A100(121, 0))
                            {
                              goto LABEL_340;
                            }

                            goto LABEL_320;
                          }

                          if (qword_1025D4640 != -1)
                          {
                            sub_101896970();
                          }

                          v78 = off_1025D4648;
                          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                          {
                            v79 = &__p;
                            if (SHIBYTE(v186) < 0)
                            {
                              v79 = __p;
                            }

                            v80 = &__src;
                            if (v188 < 0)
                            {
                              v80 = __src;
                            }

                            v81 = &v189;
                            if (v190 < 0)
                            {
                              v81 = v189;
                            }

                            *buf = 136446723;
                            *&buf[4] = v79;
                            *&buf[12] = 2082;
                            *&buf[14] = v80;
                            *&buf[22] = 2081;
                            *&buf[24] = v81;
                            _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEFAULT, "Removing geographic fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_101896998(buf);
                            v121 = &__p;
                            if (SHIBYTE(v186) < 0)
                            {
                              v121 = __p;
                            }

                            v122 = &__src;
                            if (v188 < 0)
                            {
                              v122 = __src;
                            }

                            v123 = &v189;
                            if (v190 < 0)
                            {
                              v123 = v189;
                            }

                            LODWORD(v202[0]) = 136446723;
                            *(v202 + 4) = v121;
                            WORD2(v202[1]) = 2082;
                            *(&v202[1] + 6) = v122;
                            HIWORD(v202[2]) = 2081;
                            v203 = v123;
                            v124 = _os_log_send_and_compose_impl();
                            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v124);
                            if (v124 != buf)
                            {
                              free(v124);
                            }
                          }

                          if (SHIBYTE(v188) < 0)
                          {
                            sub_100007244(&__dst, __src, *(&__src + 1));
                          }

                          else
                          {
                            __dst = __src;
                            v163 = v188;
                          }

                          if (SHIBYTE(v190) < 0)
                          {
                            sub_100007244(&v160, v189, *(&v189 + 1));
                          }

                          else
                          {
                            v160 = v189;
                            v161 = v190;
                          }

                          if (SHIBYTE(v186) < 0)
                          {
                            sub_100007244(&v158, __p, *(&__p + 1));
                          }

                          else
                          {
                            v158 = __p;
                            v159 = v186;
                          }

                          sub_10005FC54(buf, &__dst, &v160, &v158);
                          if (SHIBYTE(v159) < 0)
                          {
                            operator delete(v158);
                          }

                          if (SHIBYTE(v161) < 0)
                          {
                            operator delete(v160);
                          }

                          if (SHIBYTE(v163) < 0)
                          {
                            operator delete(__dst);
                          }

                          v92 = *(*sub_10005BA08(a1) + 16);
                          sub_1004BF718(v157, buf);
                          [v92 removeFence:sub_1004BCF74(v157)];
                          v93 = v157;
LABEL_335:
                          sub_1004BF9B8(v93);
LABEL_336:
                          sub_1004BF9B8(buf);
                        }

LABEL_337:
                        v27 = 1;
                        goto LABEL_338;
                      }

                      sub_1004BFB14(v202, &__src, &v189, &__p);
                      if (sub_100175094(a3, "kCLConnectionMessageProximityUUIDKey", &v202[1]))
                      {
                        if (sub_1004FB1EC(a3, "kCLConnectionMessageMajorKey", &v204))
                        {
                          if (sub_1004FB1EC(a3, "kCLConnectionMessageMinorKey", &v205))
                          {
                            LODWORD(v178) = 0;
                            if (sub_10005BBE4(a3, "kCLConnectionMessageRegionDefinitionKey", &v178))
                            {
                              v206 = v178 & 7;
                              LOBYTE(v177) = 0;
                              if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v177))
                              {
                                if (v193 == 1)
                                {
                                  v207 |= 1u;
                                }

                                if (v192 == 1)
                                {
                                  v207 |= 2u;
                                }

                                if (v177 == 1)
                                {
                                  v207 |= 4u;
                                }

                                if (HIBYTE(v191) == 1)
                                {
                                  v207 |= 8u;
                                }

                                if (!v196)
                                {
                                  v97 = *(*sub_10005B860(a1) + 16);
                                  v137[0] = _NSConcreteStackBlock;
                                  v137[1] = 3321888768;
                                  v137[2] = sub_1004BD15C;
                                  v137[3] = &unk_102457600;
                                  v53 = v138;
                                  sub_1004C04F8(v138, v202);
                                  [v97 doAsync:v137];
                                  goto LABEL_360;
                                }

                                if (sub_10117DF9C(v202))
                                {
                                  v52 = *(*sub_10005B860(a1) + 16);
                                  v139[0] = _NSConcreteStackBlock;
                                  v139[1] = 3321888768;
                                  v139[2] = sub_1004BD114;
                                  v139[3] = &unk_102457600;
                                  v53 = v140;
                                  sub_1004C04F8(v140, v202);
                                  [v52 doAsync:v139];
                                  sub_100F354F8(a1);
LABEL_360:
                                  sub_10005DB2C(v53);
                                  sub_10005DB2C(v202);
                                  v27 = 1;
                                  goto LABEL_338;
                                }

                                if (qword_1025D4790 != -1)
                                {
                                  sub_101896904();
                                }

                                v100 = qword_1025D4798;
                                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                                {
                                  v101 = &__p;
                                  if (SHIBYTE(v186) < 0)
                                  {
                                    v101 = __p;
                                  }

                                  v102 = &__src;
                                  if (v188 < 0)
                                  {
                                    v102 = __src;
                                  }

                                  v103 = &v189;
                                  if (v190 < 0)
                                  {
                                    v103 = v189;
                                  }

                                  *buf = 136446722;
                                  *&buf[4] = v101;
                                  *&buf[12] = 2082;
                                  *&buf[14] = v102;
                                  *&buf[22] = 2082;
                                  *&buf[24] = v103;
                                  _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_FAULT, "Invalid beacon region request [%{public}s]/%{public}s/%{public}s.", buf, 0x20u);
                                }

                                if (!sub_10000A100(121, 0))
                                {
                                  goto LABEL_300;
                                }

                                sub_10189692C(buf);
                                v104 = &__p;
                                if (SHIBYTE(v186) < 0)
                                {
                                  v104 = __p;
                                }

                                v105 = &__src;
                                if (v188 < 0)
                                {
                                  v105 = __src;
                                }

                                v106 = &v189;
                                if (v190 < 0)
                                {
                                  v106 = v189;
                                }

                                *v197 = 136446722;
                                *&v197[4] = v104;
                                v198 = 2082;
                                v199 = v105;
                                v200 = 2082;
                                v201 = v106;
                                v67 = _os_log_send_and_compose_impl();
                                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                              }

                              else
                              {
                                if (qword_1025D4790 != -1)
                                {
                                  sub_101896904();
                                }

                                v91 = qword_1025D4798;
                                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                                {
                                  *buf = 136446210;
                                  *&buf[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                                  _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                                }

                                if (!sub_10000A100(121, 0))
                                {
                                  goto LABEL_300;
                                }

                                sub_10189692C(buf);
                                *v197 = 136446210;
                                *&v197[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                                v67 = _os_log_send_and_compose_impl();
                                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                              }
                            }

                            else
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v85 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageRegionDefinitionKey";
                                _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_300;
                              }

                              sub_10189692C(buf);
                              *v197 = 136446210;
                              *&v197[4] = "kCLConnectionMessageRegionDefinitionKey";
                              v67 = _os_log_send_and_compose_impl();
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                            }
                          }

                          else
                          {
                            if (qword_1025D4790 != -1)
                            {
                              sub_101896904();
                            }

                            v74 = qword_1025D4798;
                            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "kCLConnectionMessageMinorKey";
                              _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                            }

                            if (!sub_10000A100(121, 0))
                            {
                              goto LABEL_300;
                            }

                            sub_10189692C(buf);
                            *v197 = 136446210;
                            *&v197[4] = "kCLConnectionMessageMinorKey";
                            v67 = _os_log_send_and_compose_impl();
                            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                          }
                        }

                        else
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v73 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageMajorKey";
                            _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_300;
                          }

                          sub_10189692C(buf);
                          *v197 = 136446210;
                          *&v197[4] = "kCLConnectionMessageMajorKey";
                          v67 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                        }
                      }

                      else
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v66 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136446210;
                          *&buf[4] = "kCLConnectionMessageProximityUUIDKey";
                          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_300;
                        }

                        sub_10189692C(buf);
                        *v197 = 136446210;
                        *&v197[4] = "kCLConnectionMessageProximityUUIDKey";
                        v67 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v67);
                      }

                      if (v67 != buf)
                      {
                        free(v67);
                      }

LABEL_300:
                      sub_10005DB2C(v202);
LABEL_340:
                      if (SHIBYTE(v180) < 0)
                      {
                        operator delete(v179);
                      }

LABEL_342:
                      if (v183 < 0)
                      {
                        operator delete(v181);
                      }

LABEL_344:
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v186) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v188) < 0)
                      {
                        operator delete(__src);
                      }

                      if (SHIBYTE(v190) < 0)
                      {
                        operator delete(v189);
                      }

                      goto LABEL_352;
                    }

                    if (v195 != 2)
                    {
                      if (v195 != 3)
                      {
                        goto LABEL_338;
                      }

                      goto LABEL_104;
                    }

                    if ((sub_1004BC780(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v63 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v64 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v64;
                        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

                      sub_10189692C(buf);
                      v65 = *(a1 + 24);
                      LODWORD(v202[0]) = 138543362;
                      *(v202 + 4) = v65;
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    v173[0] = 0;
                    if ((sub_10001CB4C(a3, "kCLConnectionMessageMonitoringNearby", v173) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v72 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                        _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

                      sub_10189692C(buf);
                      LODWORD(v202[0]) = 136446210;
                      *(v202 + 4) = "kCLConnectionMessageMonitoringNearby";
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    if (v173[0] && (sub_1004BC708(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v82 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v83 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v83;
                        _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to monitor while nearby", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

                      sub_10189692C(buf);
                      v84 = *(a1 + 24);
                      LODWORD(v202[0]) = 138543362;
                      *(v202 + 4) = v84;
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    if (*(a1 + 64) != 1)
                    {
                      goto LABEL_337;
                    }

                    if (!v196)
                    {
                      if (qword_1025D4640 != -1)
                      {
                        sub_101896970();
                      }

                      v86 = off_1025D4648;
                      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                      {
                        v87 = &__p;
                        if (SHIBYTE(v186) < 0)
                        {
                          v87 = __p;
                        }

                        v88 = &__src;
                        if (v188 < 0)
                        {
                          v88 = __src;
                        }

                        v89 = &v189;
                        if (v190 < 0)
                        {
                          v89 = v189;
                        }

                        *buf = 136446723;
                        *&buf[4] = v87;
                        *&buf[12] = 2082;
                        *&buf[14] = v88;
                        *&buf[22] = 2081;
                        *&buf[24] = v89;
                        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "Removing geographic polygonal fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101896998(buf);
                        v125 = &__p;
                        if (SHIBYTE(v186) < 0)
                        {
                          v125 = __p;
                        }

                        v126 = &__src;
                        if (v188 < 0)
                        {
                          v126 = __src;
                        }

                        v127 = &v189;
                        if (v190 < 0)
                        {
                          v127 = v189;
                        }

                        LODWORD(v202[0]) = 136446723;
                        *(v202 + 4) = v125;
                        WORD2(v202[1]) = 2082;
                        *(&v202[1] + 6) = v126;
                        HIWORD(v202[2]) = 2081;
                        v203 = v127;
                        v128 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v128);
                        if (v128 != buf)
                        {
                          free(v128);
                        }
                      }

                      if (SHIBYTE(v188) < 0)
                      {
                        sub_100007244(&v146, __src, *(&__src + 1));
                      }

                      else
                      {
                        v146 = __src;
                        v147 = v188;
                      }

                      if (SHIBYTE(v190) < 0)
                      {
                        sub_100007244(&v144, v189, *(&v189 + 1));
                      }

                      else
                      {
                        v144 = v189;
                        v145 = v190;
                      }

                      if (SHIBYTE(v186) < 0)
                      {
                        sub_100007244(&v142, __p, *(&__p + 1));
                      }

                      else
                      {
                        v142 = __p;
                        v143 = v186;
                      }

                      sub_10005FC54(buf, &v146, &v144, &v142);
                      if (SHIBYTE(v143) < 0)
                      {
                        operator delete(v142);
                      }

                      if (SHIBYTE(v145) < 0)
                      {
                        operator delete(v144);
                      }

                      if (SHIBYTE(v147) < 0)
                      {
                        operator delete(v146);
                      }

                      v95 = *(*sub_10005BA08(a1) + 16);
                      sub_1004BF718(v141, buf);
                      [v95 removeFence:sub_1004BCF74(v141)];
                      v93 = v141;
                      goto LABEL_335;
                    }

                    LODWORD(v177) = 0;
                    LODWORD(v176) = 0;
                    *v197 = 0;
                    if ((sub_10005BBE4(a3, "kCLConnectionMessageReferenceFrameKey", &v177) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v94 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                        _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

LABEL_320:
                      sub_10189692C(buf);
                      LODWORD(v202[0]) = 136446210;
                      *(v202 + 4) = "kCLConnectionMessageReferenceFrameKey";
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    if ((sub_10005BBE4(a3, "kCLConnectionMessagePolygonalVerticesCountKey", &v176) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v98 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessagePolygonalVerticesCountKey";
                        _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

                      sub_10189692C(buf);
                      LODWORD(v202[0]) = 136446210;
                      *(v202 + 4) = "kCLConnectionMessagePolygonalVerticesCountKey";
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    if (!sub_1004FC7C8(a3, @"kCLConnectionMessagePolygonalVerticesKey", v197))
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v107 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessagePolygonalVerticesKey";
                        _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_340;
                      }

                      sub_10189692C(buf);
                      LODWORD(v202[0]) = 136446210;
                      *(v202 + 4) = "kCLConnectionMessagePolygonalVerticesKey";
                      v62 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      goto LABEL_468;
                    }

                    if (qword_1025D4640 != -1)
                    {
                      sub_101896970();
                    }

                    v54 = off_1025D4648;
                    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                    {
                      v55 = &__p;
                      if (SHIBYTE(v186) < 0)
                      {
                        v55 = __p;
                      }

                      v56 = &__src;
                      if (v188 < 0)
                      {
                        v56 = __src;
                      }

                      v57 = &v189;
                      if (v190 < 0)
                      {
                        v57 = v189;
                      }

                      *buf = 136446723;
                      *&buf[4] = v55;
                      *&buf[12] = 2082;
                      *&buf[14] = v56;
                      *&buf[22] = 2081;
                      *&buf[24] = v57;
                      _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "Adding geographic polygonal fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101896998(buf);
                      v129 = &__p;
                      if (SHIBYTE(v186) < 0)
                      {
                        v129 = __p;
                      }

                      v130 = &__src;
                      if (v188 < 0)
                      {
                        v130 = __src;
                      }

                      v131 = &v189;
                      if (v190 < 0)
                      {
                        v131 = v189;
                      }

                      LODWORD(v202[0]) = 136446723;
                      *(v202 + 4) = v129;
                      WORD2(v202[1]) = 2082;
                      *(&v202[1] + 6) = v130;
                      HIWORD(v202[2]) = 2081;
                      v203 = v131;
                      v132 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v132);
                      if (v132 != buf)
                      {
                        free(v132);
                      }
                    }

                    v178 = 0;
                    v58 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:*v197 error:&v178];
                    v59 = [(NSArray *)v58 count];
                    if (!v178)
                    {
                      v113 = v59;
                      if (v176 == v59)
                      {
                        if (kCLPolygonalRegionMinVertices <= v176 && kCLPolygonalRegionMaxVertices >= v176)
                        {
                          memset(v202, 0, sizeof(v202));
                          sub_1004BD074(v202, v176);
                          if (v176 >= 1)
                          {
                            v114 = 0;
                            do
                            {
                              [-[NSArray objectAtIndexedSubscript:](v58 objectAtIndexedSubscript:{v114), "coordinate"}];
                              *buf = v115;
                              [-[NSArray objectAtIndexedSubscript:](v58 objectAtIndexedSubscript:{v114), "coordinate"}];
                              *&buf[8] = v116;
                              sub_1004BFA38(v202, buf);
                              ++v114;
                            }

                            while (v114 < v176);
                          }

                          if (SHIBYTE(v188) < 0)
                          {
                            sub_100007244(&v155, __src, *(&__src + 1));
                          }

                          else
                          {
                            v155 = __src;
                            v156 = v188;
                          }

                          if (SHIBYTE(v190) < 0)
                          {
                            sub_100007244(&v153, v189, *(&v189 + 1));
                          }

                          else
                          {
                            v153 = v189;
                            v154 = v190;
                          }

                          if (SHIBYTE(v186) < 0)
                          {
                            sub_100007244(&v151, __p, *(&__p + 1));
                          }

                          else
                          {
                            v151 = __p;
                            v152 = v186;
                          }

                          sub_10000EC00(v149, "");
                          sub_100BC869C(buf, &v155, &v153, &v151, v202, -1, v149, 0, 0);
                          if (v150 < 0)
                          {
                            operator delete(v149[0]);
                          }

                          if (SHIBYTE(v152) < 0)
                          {
                            operator delete(v151);
                          }

                          if (SHIBYTE(v154) < 0)
                          {
                            operator delete(v153);
                          }

                          if (SHIBYTE(v156) < 0)
                          {
                            operator delete(v155);
                          }

                          if (v193 == 1)
                          {
                            v223 |= 1uLL;
                          }

                          if (v192 == 1)
                          {
                            v223 |= 2uLL;
                          }

                          if (HIBYTE(v191) == 1)
                          {
                            v223 |= 4uLL;
                          }

                          if (v173[0])
                          {
                            v223 |= 8uLL;
                          }

                          if (v191 == 1)
                          {
                            v223 |= 0x10uLL;
                          }

                          v224 = v177;
                          v120 = *(*sub_10005BA08(a1) + 16);
                          sub_1004BF718(v148, buf);
                          [v120 addFence:sub_1004BCF74(v148)];
                          sub_1004BF9B8(v148);
                          sub_100F354F8(a1);
                          sub_1004BF9B8(buf);
                          if (v202[0])
                          {
                            v202[1] = v202[0];
                            operator delete(v202[0]);
                          }

                          goto LABEL_337;
                        }

                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v119 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 67240192;
                          *&buf[4] = v176;
                          _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_FAULT, "Number of vertices received invalid, %{public}d, monitoring", buf, 8u);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_340;
                        }

                        sub_10189692C(buf);
                        LODWORD(v202[0]) = 67240192;
                        HIDWORD(v202[0]) = v176;
                        v62 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      }

                      else
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v117 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 67240448;
                          *&buf[4] = v176;
                          *&buf[8] = 2050;
                          *&buf[10] = v113;
                          _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_340;
                        }

                        sub_10189692C(buf);
                        LODWORD(v202[0]) = 67240448;
                        HIDWORD(v202[0]) = v176;
                        LOWORD(v202[1]) = 2050;
                        *(&v202[1] + 2) = v113;
                        v62 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v62);
                      }

LABEL_468:
                      if (v62 != buf)
                      {
                        free(v62);
                      }

                      goto LABEL_340;
                    }

                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v60 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v178;
                      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from data in handleRequestRegionMonitoring, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }
                    }

                    v48 = qword_1025D4798;
                    if (!os_signpost_enabled(qword_1025D4798))
                    {
                      goto LABEL_340;
                    }

                    *buf = 68289282;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v178;
                    v50 = "Unable to get vertices from data in handleRequestRegionMonitoring";
                    v51 = "{msg%{public}.0s:Unable to get vertices from data in handleRequestRegionMonitoring, error:%{public, location:escape_only}@}";
                  }

                  _os_signpost_emit_with_name_impl(dword_100000000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v50, v51, buf, 0x1Cu);
                  goto LABEL_340;
                }

                if (qword_1025D4790 != -1)
                {
                  sub_101896904();
                }

                v22 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                {
                  v23 = *(a1 + 24);
                  *buf = 138543362;
                  *&buf[4] = v23;
                  _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", buf, 0xCu);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_10189692C(buf);
                  v24 = *(a1 + 24);
                  LODWORD(v202[0]) = 138543362;
                  *(v202 + 4) = v24;
                  v8 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
LABEL_60:
                  if (v8 != buf)
                  {
                    free(v8);
                  }
                }
              }

              else
              {
                if (qword_1025D4790 != -1)
                {
                  sub_101896904();
                }

                v14 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136446210;
                  *&buf[4] = "kCLConnectionMessageEmergencyKey";
                  _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_10189692C(buf);
                  LODWORD(v202[0]) = 136446210;
                  *(v202 + 4) = "kCLConnectionMessageEmergencyKey";
                  v8 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
                  goto LABEL_60;
                }
              }
            }

            else
            {
              if (qword_1025D4790 != -1)
              {
                sub_101896904();
              }

              v13 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                *&buf[4] = "kCLConnectionMessageConservativeEntry";
                _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10189692C(buf);
                LODWORD(v202[0]) = 136446210;
                *(v202 + 4) = "kCLConnectionMessageConservativeEntry";
                v8 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
                goto LABEL_60;
              }
            }
          }

          else
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v12 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              *buf = 136446210;
              *&buf[4] = "kCLConnectionMessageNotifyOnExitKey";
              _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10189692C(buf);
              LODWORD(v202[0]) = 136446210;
              *(v202 + 4) = "kCLConnectionMessageNotifyOnExitKey";
              v8 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
              goto LABEL_60;
            }
          }
        }

        else
        {
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v11 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *&buf[4] = "kCLConnectionMessageNotifyOnEntryKey";
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10189692C(buf);
            LODWORD(v202[0]) = 136446210;
            *(v202 + 4) = "kCLConnectionMessageNotifyOnEntryKey";
            v8 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_101896904();
        }

        v10 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kCLConnectionMessageNameKey";
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10189692C(buf);
          LODWORD(v202[0]) = 136446210;
          *(v202 + 4) = "kCLConnectionMessageNameKey";
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_101896904();
      }

      v9 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageSubscribeKey";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189692C(buf);
        LODWORD(v202[0]) = 136446210;
        *(v202 + 4) = "kCLConnectionMessageSubscribeKey";
        v8 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
        goto LABEL_60;
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v7 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "kCLConnectionMessageRegionTypeKey";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189692C(buf);
      LODWORD(v202[0]) = 136446210;
      *(v202 + 4) = "kCLConnectionMessageRegionTypeKey";
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
      goto LABEL_60;
    }
  }

LABEL_352:
}

void sub_1004BBDDC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  _Unwind_Resume(a1);
}

void sub_1004BC18C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D47A0 != -1)
  {
    sub_101896A48();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 24);
    *buf = 68289282;
    *v21 = 0;
    *&v21[4] = 2082;
    *&v21[6] = "";
    v22 = 2114;
    v23 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#FenceHandoff handleChangeFencesStateMatchingHandoffTags, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if (sub_1004BC8E8(a1))
  {
    if (*(a1 + 64) != 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 24);
        *buf = 68289282;
        *v21 = 0;
        *&v21[4] = 2082;
        *&v21[6] = "";
        v22 = 2114;
        v23 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warn #FenceHandoff fence manager doesn't exist yet!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v10 = [NSError errorWithDomain:kCLErrorDomain code:5 userInfo:0];
      goto LABEL_21;
    }

    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v8 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageHandoffTagKey"];
    v9 = [[NSUUID alloc] initWithUUIDString:{objc_msgSend(Dictionary, "objectForKeyedSubscript:", @"kCLConnectionMessageUUIDKey"}];
    if (v9)
    {
      [*(*sub_10005BA08(a1) + 16) requestChangeFencesStateMatchingHandoffTags:v8 forDeviceID:v9];
      v10 = 0;
LABEL_21:
      [+[NSMutableDictionary dictionary](NSMutableDictionary "dictionary")];
      CLConnectionMessage::sendReply();
      goto LABEL_22;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018969DC();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v17 = [objc_msgSend(Dictionary objectForKeyedSubscript:{@"kCLConnectionMessageUUIDKey", "UTF8String"}];
      *buf = 68289282;
      *v21 = 0;
      *&v21[4] = 2082;
      *&v21[6] = "";
      v22 = 2082;
      v23 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to create uuid object, uuidString:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v19 = [objc_msgSend(Dictionary objectForKeyedSubscript:{@"kCLConnectionMessageUUIDKey", "UTF8String"}];
      *buf = 68289282;
      *v21 = 0;
      *&v21[4] = 2082;
      *&v21[6] = "";
      v22 = 2082;
      v23 = v19;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to create uuid object", "{msg%{public}.0s:Unable to create uuid object, uuidString:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 24);
      *buf = 138543362;
      *v21 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189692C(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleChangeFencesStateMatchingHandoffTags(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

LABEL_22:
}

uint64_t sub_1004BC690(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_proxy_service");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC708(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_while_nearby");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC780(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_polygonal");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC7F8(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_aggressive");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC870(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_low_power");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC8E8(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_fence_handoff");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC960(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.significant_region");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC9D8(uint64_t a1, uint64_t a2)
{
  sub_1004FD3B0(a2, "kCLConnectionMessageNameKey", (a1 + 24));
  sub_1000EBF44((a1 + 48), v23);
  sub_10003B25C(v23);
  v4 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v4 = v31[1];
  }

  if (v4)
  {
    sub_10003B25C(v23);
    v5 = v31;
  }

  else
  {
    v5 = &v27;
  }

  sub_1004FD3B0(a2, "kCLConnectionMessageOnBehalfOfKey", v5);
  LODWORD(buf) = *(a1 + 180);
  sub_10004345C(a2, "kCLConnectionMessageReferenceFrameKey", &buf);
  v6 = *(a1 + 216);
  if (v6)
  {
    v7 = [objc_msgSend(v6 "UUIDString")];
  }

  else
  {
    v7 = "";
  }

  sub_1002DC414(a2, "kCLConnectionMessageDeviceIDKey", v7);
  sub_1004FD3B0(a2, "kCLConnectionMessageHandoffTagKey", (a1 + 192));
  LOBYTE(buf) = *(a1 + 160) & 1;
  sub_100043360(a2, "kCLConnectionMessageNotifyOnEntryKey", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 2) != 0;
  sub_100043360(a2, "kCLConnectionMessageNotifyOnExitKey", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 4) != 0;
  sub_100043360(a2, "kCLConnectionMessageConservativeEntry", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 0x10) != 0;
  sub_100043360(a2, "kCLConnectionMessageEmergencyKey", &buf);
  if (*(a1 + 232) == *(a1 + 224))
  {
    LOBYTE(v21) = (*(a1 + 160) & 0x40) != 0;
    sub_100043360(a2, "kCLConnectionMessageMonitoringNearby", &v21);
    if ((*(a1 + 160) & 0x80) != 0)
    {
      LODWORD(buf) = 3;
    }

    else
    {
      LODWORD(buf) = 1;
    }

    sub_10004345C(a2, "kCLConnectionMessageRegionTypeKey", &buf);
    sub_100116D68(a2, "kCLConnectionMessageLatitudeKey", (a1 + 72));
    sub_100116D68(a2, "kCLConnectionMessageLongitudeKey", (a1 + 80));
    sub_100116D68(a2, "kCLConnectionMessageRadiusKey", (a1 + 88));
    sub_100116D68(a2, "kCLConnectionMessageDesiredAccuracyKey", (a1 + 104));
    LOBYTE(buf) = (*(a1 + 160) & 0x20) != 0;
    sub_100043360(a2, "kCLConnectionMessageLowPowerFenceKey", &buf);
    goto LABEL_27;
  }

  LOBYTE(buf) = (*(a1 + 160) & 8) != 0;
  sub_100043360(a2, "kCLConnectionMessageMonitoringNearby", &buf);
  LODWORD(buf) = 2;
  sub_10004345C(a2, "kCLConnectionMessageRegionTypeKey", &buf);
  v8 = *(a1 + 232) - *(a1 + 224);
  v9 = v8 >> 4;
  v22 = v8 >> 4;
  v10 = (v8 >> 4);
  v11 = [[NSMutableArray alloc] initWithCapacity:v10];
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [[_CLVertex alloc] initWithClientCoordinate:{*(*(a1 + 224) + v12), *(*(a1 + 224) + v12 + 8)}];
      [v11 addObject:v14];

      ++v13;
      v12 += 16;
    }

    while (v13 < v10);
  }

  v21 = 0;
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v21];
  if (!v21)
  {
    v19 = v15;

    sub_10004345C(a2, "kCLConnectionMessagePolygonalVerticesCountKey", &v22);
    sub_1000433CC(a2, "kCLConnectionMessagePolygonalVerticesKey", v19);
LABEL_27:
    v18 = 1;
    goto LABEL_28;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101896904();
  }

  v16 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v21;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to encode vertices in populateGeographicRegion, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }
  }

  v17 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v21;
    _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to encode vertices in populateGeographicRegion", "{msg%{public}.0s:Unable to encode vertices in populateGeographicRegion, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
  }

  v18 = 0;
LABEL_28:
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return v18;
}

void sub_1004BCF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

id sub_1004BCF74(__int128 *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1004C1180;
  v3[3] = &unk_102457868;
  sub_1004BF718(&v4, a1);
  v1 = [v3 copy];
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return v1;
}

void *sub_1004BD074(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1003E5FE8(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_1004BD1BC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  sub_10000EC00(__p, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = *(a4 + 8);
  }

  v9 = v101;
  if ((v101 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    v10 = v7 >= 0 ? a4 : *a4;
    v11 = (v101 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v10, v11, v8))
    {
      sub_10004FD18(v99);
      sub_10004FD18(v98);
      if (*(a4 + 161))
      {
        goto LABEL_155;
      }

      v12 = *a3;
      if (*a3 <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            if (sub_1004BC9D8(a4, v99))
            {
              *buf = sub_10007005C(v99);
              sub_1004BE874();
            }
          }

          else if (v12 == 4)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101896970();
            }

            v28 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Fence: received, kNotificationFenceFailure", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101896998(buf);
              *v102 = 0;
              v53 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v53);
              if (v53 != buf)
              {
                free(v53);
              }
            }

            if ((sub_1004BC9D8(a4, v99) & 1) == 0)
            {
              sub_1004FD3B0(v99, "kCLConnectionMessageNameKey", (a4 + 24));
            }

            *buf = 5;
            sub_1004FD1C8(v99, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v99);
            sub_1004BE7F0();
          }
        }

        else if (v12 >= 2)
        {
          if (v12 == 2 && sub_1004BC9D8(a4, v99))
          {
            *buf = 6;
            sub_1004FD1C8(v99, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v99);
            sub_1004BE7F0();
          }
        }

        else if (sub_1004BC9D8(a4, v99))
        {
          *buf = *a3 != 0;
          sub_10004345C(v99, "kCLConnectionMessageEventKey", buf);
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v96 = (a4 + 500);
          v13 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v14 = *a3;
            v15 = *(a4 + 23);
            v16 = *a4;
            v17 = *(a4 + 24);
            v18 = *(a4 + 47);
            v89 = *v96;
            v90 = *(a4 + 508);
            v91 = *(a4 + 516);
            v93 = *(a4 + 592);
            v95 = *(a4 + 152);
            v19 = sub_1004BE71C(a4);
            v20 = *(a4 + 96);
            if (v18 >= 0)
            {
              v21 = a4 + 24;
            }

            else
            {
              v21 = v17;
            }

            v22 = "exit";
            if (v15 >= 0)
            {
              v23 = a4;
            }

            else
            {
              v23 = v16;
            }

            v24 = *(a4 + 160);
            if (!v14)
            {
              v22 = "entry";
            }

            v26 = *(a4 + 224);
            v25 = *(a4 + 232);
            v27 = *(a4 + 188);
            *buf = 136383747;
            *&buf[4] = v22;
            v128 = 2082;
            v129 = v23;
            v130 = 2081;
            *v131 = v21;
            *&v131[8] = 2049;
            *&v131[10] = v89;
            v132 = 2049;
            v133 = v90;
            v134 = 2050;
            v135 = v91;
            v136 = 1026;
            v137 = v93;
            v138 = 2049;
            v139 = v95;
            v140 = 1025;
            v141 = v19;
            v142 = 1025;
            v143 = v20 >= 7000.0;
            v144 = 1025;
            v145 = (v24 >> 4) & 1;
            v146 = 1025;
            v147 = v25 != v26;
            v148 = 1025;
            v149 = v27;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Notifying client of fence %{private}s for %{public}s/%{private}s (location <%{private}+.8f,%{private}+.8f> acc %{public}.2f type %{public}d, \t\t\t\t\t\t\tsinceLast,%{private}.1f, fence,%{private}d,%{private}d,%{private}d,%{private}d,%{private}d", buf, 0x6Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101896998(buf);
            v55 = *a3;
            v56 = *(a4 + 23);
            v57 = *a4;
            v58 = *(a4 + 24);
            v59 = *(a4 + 47);
            v60 = *v96;
            v61 = *(a4 + 508);
            v92 = *(a4 + 516);
            v94 = *(a4 + 592);
            v97 = *(a4 + 152);
            v62 = sub_1004BE71C(a4);
            v63 = *(a4 + 96);
            if (v59 >= 0)
            {
              v64 = a4 + 24;
            }

            else
            {
              v64 = v58;
            }

            v65 = "exit";
            if (v56 >= 0)
            {
              v66 = a4;
            }

            else
            {
              v66 = v57;
            }

            v67 = *(a4 + 160);
            if (!v55)
            {
              v65 = "entry";
            }

            v69 = *(a4 + 224);
            v68 = *(a4 + 232);
            v70 = *(a4 + 188);
            *v102 = 136383747;
            *&v102[4] = v65;
            v103 = 2082;
            v104 = v66;
            v105 = 2081;
            *v106 = v64;
            *&v106[8] = 2049;
            *&v106[10] = v60;
            v107 = 2049;
            v108 = v61;
            v109 = 2050;
            v110 = v92;
            v111 = 1026;
            v112 = v94;
            v113 = 2049;
            v114 = v97;
            v115 = 1025;
            v116 = v62;
            v117 = 1025;
            v118 = v63 >= 7000.0;
            v119 = 1025;
            v120 = (v67 >> 4) & 1;
            v121 = 1025;
            v122 = v68 != v69;
            v123 = 1025;
            v124 = v70;
            v71 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v71);
            if (v71 != buf)
            {
              free(v71);
            }
          }

          *buf = sub_10007005C(v99);
          sub_1004BE76C();
        }

        goto LABEL_155;
      }

      if (v12 <= 6)
      {
        if (v12 == 5)
        {
          if (sub_1004BC9D8(a4, v99))
          {
            v35 = *(a4 + 271);
            if ((v35 & 0x80u) != 0)
            {
              v35 = *(a4 + 256);
            }

            if (v35)
            {
              sub_10004FD18(v102);
              if ((sub_1004BC9D8(a4 + 248, v102) & 1) == 0)
              {
                if (qword_1025D4640 != -1)
                {
                  sub_101896970();
                }

                v36 = off_1025D4648;
                if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't populate alternate region", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101896998(buf);
                  *v125 = 0;
                  v88 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v88);
                  if (v88 != buf)
                  {
                    free(v88);
                  }
                }

                sub_1004FD3B0(v99, "kCLConnectionMessageNameKey", (a4 + 24));
              }

              sub_1004FD480(v99, "kCLConnectionMessageAlternateRegionKey", v102);
              sub_100005DA4(v102);
            }

            else
            {
              if (qword_1025D4640 != -1)
              {
                sub_101896970();
              }

              v49 = off_1025D4648;
              if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "No alternate region available", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101896998(buf);
                *v102 = 0;
                v87 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v87);
                if (v87 != buf)
                {
                  free(v87);
                }
              }
            }

            *buf = sub_10007005C(v99);
            sub_1004BE8F8();
          }

          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v45 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            sub_100BC8988(a4, buf);
            v46 = v130 >= 0 ? buf : *buf;
            *v102 = 136315138;
            *&v102[4] = v46;
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning Can't populate fence, %s", v102, 0xCu);
            if (SHIBYTE(v130) < 0)
            {
              operator delete(*buf);
            }
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_155;
          }

          sub_101896998(buf);
          sub_100BC8988(a4, v102);
          if (v105 >= 0)
          {
            v47 = v102;
          }

          else
          {
            v47 = *v102;
          }

          *v125 = 136315138;
          *&v125[4] = v47;
          v44 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v105) < 0)
          {
            operator delete(*v102);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v44);
          goto LABEL_126;
        }

        if (v12 != 6)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (v12 == 7)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v37 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "Fence: received, kNotificationFenceNotAuthorized", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101896998(buf);
            *v102 = 0;
            v54 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }

          if (sub_1004BC9D8(a4, v99))
          {
            if (qword_1025D4640 != -1)
            {
              sub_101896970();
            }

            v38 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a4 + 23) >= 0)
              {
                v39 = a4;
              }

              else
              {
                v39 = *a4;
              }

              if (*(a4 + 47) >= 0)
              {
                v40 = a4 + 24;
              }

              else
              {
                v40 = *(a4 + 24);
              }

              *buf = 136446466;
              *&buf[4] = v39;
              v128 = 2082;
              v129 = v40;
              _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "#Notice Fence: kNotificationFenceNotAuthorized, bundle not authorized for location, %{public}s, fence, %{public}s", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101896998(buf);
              v77 = *(a4 + 23) >= 0 ? a4 : *a4;
              v78 = *(a4 + 47);
              v81 = *(a4 + 24);
              v80 = a4 + 24;
              v79 = v81;
              v82 = (v78 >= 0 ? v80 : v79);
              *v102 = 136446466;
              *&v102[4] = v77;
              v103 = 2082;
              v104 = v82;
              v83 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v83);
              if (v83 != buf)
              {
                free(v83);
              }
            }

            *buf = 4;
            sub_1004FD1C8(v99, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v99);
            sub_1004BE7F0();
          }

          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v48 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_FAULT, "Fence: kNotificationFenceNotAuthorized, failed to populate fence", buf, 2u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_155;
          }

          sub_101896998(buf);
          *v102 = 0;
          v44 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v44);
          if (v44 == buf)
          {
            goto LABEL_155;
          }

LABEL_134:
          free(v44);
          goto LABEL_155;
        }

        if (v12 == 9)
        {
          if (sub_1004BC9D8(a4, v99))
          {
            *buf = *(a4 + 656);
            sub_100116D68(v99, "kCLConnectionMessageRegionWatchdogSinceLast", buf);
            *buf = sub_10007005C(v99);
            sub_1004BE97C();
          }

          goto LABEL_155;
        }

        if (v12 != 8 || (sub_100F355E8(a1) & 1) == 0)
        {
LABEL_155:
          sub_100005DA4(v98);
          sub_100005DA4(v99);
          goto LABEL_156;
        }
      }

      if (sub_1004BC9D8(a4, v99))
      {
        if (qword_1025D4640 != -1)
        {
          sub_101896970();
        }

        v29 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v30 = *a3;
          sub_100BC8988(a4, v102);
          v31 = "kNotificationFenceState";
          if (v30 != 8)
          {
            v31 = "kNotificationRegionStateRequest";
          }

          v32 = *v102;
          if (v105 >= 0)
          {
            v32 = v102;
          }

          v33 = *(a4 + 652);
          if ((v33 + 1) > 4)
          {
            v34 = "---";
          }

          else
          {
            v34 = off_1024578C8[v33 + 1];
          }

          *buf = 136315906;
          *&buf[4] = v31;
          v128 = 2080;
          v129 = v32;
          v130 = 1024;
          *v131 = v33;
          *&v131[4] = 2080;
          *&v131[6] = v34;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Fence: received, %s, %s, state, %d, %s", buf, 0x26u);
          if (SHIBYTE(v105) < 0)
          {
            operator delete(*v102);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101896998(buf);
          v72 = *a3;
          sub_100BC8988(a4, v125);
          v73 = "kNotificationFenceState";
          if (v72 != 8)
          {
            v73 = "kNotificationRegionStateRequest";
          }

          v74 = *v125;
          if (v126 >= 0)
          {
            v74 = v125;
          }

          v75 = *(a4 + 652);
          if ((v75 + 1) > 4)
          {
            v76 = "---";
          }

          else
          {
            v76 = off_1024578C8[v75 + 1];
          }

          *v102 = 136315906;
          *&v102[4] = v73;
          v103 = 2080;
          v104 = v74;
          v105 = 1024;
          *v106 = v75;
          *&v106[4] = 2080;
          *&v106[6] = v76;
          v86 = _os_log_send_and_compose_impl();
          if (v126 < 0)
          {
            operator delete(*v125);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v86);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        v50 = *(a4 + 652) + 1;
        if (v50 >= 3)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v51 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
          {
            v52 = *(a4 + 652);
            *buf = 67240192;
            *&buf[4] = v52;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_FAULT, "Fence: unknown state, %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101896998(buf);
            v84 = *(a4 + 652);
            *v102 = 67240192;
            *&v102[4] = v84;
            v85 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v85);
            if (v85 != buf)
            {
              free(v85);
            }
          }

          v50 = 0;
        }

        *buf = v50;
        sub_10004345C(v99, "kCLConnectionMessageStatusKey", buf);
        *buf = sub_10007005C(v99);
        sub_1004BE698();
      }

      if (qword_1025D4640 != -1)
      {
        sub_101896970();
      }

      v41 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        sub_100BC8988(a4, buf);
        v42 = v130 >= 0 ? buf : *buf;
        *v102 = 136315138;
        *&v102[4] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "Fence: kNotificationRegionStateRequest, failed to populateGeographicRegion, %s", v102, 0xCu);
        if (SHIBYTE(v130) < 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_155;
      }

      sub_101896998(buf);
      sub_100BC8988(a4, v102);
      if (v105 >= 0)
      {
        v43 = v102;
      }

      else
      {
        v43 = *v102;
      }

      *v125 = 136315138;
      *&v125[4] = v43;
      v44 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v105) < 0)
      {
        operator delete(*v102);
      }

      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v44);
LABEL_126:
      if (v44 == buf)
      {
        goto LABEL_155;
      }

      goto LABEL_134;
    }
  }

LABEL_156:
  if (v101 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004BE5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_100005DA4(&a28);
  sub_100005DA4(&a18);
  sub_100005DA4(&a20);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004BE704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BEA00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  sub_10000EC00(__p, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
  v6 = *(a4 + 63);
  if (v6 >= 0)
  {
    v7 = *(a4 + 63);
  }

  else
  {
    v7 = *(a4 + 48);
  }

  v8 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    v9 = a4 + 40;
    v10 = v6 >= 0 ? (a4 + 40) : *(a4 + 40);
    v11 = (v56 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v10, v11, v7))
    {
      sub_10004FD18(v54);
      if ((sub_100A8FD44(a4, v54) & 1) != 0 && (*(a4 + 113) & 1) == 0)
      {
        v12 = *a3;
        if (*a3 == 3)
        {
          if (*(a4 + 120))
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v20 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v21 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v22 = a4 + 40;
              }

              else
              {
                v22 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v21 = *(a4 + 88);
              }

              *buf = 136446467;
              *&buf[4] = v22;
              v62 = 2081;
              v63 = v21;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10189692C(buf);
              v36 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v37 = a4 + 40;
              }

              else
              {
                v37 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v36 = *(a4 + 88);
              }

              v57 = 136446467;
              v58 = v37;
              v59 = 2081;
              v60 = v36;
              v38 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v38);
              if (v38 != buf)
              {
                free(v38);
              }
            }

            if (*(a4 + 120) == 1)
            {
              *buf = 4;
            }

            else
            {
              *buf = 5;
            }

            sub_1004FD1C8(v54, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v54);
            sub_1004BE7F0();
          }

          v23 = *(a4 + 168);
          if (v23 == 2)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2 * (v23 == 4);
          }

          *buf = v24;
          sub_10004345C(v54, "kCLConnectionMessageStatusKey", buf);
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v25 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v26 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v27 = a4 + 40;
            }

            else
            {
              v27 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v26 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v27;
            v62 = 2081;
            v63 = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionState for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v49 = *(a4 + 88);
            v48 = a4 + 88;
            v47 = v49;
            if (*(v48 - 25) >= 0)
            {
              v50 = v9;
            }

            else
            {
              v50 = *(v48 - 48);
            }

            if (*(v48 + 23) >= 0)
            {
              v47 = v48;
            }

            v57 = 136446467;
            v58 = v50;
            v59 = 2081;
            v60 = v47;
            v51 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v51);
            if (v51 != buf)
            {
              free(v51);
            }
          }

          *buf = sub_10007005C(v54);
          sub_1004BE698();
        }

        if (v12 == 2)
        {
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v16 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v18 = a4 + 40;
            }

            else
            {
              v18 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v17 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v18;
            v62 = 2081;
            v63 = v17;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoring for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v33 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v34 = a4 + 40;
            }

            else
            {
              v34 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v33 = *(a4 + 88);
            }

            v57 = 136446467;
            v58 = v34;
            v59 = 2081;
            v60 = v33;
            v35 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v35);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          v19 = *(a4 + 168);
          if (v19 == 4)
          {
            *buf = 1;
            sub_10004345C(v54, "kCLConnectionMessageEventKey", buf);
          }

          else if (v19 == 2)
          {
            *buf = 0;
            sub_10004345C(v54, "kCLConnectionMessageEventKey", buf);
          }

          else
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v31 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              v32 = *(a4 + 168);
              *buf = 67240192;
              *&buf[4] = v32;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "Unsupported region transition state,%{public}d will not be reported.", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10189692C(buf);
              v52 = *(a4 + 168);
              v57 = 67240192;
              LODWORD(v58) = v52;
              v53 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v53);
              if (v53 != buf)
              {
                free(v53);
              }
            }
          }

          *buf = sub_10007005C(v54);
          sub_1004BE76C();
        }

        if (!v12)
        {
          if (*(a4 + 120))
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v13 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v14 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v15 = a4 + 40;
              }

              else
              {
                v15 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v14 = *(a4 + 88);
              }

              *buf = 136446467;
              *&buf[4] = v15;
              v62 = 2081;
              v63 = v14;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10189692C(buf);
              v39 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v40 = a4 + 40;
              }

              else
              {
                v40 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v39 = *(a4 + 88);
              }

              v57 = 136446467;
              v58 = v40;
              v59 = 2081;
              v60 = v39;
              v41 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v41);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            if (*(a4 + 120) == 1)
            {
              *buf = 4;
            }

            else
            {
              *buf = 5;
            }

            sub_1004FD1C8(v54, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v54);
            sub_1004BE7F0();
          }

          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v28 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v29 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v30 = a4 + 40;
            }

            else
            {
              v30 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v29 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v30;
            v62 = 2081;
            v63 = v29;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringSetupCompleted for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v44 = *(a4 + 88);
            v43 = a4 + 88;
            v42 = v44;
            if (*(v43 - 25) >= 0)
            {
              v45 = v9;
            }

            else
            {
              v45 = *(v43 - 48);
            }

            if (*(v43 + 23) >= 0)
            {
              v42 = v43;
            }

            v57 = 136446467;
            v58 = v45;
            v59 = 2081;
            v60 = v42;
            v46 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v46);
            if (v46 != buf)
            {
              free(v46);
            }
          }

          *buf = sub_10007005C(v54);
          sub_1004BE874();
        }
      }

      sub_100005DA4(v54);
    }
  }

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004BF51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100005DA4(&a12);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004BF5CC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1004BF64C(uint64_t a1)
{
  sub_1004C0818(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1004BF718(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(__dst + 120) = *(a2 + 120);
  *(__dst + 104) = v9;
  *(__dst + 88) = v8;
  *(__dst + 72) = v7;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(__dst + 181) = *(a2 + 181);
  *(__dst + 168) = v12;
  *(__dst + 152) = v11;
  *(__dst + 136) = v10;
  if (*(a2 + 215) < 0)
  {
    sub_100007244(__dst + 192, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v13 = a2[12];
    *(__dst + 26) = *(a2 + 26);
    *(__dst + 12) = v13;
  }

  *(__dst + 27) = 0;
  v14 = *(a2 + 27);
  *(__dst + 28) = 0;
  *(__dst + 27) = v14;
  *(__dst + 29) = 0;
  *(__dst + 30) = 0;
  sub_1004BF900((__dst + 224), *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 4);
  return __dst;
}

void sub_1004BF85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BF900(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF97C(result, a4);
  }

  return result;
}

void sub_1004BF960(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF97C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1003E5FE8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1004BF9B8(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004BFA38(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1003E5FE8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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
  return v6 - 16;
}

uint64_t sub_1004BFB14(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_1024576F0;
  if (*(a2 + 23) < 0)
  {
    sub_100007244((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v7;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 64), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 80) = *(a4 + 2);
    *(a1 + 64) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 88), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 104) = *(a3 + 2);
    *(a1 + 88) = v9;
  }

  *(a1 + 112) = 0;
  return a1;
}

void sub_1004BFC18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BFC68(uint64_t a1)
{
  sub_10005DB2C(a1);

  operator delete();
}

uint64_t sub_1004BFCA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1004C01C8(&v25);
  v4 = sub_100038730(&v25, "[", 1);
  v5 = *(a1 + 87);
  if (v5 >= 0)
  {
    v6 = a1 + 64;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 87);
  }

  else
  {
    v7 = *(a1 + 72);
  }

  v8 = sub_100038730(v4, v6, v7);
  v9 = sub_100038730(v8, "]/", 2);
  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = a1 + 40;
  }

  else
  {
    v11 = *(a1 + 40);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 63);
  }

  else
  {
    v12 = *(a1 + 48);
  }

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, "/", 1);
  v15 = *(a1 + 111);
  if (v15 >= 0)
  {
    v16 = a1 + 88;
  }

  else
  {
    v16 = *(a1 + 88);
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 111);
  }

  else
  {
    v17 = *(a1 + 96);
  }

  v18 = sub_100038730(v14, v16, v17);
  v19 = sub_100038730(v18, "/", 1);
  sub_1004BFFE4(a1, __p);
  if ((v24 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = __p[1];
  }

  sub_100038730(v19, v20, v21);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1004C0334(&v25, a2);
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  std::locale::~locale(v27);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004BFEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004BFF24(uint64_t a1)
{
  *a1 = off_102457740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004BFF74(uint64_t a1)
{
  *a1 = off_102457740;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1004BFFE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1004C01C8(&v8);
  if (*(a1 + 36))
  {
    v4 = *(a1 + 31);
    v5 = v4 >= 0 ? a1 + 8 : *(a1 + 8);
    v6 = v4 >= 0 ? *(a1 + 31) : *(a1 + 16);
    sub_100038730(&v8, v5, v6);
    if ((*(a1 + 36) & 2) != 0)
    {
      sub_100038730(&v8, ".", 1);
      std::ostream::operator<<();
      if ((*(a1 + 36) & 4) != 0)
      {
        sub_100038730(&v8, ".", 1);
        std::ostream::operator<<();
      }
    }
  }

  sub_1004C0334(&v8, a2);
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004C01A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004C01C8(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100038A3C((a1 + 1), 16);
  return a1;
}

void sub_1004C030C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void *sub_1004C0334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000389F0(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1004C03DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_1004C04F8(uint64_t a1, uint64_t a2)
{
  *a1 = off_102457740;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 32);
  *a1 = off_1024576F0;
  if (*(a2 + 63) < 0)
  {
    sub_100007244((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100007244((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100007244((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_1004C0618(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1004C06D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_102457768;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1004C0708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1004C07A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C07CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C0818(uint64_t a1)
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

__n128 sub_1004C08F4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1024577F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1004C0924(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1004C09D0(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1004C096C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C0984(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C09D0(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101896904();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4(v15);
}

uint64_t sub_1004C0C00(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_1004C0C7C(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1004C0C7C(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_1004C0ED8();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1004C0EC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004C0F54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C0F54(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004C10B0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1004C0FA0(void *__dst, __int128 *a2)
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

  sub_1004C1018((__dst + 3), a2 + 24);
  return __dst;
}

void sub_1004C0FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C1018(uint64_t a1, uint64_t a2)
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

void sub_1004C10B0(uint64_t a1)
{
  sub_1004C0818(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004C1100(uint64_t a1)
{
  sub_1004C113C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1004C113C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1004C10B0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1004C1198(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    *(a1 + 264) = v2;
    operator delete(v2);
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void *sub_1004C122C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_10095D914(a1);
}

void sub_1004C1278(void *a1)
{
  sub_1004C122C(a1);

  operator delete();
}

void sub_1004C12B0(uint64_t a1)
{
  sub_1004C122C((a1 - 32));

  operator delete();
}

uint64_t sub_1004C1308()
{
  if (qword_102656458 != -1)
  {
    sub_101896A5C();
  }

  return qword_102656450;
}

void sub_1004C1340(id a1)
{
  if ((sub_100023B30() & 2) != 0)
  {
    operator new();
  }
}

void sub_1004C1400(uint64_t a1)
{
  if (*(a1 + 40))
  {
    sub_101896A70();
  }

  v2 = sub_100011660();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004C1488;
  v3[3] = &unk_102449A78;
  v3[4] = a1;
  sub_10017A794(v2, v3);
}

void sub_1004C1510(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    sub_101896AC8();
  }

  v2 = sub_100011660();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004C1598;
  v3[3] = &unk_102449A78;
  v3[4] = a1;
  sub_10017A794(v2, v3);
}

void sub_1004C1598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_1004C15B0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 56);
  LODWORD(v4) = *(a2 + 1);
  BYTE4(v4) = *(a2 + 5);
  *(&v4 + 5) = *(a2 + 6);
  return sub_100013B00(a1, 0, &v3, 16);
}

uint64_t sub_1004C1600(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 24);
  LODWORD(v4) = *(a2 + 1);
  BYTE4(v4) = *(a2 + 5);
  *(&v4 + 5) = *(a2 + 6);
  return sub_100013B00(a1 - 32, 0, &v3, 16);
}

void sub_1004C1658(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_1004C1400(a1);
      }
    }

    else
    {
      sub_1004C1510(a1);
    }
  }
}

void sub_1004C17FC(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    byte_102656470 = 1;
  }
}

void sub_1004C1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

void sub_1004C1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 + 8));
  operator delete();
}

void sub_1004C23B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C23D0(uint64_t a1)
{
  if (qword_1025D44F0 != -1)
  {
    sub_101896D48();
  }

  v2 = qword_1025D44F8;
  if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Aggregating HRRecovery db records", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101896F54();
  }

  sub_1004C24A4(*(*(a1 + 32) + 24));
  sub_1004C27B0(*(*(a1 + 32) + 48));
  return sub_1004C2ABC(*(*(a1 + 32) + 72));
}

uint64_t sub_1004C24A4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897044();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897160();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C57B8(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C57B8(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101897254();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

uint64_t sub_1004C27B0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897354();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897448();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C58BC(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C58BC(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189753C();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

uint64_t sub_1004C2ABC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101897030();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189763C();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_101897138();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897730();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1004C59C0(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101897138();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1004C59C0(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101897824();
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

void sub_1004C37A4(id a1, BOOL a2, NSError *a3)
{
  if (a2)
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v3 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "HRRecovery successfully pushed to HKHealthStore", &v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101897D14();
    }
  }

  else
  {
    if (qword_1025D44F0 != -1)
    {
      sub_101896D48();
    }

    v5 = qword_1025D44F8;
    if (os_log_type_enabled(qword_1025D44F8, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "HKHealthStore, HRRecovery, saveObjects failed on, %{public}@", &v6, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101897C0C(a3);
    }
  }
}

void sub_1004C3998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C3CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58)
{
  if (a58)
  {
    sub_100008080(a58);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1004C4860(uint64_t a1)
{
  v45[0] = @"age_bin";
  v2 = *(*(a1 + 32) + 100);
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_10038EB38(&v42, qword_1026564A0, qword_1026564A8, (qword_1026564A8 - qword_1026564A0) >> 2);
  if (v43 == v42)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = (v43 - v42) >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (*(v42 + v3) < v2)
    {
      if (v4 == ++v3)
      {
        v3 = v4;
        break;
      }
    }
  }

  v46[0] = [NSNumber numberWithInt:v3];
  v45[1] = @"gender";
  v46[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 96)];
  v45[2] = @"useBetaBlocker";
  v46[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 108)];
  v45[3] = @"userBMI_bin";
  v5 = *(*(a1 + 32) + 104);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  sub_10038EB38(&v39, qword_1026564C0, qword_1026564C8, (qword_1026564C8 - qword_1026564C0) >> 2);
  if (v40 == v39)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = (v40 - v39) >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*(v39 + v6) < v5)
    {
      if (v7 == ++v6)
      {
        v6 = v7;
        break;
      }
    }
  }

  v46[3] = [NSNumber numberWithInt:v6];
  v45[4] = @"restingHR";
  LODWORD(v8) = *(*(a1 + 32) + 220);
  v46[4] = [NSNumber numberWithFloat:v8];
  v45[5] = @"hrmax";
  LODWORD(v9) = *(*(a1 + 32) + 224);
  v46[5] = [NSNumber numberWithFloat:v9];
  v45[6] = @"HRRecoveryEstimateStatus";
  v46[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 112)];
  v45[7] = @"diffTimeRecoveryOnsetWorkout";
  v46[7] = [NSNumber numberWithDouble:*(*(a1 + 32) + 120)];
  v45[8] = @"diffTimeTDropWorkoutEnd";
  v46[8] = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  v45[9] = @"hrRecovery";
  v46[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v45[10] = @"hrRecoverySession";
  v46[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v45[11] = @"peakHR";
  LODWORD(v10) = *(*(a1 + 32) + 144);
  v46[11] = [NSNumber numberWithFloat:v10];
  v45[12] = @"steadyStateHR";
  LODWORD(v11) = *(*(a1 + 32) + 148);
  v46[12] = [NSNumber numberWithFloat:v11];
  v45[13] = @"hrMinAdjusted";
  LODWORD(v12) = *(*(a1 + 32) + 152);
  v46[13] = [NSNumber numberWithFloat:v12];
  v45[14] = @"observedHRRecovery";
  LODWORD(v13) = *(*(a1 + 32) + 156);
  v46[14] = [NSNumber numberWithFloat:v13];
  v45[15] = @"recoveryLoad";
  LODWORD(v14) = *(*(a1 + 32) + 160);
  v46[15] = [NSNumber numberWithFloat:v14];
  v45[16] = @"maxRecoveryHR";
  LODWORD(v15) = *(*(a1 + 32) + 164);
  v46[16] = [NSNumber numberWithFloat:v15];
  v45[17] = @"minRecoveryHR";
  LODWORD(v16) = *(*(a1 + 32) + 168);
  v46[17] = [NSNumber numberWithFloat:v16];
  v45[18] = @"recoveryMetsMean";
  LODWORD(v17) = *(*(a1 + 32) + 172);
  v46[18] = [NSNumber numberWithFloat:v17];
  v45[19] = @"recoveryMetsStdDev";
  LODWORD(v18) = *(*(a1 + 32) + 176);
  v46[19] = [NSNumber numberWithFloat:v18];
  v45[20] = @"biasAdjustment";
  LODWORD(v19) = *(*(a1 + 32) + 180);
  v46[20] = [NSNumber numberWithFloat:v19];
  v45[21] = @"isOtherwiseEligibleForLongitudinal";
  v46[21] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v45[22] = @"hrRecoveryReference";
  LODWORD(v20) = *(*(a1 + 32) + 188);
  v46[22] = [NSNumber numberWithFloat:v20];
  v45[23] = @"hrRecoveryReferencePeak";
  LODWORD(v21) = *(*(a1 + 32) + 192);
  v46[23] = [NSNumber numberWithFloat:v21];
  v45[24] = @"hrOneMinPostRecovery";
  LODWORD(v22) = *(*(a1 + 32) + 196);
  v46[24] = [NSNumber numberWithFloat:v22];
  v45[25] = @"hrOneMinExponential";
  LODWORD(v23) = *(*(a1 + 32) + 200);
  v46[25] = [NSNumber numberWithFloat:v23];
  v45[26] = @"isEligibleForHK";
  v46[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v45[27] = @"minHRAfterWorkoutEnd";
  LODWORD(v24) = *(*(a1 + 32) + 208);
  v46[27] = [NSNumber numberWithFloat:v24];
  v45[28] = @"maxHRAfterWorkoutEnd";
  LODWORD(v25) = *(*(a1 + 32) + 212);
  v46[28] = [NSNumber numberWithFloat:v25];
  v45[29] = @"oneMinusFHRAfterWorkoutEnd";
  LODWORD(v26) = *(*(a1 + 32) + 216);
  v46[29] = [NSNumber numberWithFloat:v26];
  v45[30] = @"peakHrOneMinusFhr";
  LODWORD(v27) = *(*(a1 + 32) + 228);
  v46[30] = [NSNumber numberWithFloat:v27];
  v45[31] = @"vo2MaxEstimationStatus";
  v46[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v45[32] = @"VO2MaxValue";
  v46[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v45[33] = @"lambda";
  LODWORD(v28) = *(*(a1 + 32) + 240);
  v46[33] = [NSNumber numberWithFloat:v28];
  v45[34] = @"mse";
  LODWORD(v29) = *(*(a1 + 32) + 244);
  v46[34] = [NSNumber numberWithFloat:v29];
  v45[35] = @"evs";
  LODWORD(v30) = *(*(a1 + 32) + 248);
  v46[35] = [NSNumber numberWithFloat:v30];
  v45[36] = @"sessionType";
  v46[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 252)];
  v45[37] = @"workoutType";
  v46[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 256)];
  v45[38] = @"sessionDuration_bin";
  v31 = *(*(a1 + 32) + 264);
  v37 = 0;
  v38 = 0;
  __p = 0;
  sub_10038EB38(&__p, qword_102656480, qword_102656488, (qword_102656488 - qword_102656480) >> 2);
  if (v37 == __p)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0;
    v33 = (v37 - __p) >> 2;
    if (v33 <= 1)
    {
      v33 = 1;
    }

    while (*(__p + v32) < v31)
    {
      if (v33 == ++v32)
      {
        v32 = v33;
        break;
      }
    }
  }

  v46[38] = [NSNumber numberWithInt:v32];
  v45[39] = @"LyonAlgVersion";
  v46[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 268)];
  v34 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:40];
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v34;
}