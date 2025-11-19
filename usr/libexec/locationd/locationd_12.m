uint64_t sub_1000CFB4C(uint64_t result, uint64_t *a2)
{
  v2 = a2[2];
  if (v2 == 3)
  {
    v4 = *a2;
    if (*(result + 2416) == 0.0)
    {
      *(result + 2416) = v4;
    }

    *(result + 2424) = v4;
    ++*(result + 2432);
  }

  else if (v2 == 2)
  {
    v3 = *a2;
    if (*(result + 2400) == 0.0)
    {
      *(result + 2400) = v3;
    }

    *(result + 2408) = v3;
    ++*(result + 2436);
  }

  v5 = *(a2 + 3);
  if (*(result + 2472) < v5)
  {
    *(result + 2472) = v5;
  }

  if (*(result + 2480) > v5)
  {
    *(result + 2480) = v5;
  }

  *(result + 2488) = v5 + *(result + 2488);
  ++*(result + 2496);
  v6 = *(a2 + 2);
  if (*(result + 2504) < v6)
  {
    *(result + 2504) = v6;
  }

  if (v6 >= 0.0)
  {
    for (i = 0; i != 17; ++i)
    {
      if (v6 <= dword_101D791D0[i])
      {
        break;
      }
    }

    if (i >= 0x10)
    {
      LODWORD(i) = 16;
    }

    ++*(result + 4 * i + 2508);
  }

  return result;
}

void sub_1000CFC60(double *a1, double *a2, double a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 > *a2)
  {
    v6 = a1[279];
    if (v6 < a1[292])
    {
      v6 = a1[292];
    }

    if (v4 < v6)
    {
      v4 = v6;
    }

    if (v5 < a1[287])
    {
      v5 = a1[287];
    }

    a1[287] = v5;
    sub_10125C400(a1, v4, a3);
  }
}

double sub_1000CFCA0(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000CFD64(__src, *(a5 + 8), *a1 + 4080, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000CFD64(v13, *(a5 + 8), v13 + 4080, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000CFD64(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1000CFD64@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 3);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 40 * v11);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
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

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1000CFE44(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
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

void sub_1000CFEBC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4768;
  if (qword_102637ED0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

id sub_1000CFF48(int a1, unsigned int *a2, void *__src, void *a4)
{
  v5 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  return [a4 onMotionStateMediatorNotification:v5 data:__dst];
}

id sub_1000D0038(uint64_t a1)
{
  result = [*(a1 + 8) pipelinedSeeded];
  if (result)
  {
    v3 = *(**(a1 + 24) + 152);

    return v3();
  }

  return result;
}

void sub_1000D00AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024546D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1000D0100(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B47E0;
  if (qword_102637EC8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000D018C(uint64_t a1, void *a2)
{
  v4 = sub_10000B1F8();
  v6 = 1;
  v5 = sub_10001A6B0(v4, &v6);
  sub_1000D01E0(a1 + 456, &v5, a2);
}

void sub_1000D01E0(uint64_t a1, double *a2, void *a3)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1);
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *a3;
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    *buf = 134350080;
    v39 = v7;
    v40 = 2050;
    v41 = v8;
    v42 = 1026;
    *v43 = v9;
    *&v43[4] = 1026;
    *&v43[6] = v10;
    LOWORD(v44[0]) = 2050;
    *(v44 + 2) = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,received outdoor update,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,type,%{public}d,confidence,%{public}d,prob,%{public}.2f", buf, 0x2Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v24 = *a2;
    v25 = *a3;
    v26 = a3[2];
    v27 = a3[3];
    v28 = a3[4];
    *v31 = 134350080;
    *&v31[4] = v24;
    v32[0] = 2050;
    *&v32[1] = v25;
    v32[5] = 1026;
    v33 = v26;
    v34 = 1026;
    v35 = v27;
    v36 = 2050;
    v37 = v28;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v12 = sub_100D6B41C(a1);
  if (v12)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#fusion,indoorOutdoor state update is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v31 = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else if (a3[2])
  {
    v15 = a3[6];
    v17 = *(a3 + 1);
    v16 = *(a3 + 2);
    v18 = *a3;
    *(a1 + 2680) = *a2;
    *(a1 + 2688) = v18;
    *(a1 + 2704) = v17;
    *(a1 + 2720) = v16;
    *(a1 + 2736) = v15;
    *v31 = 0xBFF0000000000000;
    CLMotionActivity::getInit(&v31[8], v12);
    if ((*(a1 + 2904) & 1) == 0 && sub_1000D0738(a1 + 2424, v31) && *v31 > 0.0 && (*v31 < 0.0 || *v31 <= *a2 && *a2 - *v31 > 2.56))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v19 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v20 = *a2;
        v21 = *v31;
        v22 = CLMotionActivity::activityTypeToString();
        v23 = CLMotionActivity::activityConfidenceToString();
        *buf = 134349826;
        v39 = v20;
        v40 = 2050;
        v41 = v21;
        v42 = 2080;
        *v43 = v22;
        *&v43[8] = 2080;
        v44[0] = v23;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#fusion,re-using last known motion state,mct_now,%{public}.3f,lastMotionState_mct,%{public}.3f,type,%s,confidence,%s", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        CLMotionActivity::activityTypeToString();
        CLMotionActivity::activityConfidenceToString();
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      *v31 = *a2;
      sub_1000CECF4((a1 + 2424), v31);
      sub_1000D0BB8(a1, a2);
    }
  }
}

void sub_1000D072C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000D0738(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = v3;
  if (v3 >= 0.0)
  {
    *a2 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[4];
    a2[3] = v2[3];
    a2[4] = v7;
    a2[1] = v5;
    a2[2] = v6;
    v8 = v2[5];
    v9 = v2[6];
    v10 = v2[8];
    a2[7] = v2[7];
    a2[8] = v10;
    a2[5] = v8;
    a2[6] = v9;
  }

  return v4 >= 0.0;
}

uint64_t sub_1000D0778(uint64_t a1, int *a2, double a3)
{
  if (CLMotionActivity::isTypeDriving())
  {
    isVehicularHighConfidence = CLMotionActivity::isVehicularHighConfidence();
    if (a2[1] > 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = isVehicularHighConfidence;
    }

    if (v7)
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    goto LABEL_30;
  }

  isTypeStatic = CLMotionActivity::isTypeStatic();
  if (a2[1] > 0)
  {
    v10 = isTypeStatic;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    *(a1 + 24) = 1;
    v22 = 1;
    *buf = &v22;
    result = sub_1000AE2AC(a1, &v22);
LABEL_31:
    *(result + 40) = a3;
    return result;
  }

  if (CLMotionActivity::isTypeCycling())
  {
LABEL_14:
    *(a1 + 24) = 6;
    v22 = 6;
    *buf = &v22;
    result = sub_1000AE2AC(a1, &v22);
    goto LABEL_31;
  }

  if ((CLMotionActivity::isTypePedestrian() & 1) != 0 || CLMotionActivity::isTypeIndoorPedestrian())
  {
    if (a2[1] >= 1)
    {
      if (CLMotionActivity::isTypeWalking())
      {
        v8 = 4;
LABEL_30:
        *(a1 + 24) = v8;
        v22 = v8;
        *buf = &v22;
        result = sub_1000AE2AC(a1, &v22);
        goto LABEL_31;
      }

      if (CLMotionActivity::isTypeRunning())
      {
        v8 = 5;
        goto LABEL_30;
      }
    }

    v8 = 3;
    goto LABEL_30;
  }

  if ((CLMotionActivity::isTypeUnclassifiedMoving() & 1) == 0)
  {
    v12 = CLMotionActivity::isTypeStatic();
    v13 = a2[1] ? 0 : v12;
    if (v13 != 1)
    {
      goto LABEL_34;
    }
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    goto LABEL_14;
  }

  result = sub_100680DF4(a1, a3, 600.0);
  if ((result & 1) == 0)
  {
LABEL_34:
    if (qword_1025D4770 != -1)
    {
      sub_1018FE80C();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *a2;
      v16 = CLMotionActivity::activityTypeToString();
      v17 = a2[1];
      *buf = 134350082;
      *&buf[4] = a3;
      v33 = 1026;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1026;
      v38 = v17;
      v39 = 2082;
      v40 = CLMotionActivity::activityConfidenceToString();
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#motion,mct,%{public}.3f,unsupported motionType,%{public}d,%{public}s,confidence,%{public}d,%{public}s,Pedestrian Dynamics mode/level will be used", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v18 = *a2;
      v19 = CLMotionActivity::activityTypeToString();
      v20 = a2[1];
      v22 = 134350082;
      v23 = a3;
      v24 = 1026;
      v25 = v18;
      v26 = 2082;
      v27 = v19;
      v28 = 1026;
      v29 = v20;
      v30 = 2082;
      v31 = CLMotionActivity::activityConfidenceToString();
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::updateAnticipatedDeviceDynamicsMode(const CFTimeInterval, const CLMotionActivity &)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    *(a1 + 24) = 4;
    v22 = 4;
    *buf = &v22;
    result = sub_1000AE2AC(a1, &v22);
    goto LABEL_31;
  }

  return result;
}

void sub_1000D0BAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000D0BB8(uint64_t a1, double *a2)
{
  v4 = (a1 + 2448);
  v5 = sub_1000D127C(a1 + 1552, a2, (a1 + 2448));
  if ((v5 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8 = *v4;
      *buf = 134349312;
      v51 = v7;
      v52 = 1026;
      v53 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update fusion predictor filter dynamics mode,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v37 = *a2;
      v38 = *v4;
      v44 = 134349312;
      v45 = v37;
      v46 = 1026;
      v47 = v38;
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

  v9 = v5 ^ 1;
  v10 = *(a1 + 224);
  if (v10 != (a1 + 232))
  {
    do
    {
      if ((sub_1000D127C((v10 + 29), a2, v4) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v11 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v12 = *a2;
          v13 = *v4;
          v14 = *(v10 + 220);
          *buf = 134349568;
          v51 = v12;
          v52 = 1026;
          v53 = v13;
          v54 = 1026;
          v55 = v14;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update provider hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v18 = *a2;
          v19 = *v4;
          v20 = *(v10 + 220);
          v44 = 134349568;
          v45 = v18;
          v46 = 1026;
          v47 = v19;
          v48 = 1026;
          v49 = v20;
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v9 = 1;
      }

      v15 = v10[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v10[2];
          v17 = *v16 == v10;
          v10 = v16;
        }

        while (!v17);
      }

      v10 = v16;
    }

    while (v16 != (a1 + 232));
  }

  for (i = *(a1 + 248); i; i = *i)
  {
    if ((sub_1000D127C((i + 25), a2, v4) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v23 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v24 = *a2;
        v25 = *v4;
        v26 = *(i + 212);
        *buf = 134349568;
        v51 = v24;
        v52 = 1026;
        v53 = v25;
        v54 = 1026;
        v55 = v26;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update fused hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v27 = *a2;
        v28 = *v4;
        v29 = *(i + 212);
        v44 = 134349568;
        v45 = v27;
        v46 = 1026;
        v47 = v28;
        v48 = 1026;
        v49 = v29;
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v9 = 1;
    }
  }

  if (*(a1 + 1104))
  {
    v31 = *(a1 + 816);
    v32 = *a2 <= v31 ? v31 + 0.001 : *a2;
    v43 = v32;
    if ((sub_1000D127C(a1 + 448, &v43, v4) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v33 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 2448);
        v35 = *(a1 + 1096);
        *buf = 134349568;
        v51 = v43;
        v52 = 1026;
        v53 = v34;
        v54 = 1026;
        v55 = v35;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update Latest Selected Hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v40 = *(a1 + 2448);
        v41 = *(a1 + 1096);
        v44 = 134349568;
        v45 = v43;
        v46 = 1026;
        v47 = v40;
        v48 = 1026;
        v49 = v41;
        v42 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      v9 = 1;
    }
  }

  return (v9 & 1) == 0;
}

void sub_1000D1264(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D127C(uint64_t a1, double *a2, int *a3)
{
  sub_100029004(a1, a2);
  if ((*a1 & 1) == 0)
  {
LABEL_27:
    v7 = *a3;
LABEL_28:
    *(a1 + 360) = v7;
    return 1;
  }

  if ((*a3 - 2) >= 9 && *a3 != 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 596);
      v20 = *a2;
      *buf = 67240448;
      v23 = v19;
      v24 = 2050;
      v25 = v20;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,zupt update for known stationary dynamics", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictOnDynamicsModeUpdate(const CFTimeInterval &, const LCFusionDynamicsMode &)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    sub_1000AE380(a1, a2, -1.0);
    goto LABEL_27;
  }

  if (sub_10002980C(a1, a2))
  {
    v7 = *a3;
    v8 = *a3 - 1;
    v9 = 20.0;
    if (v8 <= 9)
    {
      v9 = dbl_101C89520[v8];
    }

    v10 = v9 * v9 * 0.5;
    if (*(a1 + 248) > v10 || *(a1 + 288) > v10)
    {
      *(a1 + 184) = 0u;
      v11 = *(a1 + 176);
      v12 = *(a1 + 208);
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0;
      *(a1 + 248) = v10;
      *(a1 + 288) = v10;
      *(a1 + 200) = v11;
      *(a1 + 208) = v12;
    }

    goto LABEL_28;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v13 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 596);
    v15 = *a2;
    *buf = 67240448;
    v23 = v14;
    v24 = 2050;
    v25 = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,DynamicsMode-based prediction failed", buf, 0x12u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101912E28(buf);
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictOnDynamicsModeUpdate(const CFTimeInterval &, const LCFusionDynamicsMode &)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  return result;
}

void sub_1000D1628(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000D1634(int *a1)
{
  result = *a1;
  if (result <= 12149)
  {
    if (result <= 2009)
    {
      if (result < 0xC)
      {
        return result;
      }

      v3 = (result - 41) > 0x3B;
      v4 = 1 << (result - 41);
      v5 = 0x800000003F08801;
LABEL_20:
      v8 = v4 & v5;
      if (!v3 && v8 != 0)
      {
        return result;
      }

      goto LABEL_71;
    }

    if (result <= 2100)
    {
      v3 = (result - 2010) > 0x3D;
      v4 = 1 << (result + 38);
      v5 = 0x2488004000005401;
      goto LABEL_20;
    }

    v10 = (result - 2101) > 0x31 || ((1 << (result - 53)) & 0x2000000000011) == 0;
    if (!v10 || (result - 3015) < 2)
    {
      return result;
    }

    v7 = 11805;
    goto LABEL_67;
  }

  if (result > 15651)
  {
    if (result > 18239)
    {
      if (result <= 90120)
      {
        if (result > 19089)
        {
          if (result == 19090)
          {
            return result;
          }

          v7 = 19150;
        }

        else
        {
          if (result == 18240)
          {
            return result;
          }

          v7 = 19030;
        }
      }

      else
      {
        if (result > 515620)
        {
          if (result == 515621 || result == 515652)
          {
            return result;
          }

          if (result == 519150)
          {
            return 19160;
          }

          goto LABEL_71;
        }

        if ((result - 90121) < 2)
        {
          return result;
        }

        v7 = 90603;
      }

      goto LABEL_67;
    }

    if (result <= 15732)
    {
      v6 = (result - 15652);
      if (v6 <= 0x3B)
      {
        if (((1 << (result - 36)) & 0x840101) != 0)
        {
          return result;
        }

        if (v6 == 59)
        {
          return 15710;
        }
      }

      goto LABEL_71;
    }

    if (result <= 18049)
    {
      if (result == 15733)
      {
        return result;
      }

      v7 = 17150;
    }

    else
    {
      if (result == 18050)
      {
        return 18070;
      }

      if (result == 18100)
      {
        return 18225;
      }

      v7 = 18200;
    }

LABEL_67:
    if (result == v7)
    {
      return result;
    }

    goto LABEL_71;
  }

  if (result > 15254)
  {
    if (result <= 15459)
    {
      if ((result - 15330) <= 0x1E && ((1 << (result + 30)) & 0x40100001) != 0)
      {
        return result;
      }

      v7 = 15255;
    }

    else
    {
      if (result <= 15591)
      {
        if (result == 15460)
        {
          return result;
        }

        if (result == 15560)
        {
          return 15562;
        }

        goto LABEL_71;
      }

      if (result == 15592 || result == 15610)
      {
        return result;
      }

      v7 = 15620;
    }

    goto LABEL_67;
  }

  if (result <= 15099)
  {
    if (result == 12150 || result == 15030)
    {
      return result;
    }

    v7 = 15055;
    goto LABEL_67;
  }

  if ((result - 15100) <= 0x32 && ((1 << (result + 4)) & 0x4000000000401) != 0 || result == 15230)
  {
    return result;
  }

  if (result == 15250)
  {
    return 15240;
  }

LABEL_71:
  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v11 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v12 = *a1;
    v14[0] = 67240192;
    v14[1] = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Received unhandled motion activity type: %{public}d", v14, 8u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101B8759C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D1A24(int a1)
{
  result = 1;
  if (a1 > 12149)
  {
    if (a1 <= 15651)
    {
      if (a1 > 15329)
      {
        if ((a1 - 15562) <= 0x3A && ((1 << (a1 + 54)) & 0x401000040000001) != 0 || (a1 - 15330) <= 0x1E && ((1 << (a1 + 30)) & 0x40100001) != 0)
        {
          return result;
        }

        v3 = 15460;
      }

      else
      {
        if (a1 > 15099)
        {
          if ((a1 - 15100) > 0x32 || ((1 << (a1 + 4)) & 0x4000000000401) == 0)
          {
            v4 = a1 - 15230;
            if (v4 > 0x19 || ((1 << v4) & 0x2000401) == 0)
            {
              return 0;
            }
          }

          return result;
        }

        if (a1 == 12150 || a1 == 15030)
        {
          return result;
        }

        v3 = 15055;
      }
    }

    else if (a1 > 19029)
    {
      if (a1 <= 90120)
      {
        if (a1 > 19149)
        {
          if (a1 == 19150)
          {
            return result;
          }

          v3 = 19160;
        }

        else
        {
          if (a1 == 19030)
          {
            return result;
          }

          v3 = 19090;
        }
      }

      else if (a1 > 515620)
      {
        if (a1 == 515621)
        {
          return result;
        }

        v3 = 515652;
      }

      else
      {
        if ((a1 - 90121) < 2)
        {
          return result;
        }

        v3 = 90603;
      }
    }

    else if (a1 <= 17149)
    {
      if ((a1 - 15652) <= 0x3A && ((1 << (a1 - 36)) & 0x400000000840101) != 0)
      {
        return result;
      }

      v3 = 15733;
    }

    else
    {
      if ((a1 - 18200) <= 0x28 && ((1 << (a1 - 24)) & 0x10002000001) != 0 || a1 == 17150)
      {
        return result;
      }

      v3 = 18070;
    }

    goto LABEL_55;
  }

  if (a1 > 2009)
  {
    if (a1 <= 2100)
    {
      v5 = a1 - 2010;
      if (v5 <= 0x3D)
      {
        v6 = 1 << v5;
        v7 = 0x2488004000005401;
        goto LABEL_23;
      }

      return 0;
    }

    if ((a1 - 2101) <= 0x31 && ((1 << (a1 - 53)) & 0x2000000000011) != 0 || (a1 - 3015) < 2)
    {
      return result;
    }

    v3 = 11805;
LABEL_55:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 < 0xC)
  {
    return result;
  }

  v8 = a1 - 41;
  if (v8 > 0x3B)
  {
    return 0;
  }

  v6 = 1 << v8;
  v7 = 0x800000003F08801;
LABEL_23:
  if ((v6 & v7) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D1D00(int *a1)
{
  if (*a1 < 3)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled confidence type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87688(a1);
    return 0;
  }

  return result;
}

void sub_1000D1DF8(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000D1FD4(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000D1FD4(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v17 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v18);
  sub_10000B324(v7, v18[0].i8);
  v19 = 25;
  v18[0].i32[0] = 25;
  v18[0].i32[1] = sub_10000AD98(&v19);
  v8 = sub_10000AE98();
  v19 = 4;
  sub_1000D2118(v8, &v19, v18, (a1 + 5220), &v17, a3, a4);
  v9 = *(a1 + 280);
  if (v9)
  {
    (*(*v9 + 40))(v9, a3, a4);
  }

  if (!*a3)
  {
    v10 = *(a1 + 768);
    if (v10)
    {
      sub_1000DD340(v10, (a4 + 8));
    }
  }

  v11 = *(a1 + 304);
  if (v11)
  {
    v12 = *(a4 + 16);
    if (v12 == 15)
    {
      v16 = sub_10000B1F8();
      v19 = 1;
      sub_10001A6B0(v16, &v19);
      v15 = v11;
      v14 = 0;
    }

    else
    {
      if (v12 != 13)
      {
        return;
      }

      v13 = sub_10000B1F8();
      v19 = 1;
      sub_10001A6B0(v13, &v19);
      v14 = *(a4 + 96);
      v15 = v11;
    }

    sub_100EA83F4(v15, v14);
  }
}

void sub_1000D2118(uint64_t a1, int *a2, int32x4_t *a3, int *a4, int *a5, int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v84 = 1024;
        LODWORD(v85) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v79 = 67109376;
        *v80 = v16;
        *&v80[4] = 1024;
        *&v80[6] = v18;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v19);
        if (v19 != &buf)
        {
          free(v19);
        }
      }

      return;
    }

    sub_10000AED0(v79);
    v26 = sub_10000B1F8();
    sub_10000AED4(v26, v67);
    sub_10000AFE4(v79, a2, a3->i32, a4, v67);
    v82 |= 2u;
    v27 = v81;
    if (!v81)
    {
      operator new();
    }

    *(v81 + 492) |= 0x800u;
    v28 = *(v27 + 352);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 200) |= 0x100000u;
    v29 = *(v28 + 160);
    if (!v29)
    {
      operator new();
    }

    v30 = *a5;
    *(v29 + 28) |= 1u;
    *(v29 + 8) = v30;
    v31 = sub_1000D2AD8(a6);
    if (!sub_10041ECEC(v31))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13641, "::CLP::LogEntry::PrivateData::MotionStateMediatorNotification_NotificationType_IsValid(value)");
    }

    v32 = *(v29 + 28);
    *(v29 + 12) = v31;
    *(v29 + 28) = v32 | 6;
    v33 = *(v29 + 16);
    if (!v33)
    {
      operator new();
    }

    v34 = *a6;
    if (*a6 > 2)
    {
      if ((v34 - 3) < 3)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v34)
      {
        if (v34 != 1)
        {
          if (v34 == 2)
          {
            v35 = sub_1005CFDDC(v33);
            sub_10126CE40(a7, v35);
          }

          goto LABEL_64;
        }

LABEL_83:
        sub_10000CE1C(v79);
        return;
      }

      v36 = sub_1000D2A34(v33);
      v37 = *a7;
      *(v36 + 32) |= 1u;
      *(v36 + 8) = v37;
      v38 = sub_1000D2A34(v33);
      v39 = *(a7 + 209);
      *(v38 + 32) |= 4u;
      *(v38 + 24) = v39;
      v40 = sub_1000D2A34(v33);
      v41 = sub_1000D2BF4(v40);
      sub_1000D2CD4(a7 + 8, v41, *(a7 + 209));
    }

LABEL_64:
    v42 = sub_10000BFC0(a1);
    if (*(a1 + 8) == 1)
    {
      v43 = v42;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v44 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v68);
        if (SBYTE3(v72) >= 0)
        {
          v45 = &v68;
        }

        else
        {
          v45 = v68;
        }

        v58 = v45;
        LODWORD(v60[0]) = a3->i32[0];
        sub_1013230DC(v60, v65);
        if (v66 >= 0)
        {
          v46 = v65;
        }

        else
        {
          v46 = v65[0];
        }

        v62 = *a4;
        v47 = __p;
        sub_1013230DC(&v62, __p);
        if (v64 < 0)
        {
          v47 = __p[0];
        }

        v48 = *a6;
        v49 = sub_10000B1F8();
        v50 = sub_100125220(v49);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v43;
        v84 = 2080;
        v85 = v58;
        v86 = 2080;
        v87 = v46;
        v88 = 2080;
        v89 = v47;
        v90 = 1024;
        v91 = v48;
        v92 = 2050;
        v93 = v50;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        if (v66 < 0)
        {
          operator delete(v65[0]);
        }

        if (SBYTE3(v72) < 0)
        {
          operator delete(v68);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        sub_101322EE0(a2, v65);
        if (v66 >= 0)
        {
          v51 = v65;
        }

        else
        {
          v51 = v65[0];
        }

        v62 = a3->i32[0];
        v52 = __p;
        sub_1013230DC(&v62, __p);
        if (v64 < 0)
        {
          v52 = __p[0];
        }

        v59 = *a4;
        sub_1013230DC(&v59, v60);
        if (v61 >= 0)
        {
          v53 = v60;
        }

        else
        {
          v53 = v60[0];
        }

        v54 = *a6;
        v55 = sub_10000B1F8();
        v56 = sub_100125220(v55);
        LODWORD(v68) = 67110402;
        HIDWORD(v68) = v43;
        v69 = 2080;
        v70 = v51;
        v71 = 2080;
        v72 = v52;
        v73 = 2080;
        v74 = v53;
        v75 = 1024;
        v76 = v54;
        v77 = 2050;
        v78 = v56;
        v57 = _os_log_send_and_compose_impl();
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v64 < 0)
        {
          operator delete(__p[0]);
        }

        if (v66 < 0)
        {
          operator delete(v65[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v57);
        if (v57 != &buf)
        {
          free(v57);
        }
      }
    }

    goto LABEL_83;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v20 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v21 = SBYTE3(v87) >= 0 ? &buf : buf;
    *v79 = 136315138;
    *v80 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,unsupported message type,%s", v79, 0xCu);
    if (SBYTE3(v87) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA148();
  }
}

uint64_t sub_1000D2A34(uint64_t a1)
{
  *(a1 + 28) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

void *sub_1000D2AB4(void *result)
{
  *result = &off_1024B4AB0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1000D2AD8(int *a1)
{
  v1 = *a1;
  if (v1 < 6)
  {
    return dword_101C807E8[v1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertMotionStateMediatorNotificationTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA24C(a1);
    return 0;
  }

  return result;
}

void *sub_1000D2BD0(void *result)
{
  *result = off_1024B4A38;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1000D2BF4(uint64_t a1)
{
  *(a1 + 32) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

uint64_t sub_1000D2C74(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_102452C20;
  *(result + 24) = 0;
  return result;
}

double sub_1000D2CA0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024528D8;
  *(a1 + 22) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

void sub_1000D2CD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v6 = sub_1000D1634(a1);
    if ((sub_1000D1A24(v6) & 1) == 0)
    {
      sub_10188270C();
    }

    *(a2 + 92) |= 1u;
    *(a2 + 8) = v6;
    v7 = sub_1000D1D00((a1 + 4));
    if (!sub_10041ECF8(v7))
    {
      sub_101882738();
    }

    *(a2 + 92) |= 2u;
    *(a2 + 12) = v7;
    v8 = sub_1000D3994((a1 + 12));
    if (!sub_10041ECEC(v8))
    {
      sub_101882764();
    }

    *(a2 + 92) |= 4u;
    *(a2 + 16) = v8;
    v9 = sub_1000D1D00((a1 + 16));
    if (!sub_10041ECF8(v9))
    {
      sub_101882790();
    }

    v10 = *(a2 + 92);
    *(a2 + 20) = v9;
    *(a2 + 28) = *(a1 + 32);
    *(a2 + 24) = *(a1 + 36);
    v11 = *(a1 + 48);
    *(a2 + 92) = v10 | 0xB8;
    *(a2 + 29) = v11;
    v12 = sub_1000D3A98((a1 + 52));
    if (!sub_10041ECF8(v12))
    {
      sub_1018827BC();
    }

    *(a2 + 92) |= 0x100u;
    *(a2 + 48) = v12;
    v13 = sub_1000D3B90((a1 + 100));
    if (!sub_10042B16C(v13))
    {
      sub_101882840();
    }

    v14 = *(a2 + 92);
    *(a2 + 76) = v13;
    v15 = *(a1 + 56);
    *(a2 + 92) = v14 | 0x8200;
    *(a2 + 40) = v15;
    v16 = sub_1000D1634((a1 + 88));
    if ((sub_1000D1A24(v16) & 1) == 0)
    {
      sub_1018827E8();
    }

    *(a2 + 92) |= 0x800u;
    *(a2 + 52) = v16;
    v17 = sub_1000D1D00((a1 + 92));
    if (!sub_10041ECF8(v17))
    {
      sub_101882814();
    }

    v18 = *(a2 + 92);
    *(a2 + 72) = v17;
    *(a2 + 92) = v18 | 0x5000;
    v19 = *(a2 + 80);
    if (!v19)
    {
      operator new();
    }

    if ((sub_1000D3C88((a1 + 80), v19, 1) & 1) == 0)
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83560();
      }

      v20 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Error: Failed to convert CLMotionActivity start CF time to protobuf", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B872F0();
      }

      (*(*v19 + 32))(v19);
    }

    if ((a3 & 1) == 0)
    {
      *(a2 + 92) |= 0x2000u;
      v21 = *(a2 + 64);
      if (!v21)
      {
        operator new();
      }

      if ((sub_1000D4008((a1 + 40), v21, 1) & 1) == 0)
      {
        if (qword_1025D4730 != -1)
        {
          sub_101B83ACC();
        }

        v22 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
        {
          *v24 = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to convert CLMotionActivity mach timestamp to protobuf", v24, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B873D4();
        }

        (*(*v21 + 32))(v21);
      }
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v23 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v26 = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "pActivity,Invalid pointer", v26, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B874B8();
    }
  }
}

uint64_t sub_1000D30E4(uint64_t a1, double a2)
{
  *(a1 + 8) = a2;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *(a1 + 16) = a2;
  v4 = (a1 + 16);
  *(a1 + 24) = a2;
  v5 = (a1 + 24);
  v6 = sub_1000D51F0((a1 + 3728));
  if ((*(*v6 + 16))(v6, &v65, &v63, a2))
  {
    v7 = *(&v66 + 1);
    v10 = v66;
    v9 = v10 >> 64;
    v8 = v10;
    if (*(&v66 + 1) == *v66)
    {
      v9 = *(v66 - 8) + 3944;
    }

    v11 = *(v9 - 232);
    v12 = *(v9 - 216);
    *(a1 + 72) = *(v9 - 200);
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    v13 = *(v9 - 184);
    v14 = *(v9 - 168);
    v15 = *(v9 - 152);
    *(a1 + 136) = *(v9 - 136);
    *(a1 + 120) = v15;
    *(a1 + 104) = v14;
    *(a1 + 88) = v13;
    v16 = *(v9 - 120);
    v17 = *(v9 - 104);
    v18 = *(v9 - 88);
    *(a1 + 200) = *(v9 - 72);
    *(a1 + 184) = v18;
    *(a1 + 168) = v17;
    *(a1 + 152) = v16;
    v19 = *(v9 - 56);
    v20 = *(v9 - 40);
    v21 = *(v9 - 24);
    *(a1 + 264) = *(v9 - 8);
    *(a1 + 248) = v21;
    *(a1 + 232) = v20;
    *(a1 + 216) = v19;
    if (v7 == *v8)
    {
      v24 = *--v8;
      v22 = *(v24 + 3712);
      *&v66 = v8;
      v7 = *v8 + 3944;
    }

    else
    {
      v22 = *(v7 - 232);
    }

    *v5 = v22;
    *v4 = v22;
    v25 = v7 - 232;
    *(&v66 + 1) = v25;
    if (*(&v64 + 1) == v25)
    {
      v23 = v22;
    }

    else
    {
      if (v25 == *v8)
      {
        v25 = *(v8 - 1) + 3944;
      }

      v23 = *(v25 - 232);
      *v4 = v23;
    }
  }

  else
  {
    v22 = *v5;
    v23 = *v4;
  }

  if (v22 - v23 >= 0.1)
  {
    if (v22 - v23 <= 10.24)
    {
      goto LABEL_24;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v27 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v28 = *v4;
      v29 = *v5;
      *buf = 134218240;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v29;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "ModelInput, Larger than expected gap between begin and end ts.  Setting end ts to some sane default. (%f, %f)", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB3C4(v4, v5);
    }

    v22 = *v5;
    v26 = -10.24;
  }

  else
  {
    v26 = -2.56;
  }

  v23 = v22 + v26;
  *v4 = v23;
LABEL_24:
  *(a1 + 32) = v22 - v23;
  memset(buf, 0, 20);
  memset(&buf[24], 0, 25);
  v30 = *&buf[16];
  *(a1 + 272) = 0u;
  *(a1 + 288) = v30;
  *(a1 + 304) = *&buf[32];
  *(a1 + 320) = *&buf[48];
  *(a1 + 324) = 1;
  *(a1 + 272) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  sub_1000D53F0(a1, a2);
  if (*(a1 + 32) < 0.1)
  {
    *(a1 + 32) = 0x3FF0000000000000;
  }

  sub_1005A7B84(a1 + 3296, (a1 + 344), a2);
  sub_10062BECC(a1 + 4232, (a1 + 984), a2);
  sub_10062C1E4(a1 + 3440, (a1 + 488), a2);
  v31.n128_f64[0] = a2;
  sub_10062C514(a1 + 3512, (a1 + 704), v31);
  sub_10062C824(a1 + 3800, a1 + 552, a2);
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v32 = *(a1 + 3392);
  if (v32 && *(a1 + 3396) != 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*(**(a1 + 3368) + 24))(*(a1 + 3368), v88, a2);
    v32 = *(a1 + 3392);
  }

  if ((v32 == 1 || *(a1 + 3396) == 1) && *(a1 + 3432) == 1)
  {
    v34 = sub_1006338D8(*(a1 + 3376), &v67, a2, *(a1 + 3400));
  }

  else
  {
    v34 = 0;
  }

  if (*(a1 + 3396) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v35 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v36 = *(a1 + 3416);
      *buf = 67110656;
      *&buf[4] = v36;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      *&buf[18] = 1024;
      *&buf[20] = v33;
      *&buf[24] = 2048;
      *&buf[26] = *&v88[0];
      *&buf[34] = 1024;
      *&buf[36] = v34;
      *&buf[40] = 2048;
      *&buf[42] = v67;
      *&buf[50] = 1024;
      v87 = *v88 == *&v67;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v56 = *(a1 + 3416);
      v72 = 67110656;
      v73 = v56;
      v74 = 2048;
      v75 = a2;
      v76 = 1024;
      v77 = v33;
      v78 = 2048;
      v79 = *&v88[0];
      v80 = 1024;
      v81 = v34;
      v82 = 2048;
      v83 = v67;
      v84 = 1024;
      v85 = *v88 == *&v67;
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLOdometerEntry>, T = CMDataProvider::Types::CMDPOdometer, LegacyT = CLOdometerEntry, ConverterT = OdometerConverter]", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }
  }

  v37 = (a1 + 408);
  v38 = *(a1 + 3392);
  if (v38 == 1)
  {
    v45 = v70;
    *(a1 + 440) = v69;
    *(a1 + 456) = v45;
    *(a1 + 472) = v71;
    v46 = v68;
    *v37 = v67;
    *(a1 + 424) = v46;
  }

  else if (!v38)
  {
    v39 = *(&v88[0] + 1);
    v40 = *&v88[3];
    v41 = *(&v88[1] + 1);
    v42 = *&v88[1];
    v43 = v89;
    v44 = BYTE4(v89);
    *(a1 + 408) = *&v88[0];
    *(a1 + 416) = v88[2];
    *(a1 + 432) = v39;
    *(a1 + 440) = v40;
    *(a1 + 448) = v41;
    *(a1 + 456) = v42;
    *(a1 + 464) = *(&v88[3] + 8);
    *(a1 + 480) = v43;
    *(a1 + 481) = v44;
  }

  if (*v37 > 0.0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v47 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v48 = *(a1 + 432);
      v49 = *(a1 + 408);
      v50 = *(a1 + 416);
      v51 = *(a1 + 448);
      *buf = 134219008;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v49;
      *&buf[22] = 2048;
      *&buf[24] = v48;
      *&buf[32] = 2048;
      *&buf[34] = v50;
      *&buf[42] = 2048;
      *&buf[44] = v51;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "ModelInput, Event time, %.2f, GPS sample time, %.2f, distance, %.2f, speed, %.2f, altitude, %.2f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v58 = *(a1 + 432);
      v59 = *(a1 + 408);
      v60 = *(a1 + 416);
      v61 = *(a1 + 448);
      LODWORD(v88[0]) = 134219008;
      *(v88 + 4) = a2;
      WORD6(v88[0]) = 2048;
      *(v88 + 14) = v59;
      WORD3(v88[1]) = 2048;
      *(&v88[1] + 1) = v58;
      LOWORD(v88[2]) = 2048;
      *(&v88[2] + 2) = v60;
      WORD5(v88[2]) = 2048;
      *(&v88[2] + 12) = v61;
      v62 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::setTime(CFAbsoluteTime)", "%s\n", v62);
      if (v62 != buf)
      {
        free(v62);
      }
    }
  }

  sub_10062CB98(a1 + 3872, a1 + 720, a2);
  v52.n128_f64[0] = a2;
  sub_10062CF08(a1 + 4016, a1 + 904, v52);
  v53.n128_f64[0] = a2;
  sub_10062D22C(a1 + 3944, (a1 + 888), v53);
  sub_10062D53C(a1 + 4088, (a1 + 928), a2);
  v54.n128_f64[0] = a2;
  sub_10062D854(a1 + 4160, a1 + 960, v54);
  sub_10062DB78(a1 + 4304, a1 + 1016, a2);
  sub_10062DEB8();
  return sub_10062E224(a1 + 4448, a1 + 3136, a2);
}

uint64_t sub_1000D3994(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled mounted state type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87774(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3A98(int *a1)
{
  if (*a1 < 3)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled vehicle exit state type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87860(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3B90(int *a1)
{
  if (*a1 < 5)
  {
    return (*a1 + 1);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled vehicle confidence type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8794C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3C88(double *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "pTimeStamp,Invalid pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8575C();
    }

    return 0;
  }

  v4 = *a1;
  v5 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v12 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 134349056;
      v23 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CF absolute time cannot be negative or infinite: %{public}lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B85488();
    }

    return 0;
  }

  *(a2 + 36) |= 1u;
  *(a2 + 8) = v4;
  if ((a3 & 1) == 0)
  {
    if (!qword_102664AD0)
    {
      operator new();
    }

    v21 = 0xBFF0000000000000;
    v10 = sub_1002633B8(qword_102664AD0, a1, &v21);
    if (v10)
    {
      v15 = v21;
      *(a2 + 36) |= 2u;
      *(a2 + 16) = v15;
    }

    else
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83ACC();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134217984;
        v23 = *&v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Error: CF absolute to mach absolute time conversion failed: %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B85574();
      }
    }

    v20 = 0xBFF0000000000000;
    if (sub_100131674(qword_102664AD0, &v21, &v20))
    {
      v18 = v20;
      *(a2 + 36) |= 4u;
      *(a2 + 24) = v18;
      return v10;
    }

    if (qword_1025D4730 != -1)
    {
      sub_101B83ACC();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = v21;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Error: Mach absolute to mach continuous time conversion failed: %lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B85668();
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000D4008(uint64_t *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "pTimeStamp,Invalid pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B83CDC();
    }

    return 0;
  }

  v4 = *a1;
  v5 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v12 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 134349056;
      v24 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Mach absolute time cannot be negative or infinite: %{public}lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B839E0();
    }

    return 0;
  }

  *(a2 + 36) |= 2u;
  *(a2 + 16) = v4;
  if ((a3 & 1) == 0)
  {
    if (!qword_102664AD0)
    {
      operator new();
    }

    v22 = 0xBFF0000000000000;
    v10 = sub_100131674(qword_102664AD0, a1, &v22);
    if (v10)
    {
      v15 = v22;
      *(a2 + 36) |= 4u;
      *(a2 + 24) = v15;
    }

    else
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83ACC();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134217984;
        v24 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Mach absolute to mach continuous time conversion failed: %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B83AF4();
      }
    }

    v21 = 0xBFF0000000000000;
    if (sub_100309F2C(qword_102664AD0, a1, &v21))
    {
      v18 = v21;
      *(a2 + 36) |= 1u;
      *(a2 + 8) = v18;
      return v10;
    }

    if (qword_1025D4730 != -1)
    {
      sub_101B83ACC();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a1;
      *buf = 134217984;
      v24 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Mach absolute to CF absolute time conversion failed: %lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B83BE8();
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000D4388(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EF8 + 16);
    }

    v9 = sub_1000D4524(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_1000D4484(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_102636CF8 + 16);
      }

      v6 = sub_1000D45F8(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 += v8 + v9 + 1;
      v3 = *(a1 + 32);
    }

    result = ((v3 >> 1) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = result;
  return result;
}

uint64_t sub_1000D4524(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 28))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_102637F00 + 8);
  }

  v5 = sub_1000D4484(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637F00 + 16);
    }

    v9 = sub_10042F2A4(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 1);
  }

LABEL_18:
  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000D45F8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_39;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 92);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v7 = *(a1 + 12);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 92);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if ((v3 & 8) != 0)
  {
LABEL_28:
    v11 = *(a1 + 20);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

LABEL_34:
  v13 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v13 += 5;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 += 9;
  }

  v5 = v13 + ((v3 >> 6) & 2);
LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v3 & 0x100) != 0)
  {
    v14 = *(a1 + 48);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v5) = v15 + v5;
  }

  v16 = v5 + 9;
  if ((v3 & 0x200) == 0)
  {
    v16 = v5;
  }

  if ((v3 & 0x400) != 0)
  {
    v5 = v16 + 9;
  }

  else
  {
    v5 = v16;
  }

  if ((v3 & 0x800) != 0)
  {
    v17 = *(a1 + 52);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
    if ((v3 & 0x1000) == 0)
    {
LABEL_54:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_70;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  v19 = *(a1 + 72);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 92);
  }

  else
  {
    v20 = 2;
  }

  v5 = (v20 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_55:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_80;
  }

LABEL_70:
  v21 = *(a1 + 64);
  if (!v21)
  {
    v21 = *(qword_102636CC0 + 64);
  }

  v22 = *(v21 + 36);
  v23 = (v22 << 31 >> 31) & 9;
  if ((v22 & 2) != 0)
  {
    v23 += 9;
  }

  if ((v22 & 4) != 0)
  {
    v23 += 9;
  }

  if (*(v21 + 36))
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(v21 + 32) = v24;
  v5 = (v5 + v24 + 2);
  v3 = *(a1 + 92);
  if ((v3 & 0x4000) == 0)
  {
LABEL_56:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

LABEL_80:
  v25 = *(a1 + 80);
  if (!v25)
  {
    v25 = *(qword_102636CC0 + 80);
  }

  v26 = *(v25 + 36);
  v27 = (v26 << 31 >> 31) & 9;
  if ((v26 & 2) != 0)
  {
    v27 += 9;
  }

  if ((v26 & 4) != 0)
  {
    v27 += 9;
  }

  if (*(v25 + 36))
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v25 + 32) = v28;
  v5 = (v5 + v28 + 2);
  if ((*(a1 + 92) & 0x8000) != 0)
  {
LABEL_90:
    v29 = *(a1 + 76);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 12;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
    }

    else
    {
      v30 = 3;
    }

    v5 = (v30 + v5);
  }

LABEL_96:
  *(a1 + 88) = v5;
  return v5;
}

uint64_t sub_1000D48FC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EF8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_1000D4998(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637F00 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_102637F00 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4A24(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102636CF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4AC0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 29), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_31:
  v7 = *(v5 + 64);
  if (!v7)
  {
    v7 = *(qword_102636CC0 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v7, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_34:
  v8 = *(v5 + 80);
  if (!v8)
  {
    v8 = *(qword_102636CC0 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v8, a2, a4);
  if ((*(v5 + 92) & 0x8000) != 0)
  {
LABEL_37:
    v9 = *(v5 + 76);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, v9, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4CD8(char *a1, int a2, uint64_t a3, double a4)
{
  v23 = a2;
  *buf = off_1024628A0;
  *&v42[4] = buf;
  v8 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(buf);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (sub_1000A6B04(a1, a2, a3))
  {
    v9 = sub_1003DD9F8((a1 + 24), &v23);
    v10 = (*(**v9 + 32))(*v9, a3);
    v11 = (*(*a1 + 24))(a1, a3);
    v12 = v9[3];
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v13 = v12 + a4;
    v14 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v15 = a1 + 48;
      if (a1[71] < 0)
      {
        v15 = *v15;
      }

      *buf = 136316674;
      *&buf[4] = v15;
      v39 = 1024;
      v40 = v23;
      v41 = 2048;
      *v42 = a4;
      *&v42[8] = 1024;
      *&v42[10] = v10 >= a4;
      v43 = 1024;
      v44 = v13 < v11;
      v45 = 2048;
      v46 = v10;
      v47 = 2048;
      v48 = v11;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[Composite-%s] Stream %d readiness evaluated for time %f, future, %d, passed latency, %d, latest, %f, now, %f", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v21 = a1 + 48;
      if (a1[71] < 0)
      {
        v21 = *v21;
      }

      v24 = 136316674;
      v25 = v21;
      v26 = 1024;
      v27 = v23;
      v28 = 2048;
      v29 = a4;
      v30 = 1024;
      v31 = v10 >= a4;
      v32 = 1024;
      v33 = v13 < v11;
      v34 = 2048;
      v35 = v10;
      v36 = 2048;
      v37 = v11;
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::isStreamReady(CMDataProviderFactory::FactoryStream, CFTimeInterval, CMDataProviderFactoryStream::TimeBase) const", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    return v13 < v11 || v10 >= a4;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018D6BF4();
  }

  v17 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
  {
    v18 = a1 + 48;
    if (a1[71] < 0)
    {
      v18 = *v18;
    }

    *buf = 136315650;
    *&buf[4] = v18;
    v39 = 1024;
    v40 = a2;
    v41 = 1024;
    *v42 = a3;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "[Composite-%s] Temporarily unsupported time base request for stream %d, base %d", buf, 0x18u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v19 = a1 + 48;
    if (a1[71] < 0)
    {
      v19 = *v19;
    }

    v24 = 136315650;
    v25 = v19;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    LODWORD(v29) = a3;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CMDataProviderComposite::Composite::isStreamReady(CMDataProviderFactory::FactoryStream, CFTimeInterval, CMDataProviderFactoryStream::TimeBase) const", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  return result;
}

void sub_1000D5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000A69EC(va);
  _Unwind_Resume(a1);
}

double sub_1000D51B0(uint64_t a1, int a2)
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

    return *(a1 + 56 * (v3 - v4) + 72);
  }

  return result;
}

uint64_t sub_1000D51F0(uint64_t *a1)
{
  if (!*(a1 + 6))
  {
    v1 = *a1;
    if (*a1)
    {
      return v1;
    }

LABEL_8:
    sub_1018EB4D8();
  }

  v1 = *a1;
  if (*(a1 + 28) == 1 && v1 == 0)
  {
    goto LABEL_8;
  }

  return v1;
}

uint64_t sub_1000D522C(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  result = (*(*a1 + 16))(a1, &v7, &v5);
  if (result)
  {
    v4 = *(&v8 + 1);
    if (*(&v8 + 1) == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      if (*v8 == *(&v8 + 1))
      {
        v4 = *(v8 - 8) + 4096;
      }

      *a2 = *(v4 - 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D52D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 >> 8));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 16 * v4;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 >> 8));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 16 * v9;
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4096;
      }

      v18 = vabdd_f64(*(v17 - 16), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4096;
        }

        v14 = v18;
        if (*(v19 - 16) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4096;
      }

      v15 -= 16;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

void sub_1000D53F0(uint64_t a1, double a2)
{
  sub_1000D6D94(4, &v145);
  v7 = v145;
  if (v145 && v146 != 1)
  {
LABEL_60:
    v137 = 0;
    goto LABEL_61;
  }

  *v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v8 = sub_1000D51F0((a1 + 3584));
  if (!(*(*v8 + 16))(v8, v143, &v141, a2))
  {
    v31 = a1;
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v31 = a1;
    }

    v32 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v33 = sub_1000D51F0((v31 + 3584));
      v34 = v33[8];
      if (v34)
      {
        v35 = *(*(v33[4] + 8 * ((v34 + v33[7] - 1) / 0x16uLL)) + 184 * ((v34 + v33[7] - 1) % 0x16uLL) + 8);
      }

      else
      {
        v35 = 0xFFEFFFFFFFFFFFFFLL;
      }

      *buf = 134218240;
      v155 = a2;
      v156 = 2048;
      *v157 = v35;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Legacy steps lookup failed, time, %f, lastEntry, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB688((a1 + 3584), a2);
    }

    goto LABEL_60;
  }

  v9 = *(&v144 + 1);
  if (*(&v142 + 1) == *(&v144 + 1))
  {
LABEL_24:
    v137 = 0;
  }

  else
  {
    v10 = *v144;
    v11 = *v144;
    v12 = *(&v144 + 1);
    v13 = v144;
    while (1)
    {
      v14 = *(&v144 + 1);
      if (*(&v144 + 1) == v10)
      {
        v14 = *(v144 - 8) + 4048;
      }

      v15 = v12;
      if (v12 == v11)
      {
        v15 = *(v13 - 8) + 4048;
      }

      if (*(v14 - 176) > *(v15 - 176))
      {
        v16 = *(&v144 + 1);
        if (*(&v144 + 1) == v10)
        {
          v16 = *(v144 - 8) + 4048;
        }

        v17 = v12;
        if (v12 == v11)
        {
          v17 = *(v13 - 8) + 4048;
        }

        if (*(v16 - 176) - *(v17 - 176) < 60.0)
        {
          v18 = *(&v144 + 1);
          if (*(&v144 + 1) == v10)
          {
            v18 = *(v144 - 8) + 4048;
          }

          v19 = v12;
          if (v12 == v11)
          {
            v19 = *(v13 - 8) + 4048;
          }

          if (*(v18 - 176) - *(v19 - 176) > *(a1 + 24) - *(a1 + 16) + -1.0)
          {
            break;
          }
        }
      }

      if (v12 == v11)
      {
        v20 = *(v13 - 8);
        v13 -= 8;
        v11 = v20;
        v12 = v20 + 4048;
      }

      v12 -= 184;
      if (*(&v142 + 1) == v12)
      {
        goto LABEL_24;
      }
    }

    if (*(&v144 + 1) == v10)
    {
      v9 = *(v144 - 8) + 4048;
    }

    v130 = *(v9 - 160);
    v126 = *(v9 - 24);
    v127 = *(v9 - 32);
    v128 = *(v9 - 10);
    if (v12 == v11)
    {
      v12 = *(v13 - 8) + 4048;
    }

    v2 = *(v9 - 176);
    v4 = *(v9 - 152);
    v124 = *(v9 - 104);
    v5 = *(v12 - 176);
    v129 = *(v12 - 160);
    v3 = *(v12 - 152);
    v137 = 1;
    v125 = *(v12 - 32);
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
  }

  v21 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v22 = v5;
    *buf = 134218752;
    v23 = 0xBFF0000000000000;
    if (!v137)
    {
      v22 = -1.0;
    }

    v155 = v22;
    v24 = v129;
    if (!v137)
    {
      v24 = -1;
    }

    v156 = 1024;
    if (v137)
    {
      v23 = *&v2;
    }

    *v157 = v24;
    v25 = v130;
    if (!v137)
    {
      v25 = -1;
    }

    *&v157[4] = 2048;
    *&v157[6] = v23;
    *&v157[14] = 1024;
    *&v157[16] = v25;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v26 = *&v5;
    if (!v137)
    {
      v26 = 0xBFF0000000000000;
    }

    *__p = 134218752;
    v27 = v129;
    if (!v137)
    {
      v27 = -1;
    }

    *&__p[4] = v26;
    if (v137)
    {
      v28 = *&v2;
    }

    else
    {
      v28 = 0xBFF0000000000000;
    }

    v149 = 1024;
    v29 = v130;
    if (!v137)
    {
      v29 = -1;
    }

    *v150 = v27;
    *&v150[4] = 2048;
    *&v150[6] = v28;
    *&v150[14] = 1024;
    *&v150[16] = v29;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

LABEL_61:
  v36 = a1;
  v152 = 0uLL;
  LOBYTE(v153) = 0;
  if (v7 != 1 && v146 != 1)
  {
    v132 = 0;
    v136 = 0;
    v133 = 0u;
    v39 = 0.0;
    v42 = -1;
    v134 = 1;
    v135 = 0;
    goto LABEL_213;
  }

  v143[0] = 0;
  v143[1] = 0;
  *&v144 = 0;
  v37 = v147;
  v38 = v147 + a2;
  if (!sub_1011FE4B8(*(a1 + 3280), v143, a2 + -60.0, v147 + a2))
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v36 = a1;
    }

    v41 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider legacy steps lookup failed", buf, 2u);
    }

    v40 = 0.0;
    if (!sub_10000A100(121, 2))
    {
      v136 = 0;
      goto LABEL_72;
    }

    sub_1018EB7F8(buf);
    *__p = 0;
    v80 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v80);
    if (v80 != buf)
    {
      free(v80);
    }

    v136 = 0;
    v39 = 0.0;
    goto LABEL_260;
  }

  v39 = *(v143[1] - 7);
  if (vabdd_f64(v39, a2) > v37)
  {
    v136 = 0;
    v40 = 0.0;
LABEL_72:
    v39 = 0.0;
    goto LABEL_97;
  }

  v40 = 0.0;
  if (v143[1] == v143[0])
  {
LABEL_83:
    v136 = 0;
    v39 = 0.0;
  }

  else
  {
    v43 = v143[1];
    v44 = v143[1];
    while (1)
    {
      v45 = *(v44 - 7);
      v44 -= 7;
      v46 = v45;
      v47 = v39 - v45;
      v48 = v39 > v45 && v47 < 60.0;
      if (v48 && v47 > *(a1 + 24) - *(a1 + 16) + -1.0)
      {
        break;
      }

      v43 = v44;
      if (v44 == v143[0])
      {
        goto LABEL_83;
      }
    }

    v120 = *(v143[1] - 11);
    v116 = *(v143[1] - 2);
    v119 = *(v143[1] - 16);
    v131 = *(v143[1] - 3);
    v122 = *(v143[1] - 12);
    v123 = *(v43 - 12);
    v121 = *(v43 - 11);
    v136 = 1;
    v40 = v46;
    v117 = *(v143[1] - 5);
    v118 = *(v43 - 5);
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v36 = a1;
  }

  v49 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v50 = v40;
    *buf = 134218752;
    v51 = 0xBFF0000000000000;
    if (!v136)
    {
      v50 = -1.0;
    }

    v155 = v50;
    v52 = v123;
    if (!v136)
    {
      v52 = -1;
    }

    v156 = 1024;
    if (v136)
    {
      v51 = *&v39;
    }

    *v157 = v52;
    v53 = v122;
    if (!v136)
    {
      v53 = -1;
    }

    *&v157[4] = 2048;
    *&v157[6] = v51;
    *&v157[14] = 1024;
    *&v157[16] = v53;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v108 = *&v40;
    if (!v136)
    {
      v108 = 0xBFF0000000000000;
    }

    *__p = 134218752;
    v109 = v123;
    if (!v136)
    {
      v109 = -1;
    }

    *&__p[4] = v108;
    if (v136)
    {
      v110 = *&v39;
    }

    else
    {
      v110 = 0xBFF0000000000000;
    }

    v149 = 1024;
    v111 = v122;
    if (!v136)
    {
      v111 = -1;
    }

    *v150 = v109;
    *&v150[4] = 2048;
    *&v150[6] = v110;
    *&v150[14] = 1024;
    *&v150[16] = v111;
    v112 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v112);
    if (v112 != buf)
    {
      free(v112);
    }

LABEL_260:
    v36 = a1;
  }

LABEL_97:
  v141 = 0uLL;
  *&v142 = 0;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v36 = a1;
  }

  v54 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v55 = *(v36 + 24) - *(v36 + 16);
    *buf = 134218496;
    v155 = a2 - v55;
    v156 = 2048;
    *v157 = a2;
    *&v157[8] = 2048;
    *&v157[10] = v55;
    _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet steps lookup, start, %f, end, %f, duration, %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v78 = *(a1 + 24) - *(a1 + 16);
    *__p = 134218496;
    *&__p[4] = a2 - v78;
    v149 = 2048;
    *v150 = a2;
    *&v150[8] = 2048;
    *&v150[10] = v78;
    v79 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v79);
    if (v79 != buf)
    {
      free(v79);
    }

    v36 = a1;
  }

  if (sub_1000D6FDC(*(v36 + 3280), &v141, a2 - (*(v36 + 24) - *(v36 + 16)), v38))
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v36 = a1;
    }

    v56 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v155) = -1227133513 * ((*(&v141 + 1) - v141) >> 3);
      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet lookup results, size, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB7F8(buf);
      *__p = 67109120;
      *&__p[4] = -1227133513 * ((*(&v141 + 1) - v141) >> 3);
      v81 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v81);
      if (v81 != buf)
      {
        free(v81);
      }

      v36 = a1;
    }

    v58 = *(&v141 + 1);
    v57 = v141;
    v133 = *(*(&v141 + 1) - 56);
    v135 = *(*(&v141 + 1) - 40);
    v132 = *(*(&v141 + 1) - 32);
    v152 = *(*(&v141 + 1) - 24);
    v134 = *(*(&v141 + 1) - 4);
    v153 = *(*(&v141 + 1) - 8);
    if (v141 == *(&v141 + 1))
    {
      goto LABEL_167;
    }

    do
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v59 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v60 = 0;
        v61 = *v57;
        v62 = *(v57 + 4);
        v63 = *(v57 + 3);
        v64 = *(v57 + 13) & 0x3FF;
        v150[9] = 10;
        strcpy(__p, "0000000000");
        v65 = 9;
        do
        {
          if ((v64 >> v60))
          {
            if (v150[9] >= 0)
            {
              v66 = __p;
            }

            else
            {
              v66 = *__p;
            }

            v66[v65] = 49;
          }

          ++v60;
          --v65;
        }

        while (v60 != 10);
        if (v150[9] >= 0)
        {
          v67 = __p;
        }

        else
        {
          v67 = *__p;
        }

        *buf = 134218754;
        v155 = v61;
        v156 = 1024;
        *v157 = v62;
        *&v157[4] = 2048;
        *&v157[6] = v63;
        *&v157[14] = 2080;
        *&v157[16] = v67;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet lookup result, startTime, %f, count, %d, distance, %f, config, %s", buf, 0x26u);
        if ((v150[9] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        v68 = 0;
        v69 = *v57;
        v70 = *(v57 + 4);
        v71 = *(v57 + 3);
        v72 = *(v57 + 13) & 0x3FF;
        v140 = 10;
        strcpy(v139, "0000000000");
        v73 = 9;
        do
        {
          if ((v72 >> v68))
          {
            v74 = v139;
            if (v140 < 0)
            {
              v74 = v139[0];
            }

            *(v74 + v73) = 49;
          }

          ++v68;
          --v73;
        }

        while (v68 != 10);
        v75 = v139;
        if (v140 < 0)
        {
          v75 = v139[0];
        }

        *__p = 134218754;
        *&__p[4] = v69;
        v149 = 1024;
        *v150 = v70;
        *&v150[4] = 2048;
        *&v150[6] = v71;
        *&v150[14] = 2080;
        *&v150[16] = v75;
        v76 = _os_log_send_and_compose_impl();
        if (v140 < 0)
        {
          operator delete(v139[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v76);
        if (v76 != buf)
        {
          free(v76);
        }
      }

      v57 += 7;
    }

    while (v57 != v58);
    goto LABEL_165;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v36 = a1;
  }

  v77 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider pednet steps lookup failed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    *__p = 0;
    v82 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v82);
    if (v82 != buf)
    {
      free(v82);
    }

    v132 = 0;
    v133 = 0u;
    v134 = 1;
    v135 = 0;
LABEL_165:
    v36 = a1;
    goto LABEL_166;
  }

  v132 = 0;
  v133 = 0u;
  v134 = 1;
  v135 = 0;
LABEL_166:
  v57 = v141;
LABEL_167:
  if (v57)
  {
    *(&v141 + 1) = v57;
    operator delete(v57);
  }

  if (v143[0])
  {
    v143[1] = v143[0];
    operator delete(v143[0]);
  }

  v42 = v131 | 1;
  if (v146)
  {
    if ((v137 & v136) == 1 && (v2 != v39 || v5 != v40))
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v83 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219520;
        v155 = a2;
        v156 = 2048;
        *v157 = v2;
        *&v157[8] = 2048;
        *&v157[10] = v39;
        *&v157[18] = 2048;
        *&v157[20] = v5;
        *&v157[28] = 2048;
        *&v157[30] = v40;
        *&v157[38] = 1024;
        *v158 = v2 == v39;
        *&v158[4] = 1024;
        *&v158[6] = v5 == v40;
        _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "[Steps snapshot] Detected difference in step outputs, time, %f, legacy, start, [%f, %f], end, [%f, %f], equal, [%d, %d]", buf, 0x40u);
      }

      v36 = a1;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        *__p = 134219520;
        *&__p[4] = a2;
        v149 = 2048;
        *v150 = v2;
        *&v150[8] = 2048;
        *&v150[10] = v39;
        *&v150[18] = 2048;
        *&v150[20] = v5;
        *&v150[28] = 2048;
        *&v150[30] = v40;
        *&v150[38] = 1024;
        *v151 = v2 == v39;
        *&v151[4] = 1024;
        *&v151[6] = v5 == v40;
        v113 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v113);
        if (v113 != buf)
        {
          free(v113);
        }

        v36 = a1;
      }
    }

    if (v137)
    {
      v84 = v130 - v129;
      if (v130 == v129)
      {
        v85 = 0.0;
      }

      else
      {
        v85 = v4 - v3;
      }

      v86 = v2;
    }

    else
    {
      v85 = 0.0;
      v84 = 0;
      v86 = 0.0;
    }

    v87 = *(v36 + 248) != 1 || (v84 | v135) == 0;
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v88 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, v87))
    {
      v89 = 0;
      v150[9] = 10;
      strcpy(__p, "0000000000");
      v90 = 9;
      do
      {
        if (((v134 & 0x3FF) >> v89))
        {
          if (v150[9] >= 0)
          {
            v91 = __p;
          }

          else
          {
            v91 = *__p;
          }

          v91[v90] = 49;
        }

        ++v89;
        --v90;
      }

      while (v89 != 10);
      v92 = __p;
      if (v150[9] < 0)
      {
        v92 = *__p;
      }

      *buf = 134219778;
      v155 = a2;
      v156 = 2048;
      *v157 = v86;
      *&v157[8] = 1024;
      *&v157[10] = v84;
      *&v157[14] = 2048;
      *&v157[16] = v85;
      *&v157[24] = 2048;
      *&v157[26] = v133;
      *&v157[34] = 1024;
      *&v157[36] = v135;
      *v158 = 2048;
      *&v158[2] = v132;
      *&v158[10] = 2080;
      *&v158[12] = v92;
      _os_log_impl(dword_100000000, v88, v87, "[Steps snapshot] Comparison, %f, legacy step, startTime, %f, count, %d, distance, %f, arbitrated, startTime, %f, count, %d, distance, %f, config, %s", buf, 0x4Au);
      if ((v150[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v103 = 0;
      BYTE7(v144) = 10;
      strcpy(v143, "0000000000");
      v104 = 9;
      do
      {
        if (((v134 & 0x3FF) >> v103))
        {
          if ((SBYTE7(v144) & 0x80u) == 0)
          {
            v105 = v143;
          }

          else
          {
            v105 = v143[0];
          }

          *(v105 + v104) = 49;
        }

        ++v103;
        --v104;
      }

      while (v103 != 10);
      v106 = v143;
      if (SBYTE7(v144) < 0)
      {
        v106 = v143[0];
      }

      *__p = 134219778;
      *&__p[4] = a2;
      v149 = 2048;
      *v150 = v86;
      *&v150[8] = 1024;
      *&v150[10] = v84;
      *&v150[14] = 2048;
      *&v150[16] = v85;
      *&v150[24] = 2048;
      *&v150[26] = v133;
      *&v150[34] = 1024;
      *&v150[36] = v135;
      *v151 = 2048;
      *&v151[2] = v132;
      *&v151[10] = 2080;
      *&v151[12] = v106;
      v107 = _os_log_send_and_compose_impl();
      if (SBYTE7(v144) < 0)
      {
        operator delete(v143[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v107);
      if (v107 != buf)
      {
        free(v107);
      }
    }

    if ((v134 & 2) == 0 && (v86 != *&v133 || v84 != v135))
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v93 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, v87))
      {
        v94 = *(a1 + 248);
        *buf = 134219776;
        v155 = a2;
        v156 = 1024;
        *v157 = v94;
        *&v157[4] = 2048;
        *&v157[6] = v86;
        *&v157[14] = 1024;
        *&v157[16] = v84;
        *&v157[20] = 2048;
        *&v157[22] = v85;
        *&v157[30] = 2048;
        *&v157[32] = v133;
        *v158 = 1024;
        *&v158[2] = v135;
        *&v158[6] = 2048;
        *&v158[8] = v132;
        _os_log_impl(dword_100000000, v93, v87, "[Steps snapshot] Detected difference in batched pednet steps, time, %f in session, %d, legacy, [%f, %d, %f], batched pednet, [%f, %d, %f]", buf, 0x46u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        v114 = *(a1 + 248);
        *__p = 134219776;
        *&__p[4] = a2;
        v149 = 1024;
        *v150 = v114;
        *&v150[4] = 2048;
        *&v150[6] = v86;
        *&v150[14] = 1024;
        *&v150[16] = v84;
        *&v150[20] = 2048;
        *&v150[22] = v85;
        *&v150[30] = 2048;
        *&v150[32] = v133;
        *v151 = 1024;
        *&v151[2] = v135;
        *&v151[6] = 2048;
        *&v151[8] = v132;
        v115 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v115);
        if (v115 != buf)
        {
          free(v115);
        }
      }
    }

    v36 = a1;
  }

LABEL_213:
  if (v145 != 1)
  {
    if (!v145 && v137)
    {
      v95 = v4 - v3;
      if ((v128 - 1) > 8u)
      {
        v96 = 0;
      }

      else
      {
        v96 = dword_101C82254[(v128 - 1)];
      }

      v100 = v96 | 0x20;
      if (((1 << v128) & 0x154) == 0)
      {
        v100 = v96;
      }

      if (v128 <= 8u)
      {
        v96 = v100;
      }

      if (v130 == v129)
      {
        v95 = 0.0;
      }

      *(v36 + 272) = v2;
      *(v36 + 280) = v2 + 2.55999994;
      *(v36 + 288) = v130 - v129;
      v101 = vdup_n_s32(v130 == v129);
      *(v36 + 296) = v95;
      v102.i64[0] = v101.u32[0];
      v102.i64[1] = v101.u32[1];
      *(v36 + 304) = vandq_s8(v124, vcgezq_s64(vshlq_n_s64(v102, 0x3FuLL)));
      *(v36 + 320) = v126;
      *(v36 + 324) = v96 | 1;
      *(v36 + 328) = v2;
      *(v36 + 336) = v127 - v125;
    }

    return;
  }

  if (!v136)
  {
    if (*(v36 + 248) != 1)
    {
      return;
    }

LABEL_224:
    *(v36 + 272) = v133;
    *(v36 + 288) = v135;
    *(v36 + 296) = v132;
    *(v36 + 304) = v152;
    *(v36 + 320) = v153;
    *(v36 + 324) = v134;
    return;
  }

  *(v36 + 328) = v39;
  *(v36 + 336) = v120 - v121;
  if (*(v36 + 248))
  {
    goto LABEL_224;
  }

  v97 = v117 - v118;
  if (v122 == v123)
  {
    v97 = 0.0;
  }

  *(v36 + 272) = v39;
  *(v36 + 280) = v39 + 2.55999994;
  *(v36 + 288) = v122 - v123;
  *(v36 + 296) = v97;
  v98 = vdup_n_s32(v122 == v123);
  v99.i64[0] = v98.u32[0];
  v99.i64[1] = v98.u32[1];
  *(v36 + 304) = vandq_s8(v116, vcgezq_s64(vshlq_n_s64(v99, 0x3FuLL)));
  *(v36 + 320) = v119;
  *(v36 + 324) = v42;
}

void sub_1000D6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6D94(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1026583B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583B8))
  {
    v10 = 0;
    sub_100126E84(&unk_1026583B0, "CalorimetryRunBothInputStacks", &v10, 0);
    __cxa_guard_release(&qword_1026583B8);
  }

  v9 = 1;
  if ((atomic_load_explicit(&qword_1026583C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583C8))
  {
    sub_100126E84(&unk_1026583C0, "CalorimetryUseDataProviderIfApplicable", &v9, 0);
    __cxa_guard_release(&qword_1026583C8);
  }

  v4 = byte_1026583C1;
  v5 = byte_1026583B1;
  if ((atomic_load_explicit(&qword_1026583D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026583D8))
  {
    dword_1026583D0 = sub_1000D7E48();
    __cxa_guard_release(&qword_1026583D8);
  }

  if (dword_1026583D0 == 1)
  {
    if ((a1 - 14) > 2)
    {
      goto LABEL_16;
    }

LABEL_10:
    *a2 = 1;
    *(a2 + 4) = 0;
LABEL_17:
    v6 = xmmword_101C82150;
    goto LABEL_18;
  }

  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_24;
      }

      if (a1 == 1)
      {
        *a2 = v4;
        *(a2 + 4) = v5;
        v6 = xmmword_101C82160;
        goto LABEL_18;
      }

      return;
    }

    if ((a1 - 2) >= 2)
    {
      if (a1 == 4 || a1 == 5)
      {
        *a2 = v4;
        *(a2 + 4) = v5;
        v6 = xmmword_101C82180;
LABEL_18:
        *(a2 + 8) = v6;
        return;
      }

      return;
    }

LABEL_16:
    *a2 = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = v7;
    *(a2 + 7) = v8;
    goto LABEL_17;
  }

  if ((a1 - 6) < 7)
  {
    goto LABEL_16;
  }

  if ((a1 - 14) < 3)
  {
    goto LABEL_10;
  }

  if (a1 == 13)
  {
LABEL_24:
    *a2 = v4;
    *(a2 + 4) = v5;
    v6 = xmmword_101C82170;
    goto LABEL_18;
  }
}

void sub_1000D6FEC(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_10028C670((a1 + 64), v9) >= a4)
        {
          if (*sub_10028C670((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_10028C670((a1 + 64), v9) >= a4 && *sub_10028C670((a1 + 64), v9) < a5)
          {
            v10 = sub_10028C670((a1 + 64), v9);
            v24 = *(v10 + 16);
            v25 = *(v10 + 32);
            v26 = *(v10 + 48);
            v11 = a3[1];
            v12 = a3[2];
            if (v11 >= v12)
            {
              v17 = *a3;
              v18 = v11 - *a3;
              v19 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 3) + 1;
              if (v19 > 0x492492492492492)
              {
                sub_10028C64C();
              }

              v20 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v17) >> 3);
              if (2 * v20 > v19)
              {
                v19 = 2 * v20;
              }

              if (v20 >= 0x249249249249249)
              {
                v19 = 0x492492492492492;
              }

              if (v19)
              {
                sub_100579334(a3, v19);
              }

              v21 = 8 * (v18 >> 3);
              *v21 = *v10;
              *(v21 + 16) = v24;
              *(v21 + 32) = v25;
              *(v21 + 48) = v26;
              v16 = v21 + 56;
              v22 = v21 - v18;
              memcpy((v21 - v18), v17, v18);
              v23 = *a3;
              *a3 = v22;
              a3[1] = v16;
              a3[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v13 = *v10;
              v14 = *(v10 + 16);
              v15 = *(v10 + 32);
              *(v11 + 6) = *(v10 + 48);
              *(v11 + 1) = v14;
              *(v11 + 2) = v15;
              *v11 = v13;
              v16 = (v11 + 56);
            }

            a3[1] = v16;
          }
        }

        ++v9;
      }

      while (v9 < *(a1 + 66));
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1000D721C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000D7240(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      sub_100D01E38(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 3) >= a4)
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

uint64_t sub_1000D73B4(uint64_t a1, _OWORD *a2)
{
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = (*(*a1 + 16))(a1, &v10, &v8);
  if (result)
  {
    v4 = *(&v11 + 1);
    if (*(&v11 + 1) == *(&v9 + 1))
    {
      return 0;
    }

    else
    {
      if (*v11 == *(&v11 + 1))
      {
        v4 = *(v11 - 8) + 4096;
      }

      v5 = *(v4 - 64);
      v6 = *(v4 - 48);
      v7 = *(v4 - 16);
      a2[2] = *(v4 - 32);
      a2[3] = v7;
      *a2 = v5;
      a2[1] = v6;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D7464(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 6));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 6));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + ((v8 & 0x3F) << 6);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 4096;
      }

      v17 = vabdd_f64(*(v16 - 56), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 4096;
        }

        v13 = v17;
        if (*(v18 - 56) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 4096;
      }

      v14 -= 64;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

void sub_1000D758C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1000D75D4(uint64_t a1, double a2)
{
  if (*a1 != -9999.0)
  {
    v4 = *(a1 + 4);
    if (v4 != -9999.0 && (vabdd_f64(a2, *(a1 + 16)) > 300.0 || *(a1 + 8) == -9999.0))
    {
      *(a1 + 8) = sub_1000DA438(a2, *a1, v4);
      *(a1 + 16) = a2;
    }
  }
}

uint64_t sub_1000D7654(void *a1, double *a2, double a3)
{
  sub_1000D75D4(a1, *a2);
  v7 = a1[4];
  v6 = a1[5];
  if (v7 >= v6)
  {
    v9 = a1[3];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v12 = v6 - v9;
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
      sub_1000D758C((a1 + 3), v13);
    }

    v14 = (16 * v10);
    *v14 = *a2;
    v8 = 16 * v10 + 16;
    v15 = a1[3];
    v16 = a1[4] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = a1[3];
    a1[3] = v17;
    a1[4] = v8;
    a1[5] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a2;
    v8 = (v7 + 1);
  }

  a1[4] = v8;
  sub_1000D7760(a1, a3);

  return sub_1000D7824(a1);
}

uint64_t sub_1000D7760(uint64_t result, double a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3 != v2)
  {
    while (a2 - *v3 <= 150.0)
    {
      v3 += 2;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          if (a2 - *v4 <= 150.0)
          {
            *v3 = *v4;
            v3 += 2;
          }

          v4 += 2;
        }

        while (v4 != v2);
        v2 = *(result + 32);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 32) = v3;
  }

  return result;
}

uint64_t sub_1000D7824(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &dword_101D152E8;
  v3 = 4;
  while (*v2 >= v1 || v2[1] < v1)
  {
    v2 += 5;
    if (!--v3)
    {
      v2 = &unk_101D15324;
      break;
    }
  }

  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 32);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if ((atomic_load_explicit(&qword_102662640, memory_order_acquire) & 1) == 0)
  {
    v25 = a1;
    v37 = v6;
    v40 = v4;
    v34 = v5;
    v26 = __cxa_guard_acquire(&qword_102662640);
    v5 = v34;
    v6 = v37;
    v4 = v40;
    v27 = v26;
    a1 = v25;
    if (v27)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662630, "DaylightLowConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662640);
      a1 = v25;
      v6 = v37;
      v4 = v40;
      v5 = v34;
    }
  }

  if ((atomic_load_explicit(&qword_102662658, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v38 = v6;
    v41 = v4;
    v35 = v5;
    v29 = __cxa_guard_acquire(&qword_102662658);
    v5 = v35;
    v6 = v38;
    v4 = v41;
    v30 = v29;
    a1 = v28;
    if (v30)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662648, "DaylightMedConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662658);
      a1 = v28;
      v6 = v38;
      v4 = v41;
      v5 = v35;
    }
  }

  if ((atomic_load_explicit(&qword_102662670, memory_order_acquire) & 1) == 0)
  {
    v31 = a1;
    v39 = v6;
    v42 = v4;
    v36 = v5;
    v32 = __cxa_guard_acquire(&qword_102662670);
    v5 = v36;
    v6 = v39;
    v4 = v42;
    v33 = v32;
    a1 = v31;
    if (v33)
    {
      *buf = -1082130432;
      sub_1004F8200(&byte_102662660, "DaylightHighConfLuxThresholdOverride", buf, 0);
      __cxa_guard_release(&qword_102662670);
      a1 = v31;
      v6 = v39;
      v4 = v42;
      v5 = v36;
    }
  }

  if (byte_102662630)
  {
    v5 = *&dword_102662634;
  }

  if (byte_102662648)
  {
    v4 = *&dword_10266264C;
  }

  if (byte_102662660)
  {
    v6 = *&dword_102662664;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v10 == v11)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v10 + 8);
      if (v15 > v5)
      {
        ++v14;
        v16 = v15 <= v6 ? v12 : v12 + 1;
        if (v15 > v4)
        {
          ++v13;
          v12 = v16;
        }
      }

      v10 += 16;
    }

    while (v10 != v11);
    if (v12 > 1)
    {
      v17 = 3;
      goto LABEL_30;
    }

    if (v13 > 9)
    {
      v17 = 2;
      goto LABEL_30;
    }
  }

  v17 = v14 > 29;
LABEL_30:
  if (*(a1 + 48) == 1)
  {
    v18 = *(a1 + 49);
  }

  else
  {
    v18 = *(a1 + 8) > 0.0;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v1 == -9999.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  if (v9 <= v4)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (qword_1025D4760 != -1)
  {
    sub_101AF1BA8();
  }

  v22 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *buf = 134220032;
    v44 = v9;
    v45 = 2048;
    v46 = v1;
    v47 = 1024;
    v48 = v14;
    v49 = 1024;
    v50 = v13;
    v51 = 1024;
    v52 = v12;
    v53 = 2048;
    v54 = v20;
    v55 = 2048;
    v56 = v21;
    v57 = 2048;
    v58 = v8;
    v59 = 1024;
    v60 = v18 & 1;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "ALSDaylightDetectorEstimate,lux,%f,sunElevation,%f,lowCnt,%d,medCnt,%d,highCnt,%d,conf,%ld,confFilt,%ld,startTime,%f, isAstronomicalDaytime, %d", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101AF1BA8();
    }

    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMIndoorOutdoorConfidence CLALSDaylightDetector::estimateIsDaylight() const", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  return v21;
}

float sub_1000D7D98(uint64_t a1, double *a2)
{
  v3 = (*(*a2 + 8))(a2);
  v4 = 0.0;
  if (v3 && (sub_1012F7B64(v3, a2) & 1) == 0)
  {
    v5 = *(a2 + 1138);
    v6 = *(a2 + 1137);
    v8 = 1.0;
    if (v6 > v5)
    {
      v9 = a2[44];
      v8 = (v6 - v9) / (v6 - v5);
    }

    v7 = *(a2 + 1134);
    return v7 * sub_100161F00(v8, *(a2 + 1135));
  }

  return v4;
}

uint64_t sub_1000D7E48()
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    return 1;
  }

  sub_10001A3E8();
  if (sub_10001CF04())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000D7E84@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 224);
  *a2 = *(result + 216);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

float sub_1000D7EA0(float *a1, char a2)
{
  v3 = (&unk_101D04778 + 20 * *a1);
  v4 = a1[5];
  if (v4 >= 18.0)
  {
    v5 = (((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0);
  }

  else
  {
    v5 = ((((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0)) + 0.001;
  }

  v6 = *(a1 + 10);
  sub_10001A3E8();
  if (sub_10001CF3C() && v6)
  {
    v7 = fminf(v5, 1.0);
    v8 = fmaxf(v7, 1.0);
    if (a2)
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = fminf(v5, 2.1);
    if ((a2 & 1) == 0)
    {
      v8 = fmaxf(v8, 1.3);
    }
  }

  return fmaxf(v8, 0.0);
}

void sub_1000D7F78(float a1, float a2)
{
  if (a1 >= a2)
  {
    v3 = a1;
    if (a1 <= 30.0)
    {
      if (a1 > 20.0)
      {
        if (qword_1025D4230 != -1)
        {
          sub_1018D0CE8();
        }

        v5 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
        {
          v6 = 134218240;
          v7 = v3;
          v8 = 2048;
          v9 = 20.0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "In-human MET spike,%f,setting to upper bound,%f", &v6, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D14D4(v3);
        }
      }
    }

    else
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018D0CE8();
      }

      v4 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218240;
        v7 = v3;
        v8 = 2048;
        v9 = a2;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "MET spike,%f,setting to basal,%f", &v6, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D15F0(a2, v3);
      }
    }
  }
}

uint64_t sub_1000D8128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 240);
  *a2 = *(result + 232);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000D815C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  if (*(a2 + 248) == 1 && CLMotionActivity::isTypeIndoorPedestrian())
  {
    v6 = *(a2 + 720);
    v7 = *(a2 + 784);
    v8 = v7 <= 0.447039278 || v7 > 7.14285711;
    v9 = v7 * 2.23693991;
    v10 = 0.0;
    if (v8)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v9;
    }

    v12 = *(a2 + 872) * 2.23693991;
    v13 = 0.0;
    v14 = 0.0;
    if (v6 > 0.0)
    {
      if (v11 >= 1.0)
      {
        if (((((v11 * -0.793) + ((v11 * 0.3564) * v11)) + 3.142) * *(a1 + 16)) <= 8.0)
        {
          v15 = (((v11 * -0.793) + ((v11 * 0.3564) * v11)) + 3.142) * *(a1 + 16);
        }

        else
        {
          v15 = 8.0;
        }

        v10 = v15;
      }

      else
      {
        v15 = 2.1;
      }

      *(a3 + 16) = 0;
      *a3 = 0u;
      *(a3 + 24) = 3;
      *(a3 + 32) = 3;
      if (v12 > 0.0)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      sub_1000D97E8(v16, v12, v11, 2.5);
      v18 = v15 * v17;
      if (v18 <= 20.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 20.0;
      }

      *(a3 + 20) = v19;
      sub_1000D97E8(v16, v12, v11, 2.5);
      v21 = v10 * v20;
      if (v21 > 20.0)
      {
        v21 = 20.0;
      }

      *(a3 + 28) = v21;
      v14 = v19;
      v13 = v21;
    }

    if (qword_1025D4230 != -1)
    {
      sub_101883094();
    }

    v22 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 8);
      *buf = 134219264;
      v26 = v23;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v11;
      v31 = 2048;
      v32 = v12;
      v33 = 2048;
      v34 = v14;
      v35 = 2048;
      v36 = v13;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Walk,fitness machine,computeTime,%.3f,startTime,%.3f,wr,%f,vertSpeed,%f,userMets,%f,truthMets,%f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018830A8();
      }

      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieWalkModel::computeFitnessMachineMETS(const CLNatalieModelInput &)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }
}

uint64_t sub_1000D84F0(uint64_t a1)
{
  LODWORD(result) = sub_1005A7B84(a1 + 3296, &v2, *(a1 + 8));
  if (*(&v2 + 1) == 0.0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000D8528(uint64_t a1)
{
  result = (**a1)(a1);
  if (result)
  {
    return *(a1 + 392) < *(a1 + 3272);
  }

  return result;
}

uint64_t sub_1000D8580(int a1)
{
  if (CLMotionActivity::isTypePedestrian())
  {
    return 1;
  }

  LODWORD(result) = CLMotionActivity::isTypeIndoorPedestrian();
  if ((a1 - 61) < 2)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

float sub_1000D85C4(float *a1, int a2)
{
  if (a2)
  {
    isTypeStatic = CLMotionActivity::isTypeStatic();
  }

  else
  {
    isTypeStatic = 1;
  }

  return sub_1000D7EA0(a1, isTypeStatic);
}

float sub_1000D8610(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v29[0] = 0.0;
  v5 = *a2;
  if (*a2 <= a4)
  {
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (v5 > v7)
    {
      if ((a3 & 1) == 0)
      {
        v9 = v5 - v7;
        v10 = fmin(v9, 60.0);
        v11 = *(a2 + 8) - *(a1 + 16);
        if (v11 >= 0x12C)
        {
          v12 = 300;
        }

        else
        {
          v12 = *(a2 + 8) - *(a1 + 16);
        }

        if (v9 > 180.0)
        {
          v11 = v12;
        }

        if (v10 > 0.0)
        {
          v13 = v11 / 100.0;
          v14 = (v13 * 23.94) / v10;
          v29[0] = v14;
          if (qword_1025D4230 != -1)
          {
            sub_101B33420();
          }

          v15 = qword_1025D4238;
          if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 64);
            *buf = 134218752;
            v38 = v13;
            v39 = 2048;
            v40 = v10;
            v41 = 2048;
            v42 = v14;
            v43 = 2048;
            v44 = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Climbing,deltaElevation,%f,ascentDuration,%f,climbingMets,%f,len,%lu", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4230 != -1)
            {
              sub_101B33434();
            }

            v27 = *(a1 + 64);
            v29[1] = 3.8523e-34;
            v30 = v13;
            v31 = 2048;
            v32 = v10;
            v33 = 2048;
            v34 = v29[0];
            v35 = 2048;
            v36 = v27;
            v28 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "float CLCalorieClimbingModel::estimateClimbingMETs(CFAbsoluteTime, const CLCoarseElevationChangeEntry &, BOOL)", "%s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          if (*a2 - *v6 >= 180.0)
          {
            do
            {
              sub_100023E4C((a1 + 72), v29);
              v10 = v10 + -2.55999994;
            }

            while (v10 > 0.0);
          }

          else
          {
            do
            {
              sub_100023E4C((a1 + 24), v29);
              v10 = v10 + -2.55999994;
            }

            while (v10 > 0.0);
          }
        }
      }

      *v6 = *a2;
    }
  }

  v18 = (a1 + 64);
  v17 = *(a1 + 64);
  if (v17)
  {
    v19 = *(*(*(a1 + 32) + ((*(a1 + 56) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 56) & 0x3FFLL));
    ++*(a1 + 56);
    *(a1 + 64) = v17 - 1;
    sub_1000A6D68(a1 + 24, 1);
    if (qword_1025D4230 != -1)
    {
      sub_101B33434();
    }

    v20 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v21 = *v18;
      *buf = 134218240;
      v38 = v19;
      v39 = 2048;
      v40 = *&v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "Climbing,epochMets,%f,bufferLength,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B3345C(v18, v19);
    }
  }

  else
  {
    v23 = (a1 + 112);
    v22 = *(a1 + 112);
    if (v22)
    {
      v19 = *(*(*(a1 + 80) + ((*(a1 + 104) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 104) & 0x3FFLL));
      ++*(a1 + 104);
      *(a1 + 112) = v22 - 1;
      sub_1000A6D68(a1 + 72, 1);
      if (qword_1025D4230 != -1)
      {
        sub_101B33434();
      }

      v24 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v25 = *v23;
        *buf = 134218240;
        v38 = v19;
        v39 = 2048;
        v40 = *&v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Climbing,epochMets,%f,historicalBufferLength,%lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B33570(v23, v19);
      }
    }

    else
    {
      return 0.0;
    }
  }

  return v19;
}

void sub_1000D8AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = (a3 + 28);
  (*(*a1 + 40))(&v31);
  v7 = v33;
  *(a3 + 4) = v33;
  v8 = (*(*a1 + 48))(&v28, a1, a2);
  v9 = v29;
  *(a3 + 8) = v29;
  v10 = sub_1000D7D98(v8, a2);
  *a3 = v10;
  *(a3 + 12) = v32;
  *(a3 + 36) = v35;
  if (v10 <= 0.0)
  {
    *(a3 + 16) = -1082130432;
    v12 = -1.0;
    v11 = v33;
    goto LABEL_14;
  }

  v11 = v33;
  v12 = (v10 - v33) / v33;
  *(a3 + 16) = v12;
  if (*(a1 + 8) != 1 || v11 <= 2.1 || v12 <= 0.1)
  {
LABEL_14:
    v17 = 0;
    v19 = v30;
    v20 = v29 > v11;
    if (v29 >= v11)
    {
      v13 = v29;
    }

    else
    {
      v13 = v11;
    }

    *(a3 + 20) = v13;
    *(a3 + 24) = 4 * v20;
    v21 = v19 > v34;
    if (v19 >= v34)
    {
      v14 = v19;
    }

    else
    {
      v14 = v34;
    }

    *(a3 + 28) = v14;
    v18 = 4 * v21;
    goto LABEL_21;
  }

  v13 = v10;
  v14 = v10;
  if ((*(a1 + 9) & 1) == 0)
  {
    v15 = *(a1 + 12);
    v16 = v11 * v15;
    if (v16 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v16;
    }

    if ((v15 * v34) >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v15 * v34;
    }
  }

  *(a3 + 20) = v13;
  *(a3 + 28) = v14;
  v17 = 1;
  *(a3 + 24) = 1;
  v18 = 1;
LABEL_21:
  *(a3 + 32) = v18;
  v22 = *(a2 + 220);
  if (sub_1000D8580(*(a2 + 184)) && (v22 & 1) != 0)
  {
    v23 = &unk_101D7D154;
    v24 = 2.1;
  }

  else
  {
    v23 = &unk_101D7D158;
    v24 = 1.6;
  }

  if (v14 > v24)
  {
    v23 = v6;
  }

  v25 = *v23;
  *v6 = *v23;
  if (qword_1025D4230 != -1)
  {
    sub_101BABD20();
  }

  v26 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219520;
    v51 = v7;
    v52 = 2048;
    v53 = v9;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v12;
    v58 = 1024;
    v59 = v17;
    v60 = 2048;
    v61 = v13;
    v62 = 2048;
    v63 = v25;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Pedestrian, wrMets, %f,  fmMets, %f, hrMets, %f, hrwrDiff, %f, useHrMets, %d, userMets, %f, truthMets, %f", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101BABD20();
    }

    v36 = 134219520;
    v37 = v7;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v10;
    v42 = 2048;
    v43 = v12;
    v44 = 1024;
    v45 = v17;
    v46 = 2048;
    v47 = v13;
    v48 = 2048;
    v49 = v25;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCaloriePedestrianModelInterface::computeMETS(const CLNatalieModelInput &)", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

BOOL sub_1000D8EB4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x18));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 168 * (v4 % 0x18);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x18));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 168 * (v9 % 0x18);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4032;
      }

      v18 = vabdd_f64(*(v17 - 168), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4032;
        }

        v14 = v18;
        if (*(v19 - 168) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4032;
      }

      v15 -= 168;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000D8FFC(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4080;
      }

      v5 = *(v4 - 24);
      a2[2] = *(v4 - 8);
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

void sub_1000D90AC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  v8 = *(a1 + 24) - *(a1 + 16);
  v9 = 0.0;
  if (v8 > 0.0)
  {
    v9 = *(a1 + 296) * 2.23693991 / v8;
  }

  v7 = *(a1 + 520);
  v46 = v7 * 2.2369;
  v10 = *(a1 + 304);
  v45 = *(a1 + 296);
  v44 = v10;
  if (*(a1 + 248) == 1)
  {
    if (v10 <= 0.14 || v10 > 2.2369)
    {
      v11 = a1 + 488;
      v9 = 0.0;
LABEL_12:
      v13 = 0.0;
      if (*(a1 + 248))
      {
        v12 = 2.1;
      }

      else
      {
        v12 = 0.0;
      }

      goto LABEL_15;
    }

    v9 = 2.2369 / v10;
  }

  v11 = a1 + 488;
  if (v9 < 1.0)
  {
    goto LABEL_12;
  }

  v12 = 8.0;
  if (((((v9 * -0.793) + ((v9 * 0.3564) * v9)) + 3.142) * a4) <= 8.0)
  {
    v12 = (((v9 * -0.793) + ((v9 * 0.3564) * v9)) + 3.142) * a4;
  }

  v13 = v12;
LABEL_15:
  if (*(a1 + 320) == 1)
  {
    v14 = 1.1;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = v12;
  v16 = v12 * v14;
  if (v16 <= 20.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 20.0;
  }

  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = *(v11 + 24);
  }

  sub_1000D97E8(v18, v46, v9, 2.5);
  v20 = v19 * v17;
  if (v20 <= 20.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 20.0;
  }

  *(a3 + 20) = v21;
  if (a2)
  {
    v22 = 2;
  }

  else
  {
    v22 = *(v11 + 24);
  }

  if (*(a1 + 320) == 1)
  {
    v23 = 1.1;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v13 * v23;
  if (v24 <= 20.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 20.0;
  }

  v26 = v21;
  sub_1000D97E8(v22, v46, v9, 2.5);
  v28 = v27 * v25;
  if (v28 <= 20.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 20.0;
  }

  *(a3 + 28) = v29;
  v30 = 0.0;
  if (v13 <= 2.1)
  {
    v31 = 0;
  }

  else
  {
    v30 = v29;
    v31 = 12;
  }

  *(a3 + 12) = v30;
  *(a3 + 36) = v31;
  v32 = sub_1000DA93C();
  sub_1000D98F4(v32, (v26 - v17));
  if (qword_1025D4230 != -1)
  {
    sub_101883094();
  }

  v33 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 24);
    v35 = v34 - *(a1 + 16);
    v36 = *(a1 + 320) == 1;
    *buf = 134220544;
    *v48 = v9;
    *&v48[8] = 2048;
    *&v48[10] = v45;
    *&v48[18] = 2048;
    *&v48[20] = v35;
    *&v48[28] = 2048;
    *&v48[30] = v15;
    *&v48[38] = 2048;
    *&v48[40] = a4;
    *&v48[48] = 2048;
    *&v48[50] = v34;
    *&v48[58] = 2048;
    *&v48[60] = v44;
    *&v48[68] = 1024;
    *&v48[70] = v36;
    v49 = 2048;
    v50 = v17;
    v51 = 2048;
    v52 = v13;
    v53 = 2048;
    v54 = v25;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Walk, WorkRate, %f, distance(m), %f, duration(s), %f, userMets, %f, fMetsScaling, %f, endTime, %f, currentPace, %f, isStroller, %d, userMetsStrollerCorrected, %f, truthMets, %f, truthMetsStrollerCorrected, %f", buf, 0x6Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018830A8();
    }

    v41 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static CLMetsInfo CLCalorieWalkModel::calculateWorkRateMETS(const CLNatalieModelInput &, const float, const BOOL)", "%s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018830A8();
  }

  v37 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(v11 + 24);
    v39 = *(a1 + 24) - *(a1 + 16);
    *buf = 67111168;
    *v48 = v38;
    *&v48[4] = 2048;
    *&v48[6] = v46;
    *&v48[14] = 2048;
    *&v48[16] = v39;
    *&v48[24] = 2048;
    *&v48[26] = v9;
    v40 = 0.0;
    *&v48[34] = 2048;
    *&v48[36] = v15;
    *&v48[44] = 2048;
    *&v48[46] = v26;
    if (v9 >= 0.5)
    {
      v40 = (v46 / v9) * 100.0;
    }

    *&v48[54] = 2048;
    *&v48[56] = v40;
    *&v48[64] = 2048;
    *&v48[66] = v13;
    v49 = 2048;
    v50 = v29;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "Walk, WorkRate, Grade type, %d, vertical speed %f, interval %f, workrate %f, userMets %f, userMets + grade, %f, percent grade, %f, truthMets, %f, truthMets + grade, %f", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018830A8();
    }

    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static CLMetsInfo CLCalorieWalkModel::calculateWorkRateMETS(const CLNatalieModelInput &, const float, const BOOL)", "%s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }
}

void sub_1000D97E8(int a1, float a2, float a3, float a4)
{
  if (a1 == 1 && a4 > 0.0)
  {
    if (a3 >= 0.5)
    {
      v4 = a2 / a3;
    }

    else
    {
      v4 = 0.0;
    }

    pow(v4, 3.0);
    pow(v4, 4.0);
    pow(v4, 5.0);
  }
}

void sub_1000D98F4(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_not_V2(*(a1 + 480));
  v4 = *(a1 + 480);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D8144;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

BOOL sub_1000D997C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0xAA));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 24 * (v4 % 0xAA);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0xAA));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v9 % 0xAA);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4080;
      }

      v18 = vabdd_f64(*(v17 - 24), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4080;
        }

        v14 = v18;
        if (*(v19 - 24) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4080;
      }

      v15 -= 24;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000D9AC4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  result = (*(*a1 + 16))(a1, &v7, &v5);
  if (result)
  {
    v4 = *(&v8 + 1);
    if (*(&v8 + 1) == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      if (*v8 == *(&v8 + 1))
      {
        v4 = *(v8 - 8) + 4096;
      }

      *a2 = *(v4 - 16);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D9B68(uint64_t a1, _OWORD *a2)
{
  *a2 = 0u;
  a2[1] = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4096;
      }

      v5 = *(v4 - 16);
      *a2 = *(v4 - 32);
      a2[1] = v5;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D9C0C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 7));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 7));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 32 * (v8 & 0x7F);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 4096;
      }

      v17 = vabdd_f64(*(v16 - 32), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 4096;
        }

        v13 = v17;
        if (*(v18 - 32) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 4096;
      }

      v14 -= 32;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

uint64_t sub_1000D9D34(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  result = (*(*a1 + 16))(a1, &v8, &v6);
  if (result)
  {
    v4 = *(&v9 + 1);
    if (*(&v9 + 1) == *(&v7 + 1))
    {
      return 0;
    }

    else
    {
      if (*v9 == *(&v9 + 1))
      {
        v4 = *(v9 - 8) + 4080;
      }

      v5 = *(v4 - 24);
      a2[2] = *(v4 - 8);
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D9DE4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (qword_1025D4230 != -1)
  {
    sub_101A89EDC();
  }

  v5 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v6 = "Walk";
    if (v4)
    {
      v6 = "Run";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Pedestrian, Using %s model", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A89EF0(v4);
  }

  v7 = 24;
  if (v4)
  {
    v7 = 8;
  }

  return (*(**(a1 + v7) + 16))(*(a1 + v7), a2);
}

void sub_1000D9F50(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  if (a2[248])
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = (*(*a2 + 24))(a2);
    if (v7)
    {
      sub_1000D9DE4(a1, a2);
    }

    else if (v6)
    {
      sub_100FBE058(a1 + 40, a2, a3);
    }

    else
    {
      *(a3 + 20) = 0;
      *a3 = 0;
      *(a3 + 24) = 5;
      *(a3 + 32) = 5;
    }

    if (qword_1025D4230 != -1)
    {
      sub_101AB0040();
    }

    v8 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a3 + 20);
      *buf = 67109632;
      v12 = v7;
      v13 = 1024;
      v14 = v6;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "PedestrianPhone,wrAvail,%d,hrAvai,%d,mets,%f", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101AB0054();
      }

      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCaloriePedestrianModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {

    sub_1000D9DE4(a1, a2);
  }
}

void sub_1000DA248(uint64_t a1, uint64_t a2, double a3)
{
  sub_1000D75D4(a1 + 48, *a2);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7 >= v6)
  {
    v9 = *(a1 + 24);
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v12 = v6 - v9;
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
      sub_1000D758C(a1 + 24, v13);
    }

    v14 = (16 * v10);
    *v14 = *a2;
    v8 = 16 * v10 + 16;
    v15 = *(a1 + 24);
    v16 = *(a1 + 32) - v15;
    v17 = 16 * v10 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = *(a1 + 24);
    *(a1 + 24) = v17;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *a2;
    v8 = (v7 + 1);
  }

  *(a1 + 32) = v8;
  sub_1000BDE7C(a1, a3);
  if (qword_1025D44D0 != -1)
  {
    sub_101921F3C();
  }

  v19 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v20 = a1;
    if (*(a1 + 23) < 0)
    {
      v20 = *a1;
    }

    v21 = *(a2 + 8);
    v22 = *a2;
    v23 = 136315650;
    v24 = v20;
    v25 = 2050;
    v26 = v21;
    v27 = 2050;
    v28 = v22;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "IndoorOutdoor,ALSScan,context,%s,lux,%{public}.0f,t,%{public}f", &v23, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921F50(a1, a2);
  }
}

float sub_1000DA438(double a1, float a2, float a3)
{
  v5 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  [(NSCalendar *)v5 setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
  v6 = [(NSCalendar *)v5 components:252 fromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:a1]];
  v7 = [(NSDateComponents *)v6 hour];
  *&a1 = [(NSDateComponents *)v6 minute];
  v8 = (((([(NSDateComponents *)v6 second]/ 60.0) + *&a1) / 60.0) + v7) / 24.0;
  v9 = sub_1000DA734([(NSDateComponents *)v6 year], [(NSDateComponents *)v6 month], [(NSDateComponents *)v6 day], v8);
  v10 = v9;
  v11 = v9 * (v9 * 0.0003032 + 36000.7698) + 280.46646;
  v12 = fmodf(v11, 360.0);
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 360.0;
  }

  v14 = v10 * (v10 * -0.0001537 + 35999.0503) + 357.52911;
  v15 = ((21.448 - v10 * (v10 * (v10 * -0.001813 + 0.00059) + 46.815)) / 60.0 + 26.0) / 60.0 + 23.0;
  v16 = v15;
  v17 = v10 * -1934.136 + 125.04;
  *&v16 = v16 + cosf(v17 / 57.296) * 0.00256;
  v18 = sub_100115240(v9, *&v16, v13, v14);
  v19 = sub_10011536C(v9, *&v16, v13, v14);
  v20 = fmod(v19 + v8 * 1440.0 + (a3 * 4.0), 1440.0);
  if (v20 < 0.0)
  {
    v20 = v20 + 1440.0;
  }

  v21 = v20 * 0.25 + dbl_101C8BCD0[v20 * 0.25 < 0.0];
  v22 = v21 / 57.296;
  v23 = __sincosf_stret(a2 / 57.296);
  v24 = __sincosf_stret(v18 / 57.296);
  v25 = cosf(v22);
  return asinf(((v23.__cosval * v24.__cosval) * v25) + (v23.__sinval * v24.__sinval)) * 57.296;
}

float sub_1000DA734(int a1, int a2, int a3, float a4)
{
  v4 = a1 - (a2 < 3);
  v5 = a2 + 12;
  v6 = (v4 / 100.0);
  v7 = v4;
  v8 = vcvts_n_f32_s32(v6, 2uLL);
  if (a2 >= 3)
  {
    v5 = a2;
  }

  return ((((((a3 - v6 + v8 + 2) + a4) + ((v7 + 4716.0) * 365.25)) + ((v5 + 1.0) * 30.6001)) + -1524.5) + -2451500.0) / 36525.0;
}

size_t sub_1000DA7EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  snprintf(__str, 0x200uLL, "Act Dur(s), %.2f, Step Dur(s), %.2f, Step Counts, %d, Step Begin, %.2f, Step End, %.2f, distance, %.2f, Speed, %.2f, Grade type, %d, vertical speed, %.3f, HR, %f, HRConf, %f, coarse elevation, %d, rawHR, %f, rawHRConf, %f", *(a1 + 24) - *(a1 + 16), *(a1 + 32), *(a1 + 288), *(a1 + 3256), *(a1 + 3264), *(a1 + 432), *(a1 + 416), *(a1 + 512), *(a1 + 520), *(a1 + 352), *(a1 + 360), *(a1 + 712), *(a1 + 992), *(a1 + 1000));
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v4] = 0;
  return result;
}

uint64_t sub_1000DA93C()
{
  if (qword_102664880 != -1)
  {
    sub_101B7CD8C();
  }

  return qword_102639CC0;
}

void sub_1000DA974(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000DAA14(a1);

  operator delete();
}

void sub_1000DA9AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4A38;
  sub_1000DAF64(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1000DAA14(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4AB0;
  if (qword_102637EF8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000DAAA0(uint64_t a1, int a2, double a3)
{
  v25 = a3;
  if (!*(a1 + 1104))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#fusion,fwd to buffer,invalid latest selected hypothesis", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    sub_101A7B5F4(buf);
    LOWORD(v17) = 0;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const CFTimeInterval, const BOOL)", "%s\n", v15);
LABEL_22:
    if (v15 != buf)
    {
      free(v15);
    }

    return;
  }

  v17 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  v18 = _Q0;
  v20 = xmmword_101C75BF0;
  v21 = xmmword_101C75BF0;
  v22 = _Q0;
  v23 = _Q0;
  *v24 = 0xBFF0000000000000;
  *&v24[12] = 0;
  *&v24[20] = 0;
  if (sub_10002A8E4(a1 + 448, &v17))
  {
    if ((a2 & 1) == 0)
    {
      v10 = *(a1 + 312);
      if (v10)
      {
        v11 = v10 + *(a1 + 304) - 1;
        v12 = *(*(a1 + 280) + 8 * (v11 / 0x1A));
        v13 = v11 % 0x1A;
        if (*(v12 + 152 * v13 + 148) == 1)
        {
          sub_1012E8F84(&v17, v12 + 152 * v13 + 16);
        }
      }
    }

    *&v24[20] = sub_1000291EC(a1 + 256, &v25);
    sub_10002AAB0(a1, &v17, a2, *(a1 + 808));
    if (*(&v18 + 1) > *(a1 + 1432))
    {
      *(a1 + 1488) = v22;
      *(a1 + 1504) = v23;
      *(a1 + 1520) = *v24;
      *(a1 + 1536) = *&v24[16];
      *(a1 + 1424) = v18;
      *(a1 + 1440) = v19;
      *(a1 + 1456) = v20;
      *(a1 + 1472) = v21;
    }

    return;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v16 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#fusion,fwd to buffer, failed to retrieve predicted estimate from the latest selected hypothesis", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::forwardFusedLocationToBuffer(const CFTimeInterval, const BOOL)", "%s\n", v15);
    goto LABEL_22;
  }
}

void sub_1000DAE2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1000DAE38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000DAE70(a1);

  operator delete();
}

void sub_1000DAE70(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452C20;
  if (qword_102636CF8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000DAEFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024528D8;
  sub_1000DB298(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1000DAF64(void *result)
{
  if (qword_102637F00 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000DB004(void *a1, uint64_t a2, double a3)
{
  if (a2 <= 0x29 && ((1 << a2) & 0x2000000039ELL) != 0)
  {
    if (*a1 < 0.0)
    {
      *a1 = a3;
      if (qword_1025D4600 != -1)
      {
        sub_101B495F4();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v7 = sub_10000B1F8();
        v32 = 1;
        v8 = sub_10001A6B0(v7, &v32);
        v32 = 134349568;
        v33 = a3;
        v34 = 1026;
        LODWORD(v35[0]) = a2;
        WORD2(v35[0]) = 2050;
        *(v35 + 6) = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,first update,motion_cfat,%{public}.3f,type,%{public}d,mct,%{public}.3f", &v32, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B49608(a2, v9, v10, v11, v12, v13, v14, v15, a3);
      }
    }

    if (*a1 > 0.0 && *a1 <= a3)
    {
      v17 = sub_10115EFE0(a2);
      ++*(a1 + v17 + 4);
      a1[34] |= 1 << v17;
    }

    sub_1000DD3CC(a1);
  }

  else
  {
    v18 = a1[34];
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (((1 << v19) & v18) != 0)
        {
          v20 += *(a1 + v19 + 4);
          v18 &= ~(1 << v19);
        }

        if (v19 > 0x3E)
        {
          break;
        }

        ++v19;
      }

      while (v18);
      if (v20 >= 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101B495F4();
        }

        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v22 = CLMotionActivity::activityTypeToString();
          v23 = sub_10000B1F8();
          v32 = 1;
          v24 = sub_10001A6B0(v23, &v32);
          v32 = 136380931;
          v33 = *&v22;
          v34 = 2050;
          *v35 = v24;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,reset on non-pedestrian type,%{private}s,mct,%{public}.3f", &v32, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B49728(a2, v25, v26, v27, v28, v29, v30, v31);
        }

        sub_10115EE58(a1);
      }
    }
  }
}

void *sub_1000DB298(void *result)
{
  if (qword_102636CC0 != result)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[10];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1000DB338(uint64_t a1, int *a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v22 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a3 + 96);
      v24 = *(a3 + 16);
      v25 = sub_10000B1F8();
      *buf = 1;
      v26 = sub_10001A6B0(v25, buf);
      v27 = sub_10000B1F8();
      v28 = sub_100125220(v27);
      *buf = 67240960;
      *&buf[4] = v23;
      LOWORD(v60) = 1026;
      *(&v60 + 2) = v24;
      HIWORD(v60) = 2050;
      *v61 = v26;
      *&v61[8] = 2050;
      *&v61[10] = v28;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Received motion state mediator workout notification,workout_type,%{public}d,event_type,%{public}d,now_mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195704C(a3);
    }

    v29 = *(a1 + 3872);
    if (v29)
    {
      sub_100930DD0(v29, a3);
    }

    v30 = *(a1 + 3880);
    if (v30)
    {
      sub_100930DD0(v30, a3);
    }

    *buf = *a3;
    v31 = *(a3 + 16);
    if (v31 != 13)
    {
      if (v31 != 15)
      {
        return;
      }

      v60 = 0;
      v32 = sub_10000B1F8();
      LODWORD(v47[0]) = 1;
      v33 = sub_10001A6B0(v32, v47);
      goto LABEL_50;
    }

    v38 = *(a3 + 96);
    if (v38 > 14)
    {
      if (v38 == 17)
      {
LABEL_46:
        v60 = 0x800000008;
        goto LABEL_47;
      }

      if (v38 != 15)
      {
LABEL_47:
        if ((v38 - 3) <= 1)
        {
          v60 = 0x600000006;
        }

        v39 = sub_10000B1F8();
        LODWORD(v47[0]) = 1;
        v33 = sub_10001A6B0(v39, v47);
LABEL_50:
        *v47 = v33;
        sub_100D714B4(a1 + 456, v47, buf);
        return;
      }
    }

    else if (v38 != 1)
    {
      goto LABEL_45;
    }

    v60 = 0x400000004;
LABEL_45:
    if (v38 == 2)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (!*a2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a3 + 8);
      v6 = *(a3 + 12);
      v8 = *(a3 + 209);
      v9 = sub_10000B1F8();
      *buf = 1;
      v10 = sub_10001A6B0(v9, buf);
      v11 = sub_10000B1F8();
      v12 = sub_100125220(v11);
      *buf = 67241216;
      *&buf[4] = v7;
      LOWORD(v60) = 1026;
      *(&v60 + 2) = v6;
      HIWORD(v60) = 1024;
      *v61 = v8;
      *&v61[4] = 2050;
      *&v61[6] = v10;
      *&v61[14] = 2050;
      *&v61[16] = v12;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Received motion state mediator activity notification,activity_type,%{public}d,confidence,%{public}d,is_historical,%d,now_mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x28u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195718C(a3);
    }

    v13 = *(a3 + 88);
    v14 = *(a3 + 120);
    v47[6] = *(a3 + 104);
    v47[7] = v14;
    v48 = *(a3 + 136);
    v15 = *(a3 + 24);
    v16 = *(a3 + 56);
    v47[2] = *(a3 + 40);
    v47[3] = v16;
    v47[4] = *(a3 + 72);
    v47[5] = v13;
    v47[0] = *(a3 + 8);
    v47[1] = v15;
    if (!off_1025D53B8)
    {
      operator new();
    }

    if ((*(off_1025D53B8 + 1) & 1) == 0)
    {
      goto LABEL_38;
    }

    if (*off_1025D53B8 != 1)
    {
      goto LABEL_38;
    }

    v17 = sub_10000B1F8();
    *buf = 0;
    v18 = sub_10001A6B0(v17, buf);
    v19 = vabdd_f64(v18, *(a1 + 4256));
    if (v19 >= 1.5)
    {
      goto LABEL_38;
    }

    if (*(a1 + 4248) != 0.0)
    {
      goto LABEL_17;
    }

    v20 = 0;
    if (v19 < 0.5 && vabdd_f64(v18, *(a1 + 4164)) < 1.5)
    {
      v21 = *(a1 + 4132);
      if (v21 < 0.0)
      {
LABEL_17:
        v20 = 0;
        goto LABEL_53;
      }

      v20 = v21 + *(a1 + 4140) * -2.0 < 0.0;
    }

LABEL_53:
    v40 = v47[0];
    if (LODWORD(v47[0]) <= 0x38)
    {
      if (((1 << SLOBYTE(v47[0])) & 0x20000000398) != 0)
      {
        *&v47[0] = 0x200000005;
        v40 = 5;
LABEL_60:
        if (qword_1025D4770 != -1)
        {
          sub_101956098();
        }

        v41 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a3 + 8);
          v43 = *(a3 + 12);
          *buf = 67241216;
          *&buf[4] = v42;
          LOWORD(v60) = 1026;
          *(&v60 + 2) = v43;
          HIWORD(v60) = 1026;
          *v61 = v40;
          *&v61[4] = 1026;
          *&v61[6] = DWORD1(v47[0]);
          *&v61[10] = 1026;
          *&v61[12] = v20;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_101956098();
          }

          v44 = *(a3 + 8);
          v45 = *(a3 + 12);
          v49 = 67241216;
          v50 = v44;
          v51 = 1026;
          v52 = v45;
          v53 = 1026;
          v54 = v40;
          v55 = 1026;
          v56 = DWORD1(v47[0]);
          v57 = 1026;
          v58 = v20;
          v46 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionStateMediatorNotification(const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v46);
          if (v46 != buf)
          {
            free(v46);
          }
        }

LABEL_38:
        v37 = sub_10000B1F8();
        *buf = 1;
        *buf = sub_10001A6B0(v37, buf);
        sub_1000DBA30(a1 + 456, buf, v47);
        return;
      }

      if (((1 << SLOBYTE(v47[0])) & 0x110000000000020) != 0)
      {
LABEL_59:
        DWORD1(v47[0]) = 2;
        goto LABEL_60;
      }

      if (((1 << SLOBYTE(v47[0])) & 0xC00) != 0)
      {
        if (!v20)
        {
          DWORD1(v47[0]) = 0;
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    if (LODWORD(v47[0]) == 2)
    {
      v40 = 11;
      LODWORD(v47[0]) = 11;
      if (v20)
      {
        DWORD1(v47[0]) = 2;
        v40 = 11;
      }
    }

    else if (LODWORD(v47[0]) == 1)
    {
      v40 = 10;
      LODWORD(v47[0]) = 10;
      if (v20)
      {
        DWORD1(v47[0]) = 2;
        v40 = 10;
      }
    }

    goto LABEL_60;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101957038();
  }

  v35 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
  {
    v36 = *a2;
    *buf = 67240192;
    *&buf[4] = v36;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "#Warning, Fusion Controller, received unhandled motion state mediator notification %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019572E0(a2);
  }
}

void sub_1000DBA30(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1);
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v5 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v6 = CLMotionActivity::activityTypeToString();
    v7 = *a2;
    v8 = a3[10];
    v9 = a3[5];
    v11 = *a3;
    v10 = *(a3 + 1);
    *buf = 136447746;
    *&buf[4] = v6;
    v127 = 2050;
    *v128 = v7;
    *&v128[8] = 2050;
    v129 = v8;
    v130 = 2050;
    v131 = v9;
    v132 = 1026;
    *v133 = v11;
    *&v133[4] = 1026;
    *&v133[6] = v10;
    v134 = 2082;
    v135 = CLMotionActivity::activityConfidenceToString();
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#fusion,received motion state,%{public}s,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,timestamp,%{public}.3f,type,%{public}d,confidence,%{public}d,%{public}s", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v74 = CLMotionActivity::activityTypeToString();
    v75 = *a2;
    v76 = a3[10];
    v77 = a3[5];
    v79 = *a3;
    v78 = *(a3 + 1);
    *v105 = 136447746;
    *&v105[4] = v74;
    v106 = 2050;
    *v107 = v75;
    *&v107[8] = 2050;
    v108 = v76;
    v109 = 2050;
    v110 = v77;
    v111 = 1026;
    *v112 = v79;
    *&v112[4] = 1026;
    *&v112[6] = v78;
    v113 = 2082;
    v114 = CLMotionActivity::activityConfidenceToString();
    v80 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v80);
    if (v80 != buf)
    {
      free(v80);
    }
  }

  if (!sub_100D6B41C(a1))
  {
    if (*(a1 + 2904) == 1)
    {
      if (a3[10] <= 0.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v30 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,cannot use buffered Motion Activity sample with no valid time-tag", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v102 = 0;
        v14 = sub_10000B1F8();
        sub_10000AED4(v14, v105);
        if (sub_100125300(v105, v102))
        {
          v101 = a3[10] - *v102;
          *buf = &v101;
          v15 = sub_100D73858(a1 + 2920, &v101);
          memmove(v15 + 5, a3, 0x88uLL);
          *(v15 + 176) = 1;
          if (((CLMotionActivity::isDriving(a3) & 1) != 0 || *(a3 + 48) == 1) && ((v16 = *(a1 + 2448), (v16 - 1) < 5) || v16 == 10) || (CLMotionActivity::isTypeStatic() & 1) == 0 && (v32 = *(a1 + 2448), (v32 - 3) >= 8) && v32)
          {
            v100 = 7;
            sub_1006EB88C(&v100, a3, a3 + 1);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v17 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v18 = CLMotionActivity::activityTypeToString();
              v19 = CLMotionActivity::activityConfidenceToString();
              *buf = 136446722;
              *&buf[4] = v18;
              v127 = 2082;
              *v128 = v19;
              *&v128[8] = 1026;
              LODWORD(v129) = v100;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#fusion,buffered Motion Activity,type,%{public}s,confidence,%{public}s,used to set dynamics to,%{public}d", buf, 0x1Cu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v86 = CLMotionActivity::activityTypeToString();
              v87 = CLMotionActivity::activityConfidenceToString();
              *v118 = 136446722;
              *&v118[4] = v86;
              *&v118[12] = 2082;
              *&v118[14] = v87;
              *&v118[22] = 1026;
              *&v118[24] = v100;
              v88 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v88);
              if (v88 != buf)
              {
                free(v88);
              }
            }

            sub_100125538(a1 + 2424, v100, v101);
            v20 = *(a1 + 248);
            if (v20)
            {
              v21 = v100;
              do
              {
                *(v20 + 140) = v21;
                v20 = *v20;
              }

              while (v20);
            }

            if (*(a1 + 1104))
            {
              *(a1 + 808) = v100;
            }
          }
        }

        else
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v31 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "#fusion,cannot compute MachContinuousToCFAbsoluteOffset to convert buffered motion activity sample time, discarding sample", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *v118 = 0;
            v13 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v13);
LABEL_16:
            if (v13 != buf)
            {
              free(v13);
            }

            return;
          }
        }
      }

      return;
    }

    v22 = *(a3 + 7);
    v123 = *(a3 + 6);
    v124 = v22;
    v125 = *(a3 + 16);
    v23 = *(a3 + 3);
    v119 = *(a3 + 2);
    v120 = v23;
    v24 = *(a3 + 5);
    v121 = *(a3 + 4);
    v122 = v24;
    v25 = *(a3 + 1);
    *v118 = *a3;
    *&v118[16] = v25;
    if (*(a1 + 2778))
    {
      goto LABEL_76;
    }

    if ((*(a1 + 2800) & 1) != 0 || *a3 != 2 || *(a3 + 1) < 1)
    {
LABEL_75:
      if (*(a1 + 2800) != 1)
      {
LABEL_84:
        v40 = *(a1 + 2256);
        v41 = *a2;
        if (v40 <= 0.0)
        {
          v42 = -1.0;
        }

        else
        {
          v42 = *a2 - v40;
        }

        v43 = *(a1 + 2824);
        v44 = v41 - v43 >= 300.0 || v43 <= 0.0;
        if (*(a1 + 2288) >= 6uLL)
        {
          v45 = *(a1 + 2264);
          if ((v42 > 10.0 || !*&v118[4]) && (CLMotionActivity::isTypePedestrian() & 1) == 0 && ((CLMotionActivity::isTypeDriving() ^ 1) & v44) == 1 && v45 > 0.0 && v41 - v45 > 10.0)
          {
            v46 = *(a1 + 2272);
            if (v46 == (a1 + 2280))
            {
LABEL_107:
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v53 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v54 = *a2;
                v55 = *(a1 + 2288);
                *&v56 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v57 = CLMotionActivity::activityConfidenceToString();
                *buf = 134350082;
                *&buf[4] = v54;
                v127 = 2048;
                *v128 = v55;
                *&v128[8] = 2050;
                v129 = v42;
                v130 = 2082;
                v131 = *&v56;
                v132 = 2082;
                *v133 = v57;
                _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,recent Cell locations diversity/transitions seen,#uniqueCell,%zu,but they are overlapping,skip motion state override,dt_sinceNonCell_s,%{public}.3f,input motion state,%{public}s,confidence,%{public}s", buf, 0x34u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v58 = *a2;
                v59 = *(a1 + 2288);
                *&v60 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v61 = CLMotionActivity::activityConfidenceToString();
                *v105 = 134350082;
                *&v105[4] = v58;
                v106 = 2048;
                *v107 = v59;
                *&v107[8] = 2050;
                v108 = v42;
                v109 = 2082;
                v110 = *&v60;
                v111 = 2082;
                *v112 = v61;
                v62 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v62);
                if (v62 != buf)
                {
                  free(v62);
                }
              }
            }

            else
            {
              v47 = 1;
              while (1)
              {
                v48 = sub_100109D18((a1 + 2384), *(v46[5] + 24), *(v46[5] + 32), *(a1 + 1184), *(a1 + 1192), *(a1 + 1208));
                v49 = *(v46[5] + 40) + *(a1 + 1200);
                if (v48 >= v49)
                {
                  break;
                }

                v50 = v46[1];
                if (v50)
                {
                  do
                  {
                    v51 = v50;
                    v50 = *v50;
                  }

                  while (v50);
                }

                else
                {
                  do
                  {
                    v51 = v46[2];
                    v52 = *v51 == v46;
                    v46 = v51;
                  }

                  while (!v52);
                }

                v47 &= v48 < v49;
                v46 = v51;
                if (v51 == (a1 + 2280))
                {
                  if (v47)
                  {
                    goto LABEL_107;
                  }

                  break;
                }
              }

              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v63 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v64 = *a2;
                v65 = *(a1 + 2288);
                *&v66 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v67 = CLMotionActivity::activityConfidenceToString();
                *buf = 134350082;
                *&buf[4] = v64;
                v127 = 2048;
                *v128 = v65;
                *&v128[8] = 2050;
                v129 = v42;
                v130 = 2082;
                v131 = *&v66;
                v132 = 2082;
                *v133 = v67;
                _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,input motion state override to High Confidence Driving based on recent Cell locations diversity/transitions,#uniqueCell,%zu,dt_sinceNonCell_s,%{public}.3f,original motion state,%{public}s,confidence,%{public}s", buf, 0x34u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v93 = *a2;
                v94 = *(a1 + 2288);
                *&v95 = COERCE_DOUBLE(CLMotionActivity::activityTypeToString());
                v96 = CLMotionActivity::activityConfidenceToString();
                *v105 = 134350082;
                *&v105[4] = v93;
                v106 = 2048;
                *v107 = v94;
                *&v107[8] = 2050;
                v108 = v42;
                v109 = 2082;
                v110 = *&v95;
                v111 = 2082;
                *v112 = v96;
                v97 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v97);
                if (v97 != buf)
                {
                  free(v97);
                }
              }

              *v118 = 0x200000005;
            }
          }
        }

        sub_1000DCDB0(a1 + 2424, v118, *a2);
        sub_1000D0BB8(a1, a2);
        v68 = a3[10];
        if (v68 > 0.0)
        {
          if (*(a1 + 1104))
          {
            v69 = vabdd_f64(v68, *(a1 + 824));
            if (v69 > 3.0)
            {
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v70 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v71 = *a2;
                v72 = *(a3 + 10);
                v73 = *(a1 + 824);
                *buf = 134349824;
                *&buf[4] = v71;
                v127 = 2050;
                *v128 = v72;
                *&v128[8] = 2050;
                v129 = v73;
                v130 = 2050;
                v131 = v69;
                _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,motionStateCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", buf, 0x2Au);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v89 = *a2;
                v90 = *(a3 + 10);
                v91 = *(a1 + 824);
                *v105 = 134349824;
                *&v105[4] = v89;
                v106 = 2050;
                *v107 = v90;
                *&v107[8] = 2050;
                v108 = v91;
                v109 = 2050;
                v110 = v69;
                v92 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v92);
                if (v92 != buf)
                {
                  free(v92);
                }
              }

              sub_100D6B904(a1);
            }
          }
        }

        sub_1000DAAA0(a1, 1, *a2);
        return;
      }

LABEL_76:
      if ((*(a1 + 2779) & 1) == 0 && *a3 == 3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v35 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v36 = *a2;
          v37 = *(a1 + 2778);
          v38 = *(a1 + 2779);
          v39 = *(a1 + 2800);
          *buf = 134349824;
          *&buf[4] = v36;
          v127 = 1026;
          *v128 = v37;
          *&v128[4] = 1026;
          *&v128[6] = v38;
          LOWORD(v129) = 1026;
          *(&v129 + 2) = v39;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,moving motion state override to low confidence Walk,InVisit,%{public}d,IsLikelyOutOfAVisit,%{public}d,WiFiServiceStatesAssociated,%{public}d", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v81 = *a2;
          v82 = *(a1 + 2778);
          v83 = *(a1 + 2779);
          v84 = *(a1 + 2800);
          *v105 = 134349824;
          *&v105[4] = v81;
          v106 = 1026;
          *v107 = v82;
          *&v107[4] = 1026;
          *&v107[6] = v83;
          LOWORD(v108) = 1026;
          *(&v108 + 2) = v84;
          v85 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v85);
          if (v85 != buf)
          {
            free(v85);
          }
        }

        *v118 = 4;
      }

      goto LABEL_84;
    }

    sub_10011BB24(*(a1 + 2168), v105);
    if (*v105 > 0.0 && (*a2 < *v105 || *a2 - *v105 <= 6.0))
    {
      if (v117 >= 3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v26 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v27 = *a2;
          *buf = 134349312;
          *&buf[4] = v27;
          v127 = 1026;
          *v128 = v117;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR/VDR data,IO derived Motion type,%{public}d", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_73;
        }

        sub_101A7B5F4(buf);
        v28 = *a2;
        *v102 = 134349312;
        *&v102[4] = v28;
        v103 = 1026;
        LODWORD(v104) = v117;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v29);
        if (v29 == buf)
        {
          goto LABEL_73;
        }

        goto LABEL_142;
      }

      if (v115 < 0.001 && v116 > 0.3)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v33 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v34 = *a2;
          *buf = 134349312;
          *&buf[4] = v34;
          v127 = 2050;
          *v128 = v116;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#fusion,mct_now,%{public}.3f,Static motion state override to Moving based on IO PDR delta-altitude changes,delta altitude change,%{public}.2f", buf, 0x16u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_73;
        }

        sub_101A7B5F4(buf);
        v98 = *a2;
        *v102 = 134349312;
        *&v102[4] = v98;
        v103 = 2050;
        v104 = v116;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v29);
        if (v29 == buf)
        {
          goto LABEL_73;
        }

LABEL_142:
        free(v29);
LABEL_73:
        *v118 = 3;
      }
    }

    if (*(a1 + 2778))
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v12 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#fusion,motion state update is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_15:
    sub_101A7B5F4(buf);
    *v105 = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::motionActivityUpdate(const CFTimeInterval &, const CLMotionActivity &)", "%s\n", v13);
    goto LABEL_16;
  }
}

void sub_1000DCDA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000DCDB0(uint64_t a1, __int128 *a2, double a3)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = *(a2 + 16);
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v14 = *a2;
  v13 = a2[1];
  *(a1 + 32) = a3;
  *(a1 + 40) = v14;
  *(a1 + 104) = v12;
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 56) = v13;
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 120) = v11;
  v15 = *(a1 + 24);
  sub_1000D0778(a1, a2, a3);
  if (qword_1025D4770 != -1)
  {
    sub_1018FE80C();
  }

  v16 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a1 + 24);
    *buf = 134350080;
    v22 = a3;
    v23 = 1026;
    v24 = v17;
    v25 = 1026;
    v26 = v18;
    v27 = 1026;
    v28 = v15;
    v29 = 1026;
    v30 = v19;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#motion,dynamics mode on motion update,mct,%{public}.3f,type,%{public}d,confidence,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE820(buf);
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::motionActivityUpdate(const CFTimeInterval, const CLMotionActivity &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }
}

void sub_1000DCFE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1000DCFEC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, float a10, __int128 a11, int a12)
{
  dispatch_assert_queue_not_V2(*(a1 + 480));
  v22 = *(a1 + 480);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DD0E8;
  block[3] = &unk_102477DC0;
  block[4] = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a9;
  v31 = a10;
  v32 = a8;
  v33 = a11;
  v34 = a12;
  dispatch_sync(v22, block);
}

float sub_1000DD0E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 596) += *(a1 + 40);
  *(v1 + 568) += *(a1 + 44);
  *(v1 + 572) += *(a1 + 48);
  *(v1 + 584) += *(a1 + 52);
  *(v1 + 592) += *(a1 + 56);
  *(v1 + 588) += *(a1 + 60);
  *(v1 + 600) = *(a1 + 64) + *(v1 + 600);
  result = *(a1 + 68) + *(v1 + 604);
  *(v1 + 604) = result;
  *(v1 + 576) += *(a1 + 72);
  *(v1 + 580) += *(a1 + 76);
  *(v1 + 608) += *(a1 + 80);
  *(v1 + 612) += *(a1 + 84);
  *(v1 + 624) += *(a1 + 88);
  *(v1 + 628) += *(a1 + 92);
  return result;
}

void sub_1000DD1D0(dispatch_queue_t *a1, uint64_t a2)
{
  dispatch_assert_queue_not_V2(*a1);
  v4 = *a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000DD258;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void sub_1000DD258(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(a1 + 40);
    *(v1 + 36) = vaddq_s32(*(v1 + 36), vuzp1q_s32(*v3, vrev64q_s32(*v3)));
    *(v1 + 52) = vadd_s32(*(v1 + 52), *(v3 + 16));
    sub_10001A3E8();
    if ((sub_10001CF3C() & 1) == 0)
    {
      v4 = *(a1 + 40);
      v9 = *v4;
      v10 = *(v4 + 2);
      v5 = sub_100011660();
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100E0374C;
      v6[3] = &unk_1024605D8;
      v6[4] = v1;
      v7 = v9;
      v8 = v10;
      sub_10017A794(v5, v6);
    }
  }
}

void sub_1000DD340(uint64_t a1, unsigned int *a2)
{
  *(a1 + 48) = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(a1 + 96) = *(a2 + 3);
  *(a1 + 112) = v6;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  v7 = *(a2 + 5);
  v8 = *(a2 + 6);
  v9 = *(a2 + 7);
  *(a1 + 176) = *(a2 + 16);
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 128) = v7;
  *(a1 + 40) = *(a2 + 5);
  v10 = sub_10000B1F8();
  v11 = 1;
  *(a1 + 32) = sub_10001A6B0(v10, &v11);
  sub_1000DB004((a1 + 208), *a2, *(a2 + 10));
}

void sub_1000DD3CC(uint64_t a1)
{
  v2 = sub_10000B1F8();
  v22 = 0;
  v3 = sub_10001A6B0(v2, &v22);
  if (v3 - *(a1 + 8) > 10.0)
  {
    *(a1 + 8) = v3;
    if (sub_100143194(a1) > 300.0)
    {
      v4 = *(a1 + 272);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = *(a1 + 272);
        do
        {
          if (((1 << v5) & v7) != 0)
          {
            v6 += *(a1 + 4 * v5 + 16);
            v7 &= ~(1 << v5);
          }

          if (v5 > 0x3E)
          {
            break;
          }

          ++v5;
        }

        while (v7);
        if (v6 >= 1)
        {
          v8 = 0;
          v9 = 0;
          do
          {
            if (((1 << v8) & v4) != 0)
            {
              v9 += *(a1 + 4 * v8 + 16);
              v4 &= ~(1 << v8);
            }

            if (v8 > 0x3E)
            {
              break;
            }

            ++v8;
          }

          while (v4);
          v10 = (*(a1 + 24) + *(a1 + 20)) / v9;
          if (v10 > 0.4)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101B49950();
            }

            v11 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v12 = sub_100143194(a1);
              v13 = sub_10000B1F8();
              v22 = 1;
              v14 = sub_10001A6B0(v13, &v22);
              v22 = 134349568;
              v23 = v12;
              v24 = 2050;
              v25 = v10;
              v26 = 2050;
              v27 = v14;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CLJR,PedestrianDetector,reset after frozen or static for the last %{public}.3f sec,ratio,%{public}.3f,mct,%{public}.3f", &v22, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B49978(a1, v15, v16, v17, v18, v19, v20, v21, v10);
            }

            sub_10115EE58(a1);
          }
        }
      }
    }
  }
}

uint64_t sub_1000DD5D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_1000DD5F4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018F5F74();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 288);
    v6 = *(a1 + 296);
    v7 = *(a1 + 48);
    v8 = *(a1 + 216);
    v9 = *(a1 + 192);
    v11[0] = 67110144;
    v11[1] = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Dummy, Static, step count: %d, step distance: %f, activity: %d, type: %d, vm: %f", v11, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5F88(a1);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&result = 3;
  *(a2 + 32) = 3;
  return result;
}

void sub_1000DD728(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 124) = 0;
  *(a3 + 128) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  *(a3 + 132) = 1000;
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    v8 = OS_LOG_TYPE_DEBUG;
    if (*(a2 + 248) == 1)
    {
      if (sub_100CDBE44(*(a2 + 240)))
      {
        v8 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_DEBUG;
      }
    }

    sub_100F23644(a1, a2, a3, v6, v7);
    if (qword_1025D4460 != -1)
    {
      sub_101ACAC20();
    }

    v9 = qword_1025D4468;
    if (os_log_type_enabled(qword_1025D4468, v8))
    {
      v11 = *a3;
      v10 = *(a3 + 8);
      v12 = *(a3 + 24);
      v13 = *(a3 + 32);
      v14 = *(a3 + 40);
      v15 = *(a3 + 48);
      v16 = *(a3 + 56);
      v17 = *(a3 + 60);
      v18 = *(a3 + 64);
      v19 = *(a3 + 72);
      v20 = *(a3 + 80);
      v21 = *(a3 + 88);
      v22 = *(a3 + 96);
      v23 = *(a3 + 104);
      v24 = *(a3 + 112);
      v25 = *(a3 + 16);
      v26 = *(a3 + 120);
      v27 = *(a3 + 124);
      v28 = *(a3 + 129);
      v29 = *(a3 + 128);
      v30 = *(a3 + 132);
      *buf = 134354176;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      v40 = 1026;
      v41 = v14;
      v42 = 2048;
      v43 = v15;
      v44 = 1026;
      v45 = v16;
      v46 = 1026;
      v47 = v17;
      v48 = 1026;
      v49 = v18;
      v50 = 2050;
      v51 = v19;
      v52 = 2050;
      v53 = v20;
      v54 = 2050;
      v55 = v21;
      v56 = 2050;
      v57 = v22;
      v58 = 2050;
      v59 = v23;
      v60 = 2050;
      v61 = v24;
      v62 = 1026;
      v63 = v25;
      v64 = 1026;
      v65 = v26;
      v66 = 1026;
      v67 = v27;
      v68 = 1026;
      v69 = v28;
      v70 = 1026;
      v71 = v29;
      v72 = 1026;
      v73 = v30;
      _os_log_impl(dword_100000000, v9, v8, "RunningPower,startTime,%{public}.2f,powerWattage,%.2f,userWeight,%.2f,userHeight,%.2f,isWeightSet,%{public}d,workrateMETs,%.2f,activityTypeWithoutOverride,%{public}d,activityType,%{public}d,isWorkoutSelected,%{public}d,currentPace,%{public}.2f,currentCadence,%{public}.2f,horizSpeed,%{public}.3f,verticalSpeed,%{public}.3f,grade,%{public}.2f,eta,%{public}.2f,isValid,%{public}d,isGradeOnsetEscalated,%{public}d,gradeOnsetCounter,%{public}d,isRunning,%{public}d,isArmConstrainedStateValid,%{public}d,elevationSource,%{public}d", buf, 0xACu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4460 != -1)
      {
        sub_101ACABB4();
      }

      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLPower::ModelOutput CLPowerEstimator::computeAndLogPower(const CLNatalieModelInput &)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    sub_10067FD68(a3, buf);
    if (*(a1 + 64) == 1)
    {
      if (qword_102637F48 != -1)
      {
        sub_101ACAC34();
      }

      if (qword_102637F50)
      {
        operator new();
      }
    }

    PB::Base::~Base(buf);
  }
}

double sub_1000DDC14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 20) = sub_1000D8610(a1, a2 + 704, *(a2 + 248), *(a2 + 8));
  *(a3 + 24) = 0;
  *&result = 3;
  *(a3 + 32) = 3;
  return result;
}

void sub_1000DDC60(uint64_t a1, double a2, double a3)
{
  v9 = a3;
  if (a2 - *(a1 + 88) <= 11.0)
  {
LABEL_10:
    sub_1000DDD4C();
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *(a1 + 56) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(a1 + 32);
      v4 = (*(a1 + 24) + 8);
      *(a1 + 24) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
LABEL_9:
      sub_1003C93BC(a1 + 64, *(a1 + 72));
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = a1 + 72;
      goto LABEL_10;
    }

    v8 = 512;
  }

  *(a1 + 48) = v8;
  goto LABEL_9;
}

void *sub_1000DDDEC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_10045E25C(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t sub_1000DDE74(void *a1, int a2, void *a3)
{
  v3 = a1[10];
  if (!v3)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v10 = vcvtd_n_f64_u64(v3, 1uLL);
    v11 = vcvtms_s32_f32(v10);
    v12 = a1[8];
    if (v11 < 1)
    {
      v7 = a1[8];
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v7 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v7 = v12[2];
            v8 = *v7 == v12;
            v12 = v7;
          }

          while (!v8);
        }

        v12 = v7;
      }
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v6 = a1[9];
      v4 = a1 + 9;
      v5 = v6;
      if (v6)
      {
        do
        {
          v7 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (v8);
      }

      goto LABEL_22;
    }

    return 0;
  }

  v7 = a1[8];
LABEL_22:
  *a3 = v7[4];
  return 1;
}

uint64_t sub_1000DDF40(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1025D4490 != -1)
  {
    sub_1019EB444();
  }

  v6 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteController::feedNatalie called, rawMets, %f", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EB620(a3);
  }

  result = sub_1000DE0A8(a1, a2);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 24);
    v10 = a1 + 40;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= v9;
      v13 = v11 < v9;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 != a1 + 40 && v9 >= *(v10 + 32))
    {
      return (*(**(v10 + 40) + 16))(*(v10 + 40), a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000DE0A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4560);
  sub_10001A3E8();
  result = sub_10001CF3C();
  v6 = 0;
  if (result && v4)
  {
    v6 = *(a2 + 48) == 90603 || (*(a2 + 248) & 1) == 0;
  }

  *(a1 + 24) = v6;
  return result;
}

double sub_1000DE10C(double a1, uint64_t a2, int a3, void *a4, float *a5)
{
  v6 = a1;
  if (!a3)
  {
    v13 = *a5;
    *&v37 = a1;
    *(&v37 + 2) = v13;
    sub_1000DE310(a4, &v37);
    v14 = a4[1];
    v6 = 0.0;
    v15 = a4[2] - v14;
    if (!v15)
    {
      return v6;
    }

    v16 = a4[4];
    v17 = &v14[v16 >> 8];
    v18 = *v17;
    v19 = *v17 + 16 * v16;
    v20 = *(v14 + (((a4[5] + v16) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a4 + 40) + v16);
    if (v19 == v20)
    {
      return v6;
    }

    v21 = 0.0;
    v22 = *v17;
    v23 = v19;
    v24 = v17;
    do
    {
      v25 = *v23;
      v23 += 2;
      v26 = v25;
      if (v23 - v22 == 4096)
      {
        v27 = v24[1];
        ++v24;
        v22 = v27;
        v23 = v27;
      }

      v21 = v21 + v26;
    }

    while (v23 != v20);
    v6 = 0.0;
    if (v21 < 10.0)
    {
      return v6;
    }

    v28 = 0.0;
    do
    {
      v29 = v19 + 16;
      if (v19 + 16 - v18 == 4096)
      {
        v30 = v17[1];
        ++v17;
        v18 = v30;
        v29 = v30;
      }

      v31 = *v19 * *(v19 + 8);
      v28 = v28 + v31;
      v19 = v29;
    }

    while (v29 != v20);
    v32 = v28 / v21;
    *a5 = v32;
    a4[5] = 0;
    v33 = v15 >> 3;
    if (v33 >= 3)
    {
      do
      {
        operator delete(*v14);
        v34 = a4[2];
        v14 = (a4[1] + 8);
        a4[1] = v14;
        v33 = (v34 - v14) >> 3;
      }

      while (v33 > 2);
    }

    if (v33 == 1)
    {
      v35 = 128;
    }

    else
    {
      if (v33 != 2)
      {
        return v21;
      }

      v35 = 256;
    }

    a4[4] = v35;
    return v21;
  }

  v7 = a4[1];
  v8 = a4[2];
  a4[5] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a4[2];
      v7 = (a4[1] + 8);
      a4[1] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 128;
    goto LABEL_24;
  }

  if (v9 == 2)
  {
    v11 = 256;
LABEL_24:
    a4[4] = v11;
  }

  return v6;
}