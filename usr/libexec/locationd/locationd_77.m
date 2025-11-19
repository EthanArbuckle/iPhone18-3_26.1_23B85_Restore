void sub_10054D64C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 25);
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v7 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 168);
    v9 = *(a1 + 144);
    *buf = 67240704;
    *&buf[4] = v6;
    *&buf[8] = 1026;
    *&buf[10] = v8;
    v49 = 2050;
    v50 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "On-start data from remote seqNo,%{public}u,fLastOnStartDebugSeqNo,%{public}u,bufferSize,%{public}zu", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v38 = *(a1 + 168);
    v39 = *(a1 + 144);
    v43[0] = 67240704;
    v43[1] = v6;
    v44 = 1026;
    v45 = v38;
    v46 = 2050;
    v47 = v39;
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleOnStartFragment(uint64_t, FusedStructWithStatus &)", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  v10 = *(a1 + 112);
  if (v6)
  {
    v11 = *(a1 + 120);
    goto LABEL_16;
  }

  v11 = *(a1 + 120);
  *(a1 + 144) = 0;
  v12 = v11 - v10;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v10);
      v11 = *(a1 + 120);
      v10 = (*(a1 + 112) + 8);
      *(a1 + 112) = v10;
      v12 = v11 - v10;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 2048;
    goto LABEL_14;
  }

  if (v12 == 2)
  {
    v13 = 4096;
LABEL_14:
    *(a1 + 136) = v13;
  }

  *(a1 + 168) = 0;
LABEL_16:
  v14 = (a1 + 144);
  v15 = *(a1 + 136) + *(a1 + 144);
  v16 = &v10[v15 >> 12];
  if (v11 == v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16 + (v15 & 0xFFF);
  }

  sub_10054F5AC((a1 + 104), v16, v17, a3, (a3 + 24), 0x18uLL);
  v18 = (a1 + 168);
  if ((v6 - *(a1 + 168)) >= 2u)
  {
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v19 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *v18;
      *buf = 67240448;
      *&buf[4] = v6;
      *&buf[8] = 1026;
      *&buf[10] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "Jump in on-start sequence numbers last,%{public}u,this,%{public}u", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BC448((a1 + 168));
    }

    v21 = *(a1 + 112);
    v22 = *(a1 + 120);
    *(a1 + 144) = 0;
    v23 = (v22 - v21) >> 3;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v21);
        v24 = *(a1 + 120);
        v21 = (*(a1 + 112) + 8);
        *(a1 + 112) = v21;
        v23 = (v24 - v21) >> 3;
      }

      while (v23 > 2);
    }

    goto LABEL_49;
  }

  if (*v14 >= 0xF0uLL)
  {
    for (i = 0; i != 240; ++i)
    {
      v26 = vaddq_s64(*(a1 + 136), xmmword_101C66230);
      *(v43 + i) = *(*(*(a1 + 112) + ((*(a1 + 136) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 136) & 0xFFFLL));
      *(a1 + 136) = v26;
      sub_1005508B8(a1 + 104, 1);
    }

    *buf = a2;
    sub_100061FD8(a1, 9, v43, 240);
    v27 = 0;
    v28 = buf;
    do
    {
      snprintf(v28, 3uLL, "%02hhX", *(v43 + v27++));
      v28 += 2;
    }

    while (v27 != 240);
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v29 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 136446210;
      v42 = buf;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "OnStartMsg: %{public}s", v41, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BC25C();
    }

    if (!*v14)
    {
      goto LABEL_61;
    }

    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v30 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v31 = *v14;
      *v41 = 134349056;
      v42 = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "Discarding %{public}zu bytes from onstart packet", v41, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BC354();
    }

    v32 = *(a1 + 112);
    v33 = *(a1 + 120);
    *(a1 + 144) = 0;
    v23 = (v33 - v32) >> 3;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v32);
        v34 = *(a1 + 120);
        v32 = (*(a1 + 112) + 8);
        *(a1 + 112) = v32;
        v23 = (v34 - v32) >> 3;
      }

      while (v23 > 2);
    }

LABEL_49:
    if (v23 == 1)
    {
      v35 = 2048;
    }

    else
    {
      if (v23 != 2)
      {
LABEL_61:
        *v18 = 0;
        return;
      }

      v35 = 4096;
    }

    *(a1 + 136) = v35;
    goto LABEL_61;
  }

  if (qword_1025D42C0 != -1)
  {
    sub_1018BBB3C();
  }

  v36 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v37 = *v14;
    *buf = 134349056;
    *&buf[4] = v37;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Accumulated %{public}zu bytes for onstart packet", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC168();
  }

  *v18 = v6;
}

uint64_t sub_10054DC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_10054D478(a1, a2, a3, &v25);
  v7 = *(a3 + 24);
  v6 = (a3 + 24);
  LOWORD(v32) = v7;
  BYTE2(v32) = v6[2];
  v8 = *v6;
  v9 = (v8 >> 4) & 3;
  v10 = v8 & 0xF;
  LOWORD(v8) = ((v8 >> 4) & 3) - *(a1 + 169) + 4;
  if ((v8 - ((v8 + ((v8 & 0xC000) >> 14)) & 0xFC)) == 1)
  {
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBD5C();
    }

    v11 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 169);
      v13 = *v6;
      *buf = 67240960;
      *&buf[4] = v12;
      *&buf[8] = 1026;
      *&buf[10] = v9;
      LOWORD(v72) = 1026;
      *(&v72 + 2) = v10;
      HIWORD(v72) = 1026;
      *v73 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "handleFusedStruct(WithStatus) fLastFusedSeqNo,%{public}u,seqNo,%{public}u,rtc,%{public}u,byte,%{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42C0 == -1)
      {
LABEL_25:
        v22 = *(a1 + 169);
        v23 = *v6;
        v33 = 67240960;
        *v34 = v22;
        *&v34[4] = 1026;
        *&v34[6] = v9;
        LOWORD(v35) = 1026;
        *(&v35 + 2) = v10;
        HIWORD(v35) = 1026;
        *v36 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleFusedStruct(uint64_t, FusedStructWithStatus &)", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }

        goto LABEL_14;
      }

LABEL_27:
      sub_1018BBB3C();
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBD5C();
    }

    v14 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 169);
      v16 = *v6;
      *buf = 67240960;
      *&buf[4] = v15;
      *&buf[8] = 1026;
      *&buf[10] = v9;
      LOWORD(v72) = 1026;
      *(&v72 + 2) = v10;
      HIWORD(v72) = 1026;
      *v73 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Jump in fused packet sequence number last,%{public}u,this,%{public}u,rtc,%{public}u,byte,%{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42C0 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }
  }

LABEL_14:
  *(a1 + 169) = v9;
  v17 = BYTE2(v32);
  v18 = BYTE1(v32);
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBB3C();
  }

  v19 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134222848;
    *&buf[4] = *(&v25 + 1);
    *&buf[12] = 2048;
    v72 = v26;
    *v73 = 2048;
    *&v73[2] = *(&v26 + 1);
    v74 = 2048;
    v75 = v25;
    v76 = 2048;
    v77 = *&v27;
    v78 = 2048;
    v79 = *(&v27 + 1);
    v80 = 2048;
    v81 = *(&v27 + 2);
    v82 = 2048;
    v83 = *(&v27 + 3);
    v84 = 2048;
    v85 = *&v28;
    v86 = 2048;
    v87 = *(&v28 + 1);
    v88 = 1024;
    v89 = (v18 >> 4) & 1;
    v90 = 1024;
    v91 = (v18 >> 3) & 1;
    v92 = 1024;
    v93 = (v18 >> 2) & 1;
    v94 = 1024;
    v95 = v17 & 1;
    v96 = 1024;
    v97 = (v18 >> 1) & 1;
    v98 = 1024;
    v99 = v18 & 1;
    v100 = 1024;
    v101 = (v17 >> 2) & 1;
    v102 = 1024;
    v103 = (v17 >> 1) & 1;
    v104 = 1024;
    v105 = v9;
    v106 = 2048;
    v107 = a2;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "[CLDeviceMotionLiteService] q.x,%.10f,q.y,%.10f,q.z,%.10f,q.w,%.10f,userAccel.x,%.10f,userAccel.y,%.10f,userAccel.z,%.10f,rotationRate.x,%.10f,rotationRate.y,%.10f,rotationRate.z,%.10f,biasEstimation,%d,yawCorrection,%d,gravityCorrection,%d,initialized,%d,accelSaturated,%d,gyroSaturated,%d,compassCalibration,%d,gyroCalibration,%d,seqNo,%d,timestamp,%llu", buf, 0xA6u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_1018BBB3C();
    }

    v33 = 134222848;
    *v34 = *(&v25 + 1);
    *&v34[8] = 2048;
    v35 = v26;
    *v36 = 2048;
    *&v36[2] = *(&v26 + 1);
    v37 = 2048;
    v38 = v25;
    v39 = 2048;
    v40 = *&v27;
    v41 = 2048;
    v42 = *(&v27 + 1);
    v43 = 2048;
    v44 = *(&v27 + 2);
    v45 = 2048;
    v46 = *(&v27 + 3);
    v47 = 2048;
    v48 = *&v28;
    v49 = 2048;
    v50 = *(&v28 + 1);
    v51 = 1024;
    v52 = (v18 >> 4) & 1;
    v53 = 1024;
    v54 = (v18 >> 3) & 1;
    v55 = 1024;
    v56 = (v18 >> 2) & 1;
    v57 = 1024;
    v58 = v17 & 1;
    v59 = 1024;
    v60 = (v18 >> 1) & 1;
    v61 = 1024;
    v62 = v18 & 1;
    v63 = 1024;
    v64 = (v17 >> 2) & 1;
    v65 = 1024;
    v66 = (v17 >> 1) & 1;
    v67 = 1024;
    v68 = v9;
    v69 = 2048;
    v70 = a2;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleFusedStruct(uint64_t, FusedStructWithStatus &)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  *buf = a2;
  return sub_100061FD8(a1, 0, &v25, 120);
}

uint64_t sub_10054E320(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_10054D478(a1, a2, a3, &v7);
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v5 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134220544;
    *&buf[4] = *(&v7 + 1);
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = *(&v8 + 1);
    v20 = 2048;
    v21 = v7;
    v22 = 2048;
    v23 = *&v9;
    v24 = 2048;
    v25 = *(&v9 + 1);
    v26 = 2048;
    v27 = *(&v9 + 2);
    v28 = 2048;
    v29 = *(&v9 + 3);
    v30 = 2048;
    v31 = *&v10;
    v32 = 2048;
    v33 = *(&v10 + 1);
    v34 = 2048;
    v35 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "q.x,%.10f,q.y,%.10f,q.z,%.10f,q.w,%.10f,userAccel.x,%.10f,userAccel.y,%.10f,userAccel.z,%.10f,rotationRate.x,%.10f,rotationRate.y,%.10f,rotationRate.z,%.10f,timestamp,%llu", buf, 0x70u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC560(&v7, a2);
  }

  *buf = a2;
  return sub_100061FD8(a1, 0, &v7, 120);
}

uint64_t sub_10054E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v5 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Sysdiagnose packet. Write out the data!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC6E0();
  }

  return sub_100061FD8(a1, 7, a3, 1);
}

uint64_t sub_10054E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v5 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Session metrics packet. Push it to the right place", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC7C4();
  }

  return sub_100061FD8(a1, 8, a3, 1);
}

void sub_10054E658()
{
  IOHIDEventGetTimeStamp();
  v2 = 0;
  v3 = 0;
  IOHIDEventGetVendorDefinedData();
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBB3C();
  }

  v0 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Empty payload, returning", v1, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC8A8();
  }
}

void sub_10054E738(uint64_t a1, void *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (qword_1025D42C0 != -1)
  {
    sub_1018BBD5C();
  }

  v8 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "DeviceMotionLite,VendorData,size,%{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BC98C();
  }

  switch(a4)
  {
    case 0x30uLL:
      v9 = *(a3 + 2);
      v10 = *(a3 + 3);
      v11 = *(a3 + 8);
      v12 = *(a3 + 16);
      v13 = *(a3 + 18);
      v14.i32[0] = *(a3 + 22);
      v14.i16[2] = *(a3 + 13);
      v15 = *(a3 + 19);
      v14.i16[3] = *(a3 + 17);
      v16.i32[0] = *(a3 + 18);
      v16.i32[1] = *(a3 + 7);
      memset(v84, 0, sizeof(v84));
      *&buf[8] = vcvtq_f64_f32(*a3);
      *buf = v10;
      *v77 = v9;
      *&v77[8] = vdivq_f32(vcvtq_f32_s32(vmovl_s16(v14)), vdupq_n_s32(0x447A0000u));
      v78 = v13 / 1000.0;
      v79 = v15 / 1000.0;
      v81 = vcvtq_f32_s32(vmovl_s16(v16));
      v80 = v11;
      v82 = v12;
      v83 = a2;
      *&v84[1] = 0;
      *&v84[3] = 0;
      *(&v84[4] + 3) = 0;
      *v73 = a2;
      sub_100061FD8(a1, 1, buf, 120);
      break;
    case 0x1BuLL:
      sub_10054D520(a1, a2, a3);
      break;
    case 0x18uLL:
      sub_10054E320(a1, a2, a3);
      return;
    default:
      if (a4 < 0x3D)
      {
        if (qword_1025D42C0 != -1)
        {
          sub_1018BBB3C();
        }

        v30 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 134349056;
          *&buf[4] = a4;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "DeviceMotionLite: unhandled size %{public}ld", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018BCA84();
        }
      }

      else
      {
        if (qword_1025D42C0 != -1)
        {
          sub_1018BBB3C();
        }

        v17 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
        {
          v18 = *a3;
          v19 = a3[1];
          v20 = *(a1 + 96);
          *buf = 134218752;
          *&buf[4] = a4;
          *&buf[12] = 1024;
          *&buf[14] = v18;
          *&buf[18] = 1024;
          *&buf[20] = v19;
          *v77 = 2048;
          *&v77[2] = v20;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "DeviceMotionLite debug fragment, paylaodSize=%lu, fLength=%d, fSequence=%d, fragBufferLen=%lu", buf, 0x22u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D42C0 != -1)
          {
            sub_1018BBB3C();
          }

          v65 = *a3;
          v66 = a3[1];
          v67 = *(a1 + 96);
          *v73 = 134218752;
          *&v73[4] = a4;
          *&v73[12] = 1024;
          *&v73[14] = v65;
          *&v73[18] = 1024;
          *&v73[20] = v66;
          v74 = 2048;
          v75 = v67;
          v68 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleDeviceMotionLiteEvent(uint64_t, uint8_t *, size_t)", "%s\n", v68);
          if (v68 != buf)
          {
            free(v68);
          }
        }

        v21 = *a3;
        if (a4 - 29 == v21)
        {
          v22 = (a1 + 96);
          if (*(a1 + 96))
          {
            if (v21 != 64 && v21 != 32)
            {
              if (qword_1025D42C0 != -1)
              {
                sub_1018BBB3C();
              }

              v33 = qword_1025D42C8;
              if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
              {
                v34 = *v22;
                *buf = 134217984;
                *&buf[4] = v34;
                _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Not dropping %lu bytes in fragment buffer", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018BCD80();
              }

              goto LABEL_55;
            }

            if (qword_1025D42C0 != -1)
            {
              sub_1018BBB3C();
            }

            v23 = qword_1025D42C8;
            if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *v22;
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Dropping remaining %lu bytes in fragment buffer", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018BCC8C();
            }

            v25 = *(a1 + 64);
            v26 = *(a1 + 72);
            *(a1 + 96) = 0;
            v27 = (v26 - v25) >> 3;
            if (v27 >= 3)
            {
              do
              {
                operator delete(*v25);
                v28 = *(a1 + 72);
                v25 = (*(a1 + 64) + 8);
                *(a1 + 64) = v25;
                v27 = (v28 - v25) >> 3;
              }

              while (v27 > 2);
            }

            if (v27 == 1)
            {
              v29 = 2048;
              goto LABEL_54;
            }

            if (v27 == 2)
            {
              v29 = 4096;
LABEL_54:
              *(a1 + 88) = v29;
            }
          }

LABEL_55:
          if ((a3[1] - *(a1 + 152)) >= 2u)
          {
            if (qword_1025D42C0 != -1)
            {
              sub_1018BBB3C();
            }

            v35 = qword_1025D42C8;
            if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *(a1 + 153);
              v37 = a3[1];
              *buf = 67109376;
              *&buf[4] = v36;
              *&buf[8] = 1024;
              *&buf[10] = v37;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "Jump in packet sequence number: last=%d, this=%d", buf, 0xEu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018BCE74(a1);
            }
          }

          *(a1 + 152) = a3[1];
          sub_10054D520(a1, a2, (a3 + 2));
          v38 = *(a1 + 88) + *(a1 + 96);
          v39 = *(a1 + 64);
          v40 = (v39 + 8 * (v38 >> 12));
          if (*(a1 + 72) == v39)
          {
            v41 = 0;
          }

          else
          {
            v41 = *v40 + (v38 & 0xFFF);
          }

          sub_10054F5AC((a1 + 56), v40, v41, a3 + 29, &a3[*a3 + 29], *a3);
          while (1)
          {
            v42 = *v22;
            if (!*v22)
            {
              return;
            }

            v43 = *(a1 + 88);
            v44 = *(*(*(a1 + 64) + ((v43 >> 9) & 0x7FFFFFFFFFFFF8)) + (v43 & 0xFFF));
            switch(v44)
            {
              case 2:
                v73[0] = 2;
                *(a1 + 88) = v43 + 1;
                *(a1 + 96) = v42 - 1;
                sub_1005508B8(a1 + 56, 1);
                if (qword_1025D42C0 != -1)
                {
                  sub_1018BBB3C();
                }

                v50 = qword_1025D42C8;
                if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *v22;
                  *buf = 134217984;
                  *&buf[4] = v51;
                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "called event handler function, remaining bytes: %lu", buf, 0xCu);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018BD07C();
                }

                sub_10054E4C8(a1, a2, v73);
                break;
              case 3:
                v73[0] = 3;
                *(a1 + 88) = v43 + 1;
                *(a1 + 96) = v42 - 1;
                sub_1005508B8(a1 + 56, 1);
                if (qword_1025D42C0 != -1)
                {
                  sub_1018BBB3C();
                }

                v48 = qword_1025D42C8;
                if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
                {
                  v49 = *v22;
                  *buf = 134217984;
                  *&buf[4] = v49;
                  _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "called event handler function, remaining bytes: %lu", buf, 0xCu);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018BCF80();
                }

                sub_10054E590(a1, a2, v73);
                break;
              case 5:
                if (v42 <= 0x1F)
                {
                  if (qword_1025D42C0 != -1)
                  {
                    sub_1018BBB3C();
                  }

                  v45 = qword_1025D42C8;
                  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
                  {
                    v46 = *v22;
                    *buf = 134218240;
                    *&buf[4] = v46;
                    *&buf[12] = 2048;
                    *&buf[14] = 32;
                    _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "Skipping, buffer size %lu < packet size %lu", buf, 0x16u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1025D42C0 != -1)
                    {
                      sub_1018BBB3C();
                    }

                    v63 = *v22;
                    *v73 = 134218240;
                    *&v73[4] = v63;
                    *&v73[12] = 2048;
                    *&v73[14] = 32;
                    v64 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleDeviceMotionLiteEvent(uint64_t, uint8_t *, size_t)", "%s\n", v64);
                    if (v64 != buf)
                    {
                      free(v64);
                    }
                  }

                  v47 = 0;
                  goto LABEL_116;
                }

                v53 = 0;
                while (1)
                {
                  v54 = *v22;
                  if (!*v22)
                  {
                    break;
                  }

                  v55 = *(a1 + 88);
                  buf[v53] = *(*(*(a1 + 64) + ((v55 >> 9) & 0x7FFFFFFFFFFFF8)) + (v55 & 0xFFF));
                  *(a1 + 88) = v55 + 1;
                  *(a1 + 96) = v54 - 1;
                  sub_1005508B8(a1 + 56, 1);
                  if (++v53 == 32)
                  {
                    goto LABEL_108;
                  }
                }

                if (qword_1025D42C0 != -1)
                {
                  sub_1018BBB3C();
                }

                v56 = qword_1025D42C8;
                if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
                {
                  *v73 = 0;
                  _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "Zero size struct, or somehow ring buffer size ran out", v73, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018BD178(&v69, v70);
                }

LABEL_108:
                if (qword_1025D42C0 != -1)
                {
                  sub_1018BBB3C();
                }

                v57 = qword_1025D42C8;
                if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
                {
                  v58 = *v22;
                  *v73 = 134217984;
                  *&v73[4] = v58;
                  _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "called event handler function, remaining bytes: %lu", v73, 0xCu);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018BD278();
                }

                sub_10054D118(a1, a2, buf);
                break;
              default:
                if (qword_1025D42C0 != -1)
                {
                  sub_1018BBB3C();
                }

                v52 = qword_1025D42C8;
                if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = v44;
                  _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "Unknown msgType: %d", buf, 8u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018BD374(&v71, v44, v72);
                }

                *(a1 + 88) = vaddq_s64(*(a1 + 88), xmmword_101C66230);
                sub_1005508B8(a1 + 56, 1);
                break;
            }

            v47 = 1;
LABEL_116:
            if (qword_1025D42C0 != -1)
            {
              sub_1018BBB3C();
            }

            v59 = qword_1025D42C8;
            if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
            {
              v60 = *v22;
              *buf = 67109376;
              *&buf[4] = v44;
              *&buf[8] = 2048;
              *&buf[10] = v60;
              _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "msgType=%d, fragBufferLength=%lu\n", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D42C0 != -1)
              {
                sub_1018BBB3C();
              }

              v61 = *v22;
              *v73 = 67109376;
              *&v73[4] = v44;
              *&v73[8] = 2048;
              *&v73[10] = v61;
              v62 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLDeviceMotionLiteService::handleDeviceMotionLiteEvent(uint64_t, uint8_t *, size_t)", "%s\n", v62);
              if (v62 != buf)
              {
                free(v62);
              }
            }

            if ((v47 & 1) == 0)
            {
              return;
            }
          }
        }

        if (qword_1025D42C0 != -1)
        {
          sub_1018BBB3C();
        }

        v31 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *a3;
          *buf = 67109120;
          *&buf[4] = v32;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "Received invalid payload length %d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BCB88();
        }
      }

      break;
  }
}

uint64_t sub_10054F500(void *a1)
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
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
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

void *sub_10054F5AC(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      sub_10054FDA4(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 >> 12));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + (v21 & 0xFFF));
    }

    *&v68 = v12 + 8 * (v21 >> 12);
    *(&v68 + 1) = v24;
    v45 = v17 - v16;
    if (v17 - v16 < v6)
    {
      v46 = &a5[v17 - v16 - v6];
      if (v45 < v6 >> 1)
      {
        v46 = &a4[v45];
      }

      if (v46 != a5)
      {
        v47 = v46;
        do
        {
          *v24++ = *v47;
          if (&v24[-*v23] == 4096)
          {
            v48 = v23[1];
            ++v23;
            v24 = v48;
          }

          ++v47;
          ++a1[2].i64[1];
        }

        while (v47 != a5);
      }

      a5 = v46;
      v6 = v17 - v16;
    }

    if (v6)
    {
      v49 = sub_1005500BC(&v68, v6);
      v51 = v49;
      v52 = v50;
      v53 = *(&v68 + 1);
      if (*(&v68 + 1) != v50)
      {
        v54 = v49;
        v55 = v50;
        do
        {
          *v24++ = *v55;
          if (&v24[-*v23] == 4096)
          {
            v56 = v23[1];
            ++v23;
            v24 = v56;
          }

          if (&(++v55)[-*v54] == 4096)
          {
            v57 = v54[1];
            ++v54;
            v55 = v57;
          }

          ++a1[2].i64[1];
          v53 = *(&v68 + 1);
        }

        while (v55 != *(&v68 + 1));
      }

      if (v6 < v45)
      {
        v58 = sub_1005500BC(&v68, v45);
        sub_1005506C4(v58, v59, v51, v52, v68, *(&v68 + 1), &v69);
        v53 = *(&v70 + 1);
        v68 = v70;
      }

      if (a5 != a4)
      {
        v61 = (v68 - 8);
        v60 = *v68;
        while (1)
        {
          v62 = v53 - v60;
          if (a5 - a4 >= v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = a5 - a4;
          }

          a5 -= v63;
          if (v63)
          {
            memmove((v53 - v63), a5, v63);
          }

          if (a5 == a4)
          {
            break;
          }

          v64 = *v61--;
          v60 = v64;
          v53 = v64 + 4096;
        }
      }
    }
  }

  else
  {
    if (a6 > v10)
    {
      sub_10054FA14(a1, a6 - v10);
      v10 = a1[2].u64[0];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v11 = v10 >> 12;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + (v10 & 0xFFF);
    }

    *&v68 = v12 + 8 * v11;
    *(&v68 + 1) = v19;
    if (v6 > v16)
    {
      v25 = &a4[v6 - v16];
      if (v16 < v6 >> 1)
      {
        v25 = &a5[-v16];
      }

      if (v25 != a4)
      {
        v26 = v25;
        do
        {
          if (v19 == *v18)
          {
            v27 = *--v18;
            v19 = v27 + 4096;
          }

          v28 = *--v26;
          *--v19 = v28;
          a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
        }

        while (v26 != a4);
      }

      a4 = v25;
      v6 = v16;
    }

    if (v6)
    {
      v30 = sub_10054FD40(&v68, v6);
      v31 = v29;
      v32 = *(&v68 + 1);
      if (*(&v68 + 1) != v29)
      {
        v33 = v30;
        v34 = v29;
        do
        {
          if (v19 == *v18)
          {
            v35 = *--v18;
            v19 = v35 + 4096;
          }

          if (v34 == *v33)
          {
            v36 = *--v33;
            v34 = (v36 + 4096);
          }

          v37 = *--v34;
          *--v19 = v37;
          a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
          v32 = *(&v68 + 1);
        }

        while (v34 != *(&v68 + 1));
      }

      if (v6 < v16)
      {
        v38 = sub_10054FD40(&v68, v16);
        v69 = v68;
        sub_100550484(v30, v31, v38, v39, &v69);
        v32 = *(&v69 + 1);
        v68 = v69;
      }

      if (a4 != a5)
      {
        v41 = (v68 + 8);
        v40 = *v68;
        while (1)
        {
          v42 = v40 - v32 + 4096;
          if (a5 - a4 >= v42)
          {
            v43 = v42;
          }

          else
          {
            v43 = a5 - a4;
          }

          if (v43)
          {
            memmove(v32, a4, v43);
          }

          a4 += v43;
          if (a4 == a5)
          {
            break;
          }

          v44 = *v41++;
          v40 = v44;
          v32 = v44;
        }
      }
    }
  }

  v65 = a1->i64[1];
  if (a1[1].i64[0] == v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = *(v65 + 8 * (a1[2].i64[0] >> 12)) + (a1[2].i64[0] & 0xFFF);
  }

  *&v69 = v65 + 8 * (a1[2].i64[0] >> 12);
  *(&v69 + 1) = v66;
  return sub_10054FD40(&v69, v16);
}

const void **sub_10054FA14(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 9) - 1;
  }

  if ((v6 & 0xFFF) != 0)
  {
    v8 = (v6 >> 12) + 1;
  }

  else
  {
    v8 = v6 >> 12;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 12)
  {
    v11 = v10 >> 12;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 12)
  {
    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_100550120(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        sub_10055043C(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_100550120(v2, v17);
    }
  }

  return result;
}

void sub_10054FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10054FD40(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

void *sub_10054FDA4(void *result, unint64_t a2)
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

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10055022C(v2, v16);
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
        sub_10055043C(result, v12);
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

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10055022C(v2, v16);
    }
  }

  return result;
}

void sub_100550048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005500BC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - a2 - *result;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

const void **sub_100550120(const void **result, void *a2)
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

      sub_10055043C(result, v9);
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

void *sub_10055022C(void *result, void *a2)
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

      sub_10055043C(result, v11);
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

void *sub_100550334(void *result, void *a2)
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

      sub_10055043C(result[4], v11);
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

void sub_10055043C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

void ****sub_100550484(void *a1, _BYTE *a2, void *a3, _BYTE *a4, void ***a5)
{
  v11 = a5;
  if (a1 != a3)
  {
    v7 = a1 + 1;
    for (i = (*a1 + 4096); ; i = v9 + 4096)
    {
      sub_100550500(&v11, a2, i);
      if (v7 == a3)
      {
        break;
      }

      v9 = *v7++;
      a2 = v9;
    }

    a2 = *v7;
  }

  return sub_100550500(&v11, a2, a4);
}

void ****sub_100550500(void ****result, _BYTE *__src, _BYTE *a3)
{
  v3 = *result;
  v5 = **result;
  v4 = (*result)[1];
  if (__src != a3)
  {
    v7 = __src;
    v8 = result;
    v10 = *v5++;
    v9 = v10;
    while (1)
    {
      v11 = v9 - v4 + 4096;
      if (a3 - v7 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a3 - v7;
      }

      if (v12)
      {
        result = memmove(v4, v7, v12);
      }

      v7 += v12;
      if (v7 == a3)
      {
        break;
      }

      v13 = *v5++;
      v9 = v13;
      v4 = v13;
    }

    v4 = (v4 + v12);
    if (*(v5 - 1) + 4096 == v4)
    {
      v4 = *v5;
    }

    else
    {
      --v5;
    }

    v3 = *v8;
  }

  *v3 = v5;
  v3[1] = v4;
  return result;
}

const void **sub_1005505B8(const void **result, void *a2)
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

      sub_10055043C(result[4], v9);
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

void *sub_1005506C4@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_46;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13];
      if (v14 - a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14 - a2;
      }

      v14 -= v16;
      a6 -= v16;
      if (v16)
      {
        result = memmove(a6, v14, v16);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_44;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21];
      if (v22 - v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22 - v20;
      }

      v22 -= v24;
      a6 -= v24;
      if (v24)
      {
        result = memmove(a6, v22, v24);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      v29 = *v27;
      v30 = *v27 + 4096;
      while (1)
      {
        v31 = (a6 - v28);
        if (v30 - v29 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30 - v29;
        }

        v30 -= v32;
        a6 -= v32;
        if (v32)
        {
          result = memmove(a6, v30, v32);
        }

        if (v30 == v29)
        {
          break;
        }

        v33 = *--v8;
        v28 = v33;
        a6 = v33 + 4096;
      }

      v28 = *v8;
      if (*v8 + 4096 == a6)
      {
        v34 = v8[1];
        ++v8;
        v28 = v34;
        a6 = v34;
      }

      --v27;
    }

    while (v27 != a1);
  }

  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36];
      if (v35 - a2 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - a2;
      }

      v35 -= v38;
      a6 -= v38;
      if (v38)
      {
        result = memmove(a6, v35, v38);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_44:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_46:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

uint64_t sub_1005508B8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
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
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

id sub_100550944(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onCompanionNotification:v4 data:v12];
}

void sub_100551490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  sub_100008080(v12);
  _Unwind_Resume(a1);
}

void sub_10055160C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245E308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100551688(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245E358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100551704(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245E3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055182C()
{
  if (qword_102636F28)
  {
    v2 = 0;
    (*(*qword_102636F28 + 968))(qword_102636F28, &v2);
    if (((*(*qword_102636F28 + 944))() & 1) == 0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018BD920();
      }

      v0 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *v1 = 0;
        _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "could not store cached data ", v1, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BD948();
      }
    }
  }
}

uint64_t sub_100551940(uint64_t a1, uint64_t a2)
{
  v3 = sub_100565AA0(a1, a2, "cache", 1, 0, 2);
  *v3 = off_10245E418;
  sub_100536F74(v3 + 16, "CLDaemonCache", 1, 1);
  v9 = 0;
  sub_10001CAF4(buf);
  v4 = sub_10001CB4C(*buf, "ClearLocationCache", &v9);
  v5 = v4 & v9;
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v5)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018BD920();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning clearing location cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BDA40(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLDaemonCache::CLDaemonCache(id<CLIntersiloUniverse>)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    sub_1004FA320(a1);
  }

  return a1;
}

void sub_100551B34(_Unwind_Exception *a1)
{
  sub_10053700C(v2);
  sub_1005661F8(v1);
  _Unwind_Resume(a1);
}

void *sub_100551B7C(void *a1)
{
  *a1 = off_10245E418;
  sub_10053700C(a1 + 16);

  return sub_1005661F8(a1);
}

void sub_100551BD0(void *a1)
{
  *a1 = off_10245E418;
  sub_10053700C(a1 + 16);
  sub_1005661F8(a1);

  operator delete();
}

uint64_t sub_100551C38()
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018BDA84();
  }

  v0 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "*** CLDaemonCache::refresh not supported ***", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BDA98();
  }

  return 0;
}

uint64_t sub_100551CD0(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v3 = sub_100566514(a1);
  (*(*v2 + 24))(v2);
  return v3;
}

void sub_100551D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100551D80(uint64_t a1, const void *a2)
{
  v4 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_1004FAF3C(a1, a2);
  return (*(*v4 + 24))(v4);
}

void sub_100551E24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100551E38(uint64_t a1, const void *a2)
{
  v4 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v5 = sub_1004FCBE0(a1, a2);
  (*(*v4 + 24))(v4);
  return v5;
}

void sub_100551EE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100551EF8(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_1004FEC84(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_100551FA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100551FB8(uint64_t a1, double *a2)
{
  v5 = a1 + 128;
  v4 = *(a1 + 128);
  v7[5] = a1 + 128;
  (*(v4 + 16))(a1 + 128);
  v8 = 256;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005520BC;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  sub_100566954(a1, a2, v7);
  return (*(*v5 + 24))(v5);
}

void sub_1005520A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005520C4(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_100566B4C(a1);
  return (*(*v2 + 24))(v2);
}

void sub_100552158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10055219C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a2 + 248) == 1)
  {
    v8 = sub_100552628(a1, a2);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      v11 = *(a3 + 4);
      v12 = *(a3 + 12);
      v13 = *(a3 + 20);
      v14 = *(a3 + 24);
      v15 = *(a3 + 28);
      v16 = *(a3 + 32);
      v17 = *(a3 + 36);
      v18 = *(a2 + 240);
      v19 = *(a2 + 184);
      v20 = *(a2 + 408) > 0.0;
      v21 = *(a2 + 424);
      v22 = *(a2 + 192);
      v23 = *(a2 + 352);
      v24 = *(a2 + 288);
      v25 = *(a2 + 296);
      v26 = *(a1 + 8);
      v27 = *(a1 + 9);
      v28 = *(a1 + 10);
      v29 = *(a1 + 12);
      *buf = 134223360;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      v40 = 1024;
      v41 = v14;
      v42 = 2048;
      v43 = v15;
      v44 = 1024;
      v45 = v16;
      v46 = 1024;
      v47 = v17;
      v48 = 2048;
      v49 = v18;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 2048;
      v55 = v21;
      v56 = 2048;
      v57 = v22;
      v58 = 2048;
      v59 = v23;
      v60 = 2048;
      v61 = a4;
      v62 = 1024;
      v63 = v24;
      v64 = 2048;
      v65 = v25;
      v66 = 1024;
      v67 = v8;
      v68 = 1024;
      v69 = v26;
      v70 = 1024;
      v71 = v27;
      v72 = 1024;
      v73 = v28;
      v74 = 2048;
      v75 = v29;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "GenericWorkoutCalorieModel,metHR,%f,metsWR,%f,metsPE,%f,userMets,%f,userMetsSource,%d,truthMets,%f,truthMetsSource,%d,PEType,%d,workout,%lu,actNoOverride,%d,gpsAvail,%d,rawGpsSpeed,%f,vm,%f,hr,%f,fhr,%f,steps,%d,pedDistance,%f,useFloor,%d,usePed,%d,gpsFloor,%d,motionFloor,%d,floor,%f", buf, 0xB6u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieGenericWorkoutModel::logResults(const CLNatalieModelInput &, const CLMetsInfo &, float) const", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  else
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v31 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "Generic Calorie Workout Model is running out of session?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BDBA4();
    }
  }
}

uint64_t sub_100552628(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  v11 = *(a2 + 144);
  v12 = v4;
  v13 = *(a2 + 176);
  v5 = *(a2 + 96);
  *&v9.isStanding = *(a2 + 80);
  *&v9.isVehicleConnected = v5;
  v6 = *(a2 + 128);
  *&v9.vehicleType = *(a2 + 112);
  v10 = v6;
  v7 = *(a2 + 64);
  *&v9.type = *(a2 + 48);
  *&v9.mountedConfidence = v7;
  if (CLMotionActivity::isInVehicle(&v9))
  {
    return 0;
  }

  if (a1[10] == 1 && ((*(*a1 + 72))(a1, a2) & 1) != 0)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    result = 1;
    if (*(a2 + 424) > 0.447039992 || *(a2 + 408) <= 0.0)
    {
      return result;
    }
  }

  if (a1[11] != 1)
  {
    return 0;
  }

  if (*(a2 + 296) > 0.0)
  {
    return 1;
  }

  return (*(*a2 + 24))(a2) ^ 1;
}

void sub_100552748(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1005529A4(a1, a2, a3);
  v6 = *(a2 + 4536);
  v7 = *(a2 + 4540);
  v8 = *(a2 + 4544);
  v9 = *(a2 + 4548);
  v10 = *(a3 + 24);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(a2 + 352);
  v13 = (v9 - v12) / (v9 - v8);
  if ((**a2)(a2))
  {
    v14 = (*(*a2 + 8))(a2);
    v15 = sub_100552628(a1, a2);
    if (v14)
    {
      v16 = v6 * sub_100161F00(v13, v7);
      v17 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = sub_100552628(a1, a2);
  }

  v17 = 0;
  v16 = 0.0;
LABEL_6:
  if ((1.0 - v13) <= 0.3 || v16 <= *(a3 + 4))
  {
    v20 = *(a3 + 20);
    v21 = *(a3 + 28);
    v19 = v10;
    v22 = *(a3 + 32);
  }

  else
  {
    v19 = 1;
    v20 = v16;
    v21 = v16;
    v22 = 1;
  }

  *a3 = v16;
  *(a3 + 24) = v19;
  *(a3 + 32) = v22;
  if (v15)
  {
    v23 = *(a1 + 12);
    if (v23 > v20)
    {
      *(a3 + 24) = 3;
      v20 = v23;
    }
  }

  *&v24 = 2.1;
  if (v20 <= 2.1)
  {
    if ((v17 & 1) == 0)
    {
      v24 = *(a1 + 12);
    }

    *(a3 + 24) = 3;
    v20 = *&v24;
  }

  if (v20 < 2.1)
  {
    v20 = 2.1;
  }

  *(a3 + 20) = v20;
  if (v21 < 2.1)
  {
    v21 = 2.1;
  }

  *(a3 + 28) = v21;
  v25 = *(a3 + 12);
  if (v25 < 2.1)
  {
    v25 = 2.1;
  }

  *(a3 + 12) = v25;
  if (!((v10 != 5) | v11 & 1))
  {
    *(a3 + 32) = 5;
    *(a3 + 24) = 5;
  }

  sub_10055219C(a1, a2, a3, 1.0 - v13);
}

void sub_1005529A4(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0;
  *(a3 + 24) = 3;
  *(a3 + 32) = 3;
  if (a1[8] == 1)
  {

    sub_100553364(a1, a2, a3);
  }

  else
  {
    v4 = (*(*a1 + 48))(a1);
    v5 = *&v4;
    if ((v4 & dword_100000000) == 0)
    {
      v5 = 0.0;
    }

    *(a3 + 4) = v5;
    *(a3 + 12) = v5;
    *(a3 + 20) = v5;
    if ((v4 & dword_100000000) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = 5;
    }

    *(a3 + 28) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v6;
    *(a3 + 36) = 1;
  }
}

uint64_t sub_100552A68(_BYTE *a1, uint64_t a2, double a3)
{
  (*(*a1 + 56))(&v13);
  if ((*(*v13 + 32))(v13, a2, a3))
  {
    (*(*a1 + 64))(&v11, a1);
    v7 = (*(*v11 + 32))(v11, a2, a3);
    if (v12)
    {
      sub_100008080(v12);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v14)
  {
    sub_100008080(v14);
  }

  if (a1[9] == 1)
  {
    v6.n128_f64[0] = a3;
    v8 = sub_100552BF0(a2 + 3368, v6);
  }

  else
  {
    v8 = 1;
  }

  v6.n128_f64[0] = a3;
  v9 = v8 & sub_1000CCE3C(a2 + 3296, v6);
  if (v7)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_100552BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100552BF0(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLOdometerEntry>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLOdometerEntry>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_100553064(_BYTE *a1, uint64_t a2, double a3)
{
  (*(*a1 + 56))(&v7);
  (*(*v7 + 24))(v7, a2, a3);
  if (v8)
  {
    sub_100008080(v8);
  }

  (*(*a1 + 64))(&v7, a1);
  (*(*v7 + 24))(v7, a2, a3);
  if (v8)
  {
    sub_100008080(v8);
  }

  v6.n128_f64[0] = a3;
  if (!sub_1000CD414(a2 + 3728, v6) || !sub_1004A2080(a2 + 3728, &v7, a3) || (v9 & 1) != 0)
  {
    sub_1004A243C(a2 + 3296);
    if (a1[9] == 1)
    {
      sub_100553208((a2 + 3368));
    }
  }
}

void sub_1005531E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100553208(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BDCD0(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_1005540B8(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100554148(a1, 0, *(a1 + 5));
  }
}

float sub_100553364@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 56))(&v11);
  (*(*v11 + 16))(v13);
  if (v12)
  {
    sub_100008080(v12);
  }

  (*(*a1 + 64))(&v9, a1);
  (*(*v9 + 16))(&v11);
  if (v10)
  {
    sub_100008080(v10);
  }

  if ((*(*a1 + 40))(a1, a2) && *(v13 + 1) > *(&v11 + 1))
  {
    v6 = v13;
  }

  else
  {
    v6 = &v11;
  }

  v7 = *(v6 + 1);
  *a3 = *v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v6[4];
  result = *(a3 + 4);
  *(a3 + 20) = result;
  *(a3 + 28) = result;
  return result;
}

void sub_1005534D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100553524(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 32))(a2))
  {
    return 0x1408CDDEALL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100553574(uint64_t a1, float *a2)
{
  result = (*(*a2 + 32))(a2);
  if (result)
  {
    result = (*(*a2 + 40))(a2);
    if (result)
    {
      return sub_1010BB6FC(a2 + 254, (a2 + 1130)) != 0.0;
    }
  }

  return result;
}

uint64_t sub_100553604(_BYTE *a1, uint64_t a2, double a3)
{
  v6 = sub_100552A68(a1, a2, a3);
  v8 = (a1[10] ^ 1) & v6;
  if (((a1[10] ^ 1) & 1) != 0 || (v6 & 1) == 0)
  {
    return v8 & 1;
  }

  v7.n128_f64[0] = a3;
  if (!sub_100553694(a2 + 4376, v7))
  {
    v8 = 0;
    return v8 & 1;
  }

  v9.n128_f64[0] = a3;

  return sub_10016C1DC(a2 + 4304, v9);
}

uint64_t sub_100553694(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>]", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v19 = v15;
      v20 = 2048;
      v21 = v3;
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_100553B08(_BYTE *a1, uint64_t a2, double a3)
{
  sub_100553064(a1, a2, a3);
  v6.n128_f64[0] = a3;
  if (sub_1000CD414(a2 + 3728, v6) && sub_1004A2080(a2 + 3728, v7, a3) && v7[208] == 1 && a1[10] == 1)
  {
    sub_100553BCC((a2 + 4376));
    sub_100553D28((a2 + 4304));
  }
}

void sub_100553BCC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BDDD8(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_1005544BC(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_10055454C(a1, 0, *(a1 + 5));
  }
}

void sub_100553D28(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BDEE0(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_1005548C0(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100554950(a1, 0, *(a1 + 5));
  }
}

void *sub_100553E84(void *a1)
{
  *a1 = off_10245E868;
  v2 = a1[5];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_100553EDC(void *a1)
{
  *a1 = off_10245E868;
  v2 = a1[5];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008080(v3);
  }

  operator delete();
}

uint64_t sub_100553F54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100553F70@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_100553F8C(void *a1)
{
  *a1 = off_10245E8E0;
  v2 = a1[5];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_100553FE4(void *a1)
{
  *a1 = off_10245E8E0;
  v2 = a1[5];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100008080(v3);
  }

  operator delete();
}

uint64_t sub_1005540B8(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_100554148(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDCA8();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLOdometerEntry>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100554428(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_100554428(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_1005544BC(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_10055454C(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDCA8();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_10055482C(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_10055482C(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_1005548C0(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_100554950(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018BDB90();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDCA8();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100554C30(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_100554C30(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

void *sub_100554CD0(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100554D20(a1);
  return a1;
}

void sub_100554D20(uint64_t a1)
{
  HIBYTE(__p[2]) = 21;
  strcpy(__p, "WifiCentroidOverrides");
  sub_1005551BC(a1, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v2 = 1;
  do
  {
    std::to_string(&v8, v2);
    v3 = std::string::insert(&v8, 0, "WifiCentroidOverrides", 0x15uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    __p[2] = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v5 = sub_1005551BC(a1, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  while (v2++ != 100 && v5);
}

void sub_100554E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100554E48(uint64_t a1, std::string::size_type a2, uint64_t a3)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (sub_100175094(a3, "mac", v25) && sub_1000B9370(a3, "lat", &v24) && sub_1000B9370(a3, "lon", &v23) && sub_1000B9370(a3, "acc", &v22))
  {
    v21 = sub_100196E8C(v25);
    sub_1001A61B8(v21, v17);
    v18 = v24;
    v19 = v23;
    v20 = v22;
    sub_100197BD4(a1, &v21);
    if (qword_1025D4620 != -1)
    {
      sub_1018BDFE8();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 23);
      v8 = *a2;
      sub_10018F0D0(&__p);
      v9 = v7 >= 0 ? a2 : v8;
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136381699;
      v34 = v9;
      v35 = 2081;
      v36 = v10;
      v37 = 2053;
      v38 = v24;
      v39 = 2053;
      v40 = v23;
      v41 = 2049;
      v42 = v22;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning, WifiCentroidOverrides, found defaults write %{private}s: %{private}s, latlon %{sensitive}.7f, %{sensitive}.7f, acc %{private}.1f", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BE010(buf);
      v11 = *(a2 + 23);
      v12 = *a2;
      sub_10018F0D0(&v16);
      if (v11 >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = v12;
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v16;
      }

      else
      {
        v14 = v16.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136381699;
      *(__p.__r_.__value_.__r.__words + 4) = v13;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2081;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v14;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2053;
      v28 = v24;
      v29 = 2053;
      v30 = v23;
      v31 = 2049;
      v32 = v22;
      v15 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidDefaultsWriteOverrides::processWifiCentroidOverrideNameValuePair(const std::string &, const CLNameValuePair &)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100555184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1005551BC(uint64_t a1, std::string::size_type a2)
{
  sub_10004FD18(v9);
  sub_10001CAF4(&v7);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = sub_100185ADC(v7, v4, v9);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v5)
  {
    sub_100554E48(a1, a2, v9);
  }

  sub_100005DA4(v9);
  return v5;
}

void sub_100555250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_10055560C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100555760(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF04() & 1) != 0 || (sub_10001A3E8(), (sub_10003FFF8()) || (sub_10001A3E8(), sub_10001CF3C()))
  {
    byte_102656E60 = 1;
  }
}

void sub_100556044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

NSDictionary *sub_100556770(uint64_t a1)
{
  v10[0] = @"age_bin";
  v2 = *(*(a1 + 32) + 220);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_10038EB38(&__p, qword_102656E70, qword_102656E78, (qword_102656E78 - qword_102656E70) >> 2);
  if (v8 == __p)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = (v8 - __p) >> 2;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (*(__p + v3) < v2)
    {
      if (v4 == ++v3)
      {
        v3 = v4;
        break;
      }
    }
  }

  v11[0] = [NSNumber numberWithInt:v3];
  v10[1] = @"biologicalSex";
  v11[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v11[2] = &off_10254EA98;
  v10[2] = @"currentAlgVersion";
  v10[3] = @"reasonIneligible";
  v11[3] = [NSNumber numberWithUnsignedInt:*(a1 + 176)];
  v10[4] = @"status";
  v11[4] = [NSNumber numberWithInt:*(a1 + 60)];
  v10[5] = @"estimateAverageDelta";
  v11[5] = [NSNumber numberWithDouble:*(a1 + 120)];
  v10[6] = @"estimateVariabilityDelta";
  v11[6] = [NSNumber numberWithDouble:*(a1 + 168)];
  v10[7] = @"highPercentileEstimateDelta";
  v11[7] = [NSNumber numberWithDouble:*(a1 + 160)];
  v10[8] = @"meanPercentileDelta";
  v11[8] = [NSNumber numberWithDouble:*(a1 + 128)];
  v10[9] = @"newEstimateN";
  v11[9] = [NSNumber numberWithUnsignedInt:*(a1 + 140)];
  v10[10] = @"numUpdatedEstimatesTotal";
  v11[10] = [NSNumber numberWithUnsignedInt:*(a1 + 136)];
  v10[11] = @"removeEstimateN";
  v11[11] = [NSNumber numberWithUnsignedInt:*(a1 + 144)];
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:12];
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_100556DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100556E2C(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    [*(a1 + 32) onRetrocomputePreprocessingActivity:activity];
    if (xpc_activity_get_state(activity) == 2 && !xpc_activity_set_state(activity, 4))
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v4 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
      {
        v14 = 134349056;
        state = xpc_activity_get_state(activity);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Failed to mark VO2MaxRetrocomputePreProcessing activity as Continue. Current state is %{public}ld", &v14, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BEA4C();
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
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v9 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        v14 = 134349056;
        state = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: VO2MaxRetrocomputePreProcessing already scheduled with a delay of %{public}lld seconds", &v14, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEC70();
      }
    }

    else
    {
      v11 = int64;
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v12 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v7;
        v14 = 136446722;
        state = "com.apple.locationd.VO2Max.RetrocomputePreprocessing";
        v16 = 2050;
        v17 = v11;
        v18 = 2050;
        v19 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "XPC_CHECK_IN: %{public}s: Overwriting previous delay (%{public}lld) with a new delay of %{public}lld seconds", &v14, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BEB4C(v7, v11);
      }

      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, *v7);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_activity_set_criteria(activity, v5);
    }

    xpc_release(v5);
  }
}

void sub_1005572A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100558878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&STACK[0x850], 8);
  if (a46)
  {
    sub_100008080(a46);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100558948(__n128 *a1, __n128 *a2)
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

void sub_100558998(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    if ([a4 code] == 6)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v5 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "HealthKit VO2Max query failed due to device lock", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BF540();
      }
    }

    else
    {
      if (qword_1025D4450 != -1)
      {
        sub_1018BE384();
      }

      v29 = qword_1025D4458;
      if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = [a4 code];
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "HealthKit VO2Max query encountered error,%{public}ld", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018BF430(a4);
      }
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v34 objects:v49 count:16];
    if (v6)
    {
      v7 = *v35;
      do
      {
        v8 = 0;
        do
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v34 + 1) + 8 * v8);
          [objc_msgSend(v9 "quantity")];
          v11 = v10;
          if (qword_1025D4450 != -1)
          {
            sub_1018BE068();
          }

          v12 = qword_1025D4458;
          if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [objc_msgSend(v9 "startDate")];
            v14 = [objc_msgSend(v9 "endDate")];
            v15 = [objc_msgSend(v9 "metadata")];
            v16 = [objc_msgSend(v9 "sourceRevision")];
            *buf = 134284547;
            *&buf[4] = v11;
            *&buf[12] = 2113;
            *&buf[14] = v13;
            *&buf[22] = 2113;
            v45 = v14;
            *v46 = 2113;
            *&v46[2] = v15;
            *&v46[10] = 2113;
            *v47 = v16;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Retrieved sample... VO2Max: %{private}f, startTime: %{private}@, endTime: %{private}@, metadata: %{private}@, sourceRevision: %{private}@", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4450 != -1)
            {
              sub_1018BE068();
            }

            v23 = [objc_msgSend(v9 "startDate")];
            v24 = [objc_msgSend(v9 "endDate")];
            v25 = [objc_msgSend(v9 "metadata")];
            v26 = [objc_msgSend(v9 "sourceRevision")];
            *v38 = 134284547;
            *&v38[4] = v11;
            *&v38[12] = 2113;
            *&v38[14] = v23;
            *&v38[22] = 2113;
            v39 = v24;
            v40 = 2113;
            v41 = v25;
            v42 = 2113;
            v43 = v26;
            v27 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService executeRetrocomputePreprocessing:]_block_invoke", "%s\n", v27);
            if (v27 != buf)
            {
              free(v27);
            }
          }

          if ([v9 metadata] && objc_msgSend(objc_msgSend(v9, "metadata"), "objectForKeyedSubscript:", HKMetadataKeySyncIdentifier) && objc_msgSend(objc_msgSend(v9, "metadata"), "objectForKeyedSubscript:", HKMetadataKeySyncVersion))
          {
            [objc_msgSend(v9 "startDate")];
            *buf = v17;
            [objc_msgSend(v9 "endDate")];
            *&buf[8] = v18;
            *&buf[16] = v11;
            v45 = 0;
            *v46 = 0;
            v46[8] = [objc_msgSend(objc_msgSend(v9 "metadata")];
            *&v46[8] = v46[8];
            sub_10000EC00(&v47[4], "");
            if ([v9 sourceRevision] && objc_msgSend(objc_msgSend(v9, "sourceRevision"), "source"))
            {
              sub_10000EC00(v38, [objc_msgSend(objc_msgSend(objc_msgSend(v9 "sourceRevision")]);
              if (SHIBYTE(v48) < 0)
              {
                operator delete(*&v47[4]);
              }

              *&v47[4] = *v38;
              v48 = *&v38[16];
            }

            [objc_msgSend([NSUUID alloc] initWithUUIDString:{objc_msgSend(objc_msgSend(v9, "metadata"), "objectForKeyedSubscript:", HKMetadataKeySyncIdentifier)), "getUUIDBytes:", &v45}];
            v19 = *(*(a1 + 48) + 8);
            v20 = v19[7];
            if (v20 >= v19[8])
            {
              v21 = sub_100561E68((v19 + 6), buf);
            }

            else
            {
              sub_100561DF8(v19 + 6, buf);
              v21 = v20 + 72;
            }

            v19[7] = v21;
            if (SHIBYTE(v48) < 0)
            {
              operator delete(*&v47[4]);
            }
          }

          else
          {
            if (qword_1025D4450 != -1)
            {
              sub_1018BE068();
            }

            v22 = qword_1025D4458;
            if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "Will not attempt to retrocompute sample due to missing metadata", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018BF62C(&v32, v33);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v28 = [a3 countByEnumeratingWithState:&v34 objects:v49 count:16];
        v6 = v28;
      }

      while (v28);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100559008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100559038(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = (a1 + 40);
  if (!xpc_activity_should_defer(*(a1 + 40)))
  {
LABEL_15:
    v7 = *(a1 + 56);
    if ((*(*(v7 + 8) + 24) & 1) == 0)
    {
      v8 = [*(a1 + 48) retrocomputeForSamples:*(*(a1 + 64) + 8) + 48 withRetrocomputeHistory:*(*(a1 + 72) + 8) + 48];
      v7 = *(a1 + 56);
      if ((v8 & 2) != 0)
      {
        *(*(v7 + 8) + 24) = 1;
        v7 = *(a1 + 56);
      }
    }

    if (*(*(v7 + 8) + 24))
    {
      v9 = &XPC_ACTIVITY_INTERVAL_30_MIN;
    }

    else
    {
      v9 = &XPC_ACTIVITY_INTERVAL_1_DAY;
    }

    result = [*(a1 + 48) resetRetrocomputePreProcessingActivity:*(a1 + 40) withDelay:*v9];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      return [*(a1 + 48) sendRetroComputeAnalytics];
    }

    return result;
  }

  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v3 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to defer VO2MaxRetrocomputePreProcessing activity", &v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018BF738();
  }

  result = xpc_activity_set_state(*v2, 3);
  if ((result & 1) == 0)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v5 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      state = xpc_activity_get_state(*v2);
      v10 = 134349056;
      v11 = state;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Failed to mark VO2MaxRetrocomputePreProcessing activity as deferred. Current state is %{public}ld", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BF81C();
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_10055923C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100559258(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_100559A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10055B0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CHVO2MaxEstimator *a13, uint64_t a14, void *a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25)
{
  sub_10055B39C(&a13);
  if (a16)
  {
    sub_100008080(a16);
  }

  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  sub_100564814(&STACK[0x998]);
  _Unwind_Resume(a1);
}

void sub_10055B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 + 8));
  operator delete();
}

CHVO2MaxEstimator **sub_10055B39C(CHVO2MaxEstimator **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CHVO2MaxEstimator::~CHVO2MaxEstimator(v2);
    operator delete();
  }

  return a1;
}

void sub_10055B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  a39 = &a21;
  sub_1005648F0(&a39);
  a39 = &a24;
  sub_1005648F0(&a39);
  _Unwind_Resume(a1);
}

void sub_10055CAE4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 192)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

id sub_10055CF0C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Retrocomputed VO2Max sample successfully pushed to HKHealthStore", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFFF4();
    }

    return [*(a1 + 32) onRetrocomputeHealthKitSampleSavedWithStartTime:*(a1 + 40) activity:*(a1 + 48)];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Retrocomputed VO2Max sample failed to push to HKHealthStore, %{public}@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BFF04();
    }

    return [*(a1 + 32) onRetrocomputeHealthKitSampleFailed:*(a1 + 40)];
  }
}

id sub_10055D070(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v4 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Retrocomputed VO2Max sample successfully pushed to HKHealthStore", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BFFF4();
    }

    return [*(a1 + 32) onRetrocomputeHealthKitSampleSavedWithStartTime:*(a1 + 40) activity:*(a1 + 48)];
  }

  else
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v7 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Retrocomputed VO2Max sample failed to push to HKHealthStore, %{public}@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018BFF04();
    }

    return [*(a1 + 32) onRetrocomputeHealthKitSampleFailed:*(a1 + 40)];
  }
}

void sub_10055D5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055D984(uint64_t a1, _xpc_activity_s *a2)
{
  [*(a1 + 32) onRetryTriggerRetrocompute:a2];
  if (xpc_activity_get_state(a2) == 2 && !xpc_activity_set_state(a2, 4))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v3 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      v4 = 136446466;
      v5 = "com.apple.locationd.VO2Max.RetrocomputeRetryTrigger";
      v6 = 2050;
      state = xpc_activity_get_state(a2);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Continue. Current state is %{public}ld", &v4, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C03D4();
    }
  }
}

void sub_10055E844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055EA2C(uint64_t a1, _xpc_activity_s *a2)
{
  [*(a1 + 32) onRetryHealthKitDeleteSamples:a2];
  if (xpc_activity_get_state(a2) == 2 && !xpc_activity_set_state(a2, 4))
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE384();
    }

    v3 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_FAULT))
    {
      v4 = 134349056;
      state = xpc_activity_get_state(a2);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Failed to mark activity as Continue. Current state is %{public}ld", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C0890();
    }
  }
}

void sub_10055F190(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v8 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Delete HK Sessions,success,%d,deletedObjectCount,%lu,error,%@", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLVO2MaxService deleteSessionsFromHealthKit:withRetry:]_block_invoke", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (a2)
  {
    if (qword_1025D4450 != -1)
    {
      sub_1018BE068();
    }

    v9 = qword_1025D4458;
    if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Successfully deleted samples from HKHealthStore", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C1028();
    }

    *(*(a1 + 32) + 172) = 1;
  }

  else if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) retryHealthKitDeleteSamples];
  }
}

void sub_100560A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100560ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  [a3 doubleValue];
  return [v4 appendFormat:@" %@:%f", a2, v5];
}

void sub_100560C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100560C48(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  (*(*a1 + 120))(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_100560D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_100560DD0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v4 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "VO2Max Prior task triggered by scheduler", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C1CAC();
  }

  return [*(a1 + 32) handlePriorRepeatingTask:a2];
}

void sub_10056121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100561244(uint64_t a1)
{
  if (qword_1025D4450 != -1)
  {
    sub_1018BE384();
  }

  v2 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "DAS requested VO2Max Prior task expiration", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C1E8C();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_100561710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10001A420(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100561758(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C1F70();
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
      sub_1018C1F84();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2098();
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
      sub_1018C20C0();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_10016122C(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C2098();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_10016122C(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C21D4((a1 + 24), a1);
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

void sub_100561D54(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100561DA8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100561DA8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *sub_100561DF8(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 28) = *(a2 + 28);
  *v3 = v4;
  *(v3 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    result = sub_100007244((v3 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(v3 + 64) = *(a2 + 8);
    *(v3 + 48) = v6;
  }

  v2[1] = v3 + 72;
  return result;
}

uint64_t sub_100561E68(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10028C64C();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100561FE0(a1, v6);
  }

  v7 = 72 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 72 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 28) = *(a2 + 28);
  *v7 = v8;
  *(v7 + 16) = v9;
  if (*(a2 + 71) < 0)
  {
    sub_100007244((v7 + 48), *(a2 + 6), *(a2 + 7));
    v7 = v19;
    v11 = v20;
  }

  else
  {
    v10 = a2[3];
    *(72 * v2 + 0x40) = *(a2 + 8);
    *(72 * v2 + 0x30) = v10;
    v11 = 72 * v2;
  }

  *&v20 = v11 + 72;
  v12 = *(a1 + 8);
  v13 = v7 + *a1 - v12;
  sub_10056203C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100562180(&v18);
  return v17;
}

void sub_100561FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100562180(va);
  _Unwind_Resume(a1);
}

void sub_100561FE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10056203C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *(a4 + 28) = *(v6 + 28);
      *a4 = v7;
      *(a4 + 16) = v8;
      v9 = v6[3];
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 71) < 0)
      {
        operator delete(*(v5 + 6));
      }

      v5 = (v5 + 72);
    }
  }

  return sub_100562100(v11);
}

uint64_t sub_100562100(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100562138(a1);
  }

  return a1;
}

void sub_100562138(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 72;
  }
}

uint64_t sub_100562180(uint64_t a1)
{
  sub_1005621B8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005621B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 72;
      *(a1 + 16) = v2 - 72;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

__n128 sub_100562214(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
  while (2)
  {
    v9 = a2 - 5;
    v10 = a2 - 10;
    v11 = a2 - 15;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 4);
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return result;
            }

            if (v14 == 2)
            {
              result.n128_u64[0] = a2[-5].n128_u64[1];
              if (result.n128_f64[0] < *(v12 + 8))
              {
                v268 = *v12;
                v394 = *(v12 + 48);
                v436 = *(v12 + 64);
                v310 = *(v12 + 16);
                v352 = *(v12 + 32);
                v138 = a2[-1];
                v140 = a2[-4];
                v139 = a2[-3];
                *(v12 + 48) = a2[-2];
                *(v12 + 64) = v138;
                *(v12 + 16) = v140;
                *(v12 + 32) = v139;
                *v12 = a2[-5];
                a2[-2] = v394;
                a2[-1] = v436;
                a2[-4] = v310;
                a2[-3] = v352;
                result = v268;
                a2[-5] = v268;
              }

              return result;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              result.n128_u64[0] = *(v12 + 88);
              v141 = a2[-5].n128_f64[1];
              if (result.n128_f64[0] < *(v12 + 8))
              {
                if (v141 >= result.n128_f64[0])
                {
                  v278 = *v12;
                  v404 = *(v12 + 48);
                  v443 = *(v12 + 64);
                  v320 = *(v12 + 16);
                  v362 = *(v12 + 32);
                  v212 = *(v12 + 144);
                  *(v12 + 48) = *(v12 + 128);
                  *(v12 + 64) = v212;
                  v213 = *(v12 + 112);
                  *(v12 + 16) = *(v12 + 96);
                  *(v12 + 32) = v213;
                  *v12 = *(v12 + 80);
                  *(v12 + 128) = v404;
                  *(v12 + 144) = v443;
                  *(v12 + 96) = v320;
                  *(v12 + 112) = v362;
                  *(v12 + 80) = v278;
                  result.n128_u64[0] = a2[-5].n128_u64[1];
                  if (result.n128_f64[0] < *(v12 + 88))
                  {
                    v363 = *(v12 + 112);
                    v405 = *(v12 + 128);
                    v444 = *(v12 + 144);
                    v279 = *(v12 + 80);
                    v321 = *(v12 + 96);
                    v215 = a2[-4];
                    v214 = a2[-3];
                    v216 = a2[-1];
                    *(v12 + 128) = a2[-2];
                    *(v12 + 144) = v216;
                    *(v12 + 96) = v215;
                    *(v12 + 112) = v214;
                    *(v12 + 80) = *v9;
                    *v9 = v279;
                    result = v321;
                    a2[-2] = v405;
                    a2[-1] = v444;
                    a2[-4] = v321;
                    a2[-3] = v363;
                  }
                }

                else
                {
                  v269 = *v12;
                  v395 = *(v12 + 48);
                  v437 = *(v12 + 64);
                  v311 = *(v12 + 16);
                  v353 = *(v12 + 32);
                  v142 = a2[-1];
                  v144 = a2[-4];
                  v143 = a2[-3];
                  *(v12 + 48) = a2[-2];
                  *(v12 + 64) = v142;
                  *(v12 + 16) = v144;
                  *(v12 + 32) = v143;
                  *v12 = *v9;
                  a2[-2] = v395;
                  a2[-1] = v437;
                  a2[-4] = v311;
                  a2[-3] = v353;
                  result = v269;
                  *v9 = v269;
                }

                return result;
              }

              if (v141 >= result.n128_f64[0])
              {
                return result;
              }

              v358 = *(v12 + 112);
              v400 = *(v12 + 128);
              v440 = *(v12 + 144);
              v274 = *(v12 + 80);
              v316 = *(v12 + 96);
              v200 = a2[-4];
              result = a2[-3];
              v201 = a2[-1];
              *(v12 + 128) = a2[-2];
              *(v12 + 144) = v201;
              *(v12 + 96) = v200;
              *(v12 + 112) = result;
              *(v12 + 80) = *v9;
              *v9 = v274;
              a2[-2] = v400;
              a2[-1] = v440;
              a2[-4] = v316;
              a2[-3] = v358;
              result.n128_u64[0] = *(v12 + 88);
              if (result.n128_f64[0] >= *(v12 + 8))
              {
                return result;
              }

LABEL_185:
              v284 = *v12;
              v410 = *(v12 + 48);
              v449 = *(v12 + 64);
              v326 = *(v12 + 16);
              v368 = *(v12 + 32);
              v229 = *(v12 + 144);
              *(v12 + 48) = *(v12 + 128);
              *(v12 + 64) = v229;
              v230 = *(v12 + 112);
              *(v12 + 16) = *(v12 + 96);
              *(v12 + 32) = v230;
              *v12 = *(v12 + 80);
              result = v284;
              *(v12 + 128) = v410;
              *(v12 + 144) = v449;
              *(v12 + 96) = v326;
              *(v12 + 112) = v368;
              *(v12 + 80) = v284;
              return result;
            case 4:
              v145 = *(v12 + 88);
              v146 = *(v12 + 168);
              if (v145 >= *(v12 + 8))
              {
                if (v146 < v145)
                {
                  v359 = *(v12 + 112);
                  v401 = *(v12 + 128);
                  v202 = *(v12 + 160);
                  v441 = *(v12 + 144);
                  v275 = *(v12 + 80);
                  v317 = *(v12 + 96);
                  result = *(v12 + 176);
                  v203 = *(v12 + 208);
                  v204 = *(v12 + 224);
                  *(v12 + 112) = *(v12 + 192);
                  *(v12 + 128) = v203;
                  *(v12 + 80) = v202;
                  *(v12 + 96) = result;
                  *(v12 + 144) = v204;
                  *(v12 + 160) = v275;
                  *(v12 + 208) = v401;
                  *(v12 + 224) = v441;
                  v205 = *(v12 + 88);
                  *&v203 = *(v12 + 8);
                  *(v12 + 176) = v317;
                  *(v12 + 192) = v359;
                  if (v205 < *&v203)
                  {
                    v276 = *v12;
                    v402 = *(v12 + 48);
                    v442 = *(v12 + 64);
                    v318 = *(v12 + 16);
                    v360 = *(v12 + 32);
                    v206 = *(v12 + 144);
                    *(v12 + 48) = *(v12 + 128);
                    *(v12 + 64) = v206;
                    v207 = *(v12 + 112);
                    *(v12 + 16) = *(v12 + 96);
                    *(v12 + 32) = v207;
                    *v12 = *(v12 + 80);
                    *(v12 + 128) = v402;
                    *(v12 + 144) = v442;
                    *(v12 + 96) = v318;
                    *(v12 + 112) = v360;
                    *(v12 + 80) = v276;
                  }
                }
              }

              else
              {
                if (v146 < v145)
                {
                  v270 = *v12;
                  v396 = *(v12 + 48);
                  v438 = *(v12 + 64);
                  v312 = *(v12 + 16);
                  v354 = *(v12 + 32);
                  v147 = *(v12 + 224);
                  *(v12 + 48) = *(v12 + 208);
                  *(v12 + 64) = v147;
                  v148 = *(v12 + 192);
                  *(v12 + 16) = *(v12 + 176);
                  *(v12 + 32) = v148;
                  *v12 = *(v12 + 160);
                  v149 = v312;
                  *(v12 + 208) = v396;
                  *(v12 + 224) = v438;
                  *(v12 + 192) = v354;
                  *(v12 + 160) = v270;
LABEL_181:
                  *(v12 + 176) = v149;
                  goto LABEL_182;
                }

                v280 = *v12;
                v406 = *(v12 + 48);
                v445 = *(v12 + 64);
                v322 = *(v12 + 16);
                v364 = *(v12 + 32);
                v217 = *(v12 + 144);
                *(v12 + 48) = *(v12 + 128);
                *(v12 + 64) = v217;
                v218 = *(v12 + 112);
                *(v12 + 16) = *(v12 + 96);
                *(v12 + 32) = v218;
                *v12 = *(v12 + 80);
                *(v12 + 128) = v406;
                *(v12 + 144) = v445;
                *(v12 + 96) = v322;
                *(v12 + 112) = v364;
                *(v12 + 80) = v280;
                if (v146 < *(v12 + 88))
                {
                  v365 = *(v12 + 112);
                  v407 = *(v12 + 128);
                  v219 = *(v12 + 160);
                  v446 = *(v12 + 144);
                  v281 = *(v12 + 80);
                  v323 = *(v12 + 96);
                  result = *(v12 + 176);
                  v220 = *(v12 + 208);
                  v221 = *(v12 + 224);
                  *(v12 + 112) = *(v12 + 192);
                  *(v12 + 128) = v220;
                  *(v12 + 80) = v219;
                  *(v12 + 96) = result;
                  v149 = v323;
                  *(v12 + 144) = v221;
                  *(v12 + 160) = v281;
                  *(v12 + 208) = v407;
                  *(v12 + 224) = v446;
                  *(v12 + 192) = v365;
                  goto LABEL_181;
                }
              }

LABEL_182:
              result.n128_u64[0] = a2[-5].n128_u64[1];
              if (result.n128_f64[0] >= *(v12 + 168))
              {
                return result;
              }

              v366 = *(v12 + 192);
              v408 = *(v12 + 208);
              v447 = *(v12 + 224);
              v282 = *(v12 + 160);
              v324 = *(v12 + 176);
              v222 = a2[-4];
              result = a2[-3];
              v223 = a2[-1];
              *(v12 + 208) = a2[-2];
              *(v12 + 224) = v223;
              *(v12 + 176) = v222;
              *(v12 + 192) = result;
              *(v12 + 160) = *v9;
              *v9 = v282;
              a2[-2] = v408;
              a2[-1] = v447;
              a2[-4] = v324;
              a2[-3] = v366;
              result.n128_u64[0] = *(v12 + 168);
              if (result.n128_f64[0] >= *(v12 + 88))
              {
                return result;
              }

              v367 = *(v12 + 112);
              v409 = *(v12 + 128);
              v224 = *(v12 + 160);
              v448 = *(v12 + 144);
              v283 = *(v12 + 80);
              v325 = *(v12 + 96);
              v225 = *(v12 + 176);
              v226 = *(v12 + 208);
              v227 = *(v12 + 224);
              *(v12 + 112) = *(v12 + 192);
              *(v12 + 128) = v226;
              *(v12 + 80) = v224;
              *(v12 + 96) = v225;
              *(v12 + 144) = v227;
              *(v12 + 160) = v283;
              result = v367;
              *(v12 + 208) = v409;
              *(v12 + 224) = v448;
              v228 = *(v12 + 88);
              *&v226 = *(v12 + 8);
              *(v12 + 176) = v325;
              *(v12 + 192) = v367;
              if (v228 >= *&v226)
              {
                return result;
              }

              goto LABEL_185;
            case 5:

              result.n128_u64[0] = sub_10056374C(v12, (v12 + 80), (v12 + 160), (v12 + 240), a2 - 5).n128_u64[0];
              return result;
          }

LABEL_9:
          if (v13 <= 1919)
          {
            v150 = (v12 + 80);
            v152 = v12 == a2 || v150 == a2;
            if (a4)
            {
              if (!v152)
              {
                v153 = 0;
                v154 = v12;
                do
                {
                  v155 = v150;
                  result.n128_u64[0] = *(v154 + 88);
                  if (result.n128_f64[0] < *(v154 + 8))
                  {
                    v156 = v150->n128_u64[0];
                    v271 = *(v154 + 96);
                    v313 = *(v154 + 112);
                    v355 = *(v154 + 128);
                    v397 = *(v154 + 144);
                    v157 = v153;
                    while (1)
                    {
                      v158 = (v12 + v157);
                      v159 = *(v12 + v157 + 48);
                      *(v158 + 7) = *(v12 + v157 + 32);
                      *(v158 + 8) = v159;
                      *(v158 + 9) = *(v12 + v157 + 64);
                      v160 = *(v12 + v157 + 16);
                      *(v158 + 5) = *(v12 + v157);
                      *(v158 + 6) = v160;
                      if (!v157)
                      {
                        break;
                      }

                      v157 -= 80;
                      if (result.n128_f64[0] >= *(v158 - 9))
                      {
                        v161 = v12 + v157 + 80;
                        goto LABEL_127;
                      }
                    }

                    v161 = v12;
LABEL_127:
                    *v161 = v156;
                    *(v161 + 8) = result.n128_u64[0];
                    result = v397;
                    *(v161 + 16) = v271;
                    *(v161 + 32) = v313;
                    *(v161 + 48) = v355;
                    *(v161 + 64) = v397;
                  }

                  v150 = v155 + 5;
                  v153 += 80;
                  v154 = v155;
                }

                while (&v155[5] != a2);
              }
            }

            else if (!v152)
            {
              do
              {
                v208 = v150;
                result.n128_u64[0] = *(a1 + 88);
                if (result.n128_f64[0] < *(a1 + 8))
                {
                  v209 = v150->n128_u64[0];
                  v277 = *(a1 + 96);
                  v319 = *(a1 + 112);
                  v361 = *(a1 + 128);
                  v403 = *(a1 + 144);
                  do
                  {
                    v210 = v150[-2];
                    v150[2] = v150[-3];
                    v150[3] = v210;
                    v150[4] = v150[-1];
                    v211 = v150[-4];
                    *v150 = v150[-5];
                    v150[1] = v211;
                    v211.n128_u64[0] = v150[-10].n128_u64[1];
                    v150 -= 5;
                  }

                  while (result.n128_f64[0] < v211.n128_f64[0]);
                  v150->n128_u64[0] = v209;
                  v150->n128_u64[1] = result.n128_u64[0];
                  result = v277;
                  v150[3] = v361;
                  v150[4] = v403;
                  v150[1] = v277;
                  v150[2] = v319;
                }

                v150 = (v208 + 80);
                a1 = v208;
              }

              while ((v208 + 80) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v162 = (v14 - 2) >> 1;
              v163 = v162;
              do
              {
                v164 = v163;
                if (v162 >= v163)
                {
                  v165 = (2 * v163) | 1;
                  v166 = v12 + 80 * v165;
                  if (2 * v164 + 2 < v14 && *(v166 + 8) < *(v166 + 88))
                  {
                    v166 += 80;
                    v165 = 2 * v164 + 2;
                  }

                  v167 = v12 + 80 * v164;
                  v168 = *(v167 + 8);
                  if (*(v166 + 8) >= v168)
                  {
                    v169 = *v167;
                    v356 = *(v167 + 48);
                    v398 = *(v167 + 64);
                    v272 = *(v167 + 16);
                    v314 = *(v167 + 32);
                    do
                    {
                      v170 = v167;
                      v167 = v166;
                      *v170 = *v166;
                      v171 = *(v166 + 16);
                      v172 = *(v166 + 32);
                      v173 = *(v166 + 64);
                      v170[3] = *(v166 + 48);
                      v170[4] = v173;
                      v170[1] = v171;
                      v170[2] = v172;
                      if (v162 < v165)
                      {
                        break;
                      }

                      v174 = 2 * v165;
                      v165 = (2 * v165) | 1;
                      v166 = v12 + 80 * v165;
                      v175 = v174 + 2;
                      if (v175 < v14 && *(v166 + 8) < *(v166 + 88))
                      {
                        v166 += 80;
                        v165 = v175;
                      }
                    }

                    while (*(v166 + 8) >= v168);
                    *v167 = v169;
                    *(v167 + 8) = v168;
                    *(v167 + 16) = v272;
                    *(v167 + 32) = v314;
                    *(v167 + 48) = v356;
                    *(v167 + 64) = v398;
                  }
                }

                v163 = v164 - 1;
              }

              while (v164);
              v176 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 4);
              do
              {
                v177 = 0;
                v273 = *v12;
                v399 = *(v12 + 48);
                v439 = *(v12 + 64);
                v315 = *(v12 + 16);
                v357 = *(v12 + 32);
                v178 = v12;
                do
                {
                  v179 = &v178[5 * v177];
                  v180 = (v179 + 10);
                  v181 = (2 * v177) | 1;
                  v177 = 2 * v177 + 2;
                  if (v177 >= v176)
                  {
                    v177 = v181;
                  }

                  else
                  {
                    v182 = v179[11];
                    v183 = v179[21];
                    v184 = (v179 + 20);
                    if (v182 >= v183)
                    {
                      v177 = v181;
                    }

                    else
                    {
                      v180 = v184;
                    }
                  }

                  *v178 = *v180;
                  v185 = v180[1];
                  v186 = v180[2];
                  v187 = v180[4];
                  v178[3] = v180[3];
                  v178[4] = v187;
                  v178[1] = v185;
                  v178[2] = v186;
                  v178 = v180;
                }

                while (v177 <= ((v176 - 2) >> 1));
                a2 -= 5;
                if (v180 == a2)
                {
                  *v180 = v273;
                  result = v315;
                  v180[3] = v399;
                  v180[4] = v439;
                  v180[1] = v315;
                  v180[2] = v357;
                }

                else
                {
                  *v180 = *a2;
                  v188 = a2[1];
                  v189 = a2[2];
                  v190 = a2[4];
                  v180[3] = a2[3];
                  v180[4] = v190;
                  v180[1] = v188;
                  v180[2] = v189;
                  a2[3] = v399;
                  a2[4] = v439;
                  a2[1] = v315;
                  a2[2] = v357;
                  result = v273;
                  *a2 = v273;
                  v191 = &v180[5] - v12;
                  if (v191 >= 81)
                  {
                    v192 = (-2 - 0x3333333333333333 * (v191 >> 4)) >> 1;
                    v193 = v12 + 80 * v192;
                    result.n128_u64[0] = v180->n128_u64[1];
                    if (*(v193 + 8) < result.n128_f64[0])
                    {
                      v194 = v180->n128_u64[0];
                      v239 = v180[3];
                      v242 = v180[4];
                      v233 = v180[1];
                      v236 = v180[2];
                      do
                      {
                        v195 = v180;
                        v180 = v193;
                        *v195 = *v193;
                        v196 = *(v193 + 16);
                        v197 = *(v193 + 32);
                        v198 = *(v193 + 64);
                        v195[3] = *(v193 + 48);
                        v195[4] = v198;
                        v195[1] = v196;
                        v195[2] = v197;
                        if (!v192)
                        {
                          break;
                        }

                        v192 = (v192 - 1) >> 1;
                        v193 = v12 + 80 * v192;
                      }

                      while (*(v193 + 8) < result.n128_f64[0]);
                      v180->n128_u64[0] = v194;
                      v180->n128_u64[1] = result.n128_u64[0];
                      result = v242;
                      v180[1] = v233;
                      v180[2] = v236;
                      v180[3] = v239;
                      v180[4] = v242;
                    }
                  }
                }
              }

              while (v176-- > 2);
            }

            return result;
          }

          v15 = v14 >> 1;
          v16 = v12 + 80 * (v14 >> 1);
          v17 = a2[-5].n128_f64[1];
          if (v13 >= 0x2801)
          {
            v18 = *(v16 + 8);
            if (v18 >= *(v12 + 8))
            {
              if (v17 < v18)
              {
                v245 = *v16;
                v371 = *(v16 + 48);
                v413 = *(v16 + 64);
                v287 = *(v16 + 16);
                v329 = *(v16 + 32);
                v26 = a2[-1];
                v28 = a2[-4];
                v27 = a2[-3];
                *(v16 + 48) = a2[-2];
                *(v16 + 64) = v26;
                *(v16 + 16) = v28;
                *(v16 + 32) = v27;
                *v16 = *v9;
                a2[-2] = v371;
                a2[-1] = v413;
                a2[-4] = v287;
                a2[-3] = v329;
                *v9 = v245;
                if (*(v16 + 8) < *(v12 + 8))
                {
                  v246 = *v12;
                  v372 = *(v12 + 48);
                  v414 = *(v12 + 64);
                  v288 = *(v12 + 16);
                  v330 = *(v12 + 32);
                  v29 = *(v16 + 64);
                  v31 = *(v16 + 16);
                  v30 = *(v16 + 32);
                  *(v12 + 48) = *(v16 + 48);
                  *(v12 + 64) = v29;
                  *(v12 + 16) = v31;
                  *(v12 + 32) = v30;
                  *v12 = *v16;
                  *(v16 + 48) = v372;
                  *(v16 + 64) = v414;
                  *(v16 + 16) = v288;
                  *(v16 + 32) = v330;
                  *v16 = v246;
                }
              }
            }

            else
            {
              if (v17 < v18)
              {
                v243 = *v12;
                v369 = *(v12 + 48);
                v411 = *(v12 + 64);
                v285 = *(v12 + 16);
                v327 = *(v12 + 32);
                v19 = a2[-1];
                v21 = a2[-4];
                v20 = a2[-3];
                *(v12 + 48) = a2[-2];
                *(v12 + 64) = v19;
                *(v12 + 16) = v21;
                *(v12 + 32) = v20;
                *v12 = *v9;
                goto LABEL_26;
              }

              v249 = *v12;
              v375 = *(v12 + 48);
              v417 = *(v12 + 64);
              v291 = *(v12 + 16);
              v333 = *(v12 + 32);
              v38 = *(v16 + 64);
              v40 = *(v16 + 16);
              v39 = *(v16 + 32);
              *(v12 + 48) = *(v16 + 48);
              *(v12 + 64) = v38;
              *(v12 + 16) = v40;
              *(v12 + 32) = v39;
              *v12 = *v16;
              *(v16 + 48) = v375;
              *(v16 + 64) = v417;
              *(v16 + 16) = v291;
              *(v16 + 32) = v333;
              *v16 = v249;
              if (a2[-5].n128_f64[1] < *(v16 + 8))
              {
                v243 = *v16;
                v369 = *(v16 + 48);
                v411 = *(v16 + 64);
                v285 = *(v16 + 16);
                v327 = *(v16 + 32);
                v41 = a2[-1];
                v43 = a2[-4];
                v42 = a2[-3];
                *(v16 + 48) = a2[-2];
                *(v16 + 64) = v41;
                *(v16 + 16) = v43;
                *(v16 + 32) = v42;
                *v16 = *v9;
LABEL_26:
                a2[-2] = v369;
                a2[-1] = v411;
                a2[-4] = v285;
                a2[-3] = v327;
                *v9 = v243;
              }
            }

            v44 = v12 + 80 * v15;
            v45 = (v44 - 80);
            v46 = *(v44 - 72);
            v47 = a2[-10].n128_f64[1];
            if (v46 >= *(v12 + 88))
            {
              if (v47 < v46)
              {
                v251 = *v45;
                v377 = *(v44 - 32);
                v419 = *(v44 - 16);
                v293 = *(v44 - 64);
                v335 = *(v44 - 48);
                v51 = a2[-6];
                v53 = a2[-9];
                v52 = a2[-8];
                *(v44 - 32) = a2[-7];
                *(v44 - 16) = v51;
                *(v44 - 64) = v53;
                *(v44 - 48) = v52;
                *v45 = *v10;
                a2[-7] = v377;
                a2[-6] = v419;
                a2[-9] = v293;
                a2[-8] = v335;
                *v10 = v251;
                if (*(v44 - 72) < *(v12 + 88))
                {
                  v336 = *(v12 + 112);
                  v378 = *(v12 + 128);
                  v420 = *(v12 + 144);
                  v252 = *(v12 + 80);
                  v294 = *(v12 + 96);
                  v55 = *(v44 - 64);
                  v54 = *(v44 - 48);
                  v56 = *(v44 - 16);
                  *(v12 + 128) = *(v44 - 32);
                  *(v12 + 144) = v56;
                  *(v12 + 96) = v55;
                  *(v12 + 112) = v54;
                  *(v12 + 80) = *v45;
                  *v45 = v252;
                  *(v44 - 32) = v378;
                  *(v44 - 16) = v420;
                  *(v44 - 64) = v294;
                  *(v44 - 48) = v336;
                }
              }
            }

            else if (v47 >= v46)
            {
              v338 = *(v12 + 112);
              v380 = *(v12 + 128);
              v422 = *(v12 + 144);
              v254 = *(v12 + 80);
              v296 = *(v12 + 96);
              v64 = *(v44 - 64);
              v63 = *(v44 - 48);
              v65 = *(v44 - 16);
              *(v12 + 128) = *(v44 - 32);
              *(v12 + 144) = v65;
              *(v12 + 96) = v64;
              *(v12 + 112) = v63;
              *(v12 + 80) = *v45;
              *v45 = v254;
              *(v44 - 32) = v380;
              *(v44 - 16) = v422;
              *(v44 - 64) = v296;
              *(v44 - 48) = v338;
              if (a2[-10].n128_f64[1] < *(v44 - 72))
              {
                v255 = *v45;
                v381 = *(v44 - 32);
                v423 = *(v44 - 16);
                v297 = *(v44 - 64);
                v339 = *(v44 - 48);
                v66 = a2[-6];
                v68 = a2[-9];
                v67 = a2[-8];
                *(v44 - 32) = a2[-7];
                *(v44 - 16) = v66;
                *(v44 - 64) = v68;
                *(v44 - 48) = v67;
                *v45 = *v10;
                a2[-7] = v381;
                a2[-6] = v423;
                a2[-9] = v297;
                a2[-8] = v339;
                *v10 = v255;
              }
            }

            else
            {
              v334 = *(v12 + 112);
              v376 = *(v12 + 128);
              v418 = *(v12 + 144);
              v250 = *(v12 + 80);
              v292 = *(v12 + 96);
              v49 = a2[-9];
              v48 = a2[-8];
              v50 = a2[-6];
              *(v12 + 128) = a2[-7];
              *(v12 + 144) = v50;
              *(v12 + 96) = v49;
              *(v12 + 112) = v48;
              *(v12 + 80) = *v10;
              *v10 = v250;
              a2[-7] = v376;
              a2[-6] = v418;
              a2[-9] = v292;
              a2[-8] = v334;
            }

            v69 = v12 + 80 * v15;
            v70 = *(v69 + 88);
            v71 = a2[-15].n128_f64[1];
            if (v70 >= *(v12 + 168))
            {
              if (v71 < v70)
              {
                v257 = *(v69 + 80);
                v383 = *(v69 + 128);
                v425 = *(v69 + 144);
                v299 = *(v69 + 96);
                v341 = *(v69 + 112);
                v75 = a2[-11];
                v77 = a2[-14];
                v76 = a2[-13];
                *(v69 + 128) = a2[-12];
                *(v69 + 144) = v75;
                *(v69 + 96) = v77;
                *(v69 + 112) = v76;
                *(v69 + 80) = *v11;
                a2[-12] = v383;
                a2[-11] = v425;
                a2[-14] = v299;
                a2[-13] = v341;
                *v11 = v257;
                if (*(v69 + 88) < *(v12 + 168))
                {
                  v342 = *(v12 + 192);
                  v384 = *(v12 + 208);
                  v426 = *(v12 + 224);
                  v258 = *(v12 + 160);
                  v300 = *(v12 + 176);
                  v79 = *(v69 + 96);
                  v78 = *(v69 + 112);
                  v80 = *(v69 + 144);
                  *(v12 + 208) = *(v69 + 128);
                  *(v12 + 224) = v80;
                  *(v12 + 176) = v79;
                  *(v12 + 192) = v78;
                  *(v12 + 160) = *(v69 + 80);
                  *(v69 + 80) = v258;
                  *(v69 + 128) = v384;
                  *(v69 + 144) = v426;
                  *(v69 + 96) = v300;
                  *(v69 + 112) = v342;
                }
              }
            }

            else if (v71 >= v70)
            {
              v343 = *(v12 + 192);
              v385 = *(v12 + 208);
              v427 = *(v12 + 224);
              v259 = *(v12 + 160);
              v301 = *(v12 + 176);
              v82 = *(v69 + 96);
              v81 = *(v69 + 112);
              v83 = *(v69 + 144);
              *(v12 + 208) = *(v69 + 128);
              *(v12 + 224) = v83;
              *(v12 + 176) = v82;
              *(v12 + 192) = v81;
              *(v12 + 160) = *(v69 + 80);
              *(v69 + 80) = v259;
              *(v69 + 128) = v385;
              *(v69 + 144) = v427;
              *(v69 + 96) = v301;
              *(v69 + 112) = v343;
              if (a2[-15].n128_f64[1] < *(v69 + 88))
              {
                v260 = *(v69 + 80);
                v386 = *(v69 + 128);
                v428 = *(v69 + 144);
                v302 = *(v69 + 96);
                v344 = *(v69 + 112);
                v84 = a2[-11];
                v86 = a2[-14];
                v85 = a2[-13];
                *(v69 + 128) = a2[-12];
                *(v69 + 144) = v84;
                *(v69 + 96) = v86;
                *(v69 + 112) = v85;
                *(v69 + 80) = *v11;
                a2[-12] = v386;
                a2[-11] = v428;
                a2[-14] = v302;
                a2[-13] = v344;
                *v11 = v260;
              }
            }

            else
            {
              v340 = *(v12 + 192);
              v382 = *(v12 + 208);
              v424 = *(v12 + 224);
              v256 = *(v12 + 160);
              v298 = *(v12 + 176);
              v73 = a2[-14];
              v72 = a2[-13];
              v74 = a2[-11];
              *(v12 + 208) = a2[-12];
              *(v12 + 224) = v74;
              *(v12 + 176) = v73;
              *(v12 + 192) = v72;
              *(v12 + 160) = *v11;
              *v11 = v256;
              a2[-12] = v382;
              a2[-11] = v424;
              a2[-14] = v298;
              a2[-13] = v340;
            }

            v87 = *(v16 + 8);
            v88 = *(v69 + 88);
            if (v87 >= *(v44 - 72))
            {
              if (v88 < v87)
              {
                v262 = *v16;
                v388 = *(v16 + 48);
                v430 = *(v16 + 64);
                v304 = *(v16 + 16);
                v346 = *(v16 + 32);
                v91 = *(v69 + 144);
                *(v16 + 48) = *(v69 + 128);
                *(v16 + 64) = v91;
                v92 = *(v69 + 112);
                *(v16 + 16) = *(v69 + 96);
                *(v16 + 32) = v92;
                *v16 = *(v69 + 80);
                *(v69 + 80) = v262;
                *(v69 + 128) = v388;
                *(v69 + 144) = v430;
                *(v69 + 96) = v304;
                *(v69 + 112) = v346;
                if (*(v16 + 8) < *(v44 - 72))
                {
                  v263 = *v45;
                  v389 = *(v44 - 32);
                  v431 = *(v44 - 16);
                  v305 = *(v44 - 64);
                  v347 = *(v44 - 48);
                  v93 = *(v16 + 64);
                  *(v44 - 32) = *(v16 + 48);
                  *(v44 - 16) = v93;
                  v94 = *(v16 + 32);
                  *(v44 - 64) = *(v16 + 16);
                  *(v44 - 48) = v94;
                  *v45 = *v16;
                  *v16 = v263;
                  *(v16 + 48) = v389;
                  *(v16 + 64) = v431;
                  *(v16 + 16) = v305;
                  *(v16 + 32) = v347;
                }
              }
            }

            else
            {
              if (v88 < v87)
              {
                v261 = *v45;
                v387 = *(v44 - 32);
                v429 = *(v44 - 16);
                v303 = *(v44 - 64);
                v345 = *(v44 - 48);
                v89 = *(v69 + 144);
                *(v44 - 32) = *(v69 + 128);
                *(v44 - 16) = v89;
                v90 = *(v69 + 112);
                *(v44 - 64) = *(v69 + 96);
                *(v44 - 48) = v90;
                *v45 = *(v69 + 80);
                goto LABEL_54;
              }

              v264 = *v45;
              v390 = *(v44 - 32);
              v432 = *(v44 - 16);
              v306 = *(v44 - 64);
              v348 = *(v44 - 48);
              v95 = *(v16 + 64);
              *(v44 - 32) = *(v16 + 48);
              *(v44 - 16) = v95;
              v96 = *(v16 + 32);
              *(v44 - 64) = *(v16 + 16);
              *(v44 - 48) = v96;
              *v45 = *v16;
              *v16 = v264;
              *(v16 + 48) = v390;
              *(v16 + 64) = v432;
              *(v16 + 16) = v306;
              *(v16 + 32) = v348;
              if (*(v69 + 88) < *(v16 + 8))
              {
                v261 = *v16;
                v387 = *(v16 + 48);
                v429 = *(v16 + 64);
                v303 = *(v16 + 16);
                v345 = *(v16 + 32);
                v97 = *(v69 + 144);
                *(v16 + 48) = *(v69 + 128);
                *(v16 + 64) = v97;
                v98 = *(v69 + 112);
                *(v16 + 16) = *(v69 + 96);
                *(v16 + 32) = v98;
                *v16 = *(v69 + 80);
LABEL_54:
                *(v69 + 80) = v261;
                *(v69 + 128) = v387;
                *(v69 + 144) = v429;
                *(v69 + 96) = v303;
                *(v69 + 112) = v345;
              }
            }

            v265 = *v12;
            v391 = *(v12 + 48);
            v433 = *(v12 + 64);
            v307 = *(v12 + 16);
            v349 = *(v12 + 32);
            v99 = *(v16 + 64);
            v101 = *(v16 + 16);
            v100 = *(v16 + 32);
            *(v12 + 48) = *(v16 + 48);
            *(v12 + 64) = v99;
            *(v12 + 16) = v101;
            *(v12 + 32) = v100;
            *v12 = *v16;
            *(v16 + 48) = v391;
            *(v16 + 64) = v433;
            *(v16 + 16) = v307;
            *(v16 + 32) = v349;
            *v16 = v265;
            goto LABEL_56;
          }

          v22 = *(v12 + 8);
          if (v22 >= *(v16 + 8))
          {
            if (v17 < v22)
            {
              v247 = *v12;
              v373 = *(v12 + 48);
              v415 = *(v12 + 64);
              v289 = *(v12 + 16);
              v331 = *(v12 + 32);
              v32 = a2[-1];
              v34 = a2[-4];
              v33 = a2[-3];
              *(v12 + 48) = a2[-2];
              *(v12 + 64) = v32;
              *(v12 + 16) = v34;
              *(v12 + 32) = v33;
              *v12 = *v9;
              a2[-2] = v373;
              a2[-1] = v415;
              a2[-4] = v289;
              a2[-3] = v331;
              *v9 = v247;
              if (*(v12 + 8) < *(v16 + 8))
              {
                v248 = *v16;
                v374 = *(v16 + 48);
                v416 = *(v16 + 64);
                v290 = *(v16 + 16);
                v332 = *(v16 + 32);
                v35 = *(v12 + 64);
                v37 = *(v12 + 16);
                v36 = *(v12 + 32);
                *(v16 + 48) = *(v12 + 48);
                *(v16 + 64) = v35;
                *(v16 + 16) = v37;
                *(v16 + 32) = v36;
                *v16 = *v12;
                *(v12 + 48) = v374;
                *(v12 + 64) = v416;
                *(v12 + 16) = v290;
                *(v12 + 32) = v332;
                *v12 = v248;
              }
            }
          }

          else
          {
            if (v17 >= v22)
            {
              v253 = *v16;
              v379 = *(v16 + 48);
              v421 = *(v16 + 64);
              v295 = *(v16 + 16);
              v337 = *(v16 + 32);
              v57 = *(v12 + 64);
              v59 = *(v12 + 16);
              v58 = *(v12 + 32);
              *(v16 + 48) = *(v12 + 48);
              *(v16 + 64) = v57;
              *(v16 + 16) = v59;
              *(v16 + 32) = v58;
              *v16 = *v12;
              *(v12 + 48) = v379;
              *(v12 + 64) = v421;
              *(v12 + 16) = v295;
              *(v12 + 32) = v337;
              *v12 = v253;
              if (a2[-5].n128_f64[1] >= *(v12 + 8))
              {
                goto LABEL_56;
              }

              v244 = *v12;
              v370 = *(v12 + 48);
              v412 = *(v12 + 64);
              v286 = *(v12 + 16);
              v328 = *(v12 + 32);
              v60 = a2[-1];
              v62 = a2[-4];
              v61 = a2[-3];
              *(v12 + 48) = a2[-2];
              *(v12 + 64) = v60;
              *(v12 + 16) = v62;
              *(v12 + 32) = v61;
              *v12 = *v9;
            }

            else
            {
              v244 = *v16;
              v370 = *(v16 + 48);
              v412 = *(v16 + 64);
              v286 = *(v16 + 16);
              v328 = *(v16 + 32);
              v23 = a2[-1];
              v25 = a2[-4];
              v24 = a2[-3];
              *(v16 + 48) = a2[-2];
              *(v16 + 64) = v23;
              *(v16 + 16) = v25;
              *(v16 + 32) = v24;
              *v16 = *v9;
            }

            a2[-2] = v370;
            a2[-1] = v412;
            a2[-4] = v286;
            a2[-3] = v328;
            *v9 = v244;
          }

LABEL_56:
          --a3;
          if (a4)
          {
            break;
          }

          v102 = *(v12 + 8);
          if (*(v12 - 72) < v102)
          {
            goto LABEL_59;
          }

          v122 = *v12;
          v238 = *(v12 + 48);
          v241 = *(v12 + 64);
          v232 = *(v12 + 16);
          v235 = *(v12 + 32);
          if (v102 >= a2[-5].n128_f64[1])
          {
            v125 = v12 + 80;
            do
            {
              v12 = v125;
              if (v125 >= a2)
              {
                break;
              }

              v126 = *(v125 + 8);
              v125 += 80;
            }

            while (v102 >= v126);
          }

          else
          {
            v123 = v12;
            do
            {
              v12 = v123 + 80;
              v124 = *(v123 + 88);
              v123 += 80;
            }

            while (v102 >= v124);
          }

          v127 = a2;
          if (v12 < a2)
          {
            v128 = a2;
            do
            {
              v127 = v128 - 5;
              v129 = v128[-5].n128_f64[1];
              v128 -= 5;
            }

            while (v102 < v129);
          }

          while (v12 < v127)
          {
            v267 = *v12;
            v393 = *(v12 + 48);
            v435 = *(v12 + 64);
            v309 = *(v12 + 16);
            v351 = *(v12 + 32);
            v130 = v127[4];
            v132 = v127[1];
            v131 = v127[2];
            *(v12 + 48) = v127[3];
            *(v12 + 64) = v130;
            *(v12 + 16) = v132;
            *(v12 + 32) = v131;
            *v12 = *v127;
            v127[3] = v393;
            v127[4] = v435;
            v127[1] = v309;
            v127[2] = v351;
            *v127 = v267;
            do
            {
              v133 = *(v12 + 88);
              v12 += 80;
            }

            while (v102 >= v133);
            do
            {
              v134 = v127[-5].n128_f64[1];
              v127 -= 5;
            }

            while (v102 < v134);
          }

          if (v12 - 80 != a1)
          {
            *a1 = *(v12 - 80);
            v135 = *(v12 - 64);
            v136 = *(v12 - 48);
            v137 = *(v12 - 16);
            *(a1 + 48) = *(v12 - 32);
            *(a1 + 64) = v137;
            *(a1 + 16) = v135;
            *(a1 + 32) = v136;
          }

          a4 = 0;
          *(v12 - 80) = v122;
          *(v12 - 72) = v102;
          result = v232;
          *(v12 - 32) = v238;
          *(v12 - 16) = v241;
          *(v12 - 64) = v232;
          *(v12 - 48) = v235;
        }

        v102 = *(v12 + 8);
LABEL_59:
        v103 = 0;
        v104 = *v12;
        v237 = *(v12 + 48);
        v240 = *(v12 + 64);
        v231 = *(v12 + 16);
        v234 = *(v12 + 32);
        do
        {
          v105 = *(v12 + v103 + 88);
          v103 += 80;
        }

        while (v105 < v102);
        v106 = v12 + v103;
        v107 = a2;
        if (v103 == 80)
        {
          v110 = a2;
          while (v106 < v110)
          {
            v108 = v110 - 5;
            v111 = v110[-5].n128_f64[1];
            v110 -= 5;
            if (v111 < v102)
            {
              goto LABEL_69;
            }
          }

          v108 = v110;
        }

        else
        {
          do
          {
            v108 = v107 - 5;
            v109 = v107[-5].n128_f64[1];
            v107 -= 5;
          }

          while (v109 >= v102);
        }

LABEL_69:
        v12 = v106;
        if (v106 < v108)
        {
          v112 = v108;
          do
          {
            v266 = *v12;
            v392 = *(v12 + 48);
            v434 = *(v12 + 64);
            v308 = *(v12 + 16);
            v350 = *(v12 + 32);
            v113 = v112[4];
            v115 = v112[1];
            v114 = v112[2];
            *(v12 + 48) = v112[3];
            *(v12 + 64) = v113;
            *(v12 + 16) = v115;
            *(v12 + 32) = v114;
            *v12 = *v112;
            v112[3] = v392;
            v112[4] = v434;
            v112[1] = v308;
            v112[2] = v350;
            *v112 = v266;
            do
            {
              v116 = *(v12 + 88);
              v12 += 80;
            }

            while (v116 < v102);
            do
            {
              v117 = v112[-5].n128_f64[1];
              v112 -= 5;
            }

            while (v117 >= v102);
          }

          while (v12 < v112);
        }

        if (v12 - 80 != a1)
        {
          *a1 = *(v12 - 80);
          v118 = *(v12 - 64);
          v119 = *(v12 - 48);
          v120 = *(v12 - 16);
          *(a1 + 48) = *(v12 - 32);
          *(a1 + 64) = v120;
          *(a1 + 16) = v118;
          *(a1 + 32) = v119;
        }

        *(v12 - 80) = v104;
        *(v12 - 72) = v102;
        *(v12 - 32) = v237;
        *(v12 - 16) = v240;
        *(v12 - 64) = v231;
        *(v12 - 48) = v234;
        if (v106 >= v108)
        {
          break;
        }

LABEL_80:
        sub_100562214(a1, v12 - 80, a3, a4 & 1);
        a4 = 0;
      }

      v121 = sub_100563B98(a1, v12 - 80);
      if (sub_100563B98(v12, a2))
      {
        break;
      }

      if (!v121)
      {
        goto LABEL_80;
      }
    }

    a2 = (v12 - 80);
    if (!v121)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_10056374C(__n128 *a1, __n128 *a2, __n128 *a3, double *a4, __n128 *a5)
{
  v5 = a2->n128_f64[1];
  v6 = a3->n128_f64[1];
  if (v5 >= a1->n128_f64[1])
  {
    if (v6 < v5)
    {
      v67 = a2[2];
      v78 = a2[3];
      v89 = a2[4];
      v45 = *a2;
      v56 = a2[1];
      *a2 = *a3;
      v10 = a3[4];
      v12 = a3[1];
      v11 = a3[2];
      a2[3] = a3[3];
      a2[4] = v10;
      a2[1] = v12;
      a2[2] = v11;
      a3[3] = v78;
      a3[4] = v89;
      a3[1] = v56;
      a3[2] = v67;
      result.n128_u64[1] = v45.n128_u64[1];
      *a3 = v45;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        v68 = a1[2];
        v79 = a1[3];
        v90 = a1[4];
        v46 = *a1;
        v57 = a1[1];
        *a1 = *a2;
        v14 = a2[4];
        v16 = a2[1];
        v15 = a2[2];
        a1[3] = a2[3];
        a1[4] = v14;
        a1[1] = v16;
        a1[2] = v15;
        a2[3] = v79;
        a2[4] = v90;
        a2[1] = v57;
        a2[2] = v68;
        result.n128_u64[1] = v46.n128_u64[1];
        *a2 = v46;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v66 = a1[2];
      v77 = a1[3];
      v88 = a1[4];
      v44 = *a1;
      v55 = a1[1];
      *a1 = *a3;
      v7 = a3[4];
      v9 = a3[1];
      v8 = a3[2];
      a1[3] = a3[3];
      a1[4] = v7;
      a1[1] = v9;
      a1[2] = v8;
LABEL_9:
      a3[3] = v77;
      a3[4] = v88;
      a3[1] = v55;
      a3[2] = v66;
      result.n128_u64[1] = v44.n128_u64[1];
      *a3 = v44;
      goto LABEL_10;
    }

    v69 = a1[2];
    v80 = a1[3];
    v91 = a1[4];
    v47 = *a1;
    v58 = a1[1];
    *a1 = *a2;
    v17 = a2[4];
    v19 = a2[1];
    v18 = a2[2];
    a1[3] = a2[3];
    a1[4] = v17;
    a1[1] = v19;
    a1[2] = v18;
    a2[3] = v80;
    a2[4] = v91;
    a2[1] = v58;
    a2[2] = v69;
    result.n128_u64[1] = v47.n128_u64[1];
    *a2 = v47;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      v66 = a2[2];
      v77 = a2[3];
      v88 = a2[4];
      v44 = *a2;
      v55 = a2[1];
      *a2 = *a3;
      v20 = a3[4];
      v22 = a3[1];
      v21 = a3[2];
      a2[3] = a3[3];
      a2[4] = v20;
      a2[1] = v22;
      a2[2] = v21;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1] < a3->n128_f64[1])
  {
    v70 = a3[2];
    v81 = a3[3];
    v92 = a3[4];
    v48 = *a3;
    v59 = a3[1];
    *a3 = *a4;
    v23 = *(a4 + 8);
    v25 = *(a4 + 2);
    v24 = *(a4 + 4);
    a3[3] = *(a4 + 6);
    a3[4] = v23;
    a3[1] = v25;
    a3[2] = v24;
    *(a4 + 3) = v81;
    *(a4 + 4) = v92;
    *(a4 + 1) = v59;
    *(a4 + 2) = v70;
    result.n128_u64[1] = v48.n128_u64[1];
    *a4 = v48;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      v71 = a2[2];
      v82 = a2[3];
      v93 = a2[4];
      v49 = *a2;
      v60 = a2[1];
      *a2 = *a3;
      v26 = a3[4];
      v28 = a3[1];
      v27 = a3[2];
      a2[3] = a3[3];
      a2[4] = v26;
      a2[1] = v28;
      a2[2] = v27;
      a3[3] = v82;
      a3[4] = v93;
      a3[1] = v60;
      a3[2] = v71;
      result.n128_u64[1] = v49.n128_u64[1];
      *a3 = v49;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        v72 = a1[2];
        v83 = a1[3];
        v94 = a1[4];
        v50 = *a1;
        v61 = a1[1];
        *a1 = *a2;
        v29 = a2[4];
        v31 = a2[1];
        v30 = a2[2];
        a1[3] = a2[3];
        a1[4] = v29;
        a1[1] = v31;
        a1[2] = v30;
        a2[3] = v83;
        a2[4] = v94;
        a2[1] = v61;
        a2[2] = v72;
        result.n128_u64[1] = v50.n128_u64[1];
        *a2 = v50;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4[1])
  {
    v73 = *(a4 + 4);
    v84 = *(a4 + 6);
    v95 = *(a4 + 8);
    v51 = *a4;
    v62 = *(a4 + 2);
    *a4 = *a5;
    v32 = a5[4];
    v34 = a5[1];
    v33 = a5[2];
    *(a4 + 3) = a5[3];
    *(a4 + 4) = v32;
    *(a4 + 1) = v34;
    *(a4 + 2) = v33;
    a5[3] = v84;
    a5[4] = v95;
    a5[1] = v62;
    a5[2] = v73;
    result.n128_u64[1] = v51.n128_u64[1];
    *a5 = v51;
    result.n128_f64[0] = a4[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      v74 = a3[2];
      v85 = a3[3];
      v96 = a3[4];
      v52 = *a3;
      v63 = a3[1];
      *a3 = *a4;
      v35 = *(a4 + 8);
      v37 = *(a4 + 2);
      v36 = *(a4 + 4);
      a3[3] = *(a4 + 6);
      a3[4] = v35;
      a3[1] = v37;
      a3[2] = v36;
      *(a4 + 3) = v85;
      *(a4 + 4) = v96;
      *(a4 + 1) = v63;
      *(a4 + 2) = v74;
      result.n128_u64[1] = v52.n128_u64[1];
      *a4 = v52;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        v75 = a2[2];
        v86 = a2[3];
        v97 = a2[4];
        v53 = *a2;
        v64 = a2[1];
        *a2 = *a3;
        v38 = a3[4];
        v40 = a3[1];
        v39 = a3[2];
        a2[3] = a3[3];
        a2[4] = v38;
        a2[1] = v40;
        a2[2] = v39;
        a3[3] = v86;
        a3[4] = v97;
        a3[1] = v64;
        a3[2] = v75;
        result.n128_u64[1] = v53.n128_u64[1];
        *a3 = v53;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          v76 = a1[2];
          v87 = a1[3];
          v98 = a1[4];
          v54 = *a1;
          v65 = a1[1];
          *a1 = *a2;
          v41 = a2[4];
          v43 = a2[1];
          v42 = a2[2];
          a1[3] = a2[3];
          a1[4] = v41;
          a1[1] = v43;
          a1[2] = v42;
          a2[3] = v87;
          a2[4] = v98;
          a2[1] = v65;
          a2[2] = v76;
          result = v54;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

BOOL sub_100563B98(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = (a2 - 80);
      v8 = *(a1 + 88);
      v9 = *(a2 - 72);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v133 = *(a1 + 32);
          v150 = *(a1 + 48);
          v44 = *(a1 + 80);
          v167 = *(a1 + 64);
          v99 = *a1;
          v116 = *(a1 + 16);
          v45 = *(a1 + 96);
          v46 = *(a1 + 128);
          v47 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 112);
          *(a1 + 48) = v46;
          *a1 = v44;
          *(a1 + 16) = v45;
          *(a1 + 64) = v47;
          *(a1 + 80) = v99;
          *(a1 + 128) = v150;
          *(a1 + 144) = v167;
          *(a1 + 96) = v116;
          *(a1 + 112) = v133;
          if (*(a2 - 72) >= *(a1 + 88))
          {
            return 1;
          }

          v125 = *(a1 + 112);
          v142 = *(a1 + 128);
          v159 = *(a1 + 144);
          v91 = *(a1 + 80);
          v108 = *(a1 + 96);
          *(a1 + 80) = *v7;
          v48 = *(a2 - 16);
          v50 = *(a2 - 64);
          v49 = *(a2 - 48);
          *(a1 + 128) = *(a2 - 32);
          *(a1 + 144) = v48;
          *(a1 + 96) = v50;
          *(a1 + 112) = v49;
        }

        else
        {
          v125 = *(a1 + 32);
          v142 = *(a1 + 48);
          v159 = *(a1 + 64);
          v91 = *a1;
          v108 = *(a1 + 16);
          *a1 = *v7;
          v10 = *(a2 - 16);
          v12 = *(a2 - 64);
          v11 = *(a2 - 48);
          *(a1 + 48) = *(a2 - 32);
          *(a1 + 64) = v10;
          *(a1 + 16) = v12;
          *(a1 + 32) = v11;
        }

        *(a2 - 32) = v142;
        *(a2 - 16) = v159;
        *(a2 - 64) = v108;
        *(a2 - 48) = v125;
        result = 1;
        *v7 = v91;
        return result;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v128 = *(a1 + 112);
      v145 = *(a1 + 128);
      v162 = *(a1 + 144);
      v94 = *(a1 + 80);
      v111 = *(a1 + 96);
      *(a1 + 80) = *v7;
      v25 = *(a2 - 16);
      v27 = *(a2 - 64);
      v26 = *(a2 - 48);
      *(a1 + 128) = *(a2 - 32);
      *(a1 + 144) = v25;
      *(a1 + 96) = v27;
      *(a1 + 112) = v26;
      *(a2 - 32) = v145;
      *(a2 - 16) = v162;
      *(a2 - 64) = v111;
      *(a2 - 48) = v128;
      *v7 = v94;
      if (*(a1 + 88) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_51:
      v140 = *(a1 + 32);
      v157 = *(a1 + 48);
      v86 = *(a1 + 80);
      v173 = *(a1 + 64);
      v106 = *a1;
      v123 = *(a1 + 16);
      v87 = *(a1 + 96);
      v88 = *(a1 + 128);
      v89 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v88;
      *a1 = v86;
      *(a1 + 16) = v87;
      *(a1 + 64) = v89;
      *(a1 + 80) = v106;
      *(a1 + 128) = v157;
      *(a1 + 144) = v173;
      *(a1 + 96) = v123;
      *(a1 + 112) = v140;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_10056374C(a1, (a1 + 80), (a1 + 160), (a1 + 240), (a2 - 80));
      return 1;
    }

    v19 = *(a1 + 88);
    v20 = *(a1 + 8);
    v21 = *(a1 + 168);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v131 = *(a1 + 112);
        v148 = *(a1 + 128);
        v35 = *(a1 + 160);
        v165 = *(a1 + 144);
        v97 = *(a1 + 80);
        v114 = *(a1 + 96);
        v36 = *(a1 + 176);
        v37 = *(a1 + 208);
        v38 = *(a1 + 224);
        *(a1 + 112) = *(a1 + 192);
        *(a1 + 128) = v37;
        *(a1 + 80) = v35;
        *(a1 + 96) = v36;
        *(a1 + 144) = v38;
        *(a1 + 160) = v97;
        *(a1 + 208) = v148;
        *(a1 + 224) = v165;
        v39 = *(a1 + 88);
        *(a1 + 176) = v114;
        *(a1 + 192) = v131;
        if (v39 < v20)
        {
          v132 = *(a1 + 32);
          v149 = *(a1 + 48);
          v40 = *(a1 + 80);
          v166 = *(a1 + 64);
          v98 = *a1;
          v115 = *(a1 + 16);
          v41 = *(a1 + 96);
          v42 = *(a1 + 128);
          v43 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 112);
          *(a1 + 48) = v42;
          *a1 = v40;
          *(a1 + 16) = v41;
          *(a1 + 64) = v43;
          *(a1 + 80) = v98;
          *(a1 + 128) = v149;
          *(a1 + 144) = v166;
          *(a1 + 96) = v115;
          *(a1 + 112) = v132;
        }
      }
    }

    else
    {
      if (v21 < v19)
      {
        v127 = *(a1 + 32);
        v144 = *(a1 + 48);
        v161 = *(a1 + 64);
        v93 = *a1;
        v110 = *(a1 + 16);
        v22 = *(a1 + 208);
        *(a1 + 32) = *(a1 + 192);
        *(a1 + 48) = v22;
        *(a1 + 64) = *(a1 + 224);
        v23 = *(a1 + 176);
        *a1 = *(a1 + 160);
        *(a1 + 16) = v23;
        v24 = v110;
        *(a1 + 208) = v144;
        *(a1 + 224) = v161;
        *(a1 + 192) = v127;
        *(a1 + 160) = v93;
LABEL_47:
        *(a1 + 176) = v24;
        goto LABEL_48;
      }

      v136 = *(a1 + 32);
      v153 = *(a1 + 48);
      v68 = *(a1 + 80);
      v169 = *(a1 + 64);
      v102 = *a1;
      v119 = *(a1 + 16);
      v69 = *(a1 + 96);
      v70 = *(a1 + 128);
      v71 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v70;
      *a1 = v68;
      *(a1 + 16) = v69;
      *(a1 + 64) = v71;
      *(a1 + 80) = v102;
      *(a1 + 128) = v153;
      *(a1 + 144) = v169;
      v72 = *(a1 + 88);
      *(a1 + 96) = v119;
      *(a1 + 112) = v136;
      if (v21 < v72)
      {
        v137 = *(a1 + 112);
        v154 = *(a1 + 128);
        v73 = *(a1 + 160);
        v170 = *(a1 + 144);
        v103 = *(a1 + 80);
        v120 = *(a1 + 96);
        v74 = *(a1 + 176);
        v75 = *(a1 + 208);
        v76 = *(a1 + 224);
        *(a1 + 112) = *(a1 + 192);
        *(a1 + 128) = v75;
        *(a1 + 80) = v73;
        *(a1 + 96) = v74;
        v24 = v120;
        *(a1 + 144) = v76;
        *(a1 + 160) = v103;
        *(a1 + 208) = v154;
        *(a1 + 224) = v170;
        *(a1 + 192) = v137;
        goto LABEL_47;
      }
    }

LABEL_48:
    if (*(a2 - 72) >= *(a1 + 168))
    {
      return 1;
    }

    v77 = (a2 - 80);
    v138 = *(a1 + 192);
    v155 = *(a1 + 208);
    v171 = *(a1 + 224);
    v104 = *(a1 + 160);
    v121 = *(a1 + 176);
    *(a1 + 160) = *(a2 - 80);
    v78 = *(a2 - 16);
    v80 = *(a2 - 64);
    v79 = *(a2 - 48);
    *(a1 + 208) = *(a2 - 32);
    *(a1 + 224) = v78;
    *(a1 + 176) = v80;
    *(a1 + 192) = v79;
    v77[3] = v155;
    v77[4] = v171;
    v77[1] = v121;
    v77[2] = v138;
    *v77 = v104;
    if (*(a1 + 168) >= *(a1 + 88))
    {
      return 1;
    }

    v139 = *(a1 + 112);
    v156 = *(a1 + 128);
    v81 = *(a1 + 160);
    v172 = *(a1 + 144);
    v105 = *(a1 + 80);
    v122 = *(a1 + 96);
    v82 = *(a1 + 176);
    v83 = *(a1 + 208);
    v84 = *(a1 + 224);
    *(a1 + 112) = *(a1 + 192);
    *(a1 + 128) = v83;
    *(a1 + 80) = v81;
    *(a1 + 96) = v82;
    *(a1 + 144) = v84;
    *(a1 + 160) = v105;
    *(a1 + 208) = v156;
    *(a1 + 224) = v172;
    v85 = *(a1 + 88);
    *&v83 = *(a1 + 8);
    *(a1 + 176) = v122;
    *(a1 + 192) = v139;
    if (v85 >= *&v83)
    {
      return 1;
    }

    goto LABEL_51;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 72) < *(a1 + 8))
    {
      v124 = *(a1 + 32);
      v141 = *(a1 + 48);
      v158 = *(a1 + 64);
      v90 = *a1;
      v107 = *(a1 + 16);
      *a1 = *(a2 - 80);
      v3 = *(a2 - 16);
      v5 = *(a2 - 64);
      v4 = *(a2 - 48);
      *(a1 + 48) = *(a2 - 32);
      *(a1 + 64) = v3;
      *(a1 + 16) = v5;
      *(a1 + 32) = v4;
      *(a2 - 32) = v141;
      *(a2 - 16) = v158;
      *(a2 - 64) = v107;
      *(a2 - 48) = v124;
      result = 1;
      *(a2 - 80) = v90;
      return result;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 160;
  v14 = *(a1 + 88);
  v15 = *(a1 + 8);
  v16 = *(a1 + 168);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v129 = *(a1 + 112);
      v146 = *(a1 + 128);
      v163 = *(a1 + 144);
      v95 = *(a1 + 80);
      v112 = *(a1 + 96);
      v28 = *(a1 + 208);
      *(a1 + 112) = *(a1 + 192);
      *(a1 + 128) = v28;
      *(a1 + 144) = *(a1 + 224);
      v29 = *(a1 + 176);
      *(a1 + 80) = *v13;
      *(a1 + 96) = v29;
      *(a1 + 208) = v146;
      *(a1 + 224) = v163;
      *(a1 + 176) = v112;
      *(a1 + 192) = v129;
      v30 = *(a1 + 88);
      *v13 = v95;
      if (v30 < v15)
      {
        v130 = *(a1 + 32);
        v147 = *(a1 + 48);
        v31 = *(a1 + 80);
        v164 = *(a1 + 64);
        v96 = *a1;
        v113 = *(a1 + 16);
        v32 = *(a1 + 96);
        v33 = *(a1 + 128);
        v34 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 112);
        *(a1 + 48) = v33;
        *a1 = v31;
        *(a1 + 16) = v32;
        *(a1 + 64) = v34;
        *(a1 + 80) = v96;
        *(a1 + 128) = v147;
        *(a1 + 144) = v164;
        *(a1 + 96) = v113;
        *(a1 + 112) = v130;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v134 = *(a1 + 32);
      v151 = *(a1 + 48);
      v51 = *(a1 + 80);
      v168 = *(a1 + 64);
      v100 = *a1;
      v117 = *(a1 + 16);
      v52 = *(a1 + 96);
      v53 = *(a1 + 128);
      v54 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 112);
      *(a1 + 48) = v53;
      *a1 = v51;
      *(a1 + 16) = v52;
      *(a1 + 64) = v54;
      *(a1 + 80) = v100;
      *(a1 + 128) = v151;
      *(a1 + 144) = v168;
      v55 = *(a1 + 88);
      *(a1 + 96) = v117;
      *(a1 + 112) = v134;
      if (v16 >= v55)
      {
        goto LABEL_34;
      }

      v126 = *(a1 + 112);
      v143 = *(a1 + 128);
      v160 = *(a1 + 144);
      v92 = *(a1 + 80);
      v109 = *(a1 + 96);
      v56 = *(a1 + 208);
      *(a1 + 112) = *(a1 + 192);
      *(a1 + 128) = v56;
      *(a1 + 144) = *(a1 + 224);
      v57 = *(a1 + 176);
      *(a1 + 80) = *v13;
      *(a1 + 96) = v57;
    }

    else
    {
      v126 = *(a1 + 32);
      v143 = *(a1 + 48);
      v160 = *(a1 + 64);
      v92 = *a1;
      v109 = *(a1 + 16);
      v17 = *(a1 + 208);
      *(a1 + 32) = *(a1 + 192);
      *(a1 + 48) = v17;
      *(a1 + 64) = *(a1 + 224);
      v18 = *(a1 + 176);
      *a1 = *v13;
      *(a1 + 16) = v18;
    }

    *(a1 + 208) = v143;
    *(a1 + 224) = v160;
    *(a1 + 176) = v109;
    *(a1 + 192) = v126;
    *v13 = v92;
  }

LABEL_34:
  v58 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v59 = 0;
  v60 = 0;
  while (1)
  {
    v61 = *(v58 + 8);
    if (v61 < *(v13 + 8))
    {
      v62 = *v58;
      v101 = *(v58 + 16);
      v118 = *(v58 + 32);
      v135 = *(v58 + 48);
      v152 = *(v58 + 64);
      v63 = v59;
      while (1)
      {
        v64 = a1 + v63;
        v65 = *(a1 + v63 + 208);
        *(v64 + 272) = *(a1 + v63 + 192);
        *(v64 + 288) = v65;
        *(v64 + 304) = *(a1 + v63 + 224);
        v66 = *(a1 + v63 + 176);
        *(v64 + 240) = *(a1 + v63 + 160);
        *(v64 + 256) = v66;
        if (v63 == -160)
        {
          break;
        }

        v63 -= 80;
        if (v61 >= *(v64 + 88))
        {
          v67 = a1 + v63 + 240;
          goto LABEL_42;
        }
      }

      v67 = a1;
LABEL_42:
      *v67 = v62;
      *(v67 + 8) = v61;
      *(v67 + 16) = v101;
      *(v67 + 32) = v118;
      *(v67 + 48) = v135;
      *(v67 + 64) = v152;
      if (++v60 == 8)
      {
        return v58 + 80 == a2;
      }
    }

    v13 = v58;
    v59 += 80;
    v58 += 80;
    if (v58 == a2)
    {
      return 1;
    }
  }
}

void sub_1005642D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

char *sub_100564330(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 6)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 6);
    if (v12 > 0x155555555555555)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 6);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xAAAAAAAAAAAAAALL)
    {
      v15 = 0x155555555555555;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_1005642D8(a1, v15);
    }

    v47 = v13 >> 6 << 6;
    v48 = (v47 + 192 * a5);
    v49 = 192 * a5;
    v50 = v47;
    do
    {
      v51 = *v7;
      v52 = *(v7 + 1);
      v53 = *(v7 + 3);
      v50[2] = *(v7 + 2);
      v50[3] = v53;
      *v50 = v51;
      v50[1] = v52;
      v54 = *(v7 + 4);
      v55 = *(v7 + 5);
      v56 = *(v7 + 7);
      v50[6] = *(v7 + 6);
      v50[7] = v56;
      v50[4] = v54;
      v50[5] = v55;
      v57 = *(v7 + 8);
      v58 = *(v7 + 9);
      v59 = *(v7 + 11);
      v50[10] = *(v7 + 10);
      v50[11] = v59;
      v50[8] = v57;
      v50[9] = v58;
      v50 += 12;
      v7 += 192;
      v49 -= 192;
    }

    while (v49);
    memcpy(v48, v5, *(a1 + 8) - v5);
    v60 = *a1;
    v61 = &v48[*(a1 + 8) - v5];
    *(a1 + 8) = v5;
    v62 = v5 - v60;
    v63 = (v47 - (v5 - v60));
    memcpy(v63, v60, v62);
    v64 = *a1;
    *a1 = v63;
    *(a1 + 8) = v61;
    *(a1 + 16) = 0;
    if (v64)
    {
      operator delete(v64);
    }

    return v47;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 6)) >= a5)
  {
    v35 = &__dst[192 * a5];
    v36 = (v10 - 192 * a5);
    v37 = *(a1 + 8);
    while (v36 < v10)
    {
      v38 = *v36;
      v39 = v36[1];
      v40 = v36[3];
      v37[2] = v36[2];
      v37[3] = v40;
      *v37 = v38;
      v37[1] = v39;
      v41 = v36[4];
      v42 = v36[5];
      v43 = v36[7];
      v37[6] = v36[6];
      v37[7] = v43;
      v37[4] = v41;
      v37[5] = v42;
      v44 = v36[8];
      v45 = v36[9];
      v46 = v36[11];
      v37[10] = v36[10];
      v37[11] = v46;
      v37[8] = v44;
      v37[9] = v45;
      v36 += 12;
      v37 += 12;
    }

    *(a1 + 8) = v37;
    if (v10 != v35)
    {
      memmove(v35, __dst, v10 - v35 - 4);
    }

    v34 = 192 * a5 - 4;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], v18 - 4);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[192 * a5];
    v21 = v10 + v18;
    if (&v19[-192 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -192 * a5];
      do
      {
        v24 = (v22 - v7);
        v25 = *(v23 - v7);
        v26 = *(v23 - v7 + 16);
        v27 = *(v23 - v7 + 48);
        v24[2] = *(v23 - v7 + 32);
        v24[3] = v27;
        *v24 = v25;
        v24[1] = v26;
        v28 = *(v23 - v7 + 64);
        v29 = *(v23 - v7 + 80);
        v30 = *(v23 - v7 + 112);
        v24[6] = *(v23 - v7 + 96);
        v24[7] = v30;
        v24[4] = v28;
        v24[5] = v29;
        v31 = *(v23 - v7 + 128);
        v32 = *(v23 - v7 + 144);
        v33 = *(v23 - v7 + 176);
        v24[10] = *(v23 - v7 + 160);
        v24[11] = v33;
        v24[8] = v31;
        v24[9] = v32;
        v23 += 192;
        v22 += 192;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(v20, v5, v19 - v20 - 4);
    }

    v34 = v16 - 4;
LABEL_28:
    memmove(v5, v7, v34);
  }

  return v5;
}

uint64_t sub_100564630(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10056474C(a1 + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 6));
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v8;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  v9 = *(a2 + 152);
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 152) = v9;
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  if (*(a2 + 279) < 0)
  {
    sub_100007244((a1 + 256), *(a2 + 32), *(a2 + 33));
  }

  else
  {
    v14 = a2[16];
    *(a1 + 272) = *(a2 + 34);
    *(a1 + 256) = v14;
  }

  *(a1 + 280) = *(a2 + 70);
  return a1;
}

void sub_100564730(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056474C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005647C8(result, a4);
  }

  return result;
}

void sub_1005647AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005647C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_1005642D8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100564814(uint64_t a1)
{
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100564858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 96) = v8;
  v11 = *(a2 + 148);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 148) = v11;
  if (*(a2 + 183) < 0)
  {
    sub_100007244((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v12 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v12;
  }

  *(a1 + 184) = *(a2 + 184);
  return a1;
}

void sub_1005648F0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10055CAE4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100564944(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005649C0(result, a4);
  }

  return result;
}

void sub_1005649A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005649C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1003F6B14(a1, a2);
  }

  sub_10028C64C();
}

double sub_100564A84(uint64_t a1, double **a2)
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

uint64_t sub_100564AB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100564B84(uint64_t a1, double **a2)
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

uint64_t sub_100564BD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100564CB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100564DA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100564E5C(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245ED80;
  sub_10130B594(a1 + 3, *a2);
  return a1;
}

void sub_100564EDC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245ED80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565058(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EE20;
  sub_1011022F8(a1 + 3, *a2);
  return a1;
}

void sub_100565168(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EEE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565264(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EF30;
  sub_100161458(a1 + 3, a2, a3, a4, a5);
  return a1;
}

void sub_1005652E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056535C(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v2 - 68) = 2049;
  *(v1 + 14) = v3;
}

void sub_10056537C(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 2049;
  *(v2 + 14) = a1;
}

double sub_1005653A4(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

void sub_1005653B0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 88));
  v4 = *(a1 + 96);
  v5 = *(a1 + 128);
  *(a2 + 16) = *(a1 + 112);
  *(a2 + 32) = v5;
  *a2 = v4;
  v6 = *(a1 + 144);
  v7 = *(a1 + 160);
  v8 = *(a1 + 176);
  *(a2 + 96) = *(a1 + 192);
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  *(a2 + 48) = v6;

  os_unfair_lock_unlock((a1 + 88));
}

double sub_1005654AC@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_102656E98 != -1)
  {
    sub_1018C2E50();
  }

  if (qword_102656E90)
  {
    sub_1000238CC(qword_102656E90, &v3);
    result = *&v3;
    *a1 = v3;
    a1[2] = v4;
  }

  return result;
}

void sub_100565518(int a1@<W0>, std::string *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v20.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v20, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C2E78();
    }

    goto LABEL_28;
  }

  if (a1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v20.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v20.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v20, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C2F78();
    }

LABEL_28:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if (sub_10071B280())
  {
    sub_10000EC00(v18, "mobile");
    sub_10016C650(v18, &v20);
    sub_10000EC00(&__p, "/Library/Caches/locationd/");
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v5 = v17;
    }

    else
    {
      v5 = v16;
    }

    v6 = std::string::append(&v20, p_p, v5);
    *a2 = *v6;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      v7 = v18[0];
LABEL_42:
      operator delete(v7);
    }
  }

  else
  {
    sub_10000EC00(v13, "root");
    sub_10016C650(v13, &v20);
    sub_10000EC00(&__p, "/Library/Caches/locationd/");
    if ((v17 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = v16;
    }

    v12 = std::string::append(&v20, v10, v11);
    *a2 = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      v7 = v13[0];
      goto LABEL_42;
    }
  }
}

void sub_1005657C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100565860(std::string *a1@<X8>)
{
  sub_1005654AC(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework/Support/", 0x3AuLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1005658CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005658E8(std::string *a1@<X8>)
{
  sub_1005654AC(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_100565954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100565984(std::string *a1@<X8>)
{
  sub_10000EC00(__p, "mobile");
  sub_10016C650(__p, &v5);
  v2 = std::string::append(&v5, "/Library/locationd/", 0x13uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100565A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100565A48@<X0>(_BYTE *a1@<X8>)
{
  v2 = -[NSString UTF8String]([(NSString *)[+[NSFileManager defaultManager](NSFileManager currentDirectoryPath] stringByAppendingString:@"/"), "UTF8String"];

  return sub_10000EC00(a1, v2);
}

uint64_t sub_100565AA0(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  v12 = sub_100070338(a1);
  *v12 = off_10245F140;
  v12[2] = a2;
  *(v12 + 24) = 0;
  *(v12 + 7) = a4;
  v12[4] = 0xBFF0000000000000;
  v12[5] = 0;
  sub_10000EC00(v12 + 48, a3);
  *(a1 + 72) = 0u;
  v13 = (a1 + 72);
  v14 = (a1 + 96);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  [*(a1 + 16) silo];
  if (a4 <= 1)
  {
    if (!a4)
    {
      sub_100565860(buf);
      goto LABEL_12;
    }

    if (a4 == 1)
    {
      sub_100565518(a5, buf);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        sub_100565984(buf);
        goto LABEL_12;
      case 3:
        sub_100565A48(buf);
        goto LABEL_12;
      case 4:
        sub_100172FA8(2, buf);
LABEL_12:
        if (*(a1 + 95) < 0)
        {
          operator delete(*v13);
        }

        *v13 = *buf;
        *(a1 + 88) = *&buf[16];
        goto LABEL_15;
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1018C3084();
  }

  v39 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a4;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unknown persistent domain, domain:%{public}d}", buf, 0x18u);
    if (qword_1025D47A0 != -1)
    {
      sub_1018C3098();
    }
  }

  v40 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a4;
    _os_signpost_emit_with_name_impl(dword_100000000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unknown persistent domain", "{msg%{public}.0s:Unknown persistent domain, domain:%{public}d}", buf, 0x18u);
  }

LABEL_15:
  if (*(a1 + 95) < 0)
  {
    if (!*(a1 + 80))
    {
      goto LABEL_68;
    }

    v15 = *v13;
  }

  else
  {
    v15 = (a1 + 72);
    if (!*(a1 + 95))
    {
      goto LABEL_68;
    }
  }

  v16 = getuid();
  v17 = getgid();
  if (!sub_1004E667C(v15, v16, v17))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018C3098();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v19 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v19 = *v13;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018C3098();
      }
    }

    v20 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v21 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v21 = *v13;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v21;
      _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "could not create path", "{msg%{public}.0s:could not create path, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  sub_1003CCADC((a1 + 72), (a1 + 48), buf);
  sub_10000EC00(__p, ".plist");
  if ((v42 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v23 = v42;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(buf, v22, v23);
  v25 = v24->__r_.__value_.__r.__words[0];
  v43[0] = v24->__r_.__value_.__l.__size_;
  *(v43 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*v14);
  }

  v27 = v43[0];
  *(a1 + 96) = v25;
  *(a1 + 104) = v27;
  *(a1 + 111) = *(v43 + 7);
  *(a1 + 119) = v26;
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_1018C3098();
  }

  v28 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    v29 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v29 = *v14;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v29;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "{msg%{public}.0s:accessing data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v30 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    v30 = *v14;
  }

  if (((*(*a1 + 816))(a1, v30) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018C3098();
    }

    v31 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v32 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v32 = *v14;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist (or cannot be accessed), starting fresh, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018C3098();
      }
    }

    v33 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v34 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v34 = *v14;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v34;
      _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "file does not exist (or cannot be accessed), starting fresh", "{msg%{public}.0s:file does not exist (or cannot be accessed), starting fresh, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  if (a4 == 2)
  {
    v35 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v35 = *v13;
    }

    v36 = getuid();
    v37 = getgid();
    sub_1004E6778(v35, v36, v37, 0x1EDu);
  }

LABEL_68:
  *(a1 + 24) = 0;
  *(a1 + 120) = a6;
  return a1;
}

void *sub_1005661F8(uint64_t a1)
{
  v2 = off_10245F140;
  *a1 = off_10245F140;
  if ((*(a1 + 28) - 1) <= 3)
  {
    sub_100566514(a1);
    v2 = *a1;
  }

  (v2[120])(a1);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_100005DA8(a1);
}

void sub_1005662C8(uint64_t a1)
{
  sub_1005661F8(a1);

  operator delete();
}

NSString *sub_100566300(uint64_t a1)
{
  v1 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v1 = *v1;
  }

  return [NSString stringWithUTF8String:v1];
}

uint64_t sub_100566324(uint64_t a1)
{
  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 80))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 95))
  {
LABEL_3:
    v2 = (a1 + 24);
    if (*(a1 + 24) == 1)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C2E64();
      }

      v3 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v4 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v4 = *v4;
        }

        v9 = 136315138;
        v10 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning persistent store %s has been modified - refreshing will lose changes", &v9, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C30C0(a1);
      }
    }

    v5 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v5 = *v5;
    }

    result = (*(*a1 + 816))(a1, v5);
    goto LABEL_25;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018C2E64();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v8 = *v8;
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Store %s is configured for in-memory mode - not refreshing and marking the store as unmodified", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C31B8(a1);
  }

  v2 = (a1 + 24);
  result = 1;
LABEL_25:
  *v2 = 0;
  return result;
}

uint64_t sub_100566514(uint64_t a1)
{
  if ((*(a1 + 28) - 1) >= 4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning data set %s is not changeable - not storing", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018C32B0(a1);
      return 0;
    }

    return result;
  }

  if (*(a1 + 24) != 1)
  {
    return 1;
  }

  if ((*(a1 + 95) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 80))
    {
      goto LABEL_5;
    }

LABEL_17:
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315138;
      v16 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Store %s is configured for in-memory mode - not storing and marking the store as unmodified", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C33D0(a1);
    }

    goto LABEL_40;
  }

  if (!*(a1 + 95))
  {
    goto LABEL_17;
  }

LABEL_5:
  v2 = *(a1 + 120);
  v3 = (a1 + 96);
  v4 = a1 + 96;
  if (!v2)
  {
    v5 = *(*a1 + 832);
LABEL_26:
    if ((v5() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v2 == 1)
  {
    v5 = *(*a1 + 832);
    goto LABEL_26;
  }

  if (*(a1 + 119) < 0)
  {
    v4 = *v3;
  }

  result = (*(*a1 + 832))(a1, v4, 2);
  if (result)
  {
LABEL_31:
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v12 = *v12;
      }

      v13 = a1 + 96;
      if (*(a1 + 119) < 0)
      {
        v13 = *v3;
      }

      *buf = 136315394;
      v16 = v12;
      v17 = 2080;
      v18 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s stored to disk %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018C33A8();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLPersistentStore::store()", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

LABEL_40:
    *(a1 + 24) = 0;
    return 1;
  }

  return result;
}

void sub_100566954(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 32) = *a2;
  v5 = (a1 + 32);
  if (v4 <= 0.0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v12 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v12 = *v12;
      }

      v13 = 136315138;
      v14 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "disabling auto-store for %s", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C34C8(a1);
    }

    [*(a1 + 40) invalidate];

    *(a1 + 40) = 0;
  }

  else
  {
    if (!a3)
    {
      sub_1018C36E0();
    }

    if (!*(a1 + 40))
    {
      v7 = [objc_msgSend(*(a1 + 16) "silo")];
      *(a1 + 40) = v7;
      [v7 setHandler:a3];
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018C2E64();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v9 = *v9;
      }

      v10 = *v5;
      v13 = 136315394;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "scheduling to auto-store %s every %.3fs", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C35C0(a1, v5);
    }

    [*(a1 + 40) setNextFireDelay:*(a1 + 32)];
  }
}

id sub_100566B4C(double *a1)
{
  (*(*a1 + 944))(a1);
  v2 = a1[4];
  v3 = *(a1 + 5);

  return [v3 setNextFireDelay:v2];
}

uint64_t sub_100566D50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100568024;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656EB8 != -1)
  {
    dispatch_once(&qword_102656EB8, block);
  }

  return qword_102656EC0;
}

void sub_100567034(uint64_t a1, char a2)
{
  v3[8] = 0;
  v3[64] = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v3[0] = a2;
  v2 = 0;
  (*(*a1 + 152))(a1, &v2, v3, 1, 0xFFFFFFFFLL, 0);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1005670B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056717C(void *a1, void *a2, int a3, void *a4, int a5, int a6, double a7)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v14 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138478595;
    *(buf.__r_.__value_.__r.__words + 4) = [a2 UUIDString];
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2113;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = [a4 description];
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1025;
    LODWORD(v76) = a5;
    WORD2(v76) = 1025;
    *(&v76 + 6) = a6;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "found device %{private}@, data: %{private}@, rssi: %{private}d, type: %{private}d", &buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_1018C3B60();
    }

    LODWORD(v69.__r_.__value_.__l.__data_) = 138478595;
    *(v69.__r_.__value_.__r.__words + 4) = [a2 UUIDString];
    WORD2(v69.__r_.__value_.__r.__words[1]) = 2113;
    *(&v69.__r_.__value_.__r.__words[1] + 6) = [a4 description];
    HIWORD(v69.__r_.__value_.__r.__words[2]) = 1025;
    v70 = a5;
    v71 = 1025;
    v72 = a6;
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLHomeKitProvider::onHomeKitDeviceFound(NSUUID *, CLHomeKitProvider_Type::HAPVersion, NSData *, int, cl::chrono::CFAbsoluteTimeClock::time_point, CLHomeKitProvider_Type::HomeKitType)", "%s\n", v68);
    if (v68 != &buf)
    {
      free(v68);
    }
  }

  if (!a4)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C3B60();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Got a device notification but not device data", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C3D70();
    }

    return;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    if ([a4 length] <= 8)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C3B60();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Found invalid HomeKit device. Data length was invalid", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C3C7C();
      }

      return;
    }

    v18 = [a4 bytes];
    v19 = v18;
    if (*(v18 + 8))
    {
      v20 = 0;
      goto LABEL_31;
    }

    if (!*(v18 + 3))
    {
      v20 = 1;
LABEL_31:
      if (qword_1025D4870 != -1)
      {
        sub_1018C3B60();
      }

      v21 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        sub_10056B758(v19, v20, &buf);
        v22 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        LODWORD(v69.__r_.__value_.__l.__data_) = 136380675;
        *(v69.__r_.__value_.__r.__words + 4) = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#Warning Found invalid HomeKit device: %{private}s", &v69, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1018C3B60();
        }

        sub_10056B758(v19, v20, &v69);
        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v69;
        }

        else
        {
          v23 = v69.__r_.__value_.__r.__words[0];
        }

        v73 = 136380675;
        v74 = v23;
        v24 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL (anonymous namespace)::addToScanCache(std::vector<CLHomeKitProvider_Type::HomeKitDevice> &, NSUUID *, NSData *, int, cl::chrono::CFAbsoluteTimeClock::time_point, CLHomeKitProvider_Type::HomeKitType) [HomeKitType = (anonymous namespace)::HomeKitServiceData]", "%s\n", v24);
LABEL_68:
        if (v24 != &buf)
        {
          free(v24);
        }

        return;
      }

      return;
    }

    v32 = *v18 | (*(v18 + 2) << 32);
    if (*(v18 + 3) >= 0x10u)
    {
      v33 = 16;
    }

    else
    {
      v33 = *(v18 + 3);
    }

    v34 = a1[17];
    v35 = a1[18];
    if (v34 < v35)
    {
      *v34 = 1;
      *(v34 + 1) = v32;
      *(v34 + 5) = WORD2(v32);
      *(v34 + 8) = v33;
      *(v34 + 16) = a7;
      *(v34 + 24) = a5;
      *(v34 + 28) = 0;
      *(v34 + 44) = 0;
      *(v34 + 48) = 0;
      v36 = v34 + 56;
      *(v34 + 52) = 0;
      goto LABEL_101;
    }

    v49 = a1[16];
    v50 = 0x6DB6DB6DB6DB6DB7 * ((v34 - v49) >> 3);
    v51 = v50 + 1;
    if ((v50 + 1) > 0x492492492492492)
    {
      sub_10028C64C();
    }

    v52 = 0x6DB6DB6DB6DB6DB7 * ((v35 - v49) >> 3);
    if (2 * v52 > v51)
    {
      v51 = 2 * v52;
    }

    if (v52 >= 0x249249249249249)
    {
      v53 = 0x492492492492492;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      sub_10056B440((a1 + 16), v53);
    }

    v64 = 56 * v50;
    *v64 = 1;
    *(v64 + 5) = WORD2(v32);
    *(v64 + 1) = v32;
    *(v64 + 8) = v33;
    *(v64 + 16) = a7;
    *(v64 + 24) = a5;
    *(v64 + 28) = 0;
    *(v64 + 44) = 0;
    *(v64 + 48) = 0;
    *(v64 + 52) = 0;
    v36 = 56 * v50 + 56;
    v65 = a1[16];
    v66 = a1[17] - v65;
    v67 = (56 * v50 - v66);
    memcpy(v67, v65, v66);
    v60 = a1[16];
    a1[16] = v67;
    a1[17] = v36;
    a1[18] = 0;
    if (!v60)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if ([a4 length] <= 0x10)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018C3B60();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Found invalid HomeKit device. Data length was invalid", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C3B88();
    }

    return;
  }

  v25 = [a4 bytes];
  v26 = sub_100568514(v25);
  if (v26 == 9)
  {
    if ((((v25[3] + 115) >> 5) | (8 * (v25[3] + 115))) > 7u)
    {
      v27 = 0;
    }

    else
    {
      v27 = dword_101C7F078[(((v25[3] + 115) >> 5) | (8 * (v25[3] + 115)))];
    }

    v37 = v25[4] & 1;
    v38 = *(v25 + 5) | (*(v25 + 9) << 32);
    if (*(v25 + 11) >= 0x10u)
    {
      v39 = 16;
    }

    else
    {
      v39 = *(v25 + 11);
    }

    v40 = a1[17];
    v41 = a1[18];
    if (v40 < v41)
    {
      v42 = v25[2];
      v43 = *(v25 + 13);
      *v40 = 2;
      *(v40 + 1) = v38;
      *(v40 + 5) = WORD2(v38);
      *(v40 + 8) = v39;
      *(v40 + 16) = a7;
      *(v40 + 24) = a5;
      *(v40 + 28) = 0;
      *(v40 + 30) = v42;
      *(v40 + 32) = v27;
      *(v40 + 36) = v37;
      *(v40 + 38) = v43;
      *(v40 + 44) = 1;
      *(v40 + 48) = a6;
      v36 = v40 + 56;
      *(v40 + 52) = 1;
      goto LABEL_101;
    }

    v44 = a1[16];
    v45 = 0x6DB6DB6DB6DB6DB7 * ((v40 - v44) >> 3);
    v46 = v45 + 1;
    if ((v45 + 1) > 0x492492492492492)
    {
      sub_10028C64C();
    }

    v47 = 0x6DB6DB6DB6DB6DB7 * ((v41 - v44) >> 3);
    if (2 * v47 > v46)
    {
      v46 = 2 * v47;
    }

    if (v47 >= 0x249249249249249)
    {
      v48 = 0x492492492492492;
    }

    else
    {
      v48 = v46;
    }

    if (v48)
    {
      sub_10056B440((a1 + 16), v48);
    }

    v54 = 56 * v45;
    v55 = v25[2];
    v56 = *(v25 + 13);
    *v54 = 2;
    *(v54 + 5) = WORD2(v38);
    *(v54 + 1) = v38;
    *(v54 + 8) = v39;
    *(v54 + 16) = a7;
    *(v54 + 24) = a5;
    *(v54 + 28) = 0;
    *(v54 + 30) = v55;
    *(v54 + 32) = v27;
    *(v54 + 36) = v37;
    *(v54 + 38) = v56;
    *(v54 + 44) = 1;
    *(v54 + 48) = a6;
    *(v54 + 52) = 1;
    v36 = 56 * v45 + 56;
    v57 = a1[16];
    v58 = a1[17] - v57;
    v59 = (56 * v45 - v58);
    memcpy(v59, v57, v58);
    v60 = a1[16];
    a1[16] = v59;
    a1[17] = v36;
    a1[18] = 0;
    if (!v60)
    {
      goto LABEL_101;
    }

LABEL_100:
    operator delete(v60);
LABEL_101:
    a1[17] = v36;
    buf.__r_.__value_.__s.__data_[8] = 0;
    v79 = 0;
    v81 = 0;
    v82 = 0;
    __p = 0;
    v61 = *(v36 - 56);
    v62 = *(v36 - 40);
    v63 = *(v36 - 24);
    v78 = *(v36 - 8);
    v77 = v63;
    v76 = v62;
    *&buf.__r_.__value_.__r.__words[1] = v61;
    v79 = 1;
    LODWORD(v69.__r_.__value_.__l.__data_) = 1;
    (*(*a1 + 152))(a1, &v69, &buf, 1, 0xFFFFFFFFLL, 0);
    if (__p)
    {
      v81 = __p;
      operator delete(__p);
    }

    return;
  }

  v28 = v26;
  if (qword_1025D4870 != -1)
  {
    sub_1018C3B60();
  }

  v29 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    sub_1005685C0(v25, v28, 1, &buf);
    v30 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(v69.__r_.__value_.__l.__data_) = 136380675;
    *(v69.__r_.__value_.__r.__words + 4) = v30;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#Warning Found invalid HomeKit device: %{private}s", &v69, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_1018C3B60();
    }

    sub_1005685C0(v25, v28, 1, &v69);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v69;
    }

    else
    {
      v31 = v69.__r_.__value_.__r.__words[0];
    }

    v73 = 136380675;
    v74 = v31;
    v24 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL (anonymous namespace)::addToScanCache(std::vector<CLHomeKitProvider_Type::HomeKitDevice> &, NSUUID *, NSData *, int, cl::chrono::CFAbsoluteTimeClock::time_point, CLHomeKitProvider_Type::HomeKitType) [HomeKitType = (anonymous namespace)::HomeKitManufacturerData]", "%s\n", v24);
    goto LABEL_68;
  }
}