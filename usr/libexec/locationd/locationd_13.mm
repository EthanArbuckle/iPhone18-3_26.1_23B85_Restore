uint64_t sub_1000DE310(void *a1, _OWORD *a2)
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
    sub_1005A8840(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  v8 = a1[4];
  v9 = a1[5] + 1;
  a1[5] = v9;
  v10 = v8 + v9;
  v11 = a1[1];
  v12 = (v11 + 8 * (v10 >> 8));
  v13 = *v12 + 16 * v10;
  if (a1[2] == v11)
  {
    v13 = 0;
  }

  if (v13 == *v12)
  {
    v13 = *(v12 - 1) + 4096;
  }

  return v13 - 16;
}

uint64_t sub_1000DE3D0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if (*(v1 + 176) == 1)
  {
    sub_1010E62E4(v0 + 144, v1);
    Current = CFAbsoluteTimeGetCurrent();
    if (v3[353] == 1 && *(v2 + 28) == 1)
    {
      v5 = Current;
      sub_10152D354(&v34);
      sub_101555B54(&v34);
      v38 |= 1u;
      *&v36[84] = v5;
      v6 = v37;
      v7 = *(v2 + 2);
      *(v37 + 68) |= 0x10u;
      *(v6 + 40) = v7;
      v8 = v37;
      v9 = *(v2 + 6);
      *(v37 + 68) |= 0x20u;
      *(v8 + 48) = v9;
      v10 = v37;
      LOBYTE(v9) = *(v2 + 29);
      *(v37 + 68) |= 0x400u;
      *(v10 + 65) = v9;
      v11 = v37;
      v12 = *(v2 + 12);
      *(v37 + 68) |= 2u;
      *(v11 + 16) = v12;
      v13 = v37;
      v14 = *(v2 + 26);
      *(v37 + 68) |= 0x40u;
      *(v13 + 52) = v14;
      v15 = v37;
      v16 = *(v2 + 22);
      *(v37 + 68) |= 0x80u;
      *(v15 + 56) = v16;
      v17 = v37;
      v18 = *(v2 + 15);
      *(v37 + 68) |= 4u;
      *(v17 + 24) = v18;
      v19 = v37;
      v20 = *(v2 + 4);
      *(v37 + 68) |= 8u;
      *(v19 + 32) = v20;
      v21 = v37;
      v22 = *(v2 + 8);
      *(v37 + 68) |= 1u;
      *(v21 + 8) = v22;
      v23 = v37;
      LOBYTE(v16) = *(v2 + 128);
      *(v37 + 68) |= 0x200u;
      *(v23 + 64) = v16;
      if (qword_102637F48 != -1)
      {
        sub_101B2DC58();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, &v34);
      }

      sub_101532FA8(&v34);
    }

    CHVO2MaxEstimator::feedCalorieUpdate();
    if (LOBYTE(__dst[0]) == 1)
    {
      v32 = 7;
      bzero(v36, 0xD60uLL);
      v34 = *(__dst + 8);
      v35 = *(&__dst[1] + 1);
      (*(*v3 + 152))(v3, &v32, &v34, 1, 0xFFFFFFFFLL, 0);
    }
  }

  sub_1000DE7EC((v3 + 3552), v2 + 184);
  bzero(v36, 0xD60uLL);
  v24 = *(v2 + 20);
  v25 = *(v2 + 21);
  *&v34 = *(v2 + 2);
  *(&v34 + 1) = v24;
  v35 = v25;
  LODWORD(__dst[0]) = 5;
  (*(*v3 + 152))(v3, __dst, &v34, 1, 0xFFFFFFFFLL, 0);
  v32 = 11;
  memcpy(__dst, v2, 0xD78uLL);
  (*(*v3 + 152))(v3, &v32, __dst, 1, 0xFFFFFFFFLL, 0);
  v32 = 9;
  bzero(&__dst[11] + 8, 0xCC0uLL);
  v26 = v2[9];
  __dst[8] = v2[8];
  __dst[9] = v26;
  __dst[10] = v2[10];
  *&__dst[11] = *(v2 + 22);
  v27 = v2[5];
  __dst[4] = v2[4];
  __dst[5] = v27;
  v28 = v2[7];
  __dst[6] = v2[6];
  __dst[7] = v28;
  v29 = v2[1];
  __dst[0] = *v2;
  __dst[1] = v29;
  v30 = v2[3];
  __dst[2] = v2[2];
  __dst[3] = v30;
  return (*(*v3 + 152))(v3, &v32, __dst, 1, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1000DE7FC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4520 != -1)
  {
    sub_1019909B8();
  }

  v4 = qword_1025D4528;
  if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 176);
    v7 = v5 == 3 || (v5 & 0xFFFFFFFFFFFFFFFELL) == 4;
    v8 = *(a2 + 16);
    v9 = *(a1 + 160);
    v11 = (v5 - 6) >= 0xFFFFFFFFFFFFFFFDLL && v9 <= v8 && v8 - v9 < *(a1 + 216);
    if (v9 <= v8)
    {
      v13 = *(a1 + 216);
      v12 = v8 - v9 < v13;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 216);
    }

    v14 = *(a1 + 160);
    v15 = *(a2 + 824);
    v16 = *(a1 + 44);
    v17 = *(a1 + 184);
    v18 = vabdd_f64(*(a2 + 832), *a2);
    *buf = 67111680;
    *v35 = v11;
    *&v35[4] = 1024;
    *&v35[6] = v7;
    *&v35[10] = 1024;
    *&v35[12] = v12;
    *&v35[16] = 2048;
    *&v35[18] = v8;
    v36 = 2048;
    v37 = v14;
    v38 = 1024;
    v39 = v13;
    v40 = 2048;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    v46 = 2048;
    v47 = v18;
    v48 = 2048;
    v49 = 0x4014000000000000;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "shouldCommitInputData, %d, isCyclingWorkout, %d, inTimeRange, %d, now, %f, sessionStartTime, %f, maxPossibleDifference, %d, power, %f, fApproximatePowerFromMets, %d, inPauseMode, %d, powerSampleTimediff, %f, powerSampleTimediffTolerance, %f", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101990C08(a1, a2);
  }

  if ((*(a1 + 44) & 1) == 0 && (*(a2 + 824) < 0.0 || *(a2 + 712) <= 0.0))
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v28 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 44);
      v30 = *(a2 + 824);
      v31 = *(a2 + 712);
      *buf = 67109632;
      *v35 = v29;
      *&v35[4] = 2048;
      *&v35[6] = v30;
      *&v35[14] = 2048;
      *&v35[16] = v31;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Cannot commit the data since there is no power or start time is 0. fApproximatePowerFromMets %d, power, %f, start time, %f ", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4520 != -1)
      {
        sub_101990AE4();
      }

      v33 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCyclingFTPDataStore::shouldCommitInputData(const CLNatalieModelInput::Data &)", "%s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    goto LABEL_55;
  }

  if ((*(a1 + 176) - 3) >= 3)
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v26 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Cannot commit the data since it is not a cycling workout.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101990DF8();
    }

    goto LABEL_55;
  }

  v19 = *(a2 + 16);
  v20 = *(a1 + 160);
  if (v20 > v19 || v19 - v20 >= *(a1 + 216))
  {
    if (qword_1025D4520 != -1)
    {
      sub_101990AE4();
    }

    v27 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Cannot commit the data since it is not in time range.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101991000();
    }

LABEL_55:
    v21 = 0;
    return v21 & 1;
  }

  v21 = *(a1 + 184) ^ 1;
  if ((*(a1 + 44) & 1) == 0 && (*(a1 + 184) & 1) == 0)
  {
    v22 = *(a2 + 832);
    if (vabdd_f64(v22, *a2) <= 5.0)
    {
      v21 = 1;
      return v21 & 1;
    }

    if (v22 > 0.0)
    {
      if (qword_1025D4520 != -1)
      {
        sub_101990AE4();
      }

      v23 = qword_1025D4528;
      if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a2 + 832);
        v25 = *a2;
        *buf = 134218240;
        *v35 = v24;
        *&v35[8] = 2048;
        *&v35[10] = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "Power timestamp is too old, entryTime, %f, powerTime, %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101990EE4((a2 + 832), a2);
      }
    }

    goto LABEL_55;
  }

  return v21 & 1;
}

uint64_t sub_1000DED24(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a1 + 92) = *(a3 + 44);
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 48) = v5;
  result = sub_1000DE7FC(a1, a2);
  if (result)
  {
    sub_10099509C(a1, *(a2 + 840));
    sub_100994C0C(a1, a2, v9);
    return (*(**(a1 + 24) + 16))(*(a1 + 24), v9);
  }

  return result;
}

void sub_1000DEDB8(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1010F2710();
    }
  }
}

void sub_1000DF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DF624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000344B0(a2, 0);
  v5 = sub_1000DF834(a1, v4, 5, 10.0);
  v6 = sub_1000344B0(a2, 0);
  v7 = sub_1000DF834(a1, v6, 3, -1.0);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = v5 | v7;
  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v13 = v5 | v7;
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "mayTakeProcessAssertion,%d,background,%d,slc,%d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::mayTakeProcessAssertion(CLDaemonClient *)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return v8;
}

id sub_1000DF834(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v7 isValidCKP];
  if (result)
  {
    v13 = 0;
    v14 = 0;
    sub_10004F9C8(a3, &v14, &v13);
    [*(a1 + 136) doubleForKey:v14 atKeyPath:v7 defaultValue:-1.0];
    v10 = v9;
    [*(a1 + 136) doubleForKey:v13 atKeyPath:v7 defaultValue:-1.0];
    result = (v10 != -1.0 && (v11 != -1.0 ? (v12 = v11 < v10) : (v12 = 1), v12) || vabdd_f64(v11, CFAbsoluteTimeGetCurrent()) < a4);
  }

  return result;
}

void sub_1000DF90C(uint64_t a1, int a2)
{
  if (*(a1 + 360))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v4 = (a1 + 360);
    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      v9[0] = 67240448;
      v9[1] = a2;
      v10 = 1026;
      v11 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLC: Resume for exception, %{public}#x, oldExceptions %{public}#x", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019521B8();
    }

    v7 = (*v4 & ~a2) == 0;
    *v4 &= ~a2;
    if (v7)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101951718();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Resume", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019522C8();
      }

      [*(a1 + 544) enable];
      [*(a1 + 544) notifyFromLastInfo];
    }
  }
}

uint64_t sub_1000DFD74(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "CLC: Received end route", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951AE0();
  }

  sub_1000DFEFC(a1, 0, 1.79769313e308);
  return sub_1000E04E8(a1, 0);
}

void sub_1000DFEFC(uint64_t a1, int a2, double a3)
{
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  *(a1 + 352) = a3;
  if (v7 != a3)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951784();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = -1.0;
      if (a3 != 1.79769313e308)
      {
        v9 = a3;
      }

      *buf = 134283521;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Debounce changed to %{private}lf [s]", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019518C0(a3);
    }

    if (a2 == 1)
    {
      [*(a1 + 336) setNextFireDelay:*(a1 + 352)];
    }
  }

  if (v6 == a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_10083D068(*(a1 + 344), buf);
      if (v45 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v12 = *(a1 + 352);
      if (v12 == 1.79769313e308)
      {
        v12 = -1.0;
      }

      *v39 = 136380931;
      *&v39[4] = v11;
      v40 = 2049;
      v41 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Already in state %{private}s, %{private}lf", v39, 0x16u);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101951718();
      }

      sub_10083D068(*(a1 + 344), v39);
      if (v42 >= 0)
      {
        v13 = v39;
      }

      else
      {
        v13 = *v39;
      }

      v14 = *(a1 + 352);
      if (v14 == 1.79769313e308)
      {
        v14 = -1.0;
      }

      *v31 = 136380931;
      *&v31[4] = v13;
      v32 = 2049;
      v33 = v14;
      v15 = _os_log_send_and_compose_impl();
      if (v42 < 0)
      {
        operator delete(*v39);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCachedLocationController::setStateAndUpdateDebounceTimout(CLCachedLocationController_Type::CachedLocationState, CFTimeInterval)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101951718();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_10083D068(*(a1 + 344), buf);
      v17 = SHIBYTE(v45);
      v18 = *buf;
      sub_10083D068(a2, v39);
      v19 = buf;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v42 >= 0)
      {
        v20 = v39;
      }

      else
      {
        v20 = *v39;
      }

      *v31 = 136380931;
      *&v31[4] = v19;
      v32 = 2081;
      v33 = *&v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLC: Cached Location changed state from %{private}s to %{private}s", v31, 0x16u);
      if (v42 < 0)
      {
        operator delete(*v39);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101951740(buf);
      sub_10083D068(*(a1 + 344), v39);
      v26 = v42;
      v27 = *v39;
      sub_10083D068(a2, v31);
      v28 = v39;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if (v34 >= 0)
      {
        v29 = v31;
      }

      else
      {
        v29 = *v31;
      }

      v35 = 136380931;
      v36 = v28;
      v37 = 2081;
      v38 = v29;
      v30 = _os_log_send_and_compose_impl();
      if (v34 < 0)
      {
        operator delete(*v31);
      }

      if (v42 < 0)
      {
        operator delete(*v39);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCachedLocationController::setStateAndUpdateDebounceTimout(CLCachedLocationController_Type::CachedLocationState, CFTimeInterval)", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    *(a1 + 344) = a2;
    if (a2 == 1)
    {
      sub_100A2E178((a1 + 368), 1);
      __asm { FMOV            V0.2D, #-1.0 }

      *buf = _Q0;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      sub_10002FA64();
    }

    [*(a1 + 336) setNextFireDelay:1.79769313e308];
    [*(*(a1 + 312) + 16) unregister:*(*(a1 + 312) + 8) forNotification:22];
    sub_100A2E178((a1 + 368), 0);
    *buf = *(a1 + 344);
    *v39 = 1;
    (*(*(a1 + 8) + 152))(a1 + 8, v39, buf, 0, 0xFFFFFFFFLL, 0);
  }
}

void sub_1000E04B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E04E8(uint64_t result, int a2)
{
  if (*(result + 348) != a2)
  {
    v6 = v2;
    v7 = v3;
    *(result + 348) = a2;
    v5 = a2;
    v4 = 2;
    return (*(*(result + 8) + 152))();
  }

  return result;
}

void sub_1000E055C(uint64_t a1, float a2, double a3)
{
  v13 = a2;
  if (*(a1 + 8) == 1)
  {
    v4 = a3 - *a1;
    if (v4 < *(a1 + 200))
    {
      v4 = *(a1 + 200);
    }

    *(a1 + 200) = v4;
  }

  *a1 = a3;
  *(a1 + 8) = 1;
  v5 = *(a1 + 176);
  v6 = *(a1 + 180);
  if (v5 > a2)
  {
    v5 = a2;
  }

  if (v6 < a2)
  {
    v6 = a2;
  }

  *(a1 + 176) = v5;
  *(a1 + 180) = v6;
  ++*(a1 + 192);
  v7 = *(a1 + 136);
  v8 = *(a1 + 140);
  if (v7 > a2 || v8 < a2)
  {
    v10 = vabds_f32(v7, a2);
    v11 = vabds_f32(v8, a2);
    if (v11 >= v10)
    {
      v11 = v10;
    }

    v12 = v11;
    sub_1000423D4(a1 + 336, &v12);
    ++*(a1 + 188);
  }

  else
  {
    ++*(a1 + 184);
  }

  sub_1000423D4(a1 + 264, &v13);
  if (*(a1 + 232) == 1)
  {
    CFAbsoluteTimeGetCurrent();
    AnalyticsSendEventLazy();
    *(a1 + 232) = 0;
  }
}

void sub_1000E06BC(uint64_t a1, int *a2, uint64_t a3)
{
  sub_1000E07C8(a1, a2, a3);
  v7 = *a2;
  if (*a2 > 1)
  {
    if (v7 == 2)
    {
      v10 = *a3;

      sub_100C572FC(a1 + 13272, v10);
    }

    else if (v7 == 3)
    {
      v8 = *(a3 + 8);
      v9 = *a3;

      sub_1000E055C(a1 + 13272, v8, v9);
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {

      sub_100C57C28(a1 + 13272);
    }
  }

  else
  {

    sub_100C57544(a1 + 13272, a3, v6);
  }
}

void sub_1000E07C8(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!*a2)
  {
    if (qword_1025D42F0 != -1)
    {
      sub_101ADA680();
    }

    v5 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      v6 = a3[2];
      *buf = 134349056;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Received new gyro bias fit of timestamp %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADF370();
    }

    memcpy((a1 + 920), a3, 0x140uLL);
    v7 = sub_100011660();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100F60558;
    v8[3] = &unk_102449A78;
    v8[4] = a1;
    sub_100042800(v7, v8);
  }
}

uint64_t sub_1000E0918(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1000E0938(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D45A0 != -1)
  {
    sub_1002DDEC0();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = v1 + 48;
    if (v1[71] < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "[Composite-%s] running scheduled evaluation", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D76EC(v1);
  }

  v1[552] = 0;
  return sub_1000E11A0(v1);
}

uint64_t *sub_1000E0A28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = a2;
  sub_1003DD9F8(a1 + 24, &v7);
  result = sub_1003DD9F8(a1 + 24, &v7);
  v6 = result[1];
  *a3 = *result;
  a3[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1000E0AE8(uint64_t a1, int a2)
{
  v5 = a2;
  v6[0] = off_102462920;
  v6[3] = v6;
  v3 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(v6);
  if (v3)
  {
    return *(sub_1003DD9F8(a1 + 24, &v5) + 32) ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E0BB8(uint64_t a1, double a2, double a3)
{
  v6 = sub_1000E0AE8(a1, *(a1 + 80));
  v7 = *(a1 + 24);
  if (v7 != (a1 + 32))
  {
    v8 = (a1 + 48);
    v9 = 1;
    do
    {
      v10 = v7[5];
      v11 = v7[6];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (sub_1000A6B04(a1, *(v7 + 8), v6))
      {
        if (v10)
        {
          (*(*v10 + 32))(v10, v6);
        }

        else
        {
          v12 = 0.0;
        }

        v9 &= v12 >= a2;
      }

      else
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018D6BF4();
        }

        v13 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = a1 + 48;
          if (*(a1 + 71) < 0)
          {
            v14 = *v8;
          }

          v15 = *(v7 + 8);
          *buf = 136315650;
          v31 = v14;
          v32 = 1024;
          *v33 = v15;
          *&v33[4] = 1024;
          *&v33[6] = v6;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[Composite-%s] Not considering stream %d for allDataReady as it's temporarily incompatible with the key's time base %d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45A0 != -1)
          {
            sub_1018D6BF4();
          }

          v16 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::notifyIfReady(CFTimeInterval, CFTimeInterval) const", "%s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }

      if (v11)
      {
        sub_100008080(v11);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != (a1 + 32));
    v20 = *(a1 + 560) + a2;
    if ((v20 >= a3) | v9 & 1)
    {
      if (!((v20 < a3) | v9 & 1))
      {
        return 0;
      }
    }

    else
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v22 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
      {
        v23 = a1 + 48;
        if (*(a1 + 71) < 0)
        {
          v23 = *v8;
        }

        *buf = 136315138;
        v31 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "[Composite-%s] proceeding without all data ready because holdover exceeded", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D75D4((a1 + 71));
      }
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018D6BF4();
  }

  v24 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v25 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v25 = *v25;
    }

    v26 = "wall";
    *buf = 136315906;
    v31 = v25;
    v32 = 2048;
    if (!v6)
    {
      v26 = "mach";
    }

    *v33 = a2;
    *&v33[8] = 2048;
    v34 = a3;
    v35 = 2080;
    v36 = v26;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "[Composite-%s] evaluated all data ready for time %f, now %f, timebase %s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::notifyIfReady(CFTimeInterval, CFTimeInterval) const", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  sub_1000E178C(*(a1 + 568));
  v27 = **(a1 + 568);
  v28 = ***(a1 + 72);
  if (v6)
  {
    v28(a2 - v27, a2);
  }

  else
  {
    v28(a2, v27 + a2);
  }

  return 1;
}

void sub_1000E1178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E11A0(uint64_t a1)
{
  if (*(a1 + 72) && *(a1 + 120) == 1)
  {
    v2 = *(a1 + 80);
    *buf = off_102462A20;
    v38 = buf;
    sub_1000E0A28(a1, v2, &v33);
    sub_1000A69EC(buf);
    v3 = sub_1000E0AE8(a1, *(a1 + 80));
    v4 = (*(*v33 + 32))(v33, v3);
    if (v4 == -1.0)
    {
LABEL_4:
      if (v34)
      {
        sub_100008080(v34);
      }

      return;
    }

    v5 = (*(*a1 + 24))(a1, v3);
    v6 = v5;
    v7 = *(a1 + 136);
    v8 = *(a1 + 128);
    if (v7 == 1 && v5 < v8)
    {
      *(a1 + 136) = 0;
    }

    else if (v7)
    {
      goto LABEL_12;
    }

    *(a1 + 128) = v4;
    *(a1 + 136) = 1;
    v8 = v4;
LABEL_12:
    if (*(a1 + 96) == 1)
    {
      if (v8 < v5)
      {
        while (1)
        {
          if ((*(a1 + 96) & 1) == 0)
          {
            sub_100173BA0();
          }

          v8 = v8 + *(a1 + 88);
          if ((sub_1000E0BB8(a1, v8, v6) & 1) == 0)
          {
            break;
          }

          *(a1 + 128) = v8;
          *(a1 + 136) = 1;
          if (v8 >= v6)
          {
            goto LABEL_4;
          }
        }

        if ((*(a1 + 552) & 1) == 0 && (*(**(a1 + 72) + 8))(*(a1 + 72)))
        {
          if (qword_1025D45A0 != -1)
          {
            sub_1018D6BF4();
          }

          v26 = qword_1025D45A8;
          if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
          {
            v27 = (a1 + 48);
            if (*(a1 + 71) < 0)
            {
              v27 = *v27;
            }

            *buf = 136315138;
            *&buf[4] = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "[Composite-%s] scheduling evaluation", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D45A0 != -1)
            {
              sub_1018D6BF4();
            }

            v30 = (a1 + 48);
            if (*(a1 + 71) < 0)
            {
              v30 = *v30;
            }

            v35 = 136315138;
            v36 = v30;
            v31 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::Composite::evaluate()", "%s\n", v31);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          if ((*(a1 + 96) & 1) == 0)
          {
            sub_100173BA0();
          }

          v28 = dispatch_time(0, ((*(a1 + 88) + *(a1 + 560)) * 1000000000.0));
          v29 = (*(**(a1 + 72) + 8))(*(a1 + 72));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000E0938;
          block[3] = &unk_102449A78;
          block[4] = a1;
          dispatch_after(v28, v29, block);
          *(a1 + 552) = 1;
        }
      }

      goto LABEL_4;
    }

    v9 = *(a1 + 146);
    if (*(a1 + 146))
    {
      v10 = *(a1 + 144);
      v11 = v9 + v10 - 1;
      v12 = *(a1 + 148);
      if (v11 >= v12)
      {
        v13 = *(a1 + 148);
      }

      else
      {
        v13 = 0;
      }

      if (*(a1 + 8 * (v11 - v13) + 152) == v4)
      {
LABEL_33:
        if (v9 >= 2u)
        {
          v19 = a1 + 152;
          do
          {
            if (!sub_1000E0BB8(a1, *(v19 + 8 * v10), v6))
            {
              break;
            }

            v20 = *(a1 + 144);
            *(a1 + 128) = *(v19 + 8 * v20);
            *(a1 + 136) = 1;
            v21 = *(a1 + 146);
            if (!v21)
            {
              break;
            }

            v22 = v20 + 1;
            v23 = *(a1 + 148);
            if (v22 < v23)
            {
              LOWORD(v23) = 0;
            }

            v24 = v22 - v23;
            v10 = v24;
            *(a1 + 144) = v24;
            v25 = v21 - 1;
            *(a1 + 146) = v25;
          }

          while (v25 > 1u);
        }

        goto LABEL_4;
      }

      v14 = *(a1 + 146);
    }

    else
    {
      v14 = 0;
      v12 = *(a1 + 148);
      v10 = *(a1 + 144);
    }

    v15 = v10 + v14;
    if (v15 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 8 * (v15 - v16) + 152) = v4;
    if (v12 <= v9)
    {
      v17 = v10 + 1;
      if (v17 < v12)
      {
        LOWORD(v12) = 0;
      }

      v18 = v17 - v12;
      v10 = v18;
      *(a1 + 144) = v18;
    }

    else
    {
      LOWORD(v9) = v9 + 1;
      *(a1 + 146) = v9;
    }

    goto LABEL_33;
  }
}

void sub_1000E16BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000E170C(uint64_t a1, int a2)
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

double sub_1000E174C(uint64_t a1, int a2)
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

    return *(a1 + 24 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1000E178C(double *a1)
{
  times = mach_get_times();
  if (times)
  {
    v3 = times;
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v12) = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[Composite] Unable to update time offsets! %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D6E5C(v3);
    }
  }

  else
  {
    v5 = sub_1000080EC(0);
    v6 = sub_1000080EC(0);
    *a1 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970 - v5;
    a1[1] = v6 - v5;
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      v8 = *(a1 + 1);
      *buf = 134218496;
      v12 = 0 + 0 * 0.000000001 - kCFAbsoluteTimeIntervalSince1970;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "[Composite] Updating offsets, current wall, %f, absToCont, %f, absToWall, %f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderComposite::TimeHelper::updateOffsets()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

void sub_1000E1A38(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a2 == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if (a5 >= a4 && *(a1 + 66))
    {
      v9 = 0;
      do
      {
        if (*sub_1005790DC((a1 + 64), v9) >= a4)
        {
          if (*sub_1005790DC((a1 + 64), v9) > a5)
          {
            return;
          }

          if (*sub_1005790DC((a1 + 64), v9) >= a4 && *sub_1005790DC((a1 + 64), v9) < a5)
          {
            v10 = sub_1005790DC((a1 + 64), v9);
            v23 = *(v10 + 16);
            v12 = *(a3 + 8);
            v11 = *(a3 + 16);
            if (v12 >= v11)
            {
              v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
              v16 = v15 + 1;
              if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_10028C64C();
              }

              v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                sub_1005792DC(a3, v18);
              }

              v19 = 24 * v15;
              *v19 = *v10;
              *(v19 + 16) = v23;
              v14 = 24 * v15 + 24;
              v20 = *(a3 + 8) - *a3;
              v21 = 24 * v15 - v20;
              memcpy((v19 - v20), *a3, v20);
              v22 = *a3;
              *a3 = v21;
              *(a3 + 8) = v14;
              *(a3 + 16) = 0;
              if (v22)
              {
                operator delete(v22);
              }
            }

            else
            {
              v13 = *v10;
              *(v12 + 16) = *(v10 + 16);
              *v12 = v13;
              v14 = v12 + 24;
            }

            *(a3 + 8) = v14;
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
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_1000E1C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E1C7C(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 95) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v3 = (a2 + 48);
  *a2 = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 163) = 0u;
  std::string::operator=((a2 + 48), __str);
  *(a2 + 97) = 0;
  if (*(a2 + 71) < 0)
  {
    if (!*(a2 + 56))
    {
      return;
    }

    v3 = *v3;
  }

  else if (!*(a2 + 71))
  {
    return;
  }

  v4 = sub_100053C00(v3);
  v5 = v4;
  if (v4)
  {
    if (sub_1000424B8(v4))
    {
      *(a2 + 97) = 1;
    }

    if (sub_1000E67F0(v5))
    {
      *(a2 + 98) = 1;
    }

    CFRelease(v5);
  }
}

void sub_1000E2084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E20B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_1024AF7D8;
  *(a1 + 24) = objc_alloc_init(CLDaemonInUseAssertionAdapter);
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  v4 = [objc_msgSend(*(a1 + 16) "vendor")];
  *(a1 + 56) = v4;
  [v4 registerDelegate:*(a1 + 24) inSilo:{objc_msgSend(*(a1 + 16), "silo")}];
  return a1;
}

void sub_1000E21B8(uint64_t a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 35 && !memcmp(*v4, "InUseAssertion/kCLConnectionMessage", 0x23uLL))
  {
    v8 = _os_activity_create(dword_100000000, "CL: InUseAssertion/kCLConnectionMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v9 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:InUseAssertion/kCLConnectionMessage, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    v12[0] = v10;
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1000E2414(a1, v12);
    if (v11)
    {
      sub_100008080(v11);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827A8();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CLConnectionMessage::name(*a2);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning unrecognized message, MessageName:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }
}

void sub_1000E2414(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = _os_activity_create(dword_100000000, "CL: CLDaemonInUseAssertion::handleMessageInUseAssertion", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1025D4790 != -1)
  {
    sub_101A827BC();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2050;
    *&buf[30] = a1;
    *&buf[38] = 2050;
    *&buf[40] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDaemonInUseAssertion::handleMessageInUseAssertion, event:%{public, location:escape_only}s, this:%{public}p, message:%{public}p}", buf, 0x30u);
  }

  if (*(a1 + 32))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v7 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v8;
    v9 = "{msg%{public}.0s:#warning InUseAssertion already taken, takenBy:%{public, location:escape_only}s}";
LABEL_29:
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_30:
    if ((__p[23] & 0x80000000) != 0)
    {
      v19 = *__p;
LABEL_32:
      operator delete(v19);
      goto LABEL_154;
    }

    goto LABEL_154;
  }

  sub_10000EC00(buf, "com.apple.locationd.usage_oracle");
  v10 = sub_1000E325C(a1, buf);
  v11 = v10;
  if (buf[23] < 0)
  {
    operator delete(*buf);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_22:
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v7 = qword_1025D4798;
    if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v18;
    v9 = "{msg%{public}.0s:#warning #CLIUA Not entitled as usage oracle... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
    goto LABEL_29;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v13 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageBundleIdentifierKey"];
  v14 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageBundlePathKey"];
  v15 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessagePurposeKey"];
  v16 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageAssertionLevelKey"];
  if (!v13 || !v14 || !v15 || (v17 = v16) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v20 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 24))(__p, a1);
      if (__p[23] >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = *__p;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA InUseAssertion malformed: lacking required argument, takenBy:%{public, location:escape_only}s}", buf, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }
    }

    v22 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_154;
    }

    (*(*a1 + 24))(__p, a1);
    if (__p[23] >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = *__p;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = v23;
    _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA InUseAssertion malformed: lacking required argument", "{msg%{public}.0s:#CLIUA InUseAssertion malformed: lacking required argument, takenBy:%{public, location:escape_only}s}", buf, 0x1Cu);
    goto LABEL_30;
  }

  memset(v79, 0, 35);
  v78 = 0u;
  memset(buf, 0, sizeof(buf));
  v80 = 0u;
  memset(v81, 0, 59);
  if ([v13 length])
  {
    sub_10000EC00(&__str, [v13 UTF8String]);
    sub_100034EE4(&__str, __p);
  }

  else
  {
    sub_10000EC00(&__str, [v14 UTF8String]);
    sub_1000E1C7C(&__str, __p);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  *buf = *__p;
  *&buf[16] = *&__p[16];
  __p[23] = 0;
  __p[0] = 0;
  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  *&buf[24] = *&__p[24];
  *&buf[40] = v62;
  HIBYTE(v62) = 0;
  __p[24] = 0;
  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(v78);
  }

  v78 = v63;
  v79[0] = v64;
  HIBYTE(v64) = 0;
  LOBYTE(v63) = 0;
  if (SHIBYTE(v79[3]) < 0)
  {
    operator delete(v79[1]);
  }

  *&v79[1] = v65;
  v79[3] = v66;
  HIBYTE(v66) = 0;
  LOBYTE(v65) = 0;
  LOWORD(v79[4]) = v67;
  BYTE2(v79[4]) = v68;
  if (SBYTE7(v81[0]) < 0)
  {
    operator delete(v80);
  }

  v80 = v69;
  *&v81[0] = v70;
  HIBYTE(v70) = 0;
  LOBYTE(v69) = 0;
  if (SHIBYTE(v81[1]) < 0)
  {
    operator delete(*(&v81[0] + 1));
  }

  *(v81 + 8) = v71;
  *(&v81[1] + 1) = v72;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;
  if (SBYTE7(v81[3]) < 0)
  {
    operator delete(*&v81[2]);
    v81[2] = v73;
    *&v81[3] = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    WORD4(v81[3]) = v75;
    BYTE10(v81[3]) = v76;
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }
  }

  else
  {
    v81[2] = v73;
    *&v81[3] = v74;
    HIBYTE(v74) = 0;
    LOBYTE(v73) = 0;
    WORD4(v81[3]) = v75;
    BYTE10(v81[3]) = v76;
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_10003B25C(buf);
  v24 = BYTE7(v81[0]);
  if (SBYTE7(v81[0]) < 0)
  {
    v24 = *(&v80 + 1);
  }

  if (!v24)
  {
    v25 = HIBYTE(v79[0]);
    if (v79[0] < 0)
    {
      v25 = *(&v78 + 1);
    }

    if (!v25)
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }

      v37 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        (*(*a1 + 24))(&__str, a1);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        *__p = 68289282;
        *&__p[8] = 2082;
        *&__p[10] = "";
        *&__p[18] = 2082;
        *&__p[20] = p_str;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}", __p, 0x1Cu);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (qword_1025D4790 != -1)
        {
          sub_101A827BC();
        }
      }

      v30 = qword_1025D4798;
      if (!os_signpost_enabled(qword_1025D4798))
      {
        goto LABEL_141;
      }

      (*(*a1 + 24))(&__str, a1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &__str;
      }

      else
      {
        v39 = __str.__r_.__value_.__r.__words[0];
      }

      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v39;
      v32 = "#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion";
      v33 = "{msg%{public}.0s:#CLIUA Neither bundleIdentifier nor bundlePath specified... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
LABEL_132:
      _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v32, v33, __p, 0x1Cu);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      goto LABEL_141;
    }
  }

  if (![v15 length])
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    v28 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      (*(*a1 + 24))(&__str, a1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__str;
      }

      else
      {
        v29 = __str.__r_.__value_.__r.__words[0];
      }

      *__p = 68289282;
      *&__p[8] = 2082;
      *&__p[10] = "";
      *&__p[18] = 2082;
      *&__p[20] = v29;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Assertion requested with no reason... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}", __p, 0x1Cu);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A827BC();
      }
    }

    v30 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_141;
    }

    (*(*a1 + 24))(&__str, a1);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &__str;
    }

    else
    {
      v31 = __str.__r_.__value_.__r.__words[0];
    }

    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 2082;
    *&__p[20] = v31;
    v32 = "#CLIUA Assertion requested with no reason... ignoring InUseAssertion";
    v33 = "{msg%{public}.0s:#CLIUA Assertion requested with no reason... ignoring InUseAssertion, takenBy:%{public, location:escape_only}s}";
    goto LABEL_132;
  }

  sub_1000350D0(__dst, buf);
  v26 = [CLClientKeyPath clientKeyPathFromName:__dst];
  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 < 0)
  {
    operator delete(__dst[0]);
  }

  *(a1 + 40) = 0;
  v27 = [v17 intValue];
  if (v27 < 3)
  {
    *(a1 + 40) = dword_101CFD8E0[v27];
LABEL_116:
    v34 = *(a1 + 56);
    v35 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v15 UTF8String]);
    v36 = *(a1 + 40);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100145898;
    v44[3] = &unk_1024AF810;
    v44[4] = a1;
    [v34 takeInUseAssertionForCkp:v26 reason:v35 assertionLevel:v36 withReply:v44];
    goto LABEL_141;
  }

  if (*(a1 + 40))
  {
    goto LABEL_116;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A827BC();
  }

  v40 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v41 = [v17 intValue];
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 1026;
    *&__p[20] = v41;
    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Received invalid assertion level, assertionLevel:%{public}d}", __p, 0x18u);
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }
  }

  v42 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v43 = [v17 intValue];
    *__p = 68289282;
    *&__p[8] = 2082;
    *&__p[10] = "";
    *&__p[18] = 1026;
    *&__p[20] = v43;
    _os_signpost_emit_with_name_impl(dword_100000000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA Received invalid assertion level", "{msg%{public}.0s:#CLIUA Received invalid assertion level, assertionLevel:%{public}d}", __p, 0x18u);
  }

LABEL_141:
  if (SBYTE7(v81[3]) < 0)
  {
    operator delete(*&v81[2]);
  }

  if (SHIBYTE(v81[1]) < 0)
  {
    operator delete(*(&v81[0] + 1));
  }

  if (SBYTE7(v81[0]) < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v79[3]) < 0)
  {
    operator delete(v79[1]);
  }

  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(v78);
  }

  if (buf[47] < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    v19 = *buf;
    goto LABEL_32;
  }

LABEL_154:
  os_activity_scope_leave(&state);
}

uint64_t sub_1000E325C(uint64_t a1, uint64_t *a2)
{
  isEntitled = CLConnection::isEntitled();
  if (qword_1025D4790 != -1)
  {
    sub_101A827A8();
  }

  v5 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 24))(__p, a1);
    v6 = *__p;
    v7 = "not entitled";
    if (v19 >= 0)
    {
      v6 = __p;
    }

    if (isEntitled)
    {
      v7 = "entitled";
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136315650;
    v22 = v6;
    v23 = 2080;
    v24 = v7;
    v25 = 2080;
    v26 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%s is %s for %s", buf, 0x20u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4790 != -1)
    {
      sub_101A827BC();
    }

    (*(*a1 + 24))(v14, a1);
    v10 = v14[0];
    v11 = "not entitled";
    if (v15 >= 0)
    {
      v10 = v14;
    }

    if (isEntitled)
    {
      v11 = "entitled";
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *__p = 136315650;
    *&__p[4] = v10;
    v17 = 2080;
    v18 = v11;
    v19 = 2080;
    v20 = v12;
    v13 = _os_log_send_and_compose_impl();
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDaemonInUseAssertion::isEntitled(const std::string &)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return isEntitled;
}

void sub_1000E3524(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E35AC;
  v5[3] = &unk_10244FAF0;
  v5[4] = v3;
  v5[5] = a1;
  sub_100042800(v4, v5);
}

void sub_1000E35AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 1384) == 176)
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v3 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 1385);
      v5 = *(v2 + 1393);
      v9 = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "MotionCoprocessor copying the latest TimeSync data machTimestamp,%llu,oscarTimestamp,%llu", &v9, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ADBBAC(v2);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_10027BA68();
    }

    v7 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_ERROR))
    {
      v8 = *(v2 + 1384);
      v9 = 67109120;
      LODWORD(v10) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "MotionCoprocessor last received TimeSync has the wrong packet type,%hhu", &v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101ADBAB8((v2 + 1384));
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
  _Block_release(*(a1 + 32));
}

void sub_1000E3764(uint64_t a1, void *a2)
{
  if ((sub_1000F42C0() & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Considering whether to mark client, %@, for always power use", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192EB04();
    }

    v5 = sub_1000E38F8(a1, a2);
    if (v5)
    {
      v6 = v5;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v8 = sub_10023D7FC(v6);
        v9 = 138412546;
        v10 = a2;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Not marking client %@ as having used Always-powers (not Always authorized (%s))", &v9, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192EBEC(a2, v6);
      }
    }
  }
}

id sub_1000E38F8(uint64_t a1, uint64_t a2)
{
  v3 = [-[NSArray objectAtIndexedSubscript:](sub_100019AB0(a1 a2)];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    v11 = 2050;
    v12 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client Effective registration result, Client:%{public, location:escape_only}@, registration:%{public, location:CLClientRegistrationResult}lld}", v6, 0x26u);
  }

  return v3;
}

void sub_1000E3A00(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageCollectMetricsForFunction", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 0;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageCollectMetricsForFunction, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000E3BD8(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
    sub_100008080(v4);
  }

  else
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000E3BD8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D44B0 != -1)
  {
    sub_1019F01E8();
  }

  v5 = qword_1025D44B8;
  if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Collecting Metrics for function", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019F01FC(buf);
    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleMessageCollectMetricsForFunction(std::shared_ptr<CLConnectionMessage>)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_1000E3DA0(v6, v7, Dictionary);
}

void sub_1000E3DA0(uint64_t a1, void *a2, void *a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (v6)
  {
    v7 = v6;
    v37 = a3;
    if (qword_102659F20 != -1)
    {
      sub_10014563C();
    }

    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v9 = v8 / 86400.0;
    v10 = v9;
    if (qword_102659F10 == v9)
    {
      goto LABEL_19;
    }

    qword_102659F10 = v9;
    [qword_102659F18 removeAllObjects];
    v11 = +[NSMutableArray array];
    v12 = *(a1 + 136);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10014567C;
    v46[3] = &unk_10246FD68;
    v46[4] = v11;
    v46[5] = a1;
    [v12 iterateAllAnchorKeyPathsWithBlock:v46];
    v13 = [v11 count];
    if (v13)
    {
      v14 = v13;
      v15 = 5;
      v16 = v10;
      do
      {
        v17 = [v11 objectAtIndex:v16 % v14];
        [qword_102659F18 addObject:v17];
        v16 += v10;
        --v15;
      }

      while (v15);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = qword_102659F18;
      v19 = [qword_102659F18 countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          v22 = 0;
          do
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v42 + 1) + 8 * v22);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v24 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289538;
              v49 = 0;
              v50 = 2082;
              v51 = "";
              v52 = 2114;
              v53 = v23;
              v54 = 1026;
              v55 = v14;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MetricForFunctionCalls: adding client of the day, ckp:%{public, location:escape_only}@, totalClients:%{public}d}", buf, 0x22u);
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v20);
      }

LABEL_19:
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = qword_102659F18;
      v26 = [qword_102659F18 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          v29 = 0;
          do
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v38 + 1) + 8 * v29);
            if ([objc_msgSend(v30 "clientAnchor")])
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v31 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
              {
                *buf = 68289282;
                v49 = 0;
                v50 = 2082;
                v51 = "";
                v52 = 2114;
                v53 = v7;
                _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MetricForFunctionCalls: sending metrics for client, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
              }

              v32 = [objc_msgSend(v37 objectForKeyedSubscript:{@"kCLConnectionMessageFunctionBitmapKey", "unsignedIntegerValue"}];
              v33 = +[NSMutableDictionary dictionary];
              [v33 setObject:objc_msgSend(v30 forKeyedSubscript:{"userlessClientKeyPath"), @"client"}];
              [v33 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", @"kCLConnectionMessageTotalFunctionCallsKey", @"invocationCount"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v32 & 1), @"LSEnabled"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 1) & 1), @"APIAvailable_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 2) & 1), @"StartLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 3) & 1), @"StopLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 4) & 1), @"ReqLocation"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 5) & 1), @"Deferred_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 6) & 1), @"StartHeading"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 7) & 1), @"StopHeading"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 8) & 1), @"StartSLC"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 9) & 1), @"StopSLC"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 10) & 1), @"StartPushes"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 11) & 1), @"StopPushes"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 12) & 1), @"StartRegion"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 13) & 1), @"StopRegion"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 14) & 1), @"RegionState"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 15) & 1), @"MaxRegionDistance"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 16) & 1), @"Regions"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 17) & 1), @"Ranging_G"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 18) & 1), @"Historical"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 19) & 1), @"AuthStatus"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 20) & 1), @"AccuracyAuth"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 21) & 1), @"WidgetAuth"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 22) & 1), @"RequestWIU"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 23) & 1), @"RequestAlways"}];
              [v33 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", (v32 >> 24) & 1), @"RequestAccuracy"}];
              AnalyticsSendEvent();
            }

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v27);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v36 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2114;
      v53 = a2;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MetricForFunctionCalls: No clients considered for metrics today., ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v34 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2114;
      v53 = a2;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Client is not registered. Skip metric for function calls, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v35 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2114;
      v53 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client is not registered. Skip metric for function calls", "{msg%{public}.0s:Client is not registered. Skip metric for function calls, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_1000E46CC(uint64_t a1, void *a2)
{
  if (!sub_10041ECEC(a2))
  {
    return;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v40 = -1.79769313e308;
  v41 = -1.79769313e308;
  switch(a2)
  {
    case 0:
      v5 = @"kAccelBufferSubscription";
      v6 = 325;
      v7 = 300;
      v8 = 296;
      v9 = @"kAccelBufferSubscriptionOverride";
      goto LABEL_8;
    case 1:
      v5 = @"kGyroBufferSubscription";
      v6 = 326;
      v7 = 308;
      v8 = 304;
      v9 = @"kGyroBufferSubscriptionOverride";
LABEL_8:
      v10 = *(a1 + v8);
      v11 = *(a1 + v7);
      v12 = sub_1000206B4();
      sub_100023B78(v12, v9, &v40);
      v13 = Current < v40 && vabdd_f64(v40, Current) < *(a1 + 272);
      v14 = v13 | *(a1 + v6);
      if (v14)
      {
        if (a2)
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }

      if (a2 || *(a1 + 300) == 50)
      {
        if (a2 != 1 || *(a1 + 308) == 50)
        {
          if (a2 != 2 || *(a1 + 320) == *(a1 + 316))
          {
            goto LABEL_31;
          }

          v19 = sub_1000206B4();
          sub_1004FA94C(v19);
          v11 = *(a1 + 316);
          *(a1 + 320) = v11;
        }

        else
        {
          v18 = sub_1000206B4();
          sub_1004FA94C(v18);
          v11 = 50;
          *(a1 + 308) = 50;
        }
      }

      else
      {
        v16 = sub_1000206B4();
        sub_1004FA94C(v16);
        v11 = 50;
        *(a1 + 300) = 50;
      }

      v20 = sub_1000206B4();
      (*(*v20 + 944))(v20);
LABEL_31:
      v21 = sub_1000206B4();
      sub_100023B78(v21, v5, &v41);
      if (Current >= v41)
      {
        if (a2)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v14 = vabdd_f64(v41, Current) < *(a1 + 272);
      if (a2)
      {
        goto LABEL_39;
      }

LABEL_13:
      if (v14)
      {
        v15 = *(a1 + 272);
        *(a1 + 280) = *(a1 + 264);
LABEL_37:
        *(a1 + 288) = v15;
        LOBYTE(v14) = 1;
        goto LABEL_39;
      }

LABEL_35:
      if (*(a1 + 336) == 1)
      {
        *(a1 + 280) = 0x40AF400000000000;
        v11 = 100;
        v15 = 0x40AC200000000000;
        goto LABEL_37;
      }

LABEL_38:
      LOBYTE(v14) = 0;
LABEL_39:
      if ((v14 & *(a1 + 324)) != 0)
      {
        v22 = v11;
      }

      else
      {
        v22 = 0;
      }

      if (v22 == v10)
      {
        goto LABEL_58;
      }

      if (qword_1025D4350 != -1)
      {
        sub_101B47F9C();
      }

      v23 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 324);
        *buf = 67240704;
        *&buf[4] = a2;
        v49 = 1026;
        v50 = v22;
        v51 = 1026;
        v52 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Updating %{location:CLSensorRecorder_Types::DataType,public}d sampling rate %{public}d, fitness tracking enabled, %{public}d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4350 != -1)
        {
          sub_101B47F9C();
        }

        v35 = *(a1 + 324);
        v42 = 67240704;
        v43 = a2;
        v44 = 1026;
        v45 = v22;
        v46 = 1026;
        v47 = v35;
        v36 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLSensorRecorderNotifier::updateSubscriptionType(CLSensorRecorder_Types::DataType)", "%s\n", v36);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      v25 = sub_100011660();
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10115BEE0;
      v37[3] = &unk_102449A78;
      v38 = a2;
      v39 = v22;
      sub_100042800(v25, v37);
      if (a2)
      {
        v26 = 176;
        if (a2 == 1)
        {
          v26 = 168;
          v27 = 304;
        }

        else
        {
          v27 = 312;
        }

        if (v10 < 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v27 = 296;
        if (v10 <= 0)
        {
LABEL_57:
          *(a1 + v27) = v22;
LABEL_58:
          v28 = Current + 129600.0;
          if (v41 > v28)
          {
            if (qword_1025D4350 != -1)
            {
              sub_101B47F9C();
            }

            v29 = qword_1025D4358;
            if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67240192;
              *&buf[4] = a2;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "Updated %{location:CLSensorRecorder_Types::DataType,public}d subscription due to invalid time.", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B484D0(a2);
            }

            v30 = sub_1000206B4();
            *buf = v28;
            sub_100116DD4(v30, v5, buf);
            v31 = *sub_1000206B4();
            (*(v31 + 944))();
          }

          if (v40 > v28)
          {
            if (qword_1025D4350 != -1)
            {
              sub_101B47F9C();
            }

            v32 = qword_1025D4358;
            if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67240192;
              *&buf[4] = a2;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "Updated %{location:CLSensorRecorder_Types::DataType,public}d subscription override due to invalid time.", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B485C0(a2);
            }

            v33 = sub_1000206B4();
            *buf = v28;
            sub_100116DD4(v33, v9, buf);
            v34 = *sub_1000206B4();
            (*(v34 + 944))();
          }

          return;
        }

        v26 = 160;
      }

      sub_1009893B0(*(a1 + v26));
      goto LABEL_57;
    case 2:
      v5 = @"kPressureBufferSubscription";
      v6 = 327;
      v7 = 320;
      v8 = 312;
      v9 = @"kPressureBufferSubscriptionOverride";
      goto LABEL_8;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101B47A34();
  }

  v17 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "Invalid data type.", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B483EC();
  }
}

void sub_1000E4D9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([*(v1 + 112) isMonitoring])
  {
    sub_101159490(v1, 0, 0x64);
  }

  if (sub_100099160(*(v1 + 160) + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E46CC(v1, 0);
    if (vabdd_f64(Current, *(v1 + 240)) > *(v1 + 280))
    {
      if (qword_1025D4350 != -1)
      {
        sub_101B47B2C();
      }

      v3 = qword_1025D4358;
      if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating accel sensor recorder samples.", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B47FC4();
      }

      v7[0] = *(v1 + 288);
      v7[1] = 0x7FEFFFFFFFFFFFFFLL;
      v8 = 0;
      v5 = 0;
      v6 = 0;
      __p = 0;
      sub_100485D9C(&__p, v7, &v9, 1uLL);
      (*(**(v1 + 160) + 32))(*(v1 + 160), &__p);
      *(v1 + 240) = Current;
      if (__p)
      {
        v5 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_1000E4F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4F54(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X2>, int a4@<W3>, const std::string *a5@<X8>)
{
  v9 = sub_100033370(a1, a2);
  if ([v9 isAuthSharingSubIdentity])
  {
    v9 = [v9 anchorKeyPath];
  }

  if (a4 == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalPrompt CLCM:InUseAssertion IncidentalPresence, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077834C(a1, v9);
  }

  v11 = *(a1 + 400);
  if (v9)
  {
    [v9 cppClientKey];
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
  }

  __p = *a3;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  sub_10000E08C(&__p, v11, v18, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  v12 = [objc_msgSend(v9 "legacyClientKey")];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "";
  }

  sub_10000EC00(buf, v13);
  if (sub_10014578C(a5))
  {
    sub_1003C9040((a1 + 640), buf);
    v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v9];
    if (v14)
    {
      if ([*(a1 + 416) objectForKeyedSubscript:v14])
      {
        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100007244(v15, *buf, *&buf[8]);
        }

        else
        {
          *v15 = *buf;
          v16 = *&buf[16];
        }

        sub_100778A6C(a1, v15);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        sub_100778C94();
      }
    }
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }
}

void sub_1000E51A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_10014588C(v33);
  _Unwind_Resume(a1);
}

void sub_1000E5218(uint64_t a1)
{
  v2 = sub_100043A18(a1);
  [*(*v2 + 16) unregister:*(*v2 + 8) forNotification:0];
  v3 = sub_100043AD8(a1);
  [*(*v3 + 16) unregister:*(*v3 + 8) forNotification:0];
  v4 = *(a1 + 64);
  if (v4)
  {
    [v4 clientName];
  }

  sub_100043B98();
}

void sub_1000E5344(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v12[0] = 0;
  v5 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageActivityTypeKey"];
  if (v5 && (sub_100005EEC(v5, v12) & 1) != 0)
  {
    v6 = v12[0];
    if (*(a1 + 232) != v12[0])
    {
      if (qword_1025D4790 != -1)
      {
        sub_101B133E0();
      }

      v7 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 232);
        *buf = 68289794;
        *v15 = 0;
        *&v15[4] = 2082;
        *&v15[6] = "";
        v16 = 2114;
        v17 = v8;
        v18 = 1026;
        v19 = v9;
        v20 = 1026;
        v21 = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client changed activity type, Client:%{public, location:escape_only}@, from:%{public}d, to:%{public}d}", buf, 0x28u);
      }

      sub_100142420(a1, v6);
      sub_100049FD0(a1);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13408();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v15 = "kCLConnectionMessageActivityTypeKey";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B13430(buf);
      v12[1] = 136446210;
      v13 = "kCLConnectionMessageActivityTypeKey";
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLLocationSubscription::handleMessageActivityType(std::shared_ptr<CLConnectionMessage>)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}

uint64_t sub_1000E5608(uint64_t a1)
{
  result = *(a1 + 168);
  if (!result)
  {
    v3 = [objc_msgSend(*(a1 + 8) "vendor")];
    *(a1 + 168) = v3;
    [v3 registerDelegate:*(a1 + 48) inSilo:{objc_msgSend(*(a1 + 8), "silo")}];
    return *(a1 + 168);
  }

  return result;
}

uint64_t sub_1000E5678(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1000E5694(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *a2;
    if (*(*a2 + 95) < 0)
    {
      sub_100007244(__dst, *(v8 + 72), *(v8 + 80));
    }

    else
    {
      *__dst = *(v8 + 72);
      v21 = *(v8 + 88);
    }

    if (*(v8 + 119) < 0)
    {
      sub_100007244(&__p, *(v8 + 96), *(v8 + 104));
    }

    else
    {
      __p = *(v8 + 96);
      v23 = *(v8 + 112);
    }

    v24 = *(v8 + 120);
    if (v21 >= 0)
    {
      v10 = __dst;
    }

    else
    {
      v10 = __dst[0];
    }

    v11 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v10]]);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v13 = [NSString stringWithUTF8String:p_p];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v15 = [a3 UTF8String];
      *buf = 68290051;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v13;
      v34 = 2081;
      v35 = v15;
      v36 = 2113;
      v37 = a4;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#PersistentSubscription PersistenceBackend setObjectForKeyForSubscription, client:%{public, location:escape_only}@, storageName:%{public, location:escape_only}@, storageKey:%{private, location:escape_only}s, storageValue:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v16 = a2[1];
    v18 = *a2;
    v19 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000E5AB0(a1 + 16, &v18);
    if (v19)
    {
      sub_100008080(v19);
    }

    v17 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(*(a1 + 8) + 136) dictionaryForKey:v13 atKeyPath:v11 defaultValue:{&__NSDictionary0__struct, v18}]);
    [(NSMutableDictionary *)v17 setObject:a4 forKeyedSubscript:a3];
    [*(*(a1 + 8) + 136) setDictionary:v17 forKey:v13 atKeyPath:v11];
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    v9 = a2[1];
    v25[0] = *a2;
    v25[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000EA7D0(a1, v25, a3);
    if (v9)
    {

      sub_100008080(v9);
    }
  }
}

void sub_1000E59A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100033A68(a1);
  v6 = *(a1 + 48);
  sub_10000E198(&v7, (a1 + 8));
  (*(*v6 + 24))(v6, &v7, a2, a3);
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1000E5A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000E5AB0(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_1000E5B8C(uint64_t a1)
{
  sub_100033A68(a1);
  v2 = *(a1 + 48);
  sub_10000E198(&v3, (a1 + 8));
  (*(*v2 + 40))(v2, &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1000E5C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E6040(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v5 = sub_1000424F4(*a1, a2, @"CLSystemService");
  v6 = v5;
  if (v5)
  {
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_1000E6118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E612C(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 8), a2, @"CLEmergencyService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E6200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void *sub_1000E6240(__CFDictionary *a1, const __CFString *a2, const __CFString *a3)
{
  value = 0;
  if (!a2)
  {
    return 0;
  }

  if (CFDictionaryGetValueIfPresent(a1, a2, &value))
  {
    if (value)
    {
      CFRetain(value);
    }
  }

  else
  {
    v7 = sub_1004E8D20(a2, a3);
    value = v7;
    if (v7)
    {
      CFDictionarySetValue(a1, a2, v7);
    }
  }

  return value;
}

BOOL sub_1000E62F8(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 32), a2, @"CLIsFindMyiPhone");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E63CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E63E0(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 24), a2, @"CLIsCoreRoutine");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E64B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E64F4(const __CFString *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v2 = sub_100042568();
  v3 = sub_1000E65D0(v2, a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018D208;
  v6[3] = &unk_1024AF610;
  v6[4] = &v7;
  [(__CFArray *)v3 enumerateObjectsUsingBlock:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1000E65B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef sub_1000E65D0(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = sub_1000E6240(*(a1 + 32), a2, @"CLRequiredCapabilities");
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFArrayGetTypeID())
    {
      goto LABEL_8;
    }

    CFRelease(v6);
  }

  v6 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
  if (v6)
  {
    CFDictionarySetValue(*(a1 + 32), a2, v6);
  }

LABEL_8:
  (*(*v4 + 24))(v4);
  return v6;
}

void sub_1000E66F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000E6708(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_1000424F4(*(v3 - 40), a2, @"CLHarvestableSystemService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_1000E67DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1000E681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*v4 silo];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E68A0;
  v7[3] = &unk_102449BC0;
  v7[4] = a3;
  v7[5] = v4;
  return [v5 async:v7];
}

id sub_1000E68A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) floatValue];
  LODWORD(v6) = v2;
  result = [*v1 silo];
  v4 = *(v1 + 16);
  if (v4)
  {
    return v4(&v5, *(v1 + 8));
  }

  return result;
}

void sub_1000E690C(uint64_t a1, __n128 *a2)
{
  sub_1000E6960((a1 + 312), a2);
  v4 = *(a1 + 6376);
  if (v4)
  {

    sub_1000E6D00(v4, a2);
  }
}

void sub_1000E6960(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A89658();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1000E6C74(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

void sub_1000E6B38(uint64_t *a1, float *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = a2[2];
    v8 = 136315650;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AmbientLight,context,%s,startTime,%f,lux,%f", &v8, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CA8E8();
  }
}

uint64_t sub_1000E6C4C(void *a1)
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

__n128 sub_1000E6C74(void *a1, __n128 *a2)
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
    sub_100DB8CEC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

void sub_1000E6D00(void *a1, _OWORD *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      goto LABEL_44;
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000D758C((a1 + 3), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = 16 * v8 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
  v17 = a1[3];
  if (v17 == v6 || *(v6 - 16) - *v17 < 60.0)
  {
    return;
  }

  v18 = 0;
  v19 = 0.0;
  v20 = -3.4028e38;
  do
  {
    if (v20 < *(v17 + 8))
    {
      v20 = *(v17 + 8);
    }

    v21 = *v17;
    v17 += 16;
    v19 = v19 + v21;
    ++v18;
  }

  while (v17 != v6);
  v22 = *a2;
  v23 = v19 / v18;
  v25 = a1[7];
  v24 = a1[8];
  if (v25 >= v24)
  {
    v27 = a1[6];
    v28 = v25 - v27;
    v29 = (v25 - v27) >> 4;
    v30 = v29 + 1;
    if (!((v29 + 1) >> 60))
    {
      v31 = v24 - v27;
      if (v31 >> 3 > v30)
      {
        v30 = v31 >> 3;
      }

      v32 = v31 >= 0x7FFFFFFFFFFFFFF0;
      v33 = 0xFFFFFFFFFFFFFFFLL;
      if (!v32)
      {
        v33 = v30;
      }

      if (v33)
      {
        sub_1000D758C((a1 + 6), v33);
      }

      v34 = 16 * v29;
      *v34 = v23;
      *(v34 + 8) = v20;
      v26 = 16 * v29 + 16;
      memcpy(0, v27, v28);
      v35 = a1[6];
      a1[6] = 0;
      a1[7] = v26;
      a1[8] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      goto LABEL_30;
    }

LABEL_44:
    sub_10028C64C();
  }

  *v25 = v23;
  *(v25 + 8) = v20;
  v26 = v25 + 16;
LABEL_30:
  a1[7] = v26;
  v36 = a1[6];
  if (v36 != v26)
  {
    while (vabdd_f64(v22, *v36) <= 86400.0)
    {
      v36 += 2;
      if (v36 == v26)
      {
        goto LABEL_42;
      }
    }

    if (v36 != v26)
    {
      v37 = v36 + 2;
      if (v36 + 2 != v26)
      {
        do
        {
          if (vabdd_f64(v22, *v37) <= 86400.0)
          {
            *v36 = *v37;
            v36 += 2;
          }

          v37 += 2;
        }

        while (v37 != v26);
        v26 = a1[7];
      }
    }

    if (v36 != v26)
    {
      a1[7] = v36;
    }
  }

LABEL_42:
  a1[4] = a1[3];
}

NSDictionary *sub_1000E6FB0(uint64_t a1)
{
  v6[0] = @"airplaneMode";
  v7[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 27)];
  v6[1] = @"bundleId";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v7[1] = [NSString stringWithUTF8String:v2];
  v6[2] = @"cellAvailable";
  v7[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 24)];
  v6[3] = @"eventDistance";
  v7[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  v6[4] = @"eventFenceType";
  v7[4] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v6[5] = @"eventLatency";
  v7[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 72)];
  v6[6] = @"eventMask";
  v7[6] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v6[7] = @"eventRadius";
  v7[7] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v6[8] = @"eventType";
  v7[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v6[9] = @"isConservativeFence";
  v7[9] = [NSNumber numberWithBool:*(*(a1 + 32) + 91)];
  v6[10] = @"isDriving";
  v7[10] = [NSNumber numberWithBool:*(*(a1 + 32) + 93)];
  v6[11] = @"isEmergencyFence";
  v7[11] = [NSNumber numberWithBool:*(*(a1 + 32) + 88)];
  v6[12] = @"isInVehicle";
  v7[12] = [NSNumber numberWithBool:*(*(a1 + 32) + 92)];
  v6[13] = @"isPedestrian";
  v7[13] = [NSNumber numberWithBool:*(*(a1 + 32) + 95)];
  v6[14] = @"isPolygonalFence";
  v7[14] = [NSNumber numberWithBool:*(*(a1 + 32) + 89)];
  v6[15] = @"isStatic";
  v7[15] = [NSNumber numberWithBool:*(*(a1 + 32) + 94)];
  v6[16] = @"isThrottledFence";
  v7[16] = [NSNumber numberWithBool:*(*(a1 + 32) + 90)];
  v6[17] = @"numAPsFenceBounded";
  v3 = *(*(a1 + 32) + 104);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else if (v3 > 0x14)
  {
    if (v3 <= 0xB4)
    {
      v4 = ((v3 - 21) >> 4) + 5;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = ((v3 - 1) >> 2) + 1;
  }

  v7[17] = [NSNumber numberWithInt:v4];
  v6[18] = @"numAPsFence";
  v7[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v6[19] = @"numAPsTotal";
  v7[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v6[20] = @"passcodeLocked";
  v7[20] = [NSNumber numberWithBool:*(*(a1 + 32) + 26)];
  v6[21] = @"reachability";
  v7[21] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v6[22] = @"sinceLastEvent";
  v7[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v6[23] = @"wifiAvailable";
  v7[23] = [NSNumber numberWithBool:*(*(a1 + 32) + 25)];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:24];
}

void sub_1000E7418(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1000E746C(uint64_t a1, char *a2, uint64_t a3)
{
  [*a1 silo];
  v6 = [objc_msgSend(*a1 "vendor")];
  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [v6 syncgetAuthorizationContextIfClientIsNonZonal:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7)}];
  if (!a3 || (v9 = v8, ([v8 isNonProvisionallyAuthorizedForServiceTypeMask:a3] & 1) != 0))
  {
    memset(&v58, 0, sizeof(v58));
    v10 = sub_10001A2EC(&xmmword_10265D3F8, a2);
    if (!v10)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    std::string::operator=(&v58, (v10 + 5));
    sub_1000EBF44(&v58, v44);
    v11 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v11 = v48[1];
    }

    if (v11)
    {
      v12 = [objc_msgSend(*a1 "vendor")];
      if ((v49 & 0x80u) == 0)
      {
        v13 = v48;
      }

      else
      {
        v13 = v48[0];
      }

      [v12 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
    }

    v14 = v47;
    if ((v47 & 0x80u) != 0)
    {
      v14 = v46[1];
    }

    if (v14)
    {
      v15 = [objc_msgSend(*a1 "vendor")];
      if ((v47 & 0x80u) == 0)
      {
        v16 = v46;
      }

      else
      {
        v16 = v46[0];
      }

      [v15 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v16)}];
    }

    sub_1000E7DC4(v44, __p);
    if ((v69[3] & 0x80000000) != 0)
    {
      v31 = *&__p[8];
      operator delete(*__p);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    else if (v69[3])
    {
LABEL_23:
      sub_1000E7DC4(v44, __p);
      v17 = [objc_msgSend(*a1 "vendor")];
      if (v69[3] >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = *__p;
      }

      [v17 wakeUpLaunchdManagedClient:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
      if ((v69[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (*(a1 + 48))
      {
        sub_1000E7DC4(v44, v65);
        v19 = [NSString alloc];
        if (v66 >= 0)
        {
          v20 = v65;
        }

        else
        {
          v20 = v65[0];
        }

        v21 = [v19 initWithUTF8String:v20];
        if (qword_1025D4790 != -1)
        {
          sub_101A28438();
        }

        v22 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
        {
          v23 = v65;
          if (v66 < 0)
          {
            v23 = v65[0];
          }

          *__p = 136380675;
          *&__p[4] = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "ALM: %{private}s launching...", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A28460(__p);
          v38 = v65;
          if (v66 < 0)
          {
            v38 = v65[0];
          }

          v63 = 136380675;
          v64 = v38;
          v39 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLApplicationLifecycleManager::launchApplication(const std::string &, CLClientServiceTypeMask)", "%s\n", v39);
          if (v39 != __p)
          {
            free(v39);
          }
        }

        v24 = [NSString stringWithUTF8String:"CLLaunchOptionsLocation"];
        v61[0] = FBSOpenApplicationOptionKeyPayloadOptions;
        v59 = v24;
        v60 = &__kCFBooleanTrue;
        v25 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v61[1] = FBSOpenApplicationOptionKeyActivateSuspended;
        v62[0] = v25;
        v62[1] = &__kCFBooleanTrue;
        v26 = [FBSOpenApplicationOptions optionsWithDictionary:[NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2]];
        v28 = *(a1 + 64);
        v27 = *(a1 + 72);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100008080(v27);
        }

        v29 = *(a1 + 80);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3321888768;
        v40[2] = sub_1000E8700;
        v40[3] = &unk_10249E4E8;
        v40[4] = a1;
        v40[5] = v28;
        v41 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v66) < 0)
        {
          sub_100007244(&v42, v65[0], v65[1]);
        }

        else
        {
          v42 = *v65;
          v43 = v66;
        }

        [v29 openApplication:v21 withOptions:v26 completion:v40];

        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_weak(v41);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A28438();
        }

        v36 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          if (a2[23] >= 0)
          {
            v37 = a2;
          }

          else
          {
            v37 = *a2;
          }

          *__p = 68289283;
          *&__p[8] = 2082;
          *&__p[10] = "";
          v68 = 2081;
          *v69 = v37;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ALM: failed attempt to launch before device unlocked since boot, clientKey:%{private, location:escape_only}s}", __p, 0x1Cu);
        }
      }

LABEL_79:
      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (v53 < 0)
      {
        operator delete(v52);
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }

      if (v49 < 0)
      {
        operator delete(v48[0]);
      }

      if (v47 < 0)
      {
        operator delete(v46[0]);
      }

      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101A284A4();
    }

    v32 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      if (a2[23] >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      *__p = 136315138;
      *&__p[4] = v33;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "%s doesn't have a bundle ID; not going to bug SpringBoard.", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A284CC(__p);
      v34 = a2[23] >= 0 ? a2 : *a2;
      LODWORD(v65[0]) = 136315138;
      *(v65 + 4) = v34;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLApplicationLifecycleManager::launchApplication(const std::string &, CLClientServiceTypeMask)", "%s\n", v35);
      if (v35 != __p)
      {
        free(v35);
      }
    }

    goto LABEL_79;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A2825C();
  }

  v30 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 68289538;
    *&__p[8] = 2082;
    *&__p[10] = "";
    v68 = 1026;
    *v69 = a3;
    *&v69[4] = 2114;
    *&v69[6] = v9;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning ALM: dropping launchApplication request for unauthorized purpose, RequiredServiceMask:%{public}d, AuthContext:%{public, location:escape_only}@}", __p, 0x22u);
  }
}

void sub_1000E7C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::string *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69 < 0)
  {
    operator delete(__pa);
  }

  sub_100039BE8(&a24);
  if (SHIBYTE(a49) < 0)
  {
    operator delete(a47);
  }

  _Unwind_Resume(a1);
}

std::logic_error *sub_1000E7D90(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000E7DC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003B25C(a1);
  if (*(a1 + 127) < 0)
  {
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);

    sub_100007244(a2, v4, v5);
  }

  else
  {
    *a2 = *(a1 + 104);
    *(a2 + 16) = *(a1 + 120);
  }
}

uint64_t sub_1000E7E28(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 960))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 23) >= 0 ? a2 : *a2;
      CLConnection::getName(__p, *(a1 + 960));
      v6 = v25 >= 0 ? __p : *__p;
      *buf = 136446466;
      *&buf[4] = v5;
      v17 = 2082;
      v18 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Sending kCLConnectionMessageWakeClient for %{public}s to client '%{public}s'", buf, 0x16u);
      if (v25 < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      CLConnection::getName(buf, *(a1 + 960));
      if (v19 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }

      v20 = 136446466;
      v21 = v11;
      v22 = 2082;
      v23 = v12;
      v13 = _os_log_send_and_compose_impl();
      if (v19 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::wakeupLaunchdManagedClient(const std::string &)", "%s\n", v13);
      if (v13 != __p)
      {
        free(v13);
      }
    }

    v14 = @"kCLConnectionMessageClientNameKey";
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v15 = [NSString stringWithUTF8String:v7];
    *__p = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    sub_1000E819C();
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *__p = 136315138;
    *&__p[4] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Can't find /usr/libexec/UserEventAgent connection for waking Client: <%s>", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F924();
  }

  return 0;
}

void sub_1000E817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E8210(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1000E8268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000E8284(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1000E8210((a1 + 3), a2);
  return a1;
}

char *sub_1000E82E0(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100007244(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1000E8344(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E83CC(uint64_t a1, double a2, double a3)
{
  *(*(*(a1 + 40) + 8) + 112) = a2;
  *(*(*(a1 + 40) + 8) + 120) = a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000E83EC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && *(v2 + 8) != -1)
  {
    sub_1000E8488(*(*(a1 + 40) + 8) + 48);
  }

  dispatch_release(*(a1 + 32));
}

uint64_t sub_1000E8488(uint64_t a1)
{
  if (qword_1025D4890 != -1)
  {
    sub_101A9BC1C();
  }

  v2 = qword_1025D4898;
  if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    if (*(a1 + 23) >= 0)
    {
      v3 = a1;
    }

    v4 = *(a1 + 24);
    v5 = *(a1 + 25);
    v6 = *(a1 + 26);
    v7 = *(a1 + 27);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 96);
    v13 = *(a1 + 80);
    v14 = *(a1 + 84);
    v15 = *(a1 + 104);
    v16 = *(a1 + 108);
    v17 = *(a1 + 91);
    v18 = *(a1 + 88);
    v19 = *(a1 + 89);
    v20 = *(a1 + 90);
    v21 = *(a1 + 92);
    v22 = *(a1 + 93);
    v23 = *(a1 + 94);
    v24 = *(a1 + 95);
    *buf = 67115011;
    v27 = 1;
    v28 = 2048;
    v29 = 0;
    v30 = 2080;
    v31 = v3;
    v32 = 1024;
    v33 = v4;
    v34 = 1024;
    v35 = v5;
    v36 = 1024;
    v37 = v6;
    v38 = 1024;
    v39 = v7;
    v40 = 1024;
    v41 = v8;
    v42 = 2048;
    v43 = v9;
    v44 = 2048;
    v45 = v10;
    v46 = 2048;
    v47 = v11;
    v48 = 1024;
    v49 = v13;
    v50 = 2049;
    v51 = v12;
    v52 = 1025;
    v53 = v14;
    v54 = 1025;
    v55 = v15;
    v56 = 1025;
    v57 = v16;
    v58 = 1025;
    v59 = v17;
    v60 = 1025;
    v61 = v18;
    v62 = 1025;
    v63 = v19;
    v64 = 1025;
    v65 = v20;
    v66 = 1025;
    v67 = v21;
    v68 = 1025;
    v69 = v22;
    v70 = 1025;
    v71 = v23;
    v72 = 1025;
    v73 = v24;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#FenceMetrics metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,cellAvailable,%d,wifiAvailable,%d,passcodeLocked,%d,airplaneMode,%d,eventType,%d,eventRadius,%.2f,eventDistance,%.2f,eventLatency,%.3f,eventMask,0x%x,sinceLast,%{private}.1f,fenceType,%{private}d,fenceAPs,%{private}d,totalAPs,%{private}d,conservative,%{private}d,emergency,%{private}d,polygonal,%{private}d,throttled,%{private}d,inVehicle,%{private}d,driving,%{private}d,static,%{private}d,pedestrian,%{private}d", buf, 0xAAu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A9BC30(a1);
  }

  return AnalyticsSendEventLazy();
}

void sub_1000E8700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*v6 silo];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1000E8AB4;
  v10[3] = &unk_10249E4B8;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[6] = v6;
  v10[7] = v9;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[4] = a2;
  if (*(a1 + 79) < 0)
  {
    sub_100007244(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
    v13 = *(a1 + 72);
  }

  v10[5] = a3;
  [v7 async:v10];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1000E8808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000E8838(char *result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 7) = *(a2 + 56);
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    return sub_100007244(result + 72, *(a2 + 72), *(a2 + 80));
  }

  v3 = *(a2 + 72);
  *(result + 11) = *(a2 + 88);
  *(result + 72) = v3;
  return result;
}

void sub_1000E889C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E88B4(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1000E8908(uint64_t a1)
{
  if (*(a1 + 32))
  {
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, (a1 + 56));
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000E7380();
  }

  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101A2854C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v4 = *v4;
      }

      v5 = [objc_msgSend(*v2 "localizedDescription")];
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v4;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't launch application %s (%s)", &__p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A28560(a1, (a1 + 40));
    }
  }
}

void sub_1000E8AB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v6 = sub_1000E8908;
  v7 = &unk_10249E480;
  v3 = *(a1 + 32);
  v10 = v2;
  v8 = v3;
  if (*(a1 + 95) < 0)
  {
    sub_100007244(__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__p = *(a1 + 72);
    v12 = *(a1 + 88);
  }

  v9 = *(a1 + 40);
  v4 = *(a1 + 64);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E8B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E8BC8(uint64_t a1)
{
  if (*(a1 + 52) == -536723200)
  {
    sub_1000E8E10(*(a1 + 32), *(a1 + 48));
  }
}

void sub_1000E8BEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLDaemonStatus::onBatteryStatusChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E690C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLDaemonStatus::onBatteryStatusChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = [*(a1 + 32) silo];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E8BC8;
  v11[3] = &unk_10245D2F0;
  v12 = a2;
  v13 = a3;
  v11[4] = a1;
  v11[5] = a4;
  [v10 sync:v11];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000E8E10(void *a1, io_registry_entry_t entry)
{
  v36 = 0;
  *(&v35 + 1) = 0;
  v4 = IORegistryEntryCreateCFProperty(entry, @"CurrentCapacity", kCFAllocatorDefault, 0);
  v5 = IORegistryEntryCreateCFProperty(entry, @"MaxCapacity", kCFAllocatorDefault, 0);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "cannot find current or maximum capacity", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E81AC();
    }
  }

  else
  {
    v8 = [v5 intValue];
    v9 = [v4 intValue];
    v10 = v9;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 100;
    }

    v12 = fmin(v9 * 100.0 / v11, 100.0);
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    *&v35 = v13;
    v14 = IORegistryEntryCreateCFProperty(entry, @"ExternalConnected", kCFAllocatorDefault, 0);
    if (v14)
    {
      v15 = [v14 BOOLValue];
      BYTE9(v35) = v15;
      HIDWORD(v35) = 0;
      v16 = IORegistryEntryCreateCFProperty(entry, @"AdapterDetails", kCFAllocatorDefault, 0);
      v17 = [v16 objectForKeyedSubscript:@"Description"];
      if (v17)
      {
        v18 = v17;
        if (([(__CFString *)v17 hasPrefix:@"batt"]& 1) != 0)
        {
          v19 = 1;
        }

        else if (([(__CFString *)v18 hasPrefix:@"usb"]& 1) != 0)
        {
          v19 = 2;
        }

        else if (([(__CFString *)v18 hasPrefix:@"external"]& 1) != 0)
        {
          v19 = 3;
        }

        else
        {
          if (![(__CFString *)v18 hasSuffix:@"arcas"])
          {
            v34 = 0;
            goto LABEL_36;
          }

          v19 = 4;
        }

        v34 = v19;
        HIDWORD(v35) = v19;
      }

      else
      {
        v34 = 0;
        v18 = @"none";
      }

LABEL_36:
      v21 = [v16 objectForKeyedSubscript:@"FamilyCode"];
      if (v21)
      {
        v22 = [v21 intValue];
      }

      else
      {
        if (qword_1025D4870 != -1)
        {
          sub_1018E669C();
        }

        v23 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Failed to get charger family", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018E8290();
        }

        v22 = 0;
      }

      HIDWORD(v36) = v22;
      v24 = IORegistryEntryCreateCFProperty(entry, @"FullyCharged", kCFAllocatorDefault, 0);
      if (v24)
      {
        v25 = [v24 BOOLValue];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018E61E0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "cannot find charged status\n", buf, 2u);
        }

        v25 = 0;
        if (sub_10000A100(121, 0))
        {
          sub_1018E8374();
          v25 = 0;
        }
      }

      BYTE8(v35) = v25;
      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v27 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290818;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v18;
        *&buf[28] = 2050;
        *&buf[30] = v34;
        *&buf[38] = 1026;
        *v38 = v13;
        *&v38[4] = 1026;
        *v39 = v22;
        *&v39[4] = 1026;
        v40 = v25;
        v41 = 1026;
        v42 = v15;
        v43 = 1026;
        v44 = 0;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:adapter details, adapterDescription:%{public, location:escape_only}@, batteryChargerType:%{public, location:CLBatteryChargerType}lld, level:%{public}d, family:%{public}u, fullyCharged:%{public}hhd, connected:%{public}hhd, wasConnected:%{public}hhd}", buf, 0x44u);
      }

      v28 = a1[14];
      if (v28)
      {
        [v28 batteryData];
        v29 = buf[9];
      }

      else
      {
        v29 = 0;
        memset(buf, 0, 24);
      }

      v30 = 1;
      if (v29 == v15 && buf[8] == v25 && vabdd_f64(*buf, v13) < 1.0)
      {
        v30 = *&buf[12] != v34;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1018E688C();
      }

      v31 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290306;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1040;
        *&buf[20] = 24;
        *&buf[24] = 2098;
        *&buf[26] = &v35;
        *&buf[34] = 1026;
        *&buf[36] = v10;
        *v38 = 1026;
        *&v38[2] = v11;
        *v39 = 1026;
        *&v39[2] = v30;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:battery capacity info, batteryStatus:%{public, location:CLDaemonStatus_Type::Battery}.*P, currentCapacity:%{public}d, maximumCapacity:%{public}d, batteryIsDifferent:%{public}hhd}", buf, 0x34u);
      }

      if (v30)
      {
        v32 = a1[14];
        if (v32)
        {
          [v32 batteryData];
          v33 = buf[9];
          v32 = a1[14];
        }

        else
        {
          v33 = 0;
        }

        LOBYTE(v36) = v33;
        *buf = v35;
        *&buf[16] = v36;
        [v32 setBatteryData:buf];
        *buf = 7;
        (*(*a1 + 152))(a1, buf, &v35, 1, 0xFFFFFFFFLL, 0);
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018E637C();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "cannot find connected status", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E8458();
    }
  }
}

BOOL sub_1000E94C4(void *a1)
{
  v12 = 0;
  if (qword_1025D47A0 != -1)
  {
    sub_101B0D6F4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally determining if app is installed via LSApplicationWorkspace & LSApplicationExtensionRecord, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) != 0 || objc_msgSend([LSApplicationExtensionRecord alloc], "initWithBundleIdentifier:error:", a1, &v12))
  {
    v3 = 1;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D52C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a1;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally determining if app is installed via LSApplicationRecord, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:a1 allowPlaceholder:0 error:&v12];
    v10 = [v9 localizedName];
    v3 = v10 != 0;
    if (!v10)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101B0D52C();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2114;
        v18 = a1;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally LSApplicationRecord is not considered installed, bundleID:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B0D52C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a1;
    v19 = 1026;
    LODWORD(v20) = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ClearClient isApplicationInstalledLocally, bundleID:%{public, location:escape_only}@, isAppInstalled?:%{public}hhd}", buf, 0x22u);
  }

  if (v12)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B0D52C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v6 = [a1 UTF8String];
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = v6;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LaunchServices did not find app in its database, bundleId:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
    }
  }

  return v3;
}

id sub_1000E9840(void *a1)
{
  result = sub_100055734(a1);
  if (result)
  {

    return [result path];
  }

  return result;
}

void sub_1000E9874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CLConnectionMessage::name(*a2);
  if (*(v6 + 23) < 0)
  {
    sub_100007244(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v14 = *(v6 + 16);
    *__p = v7;
  }

  if (v14 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  (*(*a1 + 32))(a1, v8, 1);
  v9 = *(a2 + 8);
  v11 = *a2;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 16))(a1, &v11, a3, 0.0);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v14 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  (*(*a1 + 32))(a1, v10, 0);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E99C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E99FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    *&buf[4] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2082;
    v27 = v9;
    v28 = 2050;
    v29 = a2;
    v30 = 1026;
    v31 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if (*(a2 + 72) == 1)
  {
    v11 = [objc_msgSend(*(a2 + 48) "legacyClientKey")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = "";
    }

    sub_10000EC00(buf, v12);
    sub_1000E9C70(a2, &v18);
    v13 = v18;
    v14 = *(a3 + 8);
    v16 = *a3;
    v17 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(a1 + 24);
    if (!v15)
    {
      sub_1000CF05C();
    }

    (*(*v15 + 48))(v15, v13, &v16);
    if (v17)
    {
      sub_100008080(v17);
    }

    if (v19)
    {
      sub_100008080(v19);
    }

    if (SBYTE3(v25) < 0)
    {
      operator delete(*buf);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_1000E9C70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *buf = &v22;
  v4 = sub_10005A490(a1 + 41, &v22);
  v5 = v4[3];
  v6 = v4[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  if (!v7)
  {
    *a2 = 0;
    a2[1] = 0;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4790 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  *a2 = v7;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v7[248] & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = a1[6];
      *buf = 68289538;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v9;
      v28 = 2082;
      v29 = ("17CLSLCSubscription" & 0x7FFFFFFFFFFFFFFFLL);
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Invalid persistent subscription detected... getting a fresh one, ClientKeyPath:%{public, location:escape_only}@, subscription:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v10 = a2[1];
    if (v10)
    {
      sub_100008080(v10);
    }

LABEL_14:
    sub_1000EA1BC(a1[2], a1[6], a2);
    v11 = *a2;
    *(v11 + 144) = (*(*a1 + 80))(a1);
    v12 = *a2;
    p_info = (*(*a1 + 96))(a1);
    v14 = p_info;

    *(v12 + 152) = p_info;
    if (!*a2 || (*(*a2 + 248) & 1) == 0)
    {
      sub_1019EF370(a2);
      abort_report_np();
      while (1)
      {
        __break(1u);
LABEL_36:
        sub_1001456E8();
LABEL_26:
        v19 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v20 = qword_1025D4798;
        if (os_signpost_enabled(qword_1025D4798))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (p_info[242] != -1)
          {
            sub_1001456E8();
          }
        }

        v21 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2082;
          v27 = "assert";
          v28 = 2081;
          v29 = "subscriptionPtr";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }
    }

    *buf = &v22;
    v15 = sub_10005A490(a1 + 41, &v22);
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v15[4];
    v15[3] = v17;
    v15[4] = v16;
    if (v18)
    {
      sub_100008080(v18);
    }

    (*(**a2 + 16))(*a2, a1 + 1);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_1000EA180(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EA1BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v22 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    [v5 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v24 = 0;
    *&v24[8] = 0;
  }

  v6 = sub_10005AD2C((a1 + 1000), buf);
  if ((v24[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v21;
  v7 = sub_10005AFCC(v6 + 5, &v21);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v24 = 2082;
      *&v24[2] = "";
      *&v24[10] = 2082;
      *&v24[12] = "17CLSLCSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v20 = sub_100018FC8(a1, v22, &xmmword_101CE6CD8);
    if (v22)
    {
      [v22 cppClientKey];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    sub_100F3B404(__p);
    sub_1000603E0(buf, &v18, __p, v21);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    sub_1007ADA18();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1000EA710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_1000EA7D0(uint64_t a1, void *a2, void *a3)
{
  v6 = *a2;
  if (*(*a2 + 95) < 0)
  {
    sub_100007244(__dst, *(v6 + 72), *(v6 + 80));
  }

  else
  {
    *__dst = *(v6 + 72);
    v20 = *(v6 + 88);
  }

  if (*(v6 + 119) < 0)
  {
    sub_100007244(&__p, *(v6 + 96), *(v6 + 104));
  }

  else
  {
    __p = *(v6 + 96);
    v22 = *(v6 + 112);
  }

  v23 = *(v6 + 120);
  if (v20 >= 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  v8 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v7]]);
  if (v22 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v10 = [NSString stringWithUTF8String:p_p];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [a3 UTF8String];
    *buf = 68289795;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2114;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    v32 = 2081;
    v33 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#PersistentSubscription PersistenceBackend clearObjectForKeyForSubscription, client:%{public, location:escape_only}@, storageName:%{public, location:escape_only}@, storageKey:%{private, location:escape_only}s}", buf, 0x30u);
  }

  v13 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*(*(a1 + 8) + 136) dictionaryForKey:v10 atKeyPath:v8 defaultValue:&__NSDictionary0__struct]);
  [(NSMutableDictionary *)v13 removeObjectForKey:a3];
  v14 = [(NSMutableDictionary *)v13 count];
  v15 = *(*(a1 + 8) + 136);
  if (v14)
  {
    [v15 setDictionary:v13 forKey:v10 atKeyPath:v8];
  }

  else
  {
    [v15 removeValueForKey:v10 atKeyPath:v8];
    v16 = a2[1];
    v17 = *a2;
    v18 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100061098((a1 + 16), &v17);
    if (v18)
    {
      sub_100008080(v18);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1000EAA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1006E69AC(&__p);
  _Unwind_Resume(a1);
}

void sub_1000EAAC4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1000E99FC(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_1000EAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EAB28(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v33, Dictionary);
  v32 = 0;
  if ((sub_10001CB4C(v33, "kCLConnectionMessageSubscribeKey", &v32) & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v9 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      __p = 68289026;
      v35 = 2082;
      v36 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", &__p, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v10 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

    __p = 68289026;
    v35 = 2082;
    v36 = "";
    v11 = "Couldn't get value for kCLConnectionMessageSubscribeKey key";
    v12 = "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}";
    v13 = v10;
    v14 = 18;
LABEL_21:
    _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v11, v12, &__p, v14);
    goto LABEL_28;
  }

  if (!+[CLSignificantChangeManagerAdapter isSupported])
  {
    goto LABEL_28;
  }

  if (!v32)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v15 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 64);
      __p = 68289282;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      v38 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Client unsubscribing #SLC, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }

    sub_100060D7C(a1);
    goto LABEL_27;
  }

  sub_10000EC00(&__p, "com.apple.locationd.slc_configurer");
  isEntitled = CLConnectionMessage::isEntitled();
  if (SBYTE3(v38) < 0)
  {
    operator delete(__p);
  }

  v31 = 500.0;
  if (!(isEntitled & 1 | ((sub_1000B9370(v33, "kCLConnectionMessageSLCDistanceKey", &v31) & 1) == 0)))
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v17 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 64);
      __p = 68289282;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      v38 = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v19 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v29 = 0;
  v30 = -1;
  if (!sub_10005BBE4(v33, "kCLConnectionMessageSLCPowerBudgetKey", &v30))
  {
LABEL_10:
    sub_1000E5A0C(a1, @"powerBudget", [NSNumber numberWithInt:v29]);
    sub_1000E5A0C(a1, @"distanceThreshold", [NSNumber numberWithDouble:v31]);
    sub_10000EC00(&__p, "com.apple.locationd.private_info");
    v7 = CLConnectionMessage::isEntitled();
    if (SBYTE3(v38) < 0)
    {
      operator delete(__p);
    }

    *(a1 + 306) = v7;
    if (v7)
    {
      v8 = [NSNumber numberWithBool:1];
    }

    else
    {
      v8 = 0;
    }

    sub_1000E5A0C(a1, @"includePrivateData", v8);
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v21 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 64);
      __p = 68289794;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      v38 = v22;
      v39 = 2050;
      v40 = v31;
      v41 = 1026;
      v42 = v29;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client subscribing to #SLC, client:%{public, location:escape_only}@, distance:%{public}f, powerBudget:%{public}d}", &__p, 0x2Cu);
    }

LABEL_27:
    sub_1000E5B8C(a1);
    sub_10002F8F4(a1);
    goto LABEL_28;
  }

  if ((isEntitled & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }

    v23 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v24 = *(a1 + 64);
      __p = 68289282;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      v38 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101AD1C88();
      }
    }

    v19 = qword_1025D4798;
    if (!os_signpost_enabled(qword_1025D4798))
    {
      goto LABEL_28;
    }

LABEL_35:
    v20 = *(a1 + 64);
    __p = 68289282;
    v35 = 2082;
    v36 = "";
    v37 = 2114;
    v38 = v20;
    v11 = "Client is not entitled to provide #SLC configuration";
    v12 = "{msg%{public}.0s:Client is not entitled to provide #SLC configuration, client:%{public, location:escape_only}@}";
    v13 = v19;
    v14 = 28;
    goto LABEL_21;
  }

  if (sub_100C0C6AC(v30, &v29))
  {
    goto LABEL_10;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101AD1C88();
  }

  v25 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v26 = *(a1 + 64);
    __p = 68289538;
    v35 = 2082;
    v36 = "";
    v37 = 2114;
    v38 = v26;
    v39 = 1026;
    LODWORD(v40) = v30;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client provided invalid #SLC configuration, client:%{public, location:escape_only}@, desiredPowerBudgetRaw:%{public}d}", &__p, 0x22u);
    if (qword_1025D4790 != -1)
    {
      sub_101AD1C88();
    }
  }

  v27 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v28 = *(a1 + 64);
    __p = 68289538;
    v35 = 2082;
    v36 = "";
    v37 = 2114;
    v38 = v28;
    v39 = 1026;
    LODWORD(v40) = v30;
    v11 = "Client provided invalid #SLC configuration";
    v12 = "{msg%{public}.0s:Client provided invalid #SLC configuration, client:%{public, location:escape_only}@, desiredPowerBudgetRaw:%{public}d}";
    v13 = v27;
    v14 = 34;
    goto LABEL_21;
  }

LABEL_28:
  sub_100005DA4(v33);
}

void sub_1000EB328(uint64_t a1, uint64_t a2, uint64_t *a3)
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

void sub_1000EB3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t sub_1000EB3F4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_101AD1CB0();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 12);
    v7 = *(a2 + 20);
    v8 = *(a1 + 64);
    *buf = 134546435;
    *&buf[4] = v5;
    *&buf[12] = 2053;
    *&buf[14] = v6;
    *&buf[22] = 2053;
    v28 = v7;
    LOWORD(v29) = 2114;
    *(&v29 + 2) = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Sending #SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %{sensitive}.2f for %{public}@", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AD1CC4(a2, a1);
  }

  sub_10004FD18(v26);
  if (sub_100046340(a2, v26, a1 + 304) >= 1)
  {
    *buf = sub_10007005C(v26);
    sub_1000EB970();
  }

  if (*(a1 + 249) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0xA012000000;
    v28 = sub_1000479E0;
    *&v29 = sub_100048710;
    *(&v29 + 1) = &unk_10238AE8B;
    __p = 0;
    memset(v31, 0, sizeof(v31));
    v32 = 1000;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    __asm { FMOV            V1.2D, #-1.0 }

    v36 = _Q1;
    v37 = 0xBFF0000000000000;
    v38 = 0xFFFFFFFF00000000;
    v39 = 0;
    v40 = 0xBFF0000000000000;
    v41 = 0;
    v14 = [objc_msgSend(*(a1 + 64) "legacyClientKey")];
    sub_100006044((*&buf[8] + 48), v14);
    *(*&buf[8] + 96) = 2;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v16 = *(*sub_100043A18(a1) + 16);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000E83CC;
    v25[3] = &unk_1024BED28;
    v25[4] = v15;
    v25[5] = buf;
    [v16 fetchLastSignificantLocationDistanceAndLatencyWithReply:v25];
    dispatch_group_enter(v15);
    v17 = *(a1 + 128);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000EBF24;
    v24[3] = &unk_1024BED50;
    v24[4] = v15;
    v24[5] = buf;
    sub_100047D60(v17, v24);
    v19 = *(a1 + 280);
    v18 = *(a1 + 288);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v18);
    }

    v20 = [objc_msgSend(*(a1 + 128) "silo")];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_1000E83EC;
    v22[3] = &unk_1024BED78;
    v22[6] = v19;
    v23 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v22[4] = v15;
    v22[5] = buf;
    dispatch_group_notify(v15, v20, v22);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    _Block_object_dispose(buf, 8);
    if ((v31[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  return sub_100005DA4(v26);
}

void sub_1000EB7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  _Block_object_dispose(&a31, 8);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA4(&a29);
  _Unwind_Resume(a1);
}

void sub_1000EB850(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);

    sub_1000EB3F4(v3, a1 + 48);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AD1CB0();
    }

    v4 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UTF8String];
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SLC Not sending due to CLCM provisional intermediation, client:%{public, location:escape_only}s}", v6, 0x1Cu);
    }
  }
}

void sub_1000EBB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000EBBD8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  CLConnectionMessage::CLConnectionMessage();
  return a1;
}

const void **sub_1000EBC38(void *a1, const void **a2)
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
    sub_100F3C1C0();
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

void sub_1000EBE98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100F3C274(va);
  _Unwind_Resume(a1);
}

void sub_1000EBEAC(uint64_t a1)
{
  v2 = *(a1 + 1216);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 975) < 0)
  {
    operator delete(*(a1 + 952));
  }

  v3 = *(a1 + 864);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 736);
  if (v4)
  {

    sub_100008080(v4);
  }
}

__n128 sub_1000EBF24(uint64_t a1, __int128 *a2)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *a2;
  *(v2 + 88) = *(a2 + 2);
  *(v2 + 72) = v3;
  dispatch_group_leave(*(a1 + 32));
  return result;
}

void sub_1000EBF44(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  if (_os_feature_enabled_impl())
  {
    *(a2 + 95) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 163) = 0u;
    v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1->__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    if (size >= 1)
    {
      v7 = v5 + size;
      v8 = v5;
      do
      {
        v9 = memchr(v8, 58, size);
        if (!v9)
        {
          break;
        }

        if (*v9 == 58)
        {
          if (v9 == v7)
          {
            break;
          }

          v10 = v9 - v5;
          if (v10 == -1)
          {
            break;
          }

          std::string::basic_string(&v15, a1, v10 + 1, 0xFFFFFFFFFFFFFFFFLL, &v16);
          sub_1000EC2E0(&v15, v17);
          sub_100034F70(a2, v17);
          if (v28 < 0)
          {
            operator delete(__p);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          if (v18 < 0)
          {
            operator delete(*&v17[24]);
          }

          if ((v17[23] & 0x80000000) != 0)
          {
            operator delete(*v17);
          }

          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          std::string::basic_string(v17, a1, 0, v10, &v15);
          if (*(a2 + 23) < 0)
          {
            operator delete(*a2);
          }

          *a2 = *v17;
          *(a2 + 16) = *&v17[16];
          return;
        }

        v8 = (v9 + 1);
        size = v7 - v8;
      }

      while (v7 - v8 >= 1);
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101BB7F64();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v12 = (a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      *v17 = 68289282;
      *&v17[8] = 2082;
      *&v17[10] = "";
      *&v17[18] = 2082;
      *&v17[20] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Multi-User clientKey doesn't have userName!, clientKey:%{public, location:escape_only}s}", v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101BB7F78();
      }
    }

    v13 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1->__r_.__value_.__r.__words[0];
      }

      *v17 = 68289282;
      *&v17[8] = 2082;
      *&v17[10] = "";
      *&v17[18] = 2082;
      *&v17[20] = v14;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Multi-User clientKey doesn't have userName!", "{msg%{public}.0s:#Multi-User clientKey doesn't have userName!, clientKey:%{public, location:escape_only}s}", v17, 0x1Cu);
    }
  }

  else
  {

    sub_1000EC2E0(a1, a2);
  }
}

void sub_1000EC2E0(std::string *__str@<X0>, uint64_t a2@<X8>)
{
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v7 = v5 + size;
  if (size >= 31)
  {
    v8 = size;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 99, v8 - 30);
      if (!v10)
      {
        break;
      }

      if (v10->__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 && v10->__r_.__value_.__l.__size_ == 0x697461636F6C2E65 && v10->__r_.__value_.__r.__words[2] == 0x636578652E646E6FLL && *(&v10->__r_.__value_.__r.__words[2] + 7) == 0x2D656C6261747563)
      {
        if (v10 != v5)
        {
          break;
        }

        *(a2 + 95) = 0;
        *(a2 + 64) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 120) = 0u;
        *(a2 + 136) = 0u;
        *(a2 + 152) = 0u;
        *(a2 + 163) = 0u;
        std::string::basic_string(&__p, __str, 0x1FuLL, 0xFFFFFFFFFFFFFFFFLL, &v20);
        std::string::operator=((a2 + 24), &__p);
LABEL_44:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = (&v10->__r_.__value_.__l.__data_ + 1);
      v8 = v7 - v9;
    }

    while (v7 - v9 >= 31);
  }

  if (size >= 27)
  {
    v14 = v5;
    do
    {
      v15 = memchr(v14, 99, size - 26);
      if (!v15)
      {
        break;
      }

      if (v15->__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 && v15->__r_.__value_.__l.__size_ == 0x697461636F6C2E65 && v15->__r_.__value_.__r.__words[2] == 0x646E75622E646E6FLL && *(&v15->__r_.__value_.__r.__words[2] + 3) == 0x2D656C646E75622ELL)
      {
        if (v15 != v5)
        {
          break;
        }

        std::string::basic_string(&__p, __str, 0x1BuLL, 0xFFFFFFFFFFFFFFFFLL, &v20);
        sub_1000E1C7C(&__p, a2);
        goto LABEL_44;
      }

      v14 = (&v15->__r_.__value_.__l.__data_ + 1);
      size = v7 - v14;
    }

    while (v7 - v14 >= 27);
  }

  sub_100034EE4(__str, a2);
}

void sub_1000EC538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EC57C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_1000EC5FC(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    ++*(*(*(result + 32) + 8) + 64);
  }

  return result;
}

uint64_t sub_1000EC62C(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(*(*(result + 32) + 8) + 68);
  }

  return result;
}

uint64_t sub_1000EC668(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(*(*(result + 32) + 8) + 64);
  }

  return result;
}

BOOL sub_1000EC6CC(uint64_t a1)
{
  v1 = sub_1000EC7AC(a1);
  if (qword_1025D48A0 != -1)
  {
    sub_100248B5C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Registration status: %d", v4, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CA850(v1);
  }

  return v1 > 3;
}

uint64_t sub_1000EC7AC(uint64_t a1)
{
  v6 = 0;
  if (!(*(*a1 + 208))(a1, &v6))
  {
    LODWORD(v3) = 0;
LABEL_9:
    if (sub_10057DBB8(a1))
    {
      return 7;
    }

    else
    {
      return v3;
    }
  }

  v2 = sub_1000ED2E4(v6);
  v3 = v2;
  if (v2 <= 3 && v2 != 2)
  {
    goto LABEL_9;
  }

  return v3;
}

uint64_t sub_1000EC83C(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 160);
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:DaemonNotReady for CT SPI, fDaemonReady:%{public}hhd}", v7, 0x18u);
    }
  }

  if (*(a1 + 144))
  {
    if (_CTServerConnectionGetRegistrationStatus())
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018C6BA0();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "_CTServerConnectionGetRegistrationStatus failed", v7, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018CA948();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018C6BA0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "currently not connected to telephony service", v7, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CAA2C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ECA98(uint64_t a1)
{
  v2 = a1 + 832;
  v11 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  v12 = 256;
  if (*(a1 + 304) && *(a1 + 312))
  {
    memset(&__p, 0, sizeof(__p));
    if (*(a1 + 224) && *(a1 + 648) == 1 && (*(a1 + 600) - 1) <= 0xA4)
    {
      v13 = *(a1 + 560);
      sub_1000ECD9C(buf);
      v3 = *(a1 + 600);
      __p = buf[0];
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v3 = -1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 67240707;
      HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = v4;
      LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2081;
      *(&buf[0].__r_.__value_.__r.__words[1] + 2) = p_p;
      WORD1(buf[0].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(buf[0].__r_.__value_.__r.__words[2]) = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "WifiMgr, associated, %{public}d, mac, %{private}s, channel, %{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD5B4(buf);
      v8 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v13) = 67240707;
      HIDWORD(v13) = v4;
      v14 = 2081;
      v15 = v8;
      v16 = 1026;
      v17 = v3;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::isAssociated()", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*v2 + 24))(v2);
  return v4;
}

void sub_1000ECD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a17);
  _Unwind_Resume(a1);
}

void sub_1000ECD9C(std::string *a1@<X8>)
{
  v2 = v8;
  sub_1000ECEAC(v8);
  v3 = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = v9;
  v5 = v8[0];
  v6 = v8[1];
  if ((v9 & 0x80u) != 0)
  {
    v2 = v8[0];
  }

  if ((v9 & 0x80) != 0)
  {
    goto LABEL_6;
  }

  while (v3 < v4)
  {
    while (1)
    {
      if (v3)
      {
        std::string::push_back(a1, 58);
      }

      v7 = *(v2 + v3);
      if (v7 != 48)
      {
        std::string::push_back(a1, v7);
      }

      std::string::push_back(a1, *(v2 + v3 + 1));
      v3 += 2;
      if ((v4 & 0x80) == 0)
      {
        break;
      }

LABEL_6:
      if (v3 >= v6)
      {

        operator delete(v5);
        return;
      }
    }
  }
}

void sub_1000ECE84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (v3 < 0)
  {
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000ECEAC@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v10);
  v2 = v11;
  v3 = &v11 + *(v11 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v11 + *(v11 - 24)));
    v4 = std::locale::use_facet(&v20, &std::ctype<char>::id);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v20);
    v2 = v11;
  }

  *(v3 + 36) = 48;
  *(v14 + *(v2 - 24)) = 12;
  *(&v11 + *(v2 - 24) + 8) = *(&v11 + *(v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  if ((v19 & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v6 = v15;
    }

    v7 = v14[3];
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v5 = 0;
      a1[23] = 0;
      goto LABEL_16;
    }

    v7 = v14[0];
    v6 = v14[2];
  }

  v5 = v6 - v7;
  if (v6 - v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a1[23] = v5;
  if (v5)
  {
    memmove(a1, v7, v5);
  }

LABEL_16:
  a1[v5] = 0;
  v11 = v8;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000ED1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED2C0(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1000ED2E4(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, kCTRegistrationStatusNotRegistered))
    {
      return 1;
    }

    else if (CFEqual(a1, kCTRegistrationStatusSearching))
    {
      return 2;
    }

    else if (CFEqual(a1, kCTRegistrationStatusDenied))
    {
      return 3;
    }

    else if (CFEqual(a1, kCTRegistrationStatusRegisteredHome))
    {
      return 4;
    }

    else if (CFEqual(a1, kCTRegistrationStatusRegisteredRoaming))
    {
      return 5;
    }

    else if (CFEqual(a1, kCTRegistrationStatusEmergencyOnly))
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_100248B5C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: fromRegistrationStatus(statusStr): statusStr == NULL", v4, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018CA76C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000ED4C4(uint64_t a1, _BYTE *a2)
{
  v4 = a1 + 832;
  (*(*(a1 + 832) + 16))(a1 + 832);
  if (!*(a1 + 296))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "WifiService, getPower, fDpcSource is NULL", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_16;
    }

LABEL_18:
    sub_1018CD5B4(buf);
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLWifiService::getPower(BOOL &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (!*(a1 + 312) || !*(a1 + 304))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 304);
      v7 = *(a1 + 312);
      *buf = 134349312;
      v13 = v7;
      v14 = 2050;
      v15 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "WifiService, getPower, device/manager is NULL, %{public}p, %{public}p", buf, 0x16u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  *a2 = *(a1 + 552);
  v5 = 1;
LABEL_17:
  (*(*v4 + 24))(v4);
  return v5;
}

void sub_1000ED7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1000ED87C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (objc_opt_class())
  {
    memset(&__p, 0, sizeof(__p));
    if ([a4 isValidCKP])
    {
      v8 = sub_1000184F4(a1, a4);
      if (v8)
      {
        [v8 cppClientKey];
      }

      else
      {
        memset(buf, 0, 24);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
    }

    else
    {
      sub_100006044(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
    }

    v10 = sub_1005D7C24(a3, &__p.__r_.__value_.__l.__data_);
    v11 = v10;
    if (v10 && *(v10 + 5) > 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = p_p;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating location consumption info on stop, Client:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v15 = *(v11 + 5);
      if (Current <= v15)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v18 = v11[5];
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2050;
          *&buf[20] = v18;
          v25 = 2050;
          v26 = Current;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Detected CFAbsoluteTime rollback when writing usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v19 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v20 = v11[5];
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2050;
          *&buf[20] = v20;
          v25 = 2050;
          v26 = Current;
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Detected CFAbsoluteTime rollback when writing usage score", "{msg%{public}.0s:Detected CFAbsoluteTime rollback when writing usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", buf, 0x26u);
        }

        v16 = 0;
      }

      else
      {
        v16 = (Current - v15);
      }

      *(v11 + 12) += v16;
      v11[5] = 0;
      v21 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      [v21 setClientKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v22, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2])}];
      [v21 setStopTime:Current];
      [v21 setScore:v16];
      [a2 writeSecondaryObject:v21 toField:1];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

id sub_1000EDD7C(uint64_t a1, void *a2, void *a3)
{
  sub_10001A3E8();
  if (!sub_1000F4760())
  {
    return 0;
  }

  v5 = sub_1000F70DC(a2, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (v5 != 2)
  {
    v9 = [a2 bundlePath];
    if (v9)
    {
      v10 = v9;
      v7 = [STExecutableIdentity alloc];
      v8 = v10;
      goto LABEL_7;
    }

    v14 = [a2 executablePath];
    if (v14)
    {
      v11 = [[STExecutableIdentity alloc] initWithExecutablePath:v14];
      goto LABEL_8;
    }

    v15 = [a2 bundleId];
    if (v15)
    {
      v11 = [[STExecutableIdentity alloc] initWithApplicationBundleIdentifier:v15];
      goto LABEL_8;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v19 = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CreateAttribution CLClientKeyPath identity did not return a valid anchor type, Client:%{public, location:escape_only}@}", &v19, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v19 = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CreateAttribution CLClientKeyPath identity did not return a valid anchor type", "{msg%{public}.0s:#CreateAttribution CLClientKeyPath identity did not return a valid anchor type, Client:%{public, location:escape_only}@}", &v19, 0x1Cu);
    }

    return 0;
  }

  v7 = [STExecutableIdentity alloc];
  v8 = @"/System/Library/LocationBundles/Traffic.bundle";
LABEL_7:
  v11 = [v7 initWithBundlePath:v8];
LABEL_8:
  v12 = [[STActivityAttribution alloc] initWithAttributedEntity:{objc_msgSend([STAttributedEntity alloc], "initWithExecutableIdentity:website:systemService:", v11, objc_msgSend(a2, "website"), (v6 >> 1) & 1)}];
  v13 = [STLocationStatusDomainLocationAttribution alloc];

  return [v13 initWithLocationState:1 activityAttribution:v12 eligibleDisplayModes:v6];
}

void sub_1000EE1A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_1000EE1D0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000EE218(a1, 0, a2, a3, a4, a5);
  *result = off_10246A6F8;
  return result;
}

uint64_t sub_1000EE218(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_102456910;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1000EE3B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1000EE4A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1000EE4D8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102460F80;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

uint64_t sub_1000EE5BC(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    v3 = [objc_msgSend(*(a1 + 8) "vendor")];
    *(a1 + 72) = v3;
    [v3 registerDelegate:*(a1 + 48) inSilo:{objc_msgSend(*(a1 + 8), "silo")}];
    return *(a1 + 72);
  }

  return result;
}

void sub_1000EE62C(uint64_t a1, void *a2, double a3)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = [objc_msgSend(a2 "description")];
    v19 = 2050;
    v20 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion taken, client:%{public, location:escape_only}s, accuracy:%{public}f}", buf, 0x26u);
  }

  for (i = *(a1 + 256); i; i = *i)
  {
    v8 = i[4];
    if (v8 <= a2)
    {
      if (v8 >= a2)
      {
        goto LABEL_11;
      }

      ++i;
    }
  }

  v9 = a2;
LABEL_11:
  v13 = a2;
  *buf = &v13;
  *(sub_1000EE7A4(a1 + 248, &v13) + 5) = a3;
  v10 = sub_1000EE874(a1);
  v11 = *(a1 + 128);
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000EEA08(v11, v10, Current);
}

void *sub_1000EE7A4(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

BOOL sub_1000EE874(uint64_t a1)
{
  v1 = *(a1 + 248);
  v2 = (a1 + 256);
  if (v1 == (a1 + 256))
  {
    return 1;
  }

  v3 = qword_1025D47B0;
  v4 = 1.79769313e308;
  do
  {
    if (v3 != -1)
    {
      sub_101A83058();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 5);
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:shouldLocalGPSBeRestricted,list, accuracy:%{public}f}", buf, 0x1Cu);
      v3 = qword_1025D47B0;
    }

    else
    {
      v3 = -1;
    }

    if (v1[5] < v4)
    {
      v4 = v1[5];
    }

    v7 = *(v1 + 1);
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v1 + 2);
        v9 = *v8 == v1;
        v1 = v8;
      }

      while (!v9);
    }

    v1 = v8;
  }

  while (v8 != v2);
  return v4 >= 100.0;
}

void sub_1000EEA08(_BYTE *a1, uint64_t a2, double a3)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "setLocalGPSRestricted,%d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7D7EC(a2);
  }

  if (a1[92] != a2 && a1[93] == 1)
  {
    a1[92] = a2;
    (*(*a1 + 136))(a1, a2, a3);
  }
}

void sub_1000EEBB4(uint64_t a1, int a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  *buf = 0;
  v4 = sub_10000608C(a1, buf, 1);
  *buf = 1;
  v5 = sub_10000608C(a1, buf, 1);
  *buf = 2;
  v6 = sub_10000608C(a1, buf, 1);
  v7 = v6;
  v8 = __p + 4;
  if (v4 >= 1)
  {
    HIBYTE(v14) = 4;
    v9 = 1953719618;
LABEL_5:
    LODWORD(__p[0]) = v9;
    goto LABEL_6;
  }

  if (v5 >= 1)
  {
    HIBYTE(v14) = 4;
    v9 = 1701734726;
    goto LABEL_5;
  }

  if (v6 < 1)
  {
    HIBYTE(v14) = 4;
    v9 = 1701736270;
    goto LABEL_5;
  }

  v8 = __p + 6;
  HIBYTE(v14) = 6;
  qmemcpy(__p, "Coarse", 6);
LABEL_6:
  *v8 = 0;
  if (qword_1025D4620 != -1)
  {
    sub_101919D68();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241218;
    v26 = v4;
    v27 = 1026;
    v28 = v5;
    v29 = 1026;
    v30 = v7;
    v31 = 2082;
    v32 = __p;
    v33 = 1026;
    v34 = a2;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxClient, accuracy, %{public}d, %{public}d, %{public}d, level, %{public}s, reg?, %{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101919D90(buf);
    v11 = __p;
    if (v14 < 0)
    {
      v11 = __p[0];
    }

    v15 = 67241218;
    v16 = v4;
    v17 = 1026;
    v18 = v5;
    v19 = 1026;
    v20 = v7;
    v21 = 2082;
    v22 = v11;
    v23 = 1026;
    v24 = a2;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::logRequiredNotificationLevel(BOOL)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000EEE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFAbsoluteTime sub_1000EEEC0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (!sub_10000608C(a1, &v5, 1))
  {
    v6 = 2;
    if (!sub_10000608C(a1, &v6, 1))
    {
      v7 = 1;
      if (!sub_10000608C(a1, &v7, 1))
      {
        return 1.79769313e308;
      }
    }
  }

  if (*(a1 + 1032) >= 0.0 && *(a2 + 20) >= 0.0)
  {
    return *(a2 + 76) + *(a1 + 1040);
  }

  return CFAbsoluteTimeGetCurrent();
}

void sub_1000EEF78(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v19[0] = 0;
  v19[1] = "regular";
  v19[2] = 1;
  v19[3] = "fine";
  v19[4] = 2;
  v19[5] = "coarse";
  __asm { FMOV            V0.2D, #-1.0 }

  do
  {
    v9 = v19[v3 + 1];
    v14[0] = v19[v3];
    *buf = v14[0];
    if (sub_10000608C(a1, buf, 1))
    {
      if ((v2 & 1) == 0)
      {
        v13 = sub_1000F44E4(a1, v14[0]);
        if (qword_1025D47A0 != -1)
        {
          sub_101919C28();
        }

        v10 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Now registered for %s location notifications, operating mode %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v14[1] = 136315394;
          v15 = v9;
          v16 = 1024;
          v17 = v13;
          v11 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::onLocationTimer()", "%s\n", v11);
          if (v11 != buf)
          {
            free(v11);
          }
        }

        *buf = v14;
        if (*(sub_100007FA0(a1 + 1048, v14) + 32) == 1)
        {
          sub_100109ECC();
        }

        sub_10002FA64();
      }

      v2 = 1;
    }

    else
    {
      [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:v14[0]];
      *buf = v14;
      *(sub_100007FA0(a1 + 1048, v14) + 32) = 0;
    }

    v3 += 2;
  }

  while (v3 != 6);
  if ((v2 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no more location clients - not re-registering}", buf, 0x12u);
    }
  }
}

uint64_t sub_1000EF310(char *a1, int a2, int *a3, uint64_t a4)
{
  v6 = a2;
  v15 = a2;
  if (qword_1025D47A0 != -1)
  {
    sub_101919C50();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v15;
    v9 = sub_1000488C8((a1 + 80), &v15)[8];
    v10 = *a3;
    v11 = *(a4 + 8);
    v12 = *(a4 + 20);
    *buf = 68290050;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 1026;
    v26 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLIENT: registerForNotification, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld, distanceFilter:%{public}.1f, operatingMode:%{public}d}", buf, 0x36u);
    v6 = v15;
  }

  v13 = sub_100044404(a1, v6, a3, a4);
  if (v13 && *a3 <= 2)
  {
    sub_1000EEBB4(a1, 1);
    sub_1000EF7C4(a1);
  }

  return v13;
}

uint64_t sub_1000EF4A0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a2;
  if (*a2 > 0x27)
  {
    goto LABEL_5;
  }

  if (((1 << v7) & 0x8000000038) == 0)
  {
    if (((1 << v7) & 3) != 0)
    {
      LODWORD(v6) = sub_1000F106C(a1 + 184, a3);
    }

LABEL_5:
    if (qword_1026590D0 != -1)
    {
      sub_10191A914();
    }

    if (v6)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C50();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *a2;
        v10 = *(a3 + 20);
        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v9;
        v20 = 2050;
        v21 = v10;
        v22 = 2049;
        v23 = sub_100023764(a3);
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#LastConfLoc,get cached notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld, hunc:%{public}.3f, hash:0x%{private}llx}", buf, 0x30u);
      }

      if (byte_1026590C8 != 1)
      {
        return 1;
      }

      v11 = sub_100048D98(*a2);
      sub_10000EC00(&v18, v11);
      v12 = std::string::insert(&v18, 0, "LastConfLoc_", 0xCuLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v12->__r_.__value_.__l + 2);
      *buf = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (!sub_100044B2C(a1, a2, a3))
      {
        return 0;
      }

      if (byte_1026590C8 != 1)
      {
        return 1;
      }

      v14 = sub_100048D98(*a2);
      sub_10000EC00(&v18, v14);
      v15 = std::string::insert(&v18, 0, "LastCachedLoc_", 0xEuLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v15->__r_.__value_.__l + 2);
      *buf = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }
    }

    sub_10000EC00(&v18, "CachedLocs");
    sub_100710214(buf, a3, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    return 1;
  }

  return v6;
}

void sub_1000EF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1000EF7C4(uint64_t a1)
{
  *buf = 0;
  if (sub_10000608C(a1, buf, 1) || (*buf = 2, sub_10000608C(a1, buf, 1)) || (*buf = 1, sub_10000608C(a1, buf, 1)))
  {
    v2 = 0;
    v3 = 0;
    v42 = a1;
    v4 = (a1 + 64);
    v5 = -1.0;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = dword_101C8A218[v2];
        v8 = a1 + 64;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v4 && v7 >= *(v8 + 32))
        {
          v9 = *(v8 + 40);
          if (v9 != (v8 + 48))
          {
            do
            {
              if (qword_1025D47A0 != -1)
              {
                sub_101919C28();
              }

              v10 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                v11 = (&off_10246CB98)[v2];
                v12 = *(v8 + 56);
                v13 = *(v9 + 6);
                *buf = 136315650;
                v48 = v11;
                *v49 = 2048;
                *&v49[2] = v12;
                *&v49[10] = 2048;
                *&v49[12] = v13;
                _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLIENT: notification, %s, clients, %lu, distanceFilter, %.1lf", buf, 0x20u);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101919C28();
                }

                v17 = (&off_10246CB98)[v2];
                v18 = *(v8 + 56);
                v19 = *(v9 + 6);
                *v44 = 136315650;
                *&v44[4] = v17;
                *&v44[12] = 2048;
                *&v44[14] = v18;
                v45 = 2048;
                v46 = v19;
                v20 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLFilteredLocationController::checkMinimumDistanceFilter()", "%s\n", v20);
                if (v20 != buf)
                {
                  free(v20);
                }
              }

              if ((v3 & (v9[6] >= v5)) == 0)
              {
                v5 = v9[6];
              }

              v14 = *(v9 + 1);
              if (v14)
              {
                do
                {
                  v15 = v14;
                  v14 = *v14;
                }

                while (v14);
              }

              else
              {
                do
                {
                  v15 = *(v9 + 2);
                  _ZF = *v15 == v9;
                  v9 = v15;
                }

                while (!_ZF);
              }

              v3 = 1;
              v9 = v15;
            }

            while (v15 != (v8 + 48));
          }
        }
      }

      ++v2;
    }

    while (v2 != 3);
    if (qword_1025D47A0 != -1)
    {
      sub_101919C28();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(v42 + 1032);
      *buf = 134218240;
      v48 = *&v5;
      *v49 = 2048;
      *&v49[2] = v22;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLIENT: distanceFilter, %.1lf, fDistanceFilter, %.1lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101919DD4(v5);
    }

    if (v5 > 0.0 && v5 == *(v42 + 1032))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(v42 + 1032);
        [*(v42 + 1024) nextFireTime];
        v26 = v25;
        [*(v42 + 1024) nextFireDelay];
        *buf = 134218496;
        v48 = v24;
        *v49 = 2048;
        *&v49[2] = v26;
        *&v49[10] = 2048;
        *&v49[12] = v27;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "minimum distance unchanged from %.3f, still requesting location at %.3f (%.3fs away)", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A214((v42 + 1032), v42);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v28 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(v42 + 1032);
        *buf = 134218240;
        v48 = *&v5;
        *v49 = 2048;
        *&v49[2] = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "minimum distance changed to %.3f from %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101919EEC(v5);
      }

      *(v42 + 1032) = v5;
      *(v42 + 1040) = v5 / 250.0;
      *buf = 0xFFFF;
      *v49 = 0;
      v48 = 0;
      *&v49[8] = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      v50 = _Q0;
      v51 = _Q0;
      v52 = _Q0;
      v53 = 0;
      v55 = 0;
      v56 = 0;
      v54 = 0xBFF0000000000000;
      v57 = 0;
      v58 = 0xBFF0000000000000;
      v59 = 0x7FFFFFFF;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v63 = 0;
      if ((*(*v42 + 232))(v42, buf))
      {
        v34 = sub_1000EEEC0(v42, buf);
        if (v34 <= CFAbsoluteTimeGetCurrent() + 15.0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v38 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            Current = CFAbsoluteTimeGetCurrent();
            *v44 = 134217984;
            *&v44[4] = v34 - Current;
            _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "scheduling location requests for %.3fs later", v44, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191A004();
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_101919C28();
          }

          v35 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            v36 = CFAbsoluteTimeGetCurrent();
            *v44 = 134217984;
            *&v44[4] = v34 - v36;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "turning off location requests and re-scheduling for %.3fs later", v44, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191A10C();
          }

          [*(*(v42 + 168) + 16) unregister:*(*(v42 + 168) + 8) forNotification:0];
          [*(*(v42 + 168) + 16) unregister:*(*(v42 + 168) + 8) forNotification:1];
          [*(*(v42 + 168) + 16) unregister:*(*(v42 + 168) + 8) forNotification:2];
          v43 = 0;
          *v44 = &v43;
          *(sub_100007FA0(v42 + 1048, &v43) + 32) = 0;
          v43 = 1;
          *v44 = &v43;
          *(sub_100007FA0(v42 + 1048, &v43) + 32) = 0;
          v43 = 2;
          *v44 = &v43;
          *(sub_100007FA0(v42 + 1048, &v43) + 32) = 0;
        }

        [*(v42 + 1024) setNextFireTime:v34];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101919C28();
        }

        v37 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *v44 = 68289026;
          *&v44[4] = 0;
          *&v44[8] = 2082;
          *&v44[10] = "";
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:no location currently available, starting it immediately}", v44, 0x12u);
        }

        [*(v42 + 1024) setNextFireDelay:0.0];
      }
    }

    if (*(v42 + 1096) != -1.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101919C28();
      }

      v40 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(v42 + 1096);
        *buf = 134218240;
        v48 = 0xBFF0000000000000;
        *v49 = 2048;
        *&v49[2] = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "wake interval changed to %.3f from %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A368((v42 + 1096));
      }

      *(v42 + 1096) = 0xBFF0000000000000;
      sub_10070FF98(v42);
    }
  }

  else
  {
    *(a1 + 1032) = 0xBFF0000000000000;
    *(a1 + 1040) = 0xBFF0000000000000;
  }
}

uint64_t sub_1000F015C(uint64_t a1, int *a2)
{
  sub_1000F4588();
  v4 = sub_10010A1AC(a1, a2);
  v93 = v4;
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF1C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = sub_100048D98(*a2);
    *buf = 67240706;
    *&buf[4] = v7;
    *&buf[8] = 2082;
    *&buf[10] = v8;
    *&buf[18] = 1026;
    *&buf[20] = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLIENT:registerForNotificationInternal,notification,%{public}d,%{public}s,granularity,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BCFF58();
  }

  switch(*a2)
  {
    case 0:
    case 1:
    case 2:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v25 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 160);
        v27 = *(a1 + 161);
        *buf = 67240448;
        *&buf[4] = v26;
        *&buf[8] = 1026;
        *&buf[10] = v27;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Before register,required granularity,%{public}d,active granularity,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD0368(a1);
      }

      *buf = 0xFFFF;
      *&buf[12] = 0;
      *&buf[4] = 0;
      *&buf[20] = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      v104 = _Q0;
      v105 = _Q0;
      v106 = _Q0;
      v107 = 0;
      v109 = 0;
      v110 = 0;
      v108 = 0xBFF0000000000000;
      v112 = 0xBFF0000000000000;
      v111 = 0;
      v113 = 0x7FFFFFFF;
      v115 = 0;
      v116 = 0;
      v114 = 0;
      v117 = 0;
      v32 = *(a1 + 280);
      if (v32 && (*(*v32 + 176))(v32, buf) && *&buf[20] > 0.0)
      {
        *v94 = 0;
        v33 = sub_10000608C(a1, v94, 1);
        LODWORD(v99[0]) = 1;
        v34 = sub_10000608C(a1, v99, 1);
        v92[0] = 2;
        v35 = sub_10000608C(a1, v92, 1);
        sub_10010F650(a1 + 5296, a2, v33, v34, v35, *&buf[20]);
      }

      v36 = v93;
      if (v93 > *(a1 + 160) || (v37 = sub_100027514((a1 + 800)), v36 = v93, v37))
      {
        *(a1 + 160) = v36;
      }

      if (*(a1 + 161) < v36)
      {
        sub_10010FB88(a1, &v93);
      }

      goto LABEL_79;
    case 3:
    case 4:
    case 6:
    case 10:
    case 39:
      v9 = *(a1 + 256);
      if (v9 != (a1 + 264))
      {
        do
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v10 = p_info[193];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = *a2;
            v12 = sub_1003DD9F8(a1 + 232, v9 + 8);
            v15 = v12[1];
            v13 = v12 + 1;
            v14 = v15;
            if (*(v13 + 23) >= 0)
            {
              v14 = v13;
            }

            *buf = 67240450;
            *&buf[4] = v11;
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            *&buf[8] = 2082;
            *&buf[10] = v14;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "registering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v19 = *a2;
            v20 = sub_1003DD9F8(a1 + 232, v9 + 8);
            v23 = v20[1];
            v21 = v20 + 1;
            v22 = v23;
            if (*(v21 + 23) >= 0)
            {
              v22 = v21;
            }

            *v94 = 67240450;
            *&v94[4] = v19;
            *&v94[8] = 2082;
            *&v94[10] = v22;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }

            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          [*(*(v9 + 5) + 16) register:*(*(v9 + 5) + 8) forNotification:*a2 registrationInfo:0];
          v16 = *(v9 + 1);
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = *(v9 + 2);
              _ZF = *v17 == v9;
              v9 = v17;
            }

            while (!_ZF);
          }

          v9 = v17;
        }

        while (v17 != (a1 + 264));
      }

      return 1;
    case 8:
      if (*(a1 + 336))
      {
        *buf = a1 + 336;
        v57 = sub_10010A224(a1 + 256, (a1 + 336));
        [*(v57[5] + 16) register:*(v57[5] + 8) forNotification:8 registrationInfo:0];
      }

LABEL_79:
      v99[1] = -1.0;
      v100 = 0;
      v102 = 0;
      v99[0] = sub_100107BB8(a1);
      v101 = sub_1000F44E4(a1, 0);
      v58 = *(a1 + 256);
      if (v58 != (a1 + 264))
      {
        do
        {
          if (*sub_1003DD9F8(a1 + 232, v58 + 8) != *(a1 + 336) || !sub_100027514((a1 + 800)))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v61 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v62 = v99[0];
              v63 = sub_1003DD9F8(a1 + 232, v58 + 8);
              v66 = v63[1];
              v64 = v63 + 1;
              v65 = v66;
              if (*(v64 + 23) >= 0)
              {
                v67 = v64;
              }

              else
              {
                v67 = v65;
              }

              v68 = *(sub_1003DD9F8(a1 + 232, v58 + 8) + 871);
              *buf = 134349826;
              *&buf[4] = v62;
              *&buf[12] = 2082;
              *&buf[14] = v67;
              *&buf[22] = 1026;
              *&buf[24] = v68;
              *&buf[28] = 1026;
              *&buf[30] = v101;
              _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "CLIENT:registerForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d,operating mode,%{public}d", buf, 0x22u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v71 = v99[0];
              v72 = sub_1003DD9F8(a1 + 232, v58 + 8);
              v75 = v72[1];
              v73 = v72 + 1;
              v74 = v75;
              if (*(v73 + 23) >= 0)
              {
                v76 = v73;
              }

              else
              {
                v76 = v74;
              }

              v77 = *(sub_1003DD9F8(a1 + 232, v58 + 8) + 871);
              *v94 = 134349826;
              *&v94[4] = v71;
              *&v94[12] = 2082;
              *&v94[14] = v76;
              v95 = 1026;
              v96 = v77;
              v97 = 1026;
              v98 = v101;
              v78 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v78);
              if (v78 != buf)
              {
                free(v78);
              }
            }

            *buf = 0;
            sub_100109ECC();
          }

          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v59 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "skipping last updateNotificationRegistrationInfo for gps as best accuracy does not require gps", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BD0468(v92, v92 + 1);
          }

          v60 = sub_10000B1F8();
          *buf = 1;
          *buf = sub_10001A6B0(v60, buf);
          sub_1003E0928((a1 + 800), buf);
          sub_10018E860(a1 + 800, *(a1 + 712));
          *(a1 + 682) = 1;
          sub_10017ECA4(a1);
          v69 = *(v58 + 1);
          if (v69)
          {
            do
            {
              v70 = v69;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            do
            {
              v70 = *(v58 + 2);
              _ZF = *v70 == v58;
              v58 = v70;
            }

            while (!_ZF);
          }

          v58 = v70;
        }

        while (v70 != (a1 + 264));
      }

      return 1;
    case 15:
      if (*(a1 + 336))
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *buf = _Q0;
        *&buf[16] = 0;
        *&buf[24] = 0;
        *&buf[20] = sub_1000F44E4(a1, 15);
        *v94 = a1 + 336;
        sub_10010A224(a1 + 256, (a1 + 336));
        sub_10002FA64();
      }

      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v90 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_FAULT, "BATCH:unsupported platform", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD0284();
      }

      return 1;
    case 17:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v84 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEBUG, "CLMM,RunMapMatching is turned on", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD01A0();
      }

      *(a1 + 675) = 1;
      (*(**(a1 + 280) + 216))(*(a1 + 280));
      return 1;
    case 22:
      if (!*(a1 + 328))
      {
        if (qword_1025D4630 != -1)
        {
          sub_101BD0094();
        }

        v55 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "@WsbReg, kNotificationWifiLocationBatched unsupported", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD00BC();
        }
      }

      return 1;
    case 28:
      v38 = 0;
      v39 = *(a1 + 352);
      LODWORD(v99[0]) = *(a1 + 340);
      HIDWORD(v99[0]) = v39;
      do
      {
        if (*(v99 + v38))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v40 = p_info[193];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = *a2;
            v42 = sub_1003DD9F8(a1 + 232, (v99 + v38));
            v45 = v42[1];
            v43 = v42 + 1;
            v44 = v45;
            if (*(v43 + 23) >= 0)
            {
              v44 = v43;
            }

            *buf = 67240450;
            *&buf[4] = v41;
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            *&buf[8] = 2082;
            *&buf[10] = v44;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "registering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v47 = *a2;
            v48 = sub_1003DD9F8(a1 + 232, (v99 + v38));
            v51 = v48[1];
            v49 = v48 + 1;
            v50 = v51;
            if (*(v49 + 23) >= 0)
            {
              v50 = v49;
            }

            *v94 = 67240450;
            *&v94[4] = v47;
            *&v94[8] = 2082;
            *&v94[10] = v50;
            v52 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::registerForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v52);
            if (v52 != buf)
            {
              free(v52);
            }

            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v46 = sub_1003DD9F8(a1 + 256, (v99 + v38));
          [*(*v46 + 16) register:*(*v46 + 8) forNotification:28 registrationInfo:0];
        }

        v38 += 4;
      }

      while (v38 != 8);
      if (*(a1 + 336))
      {
        v53 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v53 + 16) register:*(*v53 + 8) forNotification:28 registrationInfo:0];
      }

      v54 = *(a1 + 280);
      if (v54)
      {
        (*(*v54 + 360))(v54, 1);
      }

      return 1;
    case 29:
      if (*(a1 + 336))
      {
        v88 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v88 + 16) register:*(*v88 + 8) forNotification:29 registrationInfo:0];
      }

      if (*(a1 + 344))
      {
        v89 = sub_1003DD9F8(a1 + 256, (a1 + 344));
        [*(*v89 + 16) register:*(*v89 + 8) forNotification:29 registrationInfo:0];
      }

      sub_100676A88(a1);
      return 1;
    case 34:
      if (!*(a1 + 336))
      {
        return 1;
      }

      v79 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      v81 = *(*v79 + 8);
      v80 = *(*v79 + 16);
      v82 = 34;
      break;
    case 35:
      if (!*(a1 + 336))
      {
        return 1;
      }

      v83 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      v81 = *(*v83 + 8);
      v80 = *(*v83 + 16);
      v82 = 35;
      break;
    case 40:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v85 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:register kNotificationExternalLocationDisablementAssert}", buf, 0x12u);
      }

      if (!*(a1 + 344))
      {
        return 1;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v86 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:registering kNotificationExternalLocationDisablementAssert w/ accessory provider}", buf, 0x12u);
      }

      v87 = sub_1003DD9F8(a1 + 256, (a1 + 344));
      v81 = *(*v87 + 8);
      v80 = *(*v87 + 16);
      v82 = 40;
      break;
    default:
      return 1;
  }

  [v80 register:v81 forNotification:v82 registrationInfo:0];
  return 1;
}