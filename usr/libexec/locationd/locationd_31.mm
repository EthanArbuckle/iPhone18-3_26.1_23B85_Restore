uint64_t sub_100214CE0(uint64_t result, void *a2, int *a3, double a4)
{
  v4 = *(result + 8);
  if (v4 != -1)
  {
    if (vabdd_f64(*(result + 16), a4) >= 5400.0 || fabs(*result) <= 2.22044605e-16)
    {
      v4 = -1;
    }

    else
    {
      *a2 = *result;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t sub_100214D30(uint64_t a1, int32x2_t *a2)
{
  v2 = *(a1 + 2264);
  if (v2 == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 2176);
      v7 = *(a1 + 2184);
      v8 = *(a1 + 2200);
      v9 = *(a1 + 2192);
      v10 = *(a1 + 2208);
      v11 = *(a1 + 2216);
      *buf = 134350336;
      *v30 = v6;
      *&v30[8] = 2050;
      v31 = v7;
      *v32 = 2050;
      *&v32[2] = v8;
      v33 = 2050;
      v34 = v9;
      v35 = 2050;
      v36 = v10;
      v37 = 2050;
      v38 = v11;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "BaroAlt,DriftRate Data,closeLoopError,%{public}lf,durationSinceLastCalibEv,%{public}lf,distanceFromLastCalibEv,%{public}lf,estAltUnc,%{public}lf,closeLoopErrorRpa,%{public}lf,durationSinceLastRpaCalibEv,%{public}lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017492DC((a1 + 2176), a1);
    }

    a2->i32[0] = llround(*(a1 + 2176) * 10.0);
    a2->i32[1] = vcvtad_u64_f64(*(a1 + 2184));
    __asm { FMOV            V2.2D, #10.0 }

    a2[1] = vmovn_s64(vcvtq_u64_f64(vrndaq_f64(vmulq_f64(*(a1 + 2192), _Q2))));
    a2[2].i32[0] = llround(*(a1 + 2208) * 10.0);
    v16 = vcvtad_u64_f64(*(a1 + 2216));
    a2[2].i32[1] = v16;
    if (*(a1 + 3856) <= v16 && v16 >= 5)
    {
      v18 = *a2->i8;
      *(a1 + 3852) = a2[2];
      *(a1 + 3836) = v18;
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 3836);
        v21 = *(a1 + 3840);
        v22 = *(a1 + 3848);
        v23 = *(a1 + 3844);
        v24 = *(a1 + 3852);
        v25 = *(a1 + 3856);
        *buf = 67241472;
        *v30 = v20;
        *&v30[4] = 1026;
        *&v30[6] = v21;
        LOWORD(v31) = 1026;
        *(&v31 + 2) = v22;
        HIWORD(v31) = 1026;
        *v32 = v23;
        *&v32[4] = 1026;
        *&v32[6] = v24;
        v33 = 1026;
        LODWORD(v34) = v25;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "BaroAlt,DriftRate Core Analytics Data,closeLoopError,%{public}d,durationSinceLastCalibEv,%{public}d,distanceFromLastCalibEv,%{public}d,estAltUnc,%{public}d,closeLoopErrorRpa,%{public}d,durationSinceLastRpaCalibEv,%{public}d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::getBarometricAltitudeAWDData(CLDaemonStats_Type::BarometricAltitudeDriftRateInfo &) const", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v26 = sub_1001EC310();
      sub_100703B94(v26, (a1 + 3836));
    }

    *(a1 + 2264) = 0;
  }

  return v2;
}

__n128 sub_1002150AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 + 140);
  *(a1 + 216) = *(a2 + 96);
  *(a1 + 220) = v6;
  *(a1 + 224) = *(a2 + 20);
  if (sub_1002151D0(a1, a2))
  {
    if (qword_1025D4740 != -1)
    {
      sub_10197C0B8();
    }

    v7 = qword_1025D4748;
    if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#loiOverride using Loi Location", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197C328();
    }

    *(a1 + 276) = 1;
    sub_1002155A8(a1);
    sub_10092E744(a1, a2, a3);
  }

  else
  {
    *(a1 + 276) = 0;
    sub_1002155A8(a1);
    v9 = *(a2 + 112);
    a3[6] = *(a2 + 96);
    a3[7] = v9;
    a3[8] = *(a2 + 128);
    *(a3 + 140) = *(a2 + 140);
    v10 = *(a2 + 48);
    a3[2] = *(a2 + 32);
    a3[3] = v10;
    v11 = *(a2 + 80);
    a3[4] = *(a2 + 64);
    a3[5] = v11;
    result = *a2;
    v12 = *(a2 + 16);
    *a3 = *a2;
    a3[1] = v12;
  }

  return result;
}

uint64_t sub_1002151D0(uint64_t a1, uint64_t a2)
{
  if (!sub_100072814(a1) || ((v4 = *(a1 + 20), *&v4 > -1) ? (v5 = ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v5 = 1), v5 ? (v6 = (*&v4 - 1) >= 0xFFFFFFFFFFFFFLL) : (v6 = 0), v6))
  {
    if (qword_1025D4740 != -1)
    {
      sub_10197C0B8();
    }

    v9 = qword_1025D4748;
    if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#loiOverride no valid current location.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197C3FC();
    }

    result = 0;
    *(a1 + 248) = 0;
  }

  else
  {
    *(a1 + 248) = 1;
    *(a1 + 232) = v4;
    v7 = *(a2 + 96);
    if (v7 <= 8 && ((1 << v7) & 0x1D0) != 0)
    {
      *(a1 + 256) = 1;
      if (*(a1 + 156) == 2)
      {
        *(a1 + 252) = 1;
        if (*(a2 + 20) <= v4)
        {
          if (qword_1025D4740 != -1)
          {
            sub_10197C0B8();
          }

          v11 = qword_1025D4748;
          if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
          {
            *v17 = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#loiOverride the spread of the LOI is larger than the location fix.", v17, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197C5A4();
          }

          result = 0;
          *(a1 + 260) = 0;
        }

        else
        {
          *(a1 + 260) = 1;
          if (sub_10092EC7C(a1, a1, a2))
          {
            if (*(a1 + 208) + 600.0 <= *(a1 + 76) || (*(a1 + 200) & 1) != 0)
            {
              result = 1;
              *(a1 + 272) = 1;
            }

            else
            {
              if (qword_1025D4740 != -1)
              {
                sub_10197C0B8();
              }

              v14 = qword_1025D4748;
              if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
              {
                *v15 = 0;
                _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#loiOverride WiFi is not associated to overide Wifi1 locations.", v15, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_10197C74C();
              }

              result = 0;
              *(a1 + 272) = 0;
            }
          }

          else
          {
            if (qword_1025D4740 != -1)
            {
              sub_10197C0B8();
            }

            v13 = qword_1025D4748;
            if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
            {
              *v16 = 0;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#loiOverride locations are not sufficiently proximate.", v16, 2u);
            }

            result = sub_10000A100(121, 2);
            if (result)
            {
              sub_10197C678();
              return 0;
            }
          }
        }
      }

      else
      {
        if (qword_1025D4740 != -1)
        {
          sub_10197C0B8();
        }

        v10 = qword_1025D4748;
        if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
        {
          *v18 = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#loiOverride location source accuracy is not High to overide location.", v18, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10197C4D0();
        }

        result = 0;
        *(a1 + 252) = 0;
      }
    }

    else
    {
      if (qword_1025D4740 != -1)
      {
        sub_10197C0B8();
      }

      v12 = qword_1025D4748;
      if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#loiOverride location is not Wifi1 or Cell.", v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197C820();
      }

      result = 0;
      *(a1 + 256) = 0;
    }
  }

  return result;
}

__n128 sub_1002155A8(uint64_t a1)
{
  if (arc4random_uniform(0x64u) == 1)
  {
    v9[0] = @"incomingLocationType";
    v10[0] = [NSNumber numberWithUnsignedInt:*(a1 + 216)];
    v9[1] = @"incomingLocationSignalEnvironmentType";
    v10[1] = [NSNumber numberWithUnsignedInt:*(a1 + 220)];
    v9[2] = @"incomingLocationHorizontalAccuracy";
    v10[2] = [NSNumber numberWithDouble:*(a1 + 224)];
    v9[3] = @"loiLocationHorizontalAccuracy";
    v10[3] = [NSNumber numberWithDouble:*(a1 + 232)];
    v9[4] = @"incomingLocationDistanceToLoi";
    v10[4] = [NSNumber numberWithDouble:*(a1 + 240)];
    v9[5] = @"isValidLoi";
    v10[5] = [NSNumber numberWithInt:*(a1 + 248)];
    v9[6] = @"isLoiHighAccuracy";
    v10[6] = [NSNumber numberWithInt:*(a1 + 252)];
    v9[7] = @"isIncomingLocationValidLocationType";
    v10[7] = [NSNumber numberWithInt:*(a1 + 256)];
    v9[8] = @"isIncomingLocationGreaterUncertainty";
    v10[8] = [NSNumber numberWithInt:*(a1 + 260)];
    v9[9] = @"isDistanceLessThanThreshold";
    v10[9] = [NSNumber numberWithInt:*(a1 + 264)];
    v9[10] = @"isHorizontalAccuracyOverlapping";
    v10[10] = [NSNumber numberWithInt:*(a1 + 268)];
    v9[11] = @"isWifiAssociated";
    v10[11] = [NSNumber numberWithInt:*(a1 + 272)];
    v9[12] = @"isOverriding";
    v10[12] = [NSNumber numberWithInt:*(a1 + 276)];
    [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:13];
    AnalyticsSendEvent();
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 248) = result;
  v3 = (a1 + 248);
  v3[-2].n128_u64[0] = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 - 24) = _Q1;
  v3[-1].n128_u64[1] = 0xBFF0000000000000;
  v3[1] = result;
  return result;
}

void sub_1002157CC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8[0] = 67240704;
    v8[1] = v5;
    v9 = 1026;
    v10 = a2;
    v11 = 2050;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,fPosUncThr,%{public}d,posUncThr,%{public}d,posUncTime,%{public}0.1f", v8, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0C9F4(a1, a2);
  }

  v7 = sub_1000081AC();
  if (a2 && *(a1 + 16) == 1 && v7 > *(a1 + 24))
  {
    sub_10020F594(a1, v7);
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = v7;
}

void sub_100215910(uint64_t a1, uint64_t a2)
{
  if (sub_100072814(a2))
  {
    sub_10020F8F0(a1, a2);
    sub_1002157CC(a1 + 232, (*(a2 + 20) <= 100.0));
    sub_1002157CC(a1 + 288, (*(a2 + 20) <= 100.0));
    if (*(a1 + 216) == 1 && *(a2 + 20) <= 50.0)
    {

      sub_1010596DC(a1, a2);
    }
  }
}

uint64_t sub_1002159C8(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 360);
  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  if (!v4)
  {
    return sub_100208A64(a1, a2, &v8, v7, a4);
  }

  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = sub_100208A64(a1, a2, &v8, v7, a4);
  std::__shared_weak_count::__release_weak(v4);
  return v5;
}

double sub_100215A40(uint64_t a1, double a2)
{
  if (*a1 > 0.0)
  {
    return a2 - *a1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101B4BD40();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 840);
    *buf = 67240192;
    v9 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,getHypothesisAge called while MCT not set", buf, 8u);
  }

  v2 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101B4BD54(buf);
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CFTimeInterval cllcf::LCFusionLocationHypothesis::getAge(const CFTimeInterval) const", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return v2;
}

void sub_100215BD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100215BE4(uint64_t a1)
{
  v1 = (a1 + 248);
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 1;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v71 = _Q0;
  _Q0.f64[0] = NAN;
  _Q0.f64[1] = NAN;
  v70 = vnegq_f64(_Q0);
LABEL_3:
  if ((v2[107] & 0xFFFFFFFB) == 0)
  {
    goto LABEL_70;
  }

  v9 = *(v2 + 8);
  if (!v9 || *(*(*(v2 + 4) + 8 * ((v9 + *(v2 + 7) - 1) / 0x1AuLL)) + 152 * ((v9 + *(v2 + 7) - 1) % 0x1AuLL) + 148) != 1)
  {
    goto LABEL_70;
  }

  v10 = *v2;
  if (*v2)
  {
    while (1)
    {
      if ((v10[107] & 0xFFFFFFFB) == 0)
      {
        goto LABEL_59;
      }

      v11 = *(v10 + 8);
      if (!v11 || *(*(*(v10 + 4) + 8 * ((v11 + *(v10 + 7) - 1) / 0x1AuLL)) + 152 * ((v11 + *(v10 + 7) - 1) % 0x1AuLL) + 148) != 1)
      {
        goto LABEL_59;
      }

      v12 = v2[71];
      v13 = v10[71];
      v93 = v13;
      v94 = v12;
      if (vabdd_f64(v12, v13) > 0.001)
      {
        if (v13 <= v12)
        {
          v14 = (v10 + 25);
          v15 = &v94;
        }

        else
        {
          v14 = (v2 + 25);
          v15 = &v93;
        }

        sub_10002980C(v14, v15);
      }

      v86 = v71;
      v89[0] = xmmword_101C75BF0;
      v89[1] = xmmword_101C75BF0;
      v89[2] = v71;
      v89[3] = v71;
      v85 = off_1024DE5F8;
      v90 = 0xBFF0000000000000;
      v91 = 0;
      v92 = 0;
      if ((sub_10002A8E4((v2 + 25), &v85) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v49 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#fusion,hypotheses merging, outer loop get filter estimate failed.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v95) = 0;
          v59 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v59);
          if (v59 != buf)
          {
            free(v59);
          }
        }

LABEL_70:
        v2 = *v2;
        if (!v2)
        {
          goto LABEL_77;
        }

        goto LABEL_3;
      }

      v74 = off_1024DE5F8;
      v75 = v71;
      v78 = xmmword_101C75BF0;
      v79 = xmmword_101C75BF0;
      v80 = v71;
      v81 = v71;
      v82 = 0xBFF0000000000000;
      v83 = 0;
      v84 = 0;
      if ((sub_10002A8E4((v10 + 25), &v74) & 1) == 0)
      {
        break;
      }

      v72 = 0.0;
      v73 = 0.0;
      v16 = &v78 + 1;
      if (*&v79 <= 0.0)
      {
        v16 = v89 + 1;
      }

      if ((sub_100208760((a1 + 2384), &v73, &v72, v76, *v16) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v25 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "#Error,fusion hypotheses merging, calc_dNdE failed.", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_59;
        }

        sub_101A7B5F4(buf);
        LOWORD(v95) = 0;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v26);
        if (v26 == buf)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      v18 = v76;
      v19 = v87;
      v20 = v88;
      *v17.i64 = v77 * 0.0174532925;
      v21.i64[1] = 0;
      v22.i64[1] = 0;
      if (fabs(v77 * 0.0174532925) <= 3.14159265)
      {
        v23 = 0x400921FB54442D18uLL;
      }

      else
      {
        v67 = vbslq_s8(v70, 0x400921FB54442D18uLL, v17);
        *v22.i64 = fmod(*v17.i64 + *v67.i64, 6.28318531);
        v23 = 0x400921FB54442D18uLL;
        v21.i64[1] = v67.i64[1];
        *v17.i64 = *v22.i64 - *v67.i64;
      }

      *v22.i64 = v20 * 0.0174532925;
      if (fabs(v20 * 0.0174532925) > *v23.i64)
      {
        v66 = vbslq_s8(v70, v23, v22);
        v68 = v17.i64[0];
        *v22.i64 = fmod(*v22.i64 + *v66.i64, 6.28318531);
        v23 = 0x400921FB54442D18uLL;
        v21.i64[1] = v66.i64[1];
        v17.i64[0] = v68;
        *v22.i64 = *v22.i64 - *v66.i64;
      }

      *v21.i64 = *v17.i64 - *v22.i64;
      if (vabdd_f64(*v17.i64, *v22.i64) > *v23.i64)
      {
        v69 = *vbslq_s8(v70, v23, v21).i64;
        *v21.i64 = fmod(*v21.i64 + v69, 6.28318531) - v69;
      }

      v27 = 1.0 / (*v89 * *v89 * 0.5 + *&v78 * *&v78 * 0.5);
      v28 = (v18 - v19) * 0.0174532925 * v73 * ((v18 - v19) * 0.0174532925 * v73) * v27 + *v21.i64 * 57.2957795 * 0.0174532925 * v72 * (*v21.i64 * 57.2957795 * 0.0174532925 * v72) * v27;
      if (v28 <= 6.18007)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v29 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(v2 + 212);
          v31 = *(v2 + 102);
          v32 = *(v10 + 212);
          v33 = *(v10 + 102);
          *buf = 67241728;
          *&buf[4] = v30;
          v106 = 2050;
          v107 = *&v89[0];
          v108 = 2050;
          v109 = v31;
          v110 = 1026;
          v111 = v32;
          v112 = 2050;
          v113 = v78;
          v114 = 2050;
          v115 = v33;
          v116 = 2050;
          v117 = v28;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "fused hypotheses are merged,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,squaredMD,%{public}.3f", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v44 = *(v2 + 212);
          v45 = *(v2 + 102);
          v46 = *(v10 + 212);
          v47 = *(v10 + 102);
          LODWORD(v95) = 67241728;
          HIDWORD(v95) = v44;
          *v96 = 2050;
          *&v96[2] = *&v89[0];
          *&v96[10] = 2050;
          *&v96[12] = v45;
          *&v96[20] = 1026;
          *&v96[22] = v46;
          *&v96[26] = 2050;
          *&v96[28] = v78;
          *&v96[36] = 2050;
          *&v96[38] = v47;
          *&v96[46] = 2050;
          *&v97 = v28;
          v48 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }
        }

        v34 = *(a1 + 2792);
        if (v34)
        {
          if (v34[1] == 1)
          {
            if (((*v34 & 1) != 0 || *v89 >= *&v78) && (*v34 != 1 || v2[102] <= v10[102]))
            {
LABEL_72:
              v50 = *(v2 + 8) + *(v2 + 7) - 1;
              v51 = *(*(v2 + 4) + 8 * (v50 / 0x1A)) + 152 * (v50 % 0x1A);
              v95 = *v51;
              v52 = *(v51 + 8);
              *v96 = v52;
              if (v52)
              {
                atomic_fetch_add_explicit((v52 + 16), 1uLL, memory_order_relaxed);
              }

              *&v96[8] = off_1024DE5F8;
              v53 = *(v51 + 24);
              v54 = *(v51 + 40);
              v55 = *(v51 + 56);
              v98 = *(v51 + 72);
              v97 = v55;
              *&v96[32] = v54;
              *&v96[16] = v53;
              v56 = *(v51 + 88);
              v57 = *(v51 + 104);
              v58 = *(v51 + 120);
              v102 = *(v51 + 136);
              v101 = v58;
              v100 = v57;
              v99 = v56;
              v103 = 4;
              v103 = *(v51 + 144);
              v104 = *(v51 + 148);
              operator new();
            }
          }

          else if (*v89 >= *&v78)
          {
            goto LABEL_72;
          }
        }

        else if (*v89 >= *&v78)
        {
          goto LABEL_72;
        }

        v35 = *(v10 + 8) + *(v10 + 7) - 1;
        v36 = *(*(v10 + 4) + 8 * (v35 / 0x1A)) + 152 * (v35 % 0x1A);
        v95 = *v36;
        v37 = *(v36 + 8);
        *v96 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
        }

        *&v96[8] = off_1024DE5F8;
        v38 = *(v36 + 24);
        v39 = *(v36 + 40);
        v40 = *(v36 + 56);
        v98 = *(v36 + 72);
        v97 = v40;
        *&v96[32] = v39;
        *&v96[16] = v38;
        v41 = *(v36 + 88);
        v42 = *(v36 + 104);
        v43 = *(v36 + 120);
        v102 = *(v36 + 136);
        v101 = v43;
        v100 = v42;
        v99 = v41;
        v103 = 4;
        v103 = *(v36 + 144);
        v104 = *(v36 + 148);
        operator new();
      }

LABEL_59:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_70;
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v24 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,hypotheses merging, inner loop get filter estimate failed.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_59;
    }

    sub_101A7B5F4(buf);
    LOWORD(v95) = 0;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v26);
    if (v26 == buf)
    {
      goto LABEL_59;
    }

LABEL_34:
    free(v26);
    goto LABEL_59;
  }

LABEL_77:
  *buf = 0;
  v60 = *v1;
  if (*v1)
  {
    do
    {
      v61 = sub_10021C0E4((v60 + 8));
      v62 = *v1;
      if (v61)
      {
        do
        {
          v62 = *v62;
        }

        while (v62 && sub_10021C0E4((v62 + 8)));
        if (buf != v1 && v1 != v62)
        {
          v63 = v1;
          do
          {
            v64 = v63;
            v63 = *v63;
          }

          while (v63 != v62);
          if (v64 != v1)
          {
            *v64 = *buf;
            *buf = *v1;
            *v1 = v62;
          }
        }

        if (!v62)
        {
          break;
        }
      }

      v60 = *v62;
      v1 = v62;
    }

    while (*v62);
  }

  sub_10020AB0C(buf);
  return 1;
}

void sub_100216DDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100216E10(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v9;
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v10 = *(a2 + 11);
  v11 = *(a2 + 13);
  v12 = *(a2 + 15);
  *(a1 + 136) = a2[17];
  *(a1 + 120) = v12;
  *(a1 + 104) = v11;
  *(a1 + 88) = v10;
  *(a1 + 144) = *(a2 + 36);
  *(a1 + 148) = *(a2 + 74);
  return a1;
}

void *sub_100216EAC(uint64_t a1, double a2)
{
  if (qword_1025D4770 != -1)
  {
    sub_10025BA60();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *buf = 136446978;
    v11 = v5;
    v12 = 2050;
    v13 = a2;
    v14 = 2050;
    v15 = v6;
    v16 = 2050;
    v17 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,restart dPos cumsum from mct,%{public}.3f,prev_IntgStartTimeMCT,%{public}.3f,lastIOSampleMCT,%{public}.3f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v9 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::restart(const CFTimeInterval)", "%s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  sub_10020C740(a1);
  result = sub_1001FB750((a1 + 208));
  *(a1 + 8) = a2;
  return result;
}

void sub_1002170B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1002170C4(void *a1@<X1>, void *a2@<X8>)
{
  v3 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  do
  {
    v4 = a1[6] + a1[7];
    v5 = a1[3];
    v6 = a1[4];
    v7 = (v5 + 8 * (v4 / 0x1A));
    if (v6 == v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7 + 152 * (v4 % 0x1A);
    }

    while (1)
    {
      v9 = v6 == v5 ? 0 : *(v5 + 8 * (a1[6] / 0x1AuLL)) + 152 * (a1[6] % 0x1AuLL);
      if (v9 == v8)
      {
        break;
      }

      v10 = v8;
      if (v8 == *v7)
      {
        v10 = *(v7 - 1) + 3952;
      }

      v11 = *(v10 - 144);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(v10 - 152);
          if (v14 && *(v14 + 40) > 0.0 && v3 == *(v14 + 124))
          {
            if ((*(*v14 + 56))(v14) < 900.0)
            {
              sub_1002173E4(v15, a2, (v14 + 124));
              sub_100008080(v13);
              break;
            }

            if (qword_1025D4770 != -1)
            {
              sub_1018B5ED8();
            }

            v16 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v21 = v3;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#TZ,getHypLocRadioTechSet,type,%d,aged out", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018B5F00(buf);
              v18 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "std::set<cllcf::CLLCFusionTZTrustFromTechCrossCheck::LocationRadioTechnology> cllcf::CLLCFusionTZTrustFromTechCrossCheck::getHypLocRadioTechSet(const LCFusionLocationHypothesis &) const", "%s\n", v18);
              if (v18 != buf)
              {
                free(v18);
              }
            }
          }

          sub_100008080(v13);
        }
      }

      if (v8 == *v7)
      {
        v17 = *--v7;
        v8 = v17 + 3952;
      }

      v8 -= 152;
      v5 = a1[3];
      v6 = a1[4];
    }

    ++v3;
  }

  while (v3 != 14);
}

void sub_1002173B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100008080(v12);
  sub_1003C93BC(a12, *(a12 + 8));
  _Unwind_Resume(a1);
}

void sub_1002173E4(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 <= 0xD)
  {
    if (((1 << v3) & 0x60A) != 0)
    {
      v6 = 1;
      v5 = &v6;
    }

    else if (((1 << v3) & 0x1C0) != 0)
    {
      v8 = 3;
      v5 = &v8;
    }

    else
    {
      if (((1 << v3) & 0x2810) == 0)
      {
        return;
      }

      v7 = 2;
      v5 = &v7;
    }

    sub_1003C9410(a2, v5);
  }
}

uint64_t sub_100217474(uint64_t result, int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = 1;
      if (a2 > 3)
      {
        if ((a2 - 4) < 2)
        {
          ++*(v4 + 140);
          return result;
        }
      }

      else
      {
        switch(a2)
        {
          case 1:
            ++*(v4 + 128);
            return result;
          case 2:
            ++*(v4 + 132);
            return result;
          case 3:
            ++*(v4 + 136);
            return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

int32x4_t sub_100217538(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = (a1 + 56);
    do
    {
      if (v5[1].i32[3] >= v6)
      {
        v7 = v5;
      }

      v5 = v5->i64[v5[1].i32[3] < v6];
    }

    while (v5);
    if (v7 != (a1 + 56) && v6 >= v7[1].i32[3])
    {
      v7[2].i8[0] = 1;
      v8.i64[0] = __PAIR64__(a3, a2);
      v8.i64[1] = __PAIR64__(a4, a5);
      result = vaddq_s32(v7[7], v8);
      v7[7] = result;
    }
  }

  return result;
}

void sub_1002175A8(uint64_t a1, double *a2, uint64_t a3, void *a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 280);
    v23[0] = 67240448;
    v23[1] = a4;
    v24 = 1026;
    v25 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WifiZMetrics, update mapmatch state, isApproToCal, %{public}d, isMapMatchActive %{public}d", v23, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017478A8(a4);
  }

  if (a4)
  {
    if (*(a1 + 280))
    {
      goto LABEL_25;
    }

    *(a1 + 96) = *a2;
    *(a1 + 104) = 1;
    *(a1 + 112) = *a2;
    *(a1 + 120) = 1;
    *(a1 + 280) = 1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    *(a1 + 40) = 0;
    v12 = (v11 - v10) >> 3;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v10);
        v13 = *(a1 + 16);
        v10 = (*(a1 + 8) + 8);
        *(a1 + 8) = v10;
        v12 = (v13 - v10) >> 3;
      }

      while (v12 > 2);
    }

    if (v12 == 1)
    {
      v14 = 128;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_18:
        v15 = *(a1 + 56);
        v16 = *(a1 + 64);
        *(a1 + 88) = 0;
        v17 = (v16 - v15) >> 3;
        if (v17 >= 3)
        {
          do
          {
            operator delete(*v15);
            v18 = *(a1 + 64);
            v15 = (*(a1 + 56) + 8);
            *(a1 + 56) = v15;
            v17 = (v18 - v15) >> 3;
          }

          while (v17 > 2);
        }

        if (v17 == 1)
        {
          v19 = 128;
          goto LABEL_24;
        }

        if (v17 == 2)
        {
          v19 = 256;
LABEL_24:
          *(a1 + 80) = v19;
        }

LABEL_25:
        v20 = *(a3 + 384);
        v21 = v20 > 0.0 && v20 < 3.0;
        if (v21 && (*(a3 + 312) + 1) >= 2)
        {
          v22 = *(a3 + 316);
          if (fabsf(v22) > 2.2204e-16)
          {
            sub_101743FF4(a1, *a2, *(a3 + 376) + v22);
          }
        }

        *(a1 + 112) = *a2;
        *(a1 + 120) = 1;
        sub_10174405C(a1);
        return;
      }

      v14 = 256;
    }

    *(a1 + 32) = v14;
    goto LABEL_18;
  }

  if (*(a1 + 280))
  {
    *(a1 + 280) = 0;
  }
}

double sub_100217810(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, _BYTE *a10, void *a11, _BYTE *a12, void *a13, double *a14, void *a15, void *a16)
{
  v21 = a14;
  v22 = a11;
  v24 = a9;
  v23 = a10;
  v25 = *a2;
  *(a3 + 64) = *a2;
  v26 = *(a1 + 256);
  v28 = (v26 < 0 || ((v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v26 - 1) > 0xFFFFFFFFFFFFELL;
  if (v28 || ((v29 = *(a1 + 248), v29 >= 0) ? (v30 = ((v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v30 = 1), v30 ? (v31 = (v29 - 1) > 0xFFFFFFFFFFFFELL) : (v31 = 0), v31))
  {
    v33 = a6;
    Current = CFAbsoluteTimeGetCurrent();
    v23 = a10;
    v22 = a11;
    a6 = v33;
    v24 = a9;
    v21 = a14;
  }

  else
  {
    Current = v25 - *(a1 + 256) + *(a1 + 248);
  }

  *(a3 + 72) = Current;
  *(a3 + 80) = *a6;
  *(a3 + 88) = *a7;
  *(a3 + 96) = *a8;
  *(a3 + 104) = *v24;
  *(a3 + 112) = *a12;
  *(a3 + 120) = *(a5 + 376);
  *(a3 + 136) = *(a4 + 44);
  *(a3 + 168) = *a15;
  *(a3 + 176) = *v23;
  *(a3 + 184) = *v22;
  *(a3 + 256) = *a16;
  *(a3 + 264) = *a13;
  result = *v21;
  *(a3 + 272) = *v21;
  return result;
}

uint64_t sub_100217978(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5, double *a6, double *a7)
{
  v14 = a5;
  sub_100214578(a1, a2, a3, a6, a7);
  result = 0;
  v12 = 368;
  if (*(a1 + 245))
  {
    v12 = 244;
  }

  if (*(a1 + v12) == 1 && *a6 > 300.0 && *a7 > 5000.0)
  {
    result = *a1;
    if (*a1)
    {
      result = sub_100214550(result, a4, &v14);
      if (result)
      {
        if (*(a1 + 2104) <= 0.0)
        {
          return 0;
        }

        else
        {
          result = sub_1002D4484(*a1, (a1 + 1592));
          if (result)
          {
            v13 = *(a1 + 240);
            return v13 < sub_10173FDAC(a1);
          }
        }
      }
    }
  }

  return result;
}

void sub_100217A60(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 516))
  {
    v4 = *(a1 + 432);
    if (v4 >= -180.0 && fabs(*(a1 + 424)) <= 90.0 && v4 <= 180.0)
    {
      v5 = a1 + 420;
LABEL_11:
      sub_1001097CC((a1 + 208), v5, a3);
      *a2 = v7;
      return;
    }
  }

  if (*(a1 + 360))
  {
    v6 = *(a1 + 276);
    if (v6 >= -180.0 && fabs(*(a1 + 268)) <= 90.0 && v6 <= 180.0)
    {
      v5 = a1 + 264;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100217B20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double *a6, uint64_t *a7, uint64_t a8, uint64_t a9, double *a10, double *a11, uint64_t *a12, int a13)
{
  sub_1002183F8(a1, a2, a8, a9);
  v21 = sub_100214630(a1, a2, a9, *(a8 + 76));
  *a10 = v21;
  *(a2 + 160) = v21;
  v22 = *(a9 + 384);
  v23 = v22 > 0.0 && v22 < 12.0;
  if (v23 && *(a2 + 176) == 1)
  {
    v24 = *a10;
    *(a2 + 120) = *a10;
    *a6 = v24 - *(a2 + 168);
    *a7 = *(a9 + 384);
    *(a5 + 64) = *a11;
    *a11 = *(a2 + 64);
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v25 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v26 = *(a2 + 64);
      v27 = *(a2 + 72);
      v28 = *a6;
      v29 = *a7;
      v30 = *(a8 + 28);
      v31 = *(a8 + 36);
      v32 = *(a8 + 4);
      v33 = *(a8 + 12);
      v34 = *(a8 + 60);
      v35 = *(a8 + 20);
      v36 = *(a2 + 168);
      v37 = *a12;
      v39 = *(a2 + 256);
      v38 = *(a2 + 264);
      v40 = *(a3 + 8);
      v41 = *(a2 + 96);
      v42 = *(a2 + 104);
      *buf = 134353153;
      v49 = v26;
      v50 = 2050;
      v51 = v27;
      v52 = 2049;
      v53 = v28;
      v54 = 2050;
      v55 = v29;
      v56 = 2049;
      v57 = v30;
      v58 = 2050;
      v59 = v31;
      v60 = 2053;
      v61 = v32;
      v62 = 2053;
      v63 = v33;
      v64 = 2050;
      v65 = v34;
      v66 = 2050;
      v67 = v35;
      v68 = 2049;
      v69 = v36;
      v70 = 2050;
      v71 = v37;
      v72 = 2049;
      v73 = v38;
      v74 = 2050;
      v75 = v39;
      v76 = 2049;
      v77 = v40;
      v78 = 2049;
      v79 = v41;
      v80 = 2049;
      v81 = v42;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "BaroAlt,calibrating,time,%{public}.lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,baseUnc,%{public}.3lf,alt,%{private}.3lf,altUnc,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,horUnc,%{public}.3lf,relAltOdom,%{private}.3lf,fTimeOfLastOdometerData,%{public}.4lf,pressure,%{private}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,fBaroBiasUsingReferencePressure,%{private}.3lf,fReferencePressurePressure,%{private}.3lf,pressureUnc,%{private}.3lf", buf, 0xACu);
    }

    v43 = sub_10000A100(121, 2);
    if (v43)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v47 = _os_log_send_and_compose_impl();
      v43 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeterCore::calibrateBaroBiasUsingReferencePressure(CLBaroAltEstimatorInput &, CLBaroAltEstimatorOutput &, std::deque<BaroBiasEstimate> &, BarometricAltitudeComputeAWDData &, double &, double &, CLDaemonLocation &, CLDaemonLocationPrivate &, double &, CFTimeInterval &, const CFTimeInterval &, const int)", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    if (*(a2 + 112) == 1 && sub_1002D4484(v43, a2))
    {
      if (sub_1016B3FF8(a1, a2, a3, a4, a11, a13, a8))
      {
        return 1;
      }
    }

    else
    {
      *(a1 + 144) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v46 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "BaroAlt,newCalibSessionStart,no valid device pressure or ref pressure feature disabled", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016BBF54();
      }
    }
  }

  else
  {
    *(a1 + 144) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v45 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_INFO, "BaroAlt,newCalibSessionStart,attempt DEM and reference weather calibrations,fail", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016BBE50();
    }
  }

  return 0;
}

uint64_t sub_100218038(uint64_t result, int a2, double a3, double a4)
{
  v4 = *(result + 8);
  if (v4 == -1 || vabdd_f64(*(result + 16), a4) >= 5400.0 || (fabs(*result) > 2.22044605e-16 ? (v5 = a2 == 1) : (v5 = 0), v5 ? (v6 = v4 == 2) : (v6 = 0), !v6))
  {
    *result = a3;
    *(result + 8) = a2;
    *(result + 16) = a4;
  }

  return result;
}

uint64_t sub_10021808C(uint64_t a1, int32x2_t *a2)
{
  if (*(a1 + 4296) == 1 && (v2 = *(a1 + 4288)) != 0)
  {
    return sub_100214D30(v2, a2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002180B0(_BOOL8 result, uint64_t a2, double a3)
{
  v5 = result;
  v6 = *(a2 + 96);
  if ((v6 & 0xFFFFFFF7) == 1)
  {
    sub_1002B0140(result, a2);
    *(v5 + 224) = a3;
    if (sub_1002B03E0(v5, a2))
    {
      *(v5 + 216) = a3;
      if (qword_1025D4600 != -1)
      {
        sub_101A85004();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + 184);
        v9 = *(v5 + 216);
        v12[0] = 67240448;
        v12[1] = v8;
        v13 = 2050;
        v14 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,feedLocation,fixConvergedMCT,%{public}0.2f", v12, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A86648();
      }

      sub_1002B0884(v5, 7);
    }

    result = sub_1002B0B44(a2);
    if (result)
    {
      a3 = *(a2 + 44) * 3.6;
    }

    else
    {
      a3 = 0.0;
    }

    v11 = 1024;
    goto LABEL_21;
  }

  if (v6 == 11 || v6 == 4)
  {
    result = sub_100072814(a2);
    if (result)
    {
      v11 = 240;
LABEL_21:
      *(v5 + v11) = a3;
    }
  }

  return result;
}

double sub_100218244(uint64_t a1, uint64_t a2, _BYTE *a3, double *a4)
{
  *a3 = 0;
  *a4 = -1.0;
  result = *(a2 + 44);
  if (result >= 0.0)
  {
    v5 = *(a2 + 96);
    v6 = v5 > 9;
    v7 = (1 << v5) & 0x20A;
    if (!v6 && v7 != 0)
    {
      *(a1 + 32) = result;
      v9 = *(a2 + 76);
      *(a1 + 40) = v9;
      result = vabdd_f64(v9, *(a1 + 24));
      if (result < 1.5)
      {
        *a3 = 1;
        *a1 = *(a1 + 32);
        result = *(a2 + 44);
        *a4 = result;
      }
    }
  }

  return result;
}

uint64_t sub_1002182BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_100212DE4((a1 + 16), (a2 + 16));
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  memcpy((a1 + 192), (a2 + 192), 0x161uLL);
  *(a1 + 552) = *(a2 + 552);
  v10 = *(a2 + 700);
  v11 = *(a2 + 716);
  v12 = *(a2 + 732);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 716) = v11;
  *(a1 + 732) = v12;
  *(a1 + 700) = v10;
  v13 = *(a2 + 636);
  v14 = *(a2 + 652);
  v15 = *(a2 + 684);
  *(a1 + 668) = *(a2 + 668);
  *(a1 + 684) = v15;
  *(a1 + 636) = v13;
  *(a1 + 652) = v14;
  v16 = *(a2 + 572);
  v17 = *(a2 + 588);
  v18 = *(a2 + 620);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 620) = v18;
  *(a1 + 572) = v16;
  *(a1 + 588) = v17;
  *(a1 + 556) = *(a2 + 556);
  v19 = *(a2 + 760);
  v20 = *(a2 + 768);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v19;
  v21 = *(a1 + 768);
  *(a1 + 768) = v20;
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = *(a2 + 792);
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 792) = v22;
  v24 = *(a2 + 856);
  v23 = *(a2 + 872);
  v25 = *(a2 + 840);
  *(a1 + 884) = *(a2 + 884);
  *(a1 + 856) = v24;
  *(a1 + 872) = v23;
  *(a1 + 840) = v25;
  v26 = *(a2 + 824);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 824) = v26;
  return a1;
}

void sub_1002183F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 312);
  v8 = *(a4 + 316);
  v9 = fabs(v8);
  if ((v7 - 1) <= 0xFFFFFFFD && v9 > 2.22044605e-16)
  {
    sub_100218038(*(a1 + 592), v7, v8, *(a3 + 76));
    sub_100214CE0(*(a1 + 592), (a1 + 192), (a1 + 200), *(a3 + 76));
  }

  sub_100214948(a1, a2, a3);
}

uint64_t sub_100218494(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10023E224(a1, i + 2);
  }

  return a1;
}

uint64_t sub_100218524(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 >= *(result + 245))
  {
    v2 = *(result + 245);
  }

  *(result + 245) = v2;
  v3 = *(result + 249);
  if (v3 <= *(a2 + 16))
  {
    v3 = *(a2 + 16);
  }

  *(result + 249) = v3;
  v4 = *(a2 + 4);
  if (v4 >= *(result + 237))
  {
    v4 = *(result + 237);
  }

  *(result + 237) = v4;
  v5 = *(result + 241);
  if (v5 < *(a2 + 8))
  {
    v5 = *(a2 + 8);
  }

  *(result + 241) = v5;
  return result;
}

uint64_t sub_100218578(uint64_t a1, unsigned int *a2, double a3, double a4, double a5, double a6, double a7)
{
  v12 = *a2;
  if (v12 > 0xA)
  {
    v13 = 18000.0;
  }

  else
  {
    v13 = dbl_101C89708[v12];
  }

  if (a3 <= 0.0 || (a4 >= -500.0 ? (v14 = v13 < a4) : (v14 = 1), v14))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350081;
      v25 = a3;
      v26 = 2049;
      v27 = a4;
      v28 = 2050;
      v29 = a5;
      v30 = 2050;
      v31 = a6;
      v32 = 2050;
      v33 = a7;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "KFCV:#Error,invalid altitude,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    sub_101912E28(buf);
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::initialize(const CFTimeInterval, const double, const double, const double, const double, const LCFusionDynamicsMode &)", "%s\n", v20);
    goto LABEL_41;
  }

  if (a7 <= 0.0)
  {
    goto LABEL_21;
  }

  v18 = 4.0;
  if ((v12 - 1) <= 9)
  {
    v18 = dbl_101C89760[(v12 - 1)];
  }

  if (v18 < a7)
  {
LABEL_21:
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      v25 = a3;
      v26 = 2049;
      v27 = a4;
      v28 = 2050;
      v29 = a5;
      v30 = 2050;
      v31 = a6;
      v32 = 2050;
      v33 = a7;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRateUnc,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_26;
  }

  v21 = v12 - 1;
  if (v21 > 9)
  {
    v22 = 1600.0;
  }

  else
  {
    v22 = dbl_101C897B0[v21];
  }

  if (a6 * a6 > v22)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      v25 = a3;
      v26 = 2049;
      v27 = a4;
      v28 = 2050;
      v29 = a5;
      v30 = 2050;
      v31 = a6;
      v32 = 2050;
      v33 = a7;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRate,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

LABEL_26:
    sub_101912E28(buf);
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::initialize(const CFTimeInterval, const double, const double, const double, const double, const LCFusionDynamicsMode &)", "%s\n", v20);
LABEL_41:
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  *a1 = a4;
  *(a1 + 8) = a5 * a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7 * a7;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a3;
  if (a5 < 1.0)
  {
    *(a1 + 8) = 0x3FF0000000000000;
  }

  v16 = 1;
  *(a1 + 56) = 1;
  return v16;
}

void sub_100218AD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100218AE4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 8) = *a3;
  *(a4 + 8) = *a4;
  v4 = *(a1 + 248);
  if (v4)
  {
    v5 = a2;
    if (a2[5] > 0.0)
    {
      __asm { FMOV            V1.2D, #-1.0 }

      v14 = xmmword_101C75BF0;
      v43 = _Q1;
      do
      {
        v45 = off_1024DE5F8;
        v46 = _Q1;
        v47 = v14;
        v48 = v14;
        v49 = _Q1;
        v50 = _Q1;
        v51 = 0xBFF0000000000000;
        v52 = 0;
        v53 = 0;
        if (*(v4 + 214))
        {
          v15 = v4[8];
          if (v15)
          {
            if (*(*(v4[4] + 8 * ((v15 + v4[7] - 1) / 0x1AuLL)) + 152 * ((v15 + v4[7] - 1) % 0x1AuLL) + 148) == 1)
            {
              v16 = sub_10002A8E4((v4 + 25), &v45);
              v14 = xmmword_101C75BF0;
              _Q1 = v43;
              if (v16)
              {
                if (*&v47 > 0.0)
                {
                  v44 = 0.0;
                  if (sub_100218DFC(a1, v5, &v45, &v44))
                  {
                    v17 = v47;
                    v19 = *(a3 + 8);
                    v18 = *(a3 + 16);
                    if (v19 >= v18)
                    {
                      v21 = (v19 - *a3) >> 4;
                      v22 = v21 + 1;
                      if ((v21 + 1) >> 60)
                      {
                        goto LABEL_40;
                      }

                      v23 = v18 - *a3;
                      if (v23 >> 3 > v22)
                      {
                        v22 = v23 >> 3;
                      }

                      if (v23 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v24 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v24 = v22;
                      }

                      if (v24)
                      {
                        sub_1003E5FE8(a3, v24);
                      }

                      v25 = (16 * v21);
                      *v25 = v44;
                      *(v25 + 1) = v17;
                      v20 = 16 * v21 + 16;
                      v26 = *(a3 + 8) - *a3;
                      v27 = 16 * v21 - v26;
                      memcpy(v25 - v26, *a3, v26);
                      v28 = *a3;
                      *a3 = v27;
                      *(a3 + 8) = v20;
                      *(a3 + 16) = 0;
                      if (v28)
                      {
                        operator delete(v28);
                      }

                      v5 = a2;
                    }

                    else
                    {
                      *v19 = v44;
                      *(v19 + 1) = v17;
                      v20 = (v19 + 2);
                    }

                    *(a3 + 8) = v20;
                  }

                  v29 = sub_1002190E4(a1, v5, &v45);
                  v44 = v29;
                  v30 = v47;
                  v32 = *(a4 + 8);
                  v31 = *(a4 + 16);
                  if (v32 >= v31)
                  {
                    v34 = (v32 - *a4) >> 4;
                    v35 = v34 + 1;
                    if ((v34 + 1) >> 60)
                    {
LABEL_40:
                      sub_10028C64C();
                    }

                    v36 = v31 - *a4;
                    if (v36 >> 3 > v35)
                    {
                      v35 = v36 >> 3;
                    }

                    if (v36 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v37 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v37 = v35;
                    }

                    if (v37)
                    {
                      sub_1003E5FE8(a4, v37);
                    }

                    v38 = 16 * v34;
                    *v38 = v29;
                    *(v38 + 8) = v30;
                    v33 = 16 * v34 + 16;
                    v39 = *(a4 + 8) - *a4;
                    v40 = 16 * v34 - v39;
                    memcpy((v38 - v39), *a4, v39);
                    v41 = *a4;
                    *a4 = v40;
                    *(a4 + 8) = v33;
                    *(a4 + 16) = 0;
                    if (v41)
                    {
                      operator delete(v41);
                    }

                    v5 = a2;
                    v14 = xmmword_101C75BF0;
                    _Q1 = v43;
                  }

                  else
                  {
                    *v32 = v29;
                    *(v32 + 8) = v30;
                    v33 = v32 + 16;
                    v14 = xmmword_101C75BF0;
                    _Q1 = v43;
                  }

                  *(a4 + 8) = v33;
                }
              }
            }
          }
        }

        v4 = *v4;
      }

      while (v4);
    }
  }
}

uint64_t sub_100218DFC(float64x2_t *a1, double *a2, double *a3, double *a4)
{
  v27 = 0.0;
  v28 = 0.0;
  if (a2[7] <= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  if (sub_100208760(a1 + 149, &v28, &v27, a2[3], v7[6]))
  {
    v12 = a2[3];
    v13 = a3[3];
    *v11.i64 = a2[4] * 0.0174532925;
    *v9.i64 = a3[4] * 0.0174532925;
    v10.i64[0] = 0x400921FB54442D18;
    v25 = v10;
    if (fabs(*v11.i64) > 3.14159265)
    {
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v21 = *vbslq_s8(vnegq_f64(v14), v10, v11).i64;
      v23 = v9;
      *v8.i64 = fmod(*v11.i64 + v21, 6.28318531);
      v9 = v23;
      v10 = v25;
      *v11.i64 = *v8.i64 - v21;
    }

    if (fabs(*v9.i64) > *v10.i64)
    {
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v22 = *vbslq_s8(vnegq_f64(v15), v10, v9).i64;
      v24 = v11.i64[0];
      *v8.i64 = fmod(*v9.i64 + v22, 6.28318531);
      v11.i64[0] = v24;
      v10 = v25;
      *v9.i64 = *v8.i64 - v22;
    }

    *v8.i64 = *v11.i64 - *v9.i64;
    if (vabdd_f64(*v11.i64, *v9.i64) > *v10.i64)
    {
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v26 = *vbslq_s8(vnegq_f64(v16), v10, v8).i64;
      *v8.i64 = fmod(*v8.i64 + v26, 6.28318531) - v26;
    }

    v17 = a2[5] * a2[5] * 0.5 + a3[5] * a3[5] * 0.5;
    if (v17 != 0.0)
    {
      *a4 = sqrt(1.0 / v17 * ((v12 - v13) * 0.0174532925 * v28 * ((v12 - v13) * 0.0174532925 * v28)) + *v8.i64 * 57.2957795 * 0.0174532925 * v27 * (*v8.i64 * 57.2957795 * 0.0174532925 * v27) * (1.0 / v17));
      return 1;
    }

    return 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v19 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error, calc_dNdE failed.", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101A7B5F4(buf);
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::computeInterHypothesisMahalanobisDistance(const LCFusionProviderLocation &, const LCFusionProviderLocation &, double &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  return result;
}

void sub_1002190D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100219110(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        v7 = *result;
        do
        {
          v8 = *v5;
          v9 = *v5 <= 0.0 || v8 > v7;
          v10 = (v4 + 280);
          if (v9)
          {
            v11 = *(result + 8);
            v12 = v8 <= v7 || v8 > v11;
            v10 = (v4 + 284);
            if (v12)
            {
              if (v8 <= v11 || (v10 = (v4 + 288), v8 > *(result + 16)))
              {
                v10 = (v4 + 292);
              }
            }
          }

          ++*v10;
          v5 += 2;
        }

        while (v5 != v6);
        *(v4 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1002191D8(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        result = 240;
        do
        {
          v7 = v5[1];
          if (v7 > 0.0)
          {
            v8 = *v5;
            if (v7 <= 50.0)
            {
              v10 = v8 <= 0.0 || v8 > 50.0;
              v9 = (v4 + 232);
              if (v10)
              {
                v11 = v8 <= 50.0 || v8 > 100.0;
                v9 = (v4 + 236);
                if (v11)
                {
                  if (v8 > 200.0 || v8 <= 100.0)
                  {
                    v13 = 244;
                  }

                  else
                  {
                    v13 = 240;
                  }

                  v9 = (v4 + v13);
                }
              }
            }

            else
            {
              v9 = (v4 + 196);
              if (v8 <= 500.0)
              {
                goto LABEL_32;
              }
            }

            ++*v9;
            *(v4 + 32) = 1;
          }

LABEL_32:
          v5 += 2;
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

void sub_1002192F8(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 > 0x16)
  {
LABEL_9:
    if (*(a1 + 520) > 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754D8();
      }

      v16 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a2;
        v24[0] = 67240192;
        v24[1] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,wifi,unhandled notification,%{public}d", v24, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101875710(a2);
      }
    }

    return;
  }

  if (((1 << v5) & 0x1B) != 0)
  {
    v7 = sub_10018E7E0(a3);
    v8 = *(a3 + 504);
    if (!v7)
    {
      v8 = -1.0;
    }

    *(a1 + 64) = v8;
    v9 = *(a3 + 96);
    v10 = *(a3 + 112);
    v11 = *(a3 + 128);
    *(a1 + 292) = *(a3 + 140);
    *(a1 + 264) = v10;
    *(a1 + 280) = v11;
    *(a1 + 248) = v9;
    v12 = *(a3 + 32);
    v13 = *(a3 + 48);
    v14 = *(a3 + 64);
    *(a1 + 232) = *(a3 + 80);
    *(a1 + 216) = v14;
    *(a1 + 200) = v13;
    *(a1 + 184) = v12;
    v15 = *a3;
    *(a1 + 168) = *(a3 + 16);
    *(a1 + 152) = v15;
    return;
  }

  if (v5 != 9)
  {
    if (v5 == 22)
    {
      return;
    }

    goto LABEL_9;
  }

  *(a1 + 152) = 0xFFFF;
  *(a1 + 164) = 0;
  *(a1 + 156) = 0;
  *(a1 + 172) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 188) = _Q0;
  *(a1 + 204) = _Q0;
  *(a1 + 220) = _Q0;
  *(a1 + 236) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0xBFF0000000000000;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0xBFF0000000000000;
  *(a1 + 276) = 0x7FFFFFFF;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  *&_Q0 = *(a1 + 520);
  *(a1 + 64) = 0xBFF0000000000000;
  if (*&_Q0 > 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v23 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,wifi,unavailable", v24, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101875634();
    }
  }
}

double *sub_100219604(double *result, double *a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    a3 = *result;
  }

  *result = a3;
  v4 = *a2;
  if (a4 > 0.0)
  {
    v4 = a4;
  }

  *a2 = v4;
  return result;
}

void sub_100219660(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a2 + 768);
  a1[1] = *(a2 + 768) != 0;
  v5 = *(a2 + 504);
  *(a1 + 2) = v5;
  if (v4)
  {
    *(a1 + 1) = v5;
    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_101A67320();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "LocationController,Associated WiFi location without association", &v14, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A67334();
      }

      *a1 = 1;
      *(a1 + 3) = *(a2 + 504);
      v4 = a1[1];
    }
  }

  if (v3 == v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A670F8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      v10 = a1[1];
      v14 = 67240448;
      v15 = v9;
      v16 = 1026;
      v17 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LocationController,WifiAssoc,%{public}d,AssocLoc,%{public}d,Location", &v14, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A67534();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A670F8();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = 67240448;
      v15 = v12;
      v16 = 1026;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "LocationController,WifiAssoc,%{public}d,AssocLoc,%{public}d,Location", &v14, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A67444();
    }
  }
}

void sub_1002198B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) == 1)
  {
    if (*(a1 + 8))
    {
      if (sub_100027FB4(a2))
      {
        v4 = sub_10000B1F8();
        sub_10000AED4(v4, buf);
        v5 = *&v19[2];
        if (*&v19[2] - *(a1 + 80) >= 1.0 && *&v19[2] - *(a1 + 72) >= 1.0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_10193CF9C();
          }

          v6 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#HST, Updating with Wifi location", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193D0F8();
          }

          v7 = sub_100219BA8(a1, 4, a2);
          if (v7 > 0.0)
          {
            v9 = v7;
            v10 = v8;
            sub_100226DAC(a1, v7, v8);
            *(a1 + 80) = v5;
            sub_100226E7C(a1);
            if (qword_1025D4600 != -1)
            {
              sub_10193CF9C();
            }

            v11 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v12 = *(a1 + 3);
              v13 = *(a1 + 256);
              v14 = *(a1 + 258);
              *buf = 134219008;
              v17 = v9;
              v18 = 2048;
              *v19 = v10;
              *&v19[8] = 1024;
              v20 = v12;
              v21 = 1024;
              v22 = v13;
              v23 = 1024;
              v24 = v14;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#HST,speed,%f,speedSigma,%f,source,Wifi,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_10193CF9C();
              }

              v15 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerHighSpeedTransitDetector::updateWithWifiLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v15);
              if (v15 != buf)
              {
                free(v15);
              }
            }
          }
        }
      }
    }
  }
}

double sub_100219BA8(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return -1.0;
  }

  sub_1001E45DC(*(a1 + 8), a2, &v12, *(a3 + 76) + -300.0, *(a3 + 76) + -60.0);
  v4 = v12;
  v5 = v13;
  if (v13 != v12)
  {
    v6 = 1.79769313e308;
    v7 = -1.0;
    while (1)
    {
      v5 -= 156;
      sub_100226CA0(v4, v5, a3);
      if (v7 == -1.0 || v9 < v6)
      {
        v7 = v8;
        if (v9 < 10.0)
        {
          v4 = v12;
          if (v12)
          {
            goto LABEL_16;
          }

          return v7;
        }

        v6 = v9;
      }

      v4 = v12;
      if (v5 == v12)
      {
        if (v12)
        {
          goto LABEL_16;
        }

        return v7;
      }
    }
  }

  v7 = -1.0;
  if (v12)
  {
LABEL_16:
    v13 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_100219CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100219CD0(uint64_t a1)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v2 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 2658);
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stop emergency acquisition, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A41190(a1);
  }

  if (*(a1 + 2658) == 1)
  {
    *(a1 + 2658) = 0;
    if (_os_feature_enabled_impl())
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A40160();
      }

      v4 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Stopped emergency acquisition", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
LABEL_20:
        sub_101A4127C();
      }
    }

    else
    {
      [*(*(a1 + 2224) + 16) unregister:*(*(a1 + 2224) + 8) forNotification:0];
      if (qword_1025D4640 != -1)
      {
        sub_101A40160();
      }

      v5 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Stopped emergency acquisition", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_100219EB8(uint64_t a1)
{
  if (*(a1 + 2368))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v2 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42C88();
    }

    [*(a1 + 2368) setNextFireDelay:1.79769313e308];
    *(a1 + 2656) = 0;
    if (*(a1 + 3032))
    {
      sub_10000AED0(buf);
      Current = CFAbsoluteTimeGetCurrent();
      sub_10000EC00(&__p, "NoLocationWatchdog");
      sub_100220CA4(&__p, 3u, buf, Current, -1.0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032));
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog, ignore, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42D6C();
    }
  }

  result = (*(*a1 + 408))(a1);
  if (result)
  {
    v6 = CFAbsoluteTimeGetCurrent();
    result = sub_100CBF338(a1 + 120, v6);
  }

  if (*(a1 + 2448) >= 1)
  {
    return sub_10026ED10(a1 + 2440);
  }

  return result;
}

void sub_10021A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10000CE1C(&a16);
  _Unwind_Resume(a1);
}

void sub_10021A0C4(uint64_t a1, double a2)
{
  if (*(a1 + 752))
  {
    if (*(a1 + 612) == 1 && (*(a1 + 730) != 1 || (*(a1 + 731) & 1) != 0))
    {
      if (sub_10021D1B8(a1))
      {
        if (*(a1 + 623))
        {
          v4 = vabdd_f64(a2, *(a1 + 744));
          v5 = *(a1 + 736) - v4 * 45.0;
          if (v4 >= 1800.0)
          {
            v5 = 0.0;
          }

          if (v5 > 0.0)
          {
            v6 = v5;
          }

          else
          {
            v6 = 0.0;
          }

          v7 = fmin(fmax(v6 / 45.0 * 0.5, *(a1 + 720)), 3600.0);
          v20 = v7;
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v8 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 736);
            *buf = 134284033;
            *v28 = v7;
            *&v28[8] = 2049;
            v29 = v9;
            v30 = 2049;
            v31 = v6;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "scheduleNextTrackingWake, next wake in, %{private}.1lf, seconds, fMinDistanceToFence, %{private}.1lf, minDistanceToFence, %{private}.1lf", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v18 = *(a1 + 736);
            v21 = 134284033;
            v22 = v7;
            v23 = 2049;
            v24 = v18;
            v25 = 2049;
            v26 = v6;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::scheduleNextTrackingWake(const CFAbsoluteTime)", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          v10 = vabdd_f64(v7 + a2, *(a1 + 624));
          if (v10 >= 30.0)
          {
            *(a1 + 624) = (*(**(a1 + 1768) + 152))(*(a1 + 1768), &v20);
            sub_100312400(a1 + 1312);
          }

          else
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v11 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134283521;
              *v28 = v10;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "scheduleNextTrackingWake, intervalSinceLastDate is too low, %{private}.1lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A50CE8();
            }
          }
        }

        else
        {
          *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v17 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, continous tracking is disabled", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A50C0C();
          }
        }
      }

      else
      {
        *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v16 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, all fences are low power ones", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A50B30();
        }
      }
    }

    else
    {
      *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v13 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 728);
        v15 = *(a1 + 730);
        *buf = 67240448;
        *v28 = v14;
        *&v28[4] = 1026;
        *&v28[6] = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, location services not enabled, airplane, %{public}d, cConnected, %{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A50A34();
      }
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake - disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A50958();
    }
  }
}

void sub_10021A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A5A37C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSignalEnvironmentProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A5A390();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSignalEnvironmentProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10021A824(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10021A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 20);
  if (v4 < 0.0 || v4 > 2500.0 || !sub_100020608(*(a4 + 4), *(a4 + 12)))
  {
    return;
  }

  v7 = *(a1 + 128);
  if (!v7)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A5A204();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,CLSE,onLocationNotification,null CSE pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A5A69C();
    }

    return;
  }

  v33 = 0;
  v9 = *(a1 + 120);
  v8 = *(a1 + 124);
  v10 = *(a4 + 4);
  v11 = *(a4 + 12);
  if (*(a1 + 479) < 0)
  {
    sub_100007244(__p, *(a1 + 456), *(a1 + 464));
  }

  else
  {
    *__p = *(a1 + 456);
    v32 = *(a1 + 472);
  }

  *(a1 + 120) = sub_10021AEBC(v7, __p, (a1 + 156), v10, v11);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 124) = 1;
  sub_10021BB98(a1);
  if (*(a1 + 488) != 1 || *(a4 + 20) >= 50.0 || *(a1 + 120) != 3)
  {
LABEL_23:
    v15 = 0;
    v16 = *(a1 + 492);
    if (v16 > 2)
    {
      if (v16 != 3 && v16 != 4 && v16 != 6)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v16 == -1)
      {
        goto LABEL_33;
      }

      if (v16 != 1 && v16 != 2)
      {
LABEL_32:
        *(a1 + 120) = v15;
LABEL_33:
        v17 = *(a1 + 496);
        if (v17 > 0)
        {
          if (v17 == 1 || v17 == 2)
          {
            *(a1 + 124) = v17;
LABEL_43:
            if (v9 != *(a1 + 120) || v8 != v17)
            {
              LODWORD(v33) = *(a1 + 120);
              HIDWORD(v33) = v17;
              if (qword_1025D4650 != -1)
              {
                sub_101A5A310();
              }

              v18 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                v19 = *(a1 + 120);
                v20 = *(a1 + 124);
                *buf = 67240960;
                v43 = v9;
                v44 = 1026;
                v45 = v19;
                v46 = 1026;
                v47 = v8;
                v48 = 1026;
                v49 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", buf, 0x1Au);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_50;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1025D4650 != -1)
              {
                sub_101A5A310();
              }

              v26 = *(a1 + 120);
              v27 = *(a1 + 124);
              v34 = 67240960;
              v35 = v9;
              v36 = 1026;
              v37 = v26;
              v38 = 1026;
              v39 = v8;
              v40 = 1026;
              v41 = v27;
              v28 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLSignalEnvironmentProvider::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v28);
              if (v28 == buf)
              {
                goto LABEL_50;
              }

              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
          if (v17 == -1)
          {
            v17 = *(a1 + 124);
            goto LABEL_43;
          }

          if (!v17)
          {
            goto LABEL_41;
          }
        }

        v17 = 0;
LABEL_41:
        *(a1 + 124) = 0;
        goto LABEL_43;
      }
    }

    v15 = *(a1 + 492);
    goto LABEL_32;
  }

  v13 = *(a1 + 480);
  if (v13)
  {
    v14 = sub_1002D6398(v13, *(a4 + 4), *(a4 + 12));
    if (v14)
    {
      *(a1 + 120) = v14;
      *(a1 + 124) = 2;
    }

    sub_1002D7F8C(*(a1 + 480), a4, 1);
    goto LABEL_23;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A5A310();
  }

  v21 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#Error,CLSE,onLocationNotification,null HRSE pointer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A5A5B0();
  }

  v22 = *(a1 + 124);
  if (v9 != *(a1 + 120) || v8 != v22)
  {
    LODWORD(v33) = *(a1 + 120);
    HIDWORD(v33) = v22;
    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 120);
      v25 = *(a1 + 124);
      *buf = 67240960;
      v43 = v9;
      v44 = 1026;
      v45 = v24;
      v46 = 1026;
      v47 = v8;
      v48 = 1026;
      v49 = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", buf, 0x1Au);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v29 = *(a1 + 120);
    v30 = *(a1 + 124);
    v34 = 67240960;
    v35 = v9;
    v36 = 1026;
    v37 = v29;
    v38 = 1026;
    v39 = v8;
    v40 = 1026;
    v41 = v30;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSignalEnvironmentProvider::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v28);
    if (v28 == buf)
    {
      goto LABEL_50;
    }

LABEL_69:
    free(v28);
LABEL_50:
    *buf = 0;
    (*(*a1 + 152))(a1, buf, &v33, 1, 0xFFFFFFFFLL, 0);
  }
}

void sub_10021AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021AEBC(uint64_t a1, const char *a2, _BYTE *a3, double a4, long double a5)
{
  v11 = a1 + 8;
  v10 = *(a1 + 8);
  v46 = a1 + 8;
  (*(v10 + 16))(a1 + 8);
  v47 = 256;
  sub_1001D08A4(a5);
  v12 = (a4 + 90.0) * 20.0;
  v14 = v13 * 20.0;
  v15 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v16 = *(a1 + 4);
    if ((v16 & 0x80000000) == 0 && v14 - (v16 + 1) < 0.005 && v16 - v14 < 0.005 && v12 - (v15 + 1) < 0.005 && v15 - v12 < 0.005)
    {
      *a3 = 0;
      v17 = *(a1 + 24);
      goto LABEL_70;
    }
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  memset(v52, 0, sizeof(v52));
  v56 = 0;
  v57 = 0;
  *a3 = 1;
  if (qword_1025D4650 != -1)
  {
    sub_101B72618();
  }

  v18 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v19 = *&a2;
    if (a2[23] < 0)
    {
      v19 = *a2;
    }

    *buf = 136446210;
    v51 = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,opening,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v42 = *&a2;
    if (a2[23] < 0)
    {
      v42 = *a2;
    }

    v48 = 136446210;
    v49 = v42;
    v43 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v43);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  v20 = a2;
  if (a2[23] < 0)
  {
    v20 = *a2;
  }

  v56 = fopen(v20, "rb");
  if (!v56)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v27 = *&a2;
      if (a2[23] < 0)
      {
        v27 = *a2;
      }

      *buf = 136446210;
      v51 = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,could not open,%{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    if (a2[23] < 0)
    {
      a2 = *a2;
    }

LABEL_38:
    v48 = 136446210;
    v49 = *&a2;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v28);
    goto LABEL_102;
  }

  if ((sub_101212424(v52) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v30 = *&a2;
      if (a2[23] < 0)
      {
        v30 = *a2;
      }

      *buf = 136446210;
      v51 = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,could not read,%{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    goto LABEL_38;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v22 = *&v54;
  v23 = DWORD2(v54);
  if (Current <= v22 + v23 + (random() % 86400))
  {
    *a3 = 0;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,file has expired - redownload", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B72654(buf);
      LOWORD(v48) = 0;
      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (BYTE8(v53) != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v36 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,file version does not match expected", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    LOWORD(v48) = 0;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v28);
    goto LABEL_102;
  }

  v31 = v14;
  v32 = v12;
  if (SBYTE10(v53) > a4 || SBYTE11(v53) <= a4)
  {
    *a1 = v32;
    *(a1 + 4) = v31;
    *(a1 + 24) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v38 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545665;
      v51 = a4;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,latitude,%{sensitive}.9lf,out of range", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B72654(buf);
      v48 = 134545665;
      v49 = a4;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    v17 = *(a1 + 24);
    goto LABEL_68;
  }

  v33 = (v31 + 7200 * (v32 - 20 * SBYTE10(v53) - 1800)) / 2;
  __ptr = 0;
  if (v33 >= HIDWORD(v54))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v39 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v51) = v33;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,byte index,%{public}d,is larger than the data available in the coarse signal environment binary file", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    v48 = 67240192;
    LODWORD(v49) = v33;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v28);
    goto LABEL_102;
  }

  v34 = v56;
  fseek(v56, v33, 1);
  if (fread(&__ptr, 1uLL, 1uLL, v34) != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v40 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,invalid coarse signal environment file - unable to get data byte", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    LOWORD(v48) = 0;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v28);
    goto LABEL_102;
  }

  v35 = __ptr >> 4;
  if ((v31 & 1) == 0)
  {
    v35 = __ptr & 0xF;
  }

  if (v35 < 7 && ((0x4Fu >> v35) & 1) != 0)
  {
    v17 = dword_101D24D68[v35];
    *(a1 + 24) = v17;
    *a1 = v32;
    *(a1 + 4) = v31;
    goto LABEL_68;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B7262C();
  }

  v41 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "#Error,CLSE,getSignalEnvironment,unexpected case,potential file corruption", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B72654(buf);
    LOWORD(v48) = 0;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v28);
LABEL_102:
    if (v28 != buf)
    {
      free(v28);
    }
  }

LABEL_67:
  v17 = 0;
LABEL_68:
  if (v56)
  {
    fclose(v56);
  }

LABEL_70:
  (*(*v11 + 24))(v11);
  return v17;
}

void sub_10021BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(v4 + 136);
  if (v6)
  {
    fclose(v6);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10021BB98(uint64_t a1)
{
  if (*(a1 + 156) == 1 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 144)) > *(a1 + 152) * 21.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A5A204();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 408);
      if (*(a1 + 431) < 0)
      {
        v3 = *v3;
      }

      v4 = (a1 + 432);
      if (*(a1 + 455) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446722;
      *&buf[4] = v3;
      v11 = 2082;
      v12 = v4;
      v13 = 2050;
      v14 = 0x4035000000000000;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,download request,url,%{public}s,storeTo,%{public}s,retryInterval,%{public}.1lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5A788(a1);
    }

    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
    *buf = 0x404E000000000000;
    v5 = (a1 + 408);
    if (*(a1 + 431) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 432);
    if (*(a1 + 455) < 0)
    {
      v6 = *v6;
    }

    if (sub_1005DCFEC(a1 + 160, v5, v6, buf))
    {
      v9[0] = 3628799.0;
      if (sub_100254C0C(a1 + 160, &dbl_101CF74B8, v9))
      {
        v9[0] = CFAbsoluteTimeGetCurrent() + 21.0 + -0.5;
        sub_1005DD610(a1 + 160, v9);
        return;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A5A310();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLSE,could not setUpdateSource AVL file updater", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A5A8C8();
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLSE,could not setUpdateRate AVl file updater", v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5A9AC();
    }
  }
}

BOOL sub_10021BE40(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v2 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 840);
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#fusion,purging,fused hypothesis with empty buffer is erased,hID,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7BBB0(a1);
    }
  }

  return *(a1 + 56) == 0;
}

uint64_t sub_10021BF2C(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = a2[1];
      v6 = *a2;
      if (*a2 != v5)
      {
        *(v4 + 32) = 1;
        v7 = *(v4 + 248);
        v8 = *(v4 + 252);
        v9 = *(v4 + 256);
        v10 = *(v4 + 260);
        v11 = v6;
        v12 = *result;
        do
        {
          v13 = *v11;
          if (*v11 <= 0.0 || v13 > v12)
          {
            v15 = *(result + 8);
            if (v13 <= v12 || v13 > v15)
            {
              if (v13 > v15 && v13 <= *(result + 16))
              {
                *(v4 + 256) = ++v9;
              }

              else
              {
                *(v4 + 260) = ++v10;
              }
            }

            else
            {
              *(v4 + 252) = ++v8;
            }
          }

          else
          {
            *(v4 + 248) = ++v7;
          }

          ++v11;
        }

        while (v11 != v5);
        v17 = v6 + 1;
        if (v6 + 1 != v5)
        {
          v18 = *v6;
          v19 = v6 + 1;
          do
          {
            v20 = *v19++;
            v21 = v20;
            if (v18 < v20)
            {
              v18 = v21;
              v6 = v17;
            }

            v17 = v19;
          }

          while (v19 != v5);
        }

        v22 = *v6;
        if (*(v4 + 56) < v22)
        {
          *(v4 + 56) = v22;
        }
      }
    }
  }

  return result;
}

id sub_10021C064(uint64_t a1, _OWORD *a2)
{
  v4 = [CLLocation alloc];
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v11[0] = a2[8];
  *(v11 + 12) = *(a2 + 140);
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = a2[5];
  v10[4] = a2[4];
  v10[5] = v7;
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  return [*(a1 + 1096) updateCurrentLocation:{objc_msgSend(v4, "initWithClientLocation:", v10)}];
}

BOOL sub_10021C0E4(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v2 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 840);
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#fusion,purging,merged hypothesis with empty buffer is erased,hID,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7BCA0(a1);
    }
  }

  return *(a1 + 56) == 0;
}

void sub_10021C1D0(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 512) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101745F84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBarometricAltimeter::onLocationDerivedNotificationBaro", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101745F98();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBarometricAltimeter::onLocationDerivedNotificationBaro, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10021C394(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10021C394(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (sub_10001CF04())
  {
    v6 = a4[117];
    v7 = a4[119];
    v8 = a4[118];
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v11 = v6;
    v12 = v7;
    v10 = Current - v8;
    v13 = fabsf(v10);
    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 1332);
      *buf = 67241472;
      v22 = v15;
      v23 = 2050;
      v24 = v11;
      v25 = 2050;
      v26 = v12;
      v27 = 2050;
      v28 = v8;
      v29 = 2050;
      v30 = Current;
      v31 = 2050;
      v32 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "BaroAlt,received WSB update, activity type,%{public}u,speed,%{public}.3lf,Unc,%{public}.3lf,timestamp,%{public}.3lf,curTime,%{public}.3lf,ageOfEstimation,%{public}.3lf", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::onLocationDerivedNotificationBaro(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    v16 = *(a1 + 1332);
    if (v16 <= 0x38 && ((1 << v16) & 0x110000000000C20) != 0 && (*(a1 + 1336) - 1) <= 1 && *(a1 + 3577) == 1 && v13 <= 180.0 && v11 >= 0.0 && v11 <= 13.0 && v12 > 0.0 && v12 < 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v17 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "BaroAlt,received WSB update, turn GPS ON", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174B610();
      }

      if (sub_10173EDB0(a1, Current))
      {
        sub_10173F59C(a1, 1, Current);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no power budget to turn GPS ON", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174B6EC();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "BaroAlt,#Warning,ALS is not supported on legacy HW", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174B534();
    }
  }
}

void sub_10021C7BC(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B75BF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHarvestControllerExternal::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B75C08();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestControllerExternal::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v10 = *a2;
  if (*a2 == 12)
  {
    *(a4 + 288) = *(a3 + 832);
  }

  sub_10022F398(*(a4 + 40), a1, v10, a3);
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10021C9A8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1000183C0(*a2);
  sub_10021CA28(v3, v4);
  v5 = *(**a2 + 24);

  return v5();
}

void sub_10021CA28(uint64_t a1, int a2)
{
  sub_1000408C8(a2, __p);
  v3 = v8;
  v4 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  if (v3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018C5650();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v6 = __p;
      if ((v8 & 0x80u) != 0)
      {
        v6 = __p[0];
      }

      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    (*(**(a1 + 48) + 64))(*(a1 + 48), __p);
    v4 = v8;
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10021CB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021CB90(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(a1 + 8) > 43200.0)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101886CBC();
    }

    v3 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (Current - *(a1 + 8));
      v5[0] = 67240192;
      v5[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Fence: Output CLFenceLogEntrySerializer log opened for %{public}d seconds, re-opening", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886DD0((a1 + 8), Current);
    }

    sub_1004651F0(a1);
  }

  sub_100220FB8(*(a1 + 16));
}

uint64_t sub_10021CCC0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v6 = *(a1 + 8);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(a1 + 36);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    LODWORD(v4) = v4 + v11 + v7 + 1;
    goto LABEL_22;
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    LODWORD(v4) = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    LODWORD(v4) = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v4 = (v4 + 5);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_35:
  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10021CDFC(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

void sub_10021CEA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102480C38;
  sub_1002211C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10021CF0C(uint64_t a1, int *a2, char a3, double a4)
{
  v4 = *a2;
  if (*a2 > 0xD)
  {
    return;
  }

  if (((1 << v4) & 0x2C1E) != 0)
  {
    goto LABEL_3;
  }

  if (((1 << v4) & 0x240) != 0)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

LABEL_3:

    sub_10021A0C4(a1, a4);
    return;
  }

  if (v4 == 5)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v6 = off_1025D4648;
      if (os_signpost_enabled(off_1025D4648))
      {
        *buf = 68289539;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "assert";
        v14 = 2081;
        v15 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "skyhook is no longer supported", "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }
      }

      v7 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "assert";
        v14 = 2081;
        v15 = "false";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
LABEL_21:
      sub_101A4C980();
    }
  }
}

BOOL sub_10021D1B8(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = (a1 + 248);
  if (v1 == (a1 + 248))
  {
    return 0;
  }

  do
  {
    result = (v1[24] & 0x20) == 0;
    if ((v1[24] & 0x20) == 0)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

double sub_10021D21C(uint64_t a1)
{
  if (*(a1 + 2360))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v2 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Fence: cancelTrackingWake", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42F34();
    }

    sub_10021D3CC(*(a1 + 2360));
    if (*(a1 + 3032))
    {
      sub_10000AED0(buf);
      Current = CFAbsoluteTimeGetCurrent();
      sub_10022127C(*(a1 + 2360), &__p);
      sub_100220CA4(&__p, 3u, buf, Current, -1.0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032));
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: ignoring, cancelTrackingWake, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A43018();
    }
  }

  return 0.0;
}

void sub_10021D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10000CE1C(&a16);
  _Unwind_Resume(a1);
}

id sub_10021D3CC(id *a1)
{
  [a1[3] assertInside];
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1 + 4;
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Invalidate, %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B7AC(a1);
  }

  return [*a1 invalidate];
}

__n128 sub_10021D4C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2896);
  v3 = *(a1 + 2928);
  *(a2 + 96) = *(a1 + 2912);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(a1 + 2944);
  v4 = *(a1 + 2832);
  v5 = *(a1 + 2864);
  *(a2 + 32) = *(a1 + 2848);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(a1 + 2880);
  *(a2 + 80) = v2;
  result = *(a1 + 2816);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

double sub_10021D4FC(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, int a5)
{
  v5 = *(a1 + 20);
  v27 = v5;
  if (v5 < 0.0)
  {
    return v5;
  }

  v10 = *(a1 + 96);
  v11 = 1;
  if (v10 <= 6)
  {
    if (v10 <= 3)
    {
      if ((v10 - 1) < 3)
      {
LABEL_5:
        if (a4)
        {
LABEL_6:
          v11 = 0;
          goto LABEL_41;
        }

        if (*sub_100226B68() == 1)
        {
          v15 = 0;
          if (sub_100226B68()[417] == 1 && !*a3)
          {
            v15 = sub_100302FAC(a1, a2, &v27);
          }

          if (*(a1 + 96) == 9)
          {
            v16 = 0;
          }

          else
          {
            v17 = v27;
            v16 = v17 <= *(sub_100226B68() + 31);
          }

          if ((v15 | v16))
          {
            goto LABEL_6;
          }

          v5 = v27;
        }

        v11 = 0;
        v13 = *(sub_100226B68() + 32) * v5;
LABEL_40:
        v27 = v13;
        goto LABEL_41;
      }

      if (v10)
      {
        goto LABEL_41;
      }

LABEL_53:
      if (qword_1025D4600 != -1)
      {
        sub_1019EC004();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v22 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v22;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D4600 != -1)
        {
          sub_1019EC018();
        }
      }

      v23 = qword_1025D4608;
      if (os_signpost_enabled(qword_1025D4608))
      {
        v24 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v24;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D4600 != -1)
        {
          sub_1019EC018();
        }
      }

      v25 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v26;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np();
    }

    if (v10 != 4)
    {
      if (v10 != 6)
      {
        goto LABEL_53;
      }

      v5 = v5 * *(sub_100226B68() + 34);
      v27 = v5;
LABEL_32:
      if (v5 >= *(sub_100226B68() + 40))
      {
        goto LABEL_41;
      }

      v13 = *(sub_100226B68() + 40);
      goto LABEL_40;
    }

LABEL_15:
    if ((a4 & 1) == 0)
    {
      if (*sub_100226B68())
      {
        goto LABEL_41;
      }

      if (*a3)
      {
        v14 = *(a1 + 20);
        if (v14 <= *(sub_100226B68() + 39))
        {
          v27 = *(sub_100226B68() + 37);
        }
      }
    }

    v12 = *(a1 + 20);
    if (v12 < *(sub_100226B68() + 37))
    {
      v13 = *(sub_100226B68() + 37);
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (v10 <= 11)
  {
    if ((v10 - 10) < 2)
    {
      if (a4)
      {
        goto LABEL_41;
      }

      v13 = v5 * *(sub_100226B68() + 33);
      goto LABEL_40;
    }

    if (v10 != 7)
    {
      if (v10 != 9)
      {
        goto LABEL_41;
      }

      goto LABEL_5;
    }

    goto LABEL_32;
  }

  if (v10 == 13)
  {
    goto LABEL_15;
  }

  if (v10 == 12 || v10 == 14)
  {
    goto LABEL_53;
  }

LABEL_41:
  v18 = sub_100226B68();
  if (!a5 || (*v18 & 1) != 0)
  {
    return v27;
  }

  if (*a3 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v11;
  }

  v5 = v27;
  if ((v19 & 1) == 0 && v5 <= *(sub_100226B68() + 38))
  {
    return *(sub_100226B68() + 38);
  }

  return v5;
}

uint64_t sub_10021D984(uint64_t a1, double a2)
{
  v15 = *(a1 + 712) * (*(a1 + 708) + 1.0);
  v16 = a2;
  v2 = vdupq_lane_s64(*&a2, 0);
  v3 = vabdq_f64(v2, *(a1 + 864));
  v4 = vabdq_f64(v2, *(a1 + 848));
  v5 = vdupq_lane_s64(*&v15, 0);
  v6 = vabdd_f64(a2, *(a1 + 840)) <= v15;
  v7 = vmovn_s64(vcgeq_f64(v5, v4));
  v8 = vmovn_s64(vcgeq_f64(v5, v3));
  v9 = vabdd_f64(a2, *(a1 + 880)) <= v15;
  v10 = vabdd_f64(a2, *(a1 + 888)) <= v15;
  v11 = (vabdd_f64(a2, *(a1 + 896)) <= v15) << 12;
  v12 = sub_10021DB6C((a1 + 904), &v16, &v15);
  v13 = vorr_s8(vand_s8(v7, 0x2000000002), vand_s8(v8, 0x20000000040));
  return v13.i32[0] | v13.i32[1] | (v9 << 10) | v11 | (v10 << 11) | v12 | v6;
}

std::string *sub_10021DA88@<X0>(char a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v4 = "L";
  }

  else
  {
    v4 = ".";
  }

  std::string::append(a2, v4, 1uLL);
  if ((a1 & 2) != 0)
  {
    v5 = "C";
  }

  else
  {
    v5 = ".";
  }

  std::string::append(a2, v5, 1uLL);
  if ((a1 & 4) != 0)
  {
    v6 = "W";
  }

  else
  {
    v6 = ".";
  }

  std::string::append(a2, v6, 1uLL);
  if ((a1 & 8) != 0)
  {
    v7 = "P";
  }

  else
  {
    v7 = ".";
  }

  std::string::append(a2, v7, 1uLL);
  if ((a1 & 0x10) != 0)
  {
    v8 = "S";
  }

  else
  {
    v8 = ".";
  }

  return std::string::append(a2, v8, 1uLL);
}

void sub_10021DB50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021DB6C(float64x2_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = vdupq_lane_s64(*a2, 0);
  v4 = vabdq_f64(v3, a1[24]);
  v5 = vabdq_f64(v3, a1[23]);
  v6 = vdupq_lane_s64(*a3, 0);
  v7 = vorr_s8(vand_s8(vmovn_s64(vcgeq_f64(v6, v5)), 0x8000000004), vand_s8(vmovn_s64(vcgeq_f64(v6, v4)), 0x800000100));
  return v7.i32[0] | v7.i32[1] | (16 * (vabdd_f64(*a2, a1[25].f64[0]) <= *a3));
}

uint64_t sub_10021DBD8(uint64_t a1, double a2)
{
  v4 = *(a1 + 297);
  v5 = *(a1 + 304);
  if (qword_1025D4640 != -1)
  {
    sub_101A57534();
  }

  v6 = a2 - v5;
  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 298);
    *buf = 67175169;
    v13 = v4;
    v14 = 1025;
    v15 = v8;
    v16 = 2049;
    v17 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "isRecalculate, %{private}d, fIsRecalculationPending, %{private}d, sinceLastRecalculationTrigger, %{private}.1lf", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101A57EC0();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorWifi::recalculateIfNeeded(const CFAbsoluteTime)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (v4)
  {
    sub_100CD14E8(a1);
    *(a1 + 304) = a2;
  }

  else if ((*(a1 + 298) & 1) == 0 && (*(**a1 + 80))())
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A57EC0();
    }

    v9 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: power assertion no longer needed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A57EE8();
    }

    (*(**a1 + 72))();
  }

  return v4;
}

void sub_10021DEC0(uint64_t a1, double a2)
{
  if (*sub_100229814() != 1)
  {
    return;
  }

  sub_10005FB68(v69);
  sub_10021FD3C(v65);
  v4 = sub_10021ED94(a1, v69, v65);
  v5 = v68;
  sub_10021FEA4(a1 + 48, a2);
  v6 = sub_1002230EC((a1 + 48));
  if (v6)
  {
    sub_100229878((a1 + 48), &v63);
    sub_100A2DEB4((v63 + 48), a1 + 288);
    v7 = sub_10095229C(a1 + 48, a2);
    if (v4)
    {
      sub_100A2DE74(v63 + 48, v5, a2);
      v8 = v5 < 2;
      v9 = v5 == 4;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v18 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_10095223C((a1 + 48));
      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      v21 = v19;
      v22 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
      *buf = 134219520;
      v94 = v21;
      v95 = 1024;
      *v96 = v7;
      *&v96[4] = 1024;
      *&v96[6] = v8;
      *v97 = 1024;
      *&v97[2] = v9;
      v98 = 1024;
      v99 = v5;
      v100 = 1024;
      v101 = v4;
      v102 = 1024;
      v103 = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "converging state, evaluating ongoing, current attempt, %zu, expired, %d, exited area, %d, reached inside, %d, mostEnergeticProximityState, %d, wasProximityStateUpdated, %d, isConvergingStateGNSSInitialized, %d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v40 = sub_10095223C((a1 + 48));
      if ((v41 & 1) == 0)
      {
        sub_100173BA0();
      }

      v42 = v40;
      v43 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
      v82 = 134219520;
      v83 = v42;
      v84 = 1024;
      *v85 = v7;
      *&v85[4] = 1024;
      *&v85[6] = v8;
      *v86 = 1024;
      *&v86[2] = v9;
      v87 = 1024;
      v88 = v5;
      v89 = 1024;
      v90 = v4;
      v91 = 1024;
      v92 = v43;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    if (v7)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 3, a2);
    }

    else if (!v8 && !v9)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v27 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v28 = sub_10095223C((a1 + 48));
        if ((v29 & 1) == 0)
        {
          sub_100173BA0();
        }

        v30 = v28;
        sub_1009522F4(a1 + 48, a2);
        if ((v32 & 1) == 0)
        {
          sub_100173BA0();
        }

        *buf = 134218240;
        v94 = v30;
        v95 = 2048;
        *v96 = v31;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "converging state, current attempt, %zu, remaining time, %f, continuing", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4C9A8(buf);
        v48 = sub_10095223C((a1 + 48));
        if ((v49 & 1) == 0)
        {
          sub_100173BA0();
        }

        v50 = v48;
        sub_1009522F4(a1 + 48, a2);
        if ((v52 & 1) == 0)
        {
          sub_100173BA0();
        }

        v82 = 134218240;
        v83 = v50;
        v84 = 2048;
        *v85 = v51;
        v53 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v53);
        if (v53 != buf)
        {
          free(v53);
        }
      }

      if (v4)
      {
        v33 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
        v34 = v68;
        if (v68 == 3)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33;
        }

        if (v35 == 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v36 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "converging state, tearing down gnss session after exiting adjacent", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4C9A8(buf);
            LOWORD(v82) = 0;
            v61 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v61);
            if (v61 != buf)
            {
              free(v61);
            }
          }

          (*(**(a1 + 1768) + 192))(*(a1 + 1768));
          sub_100952120(v63, a2);
          v34 = v68;
        }

        sub_100CC35D8(a1, v34, a2, v66);
      }

      v12 = 0;
      goto LABEL_71;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v23 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_10095223C((a1 + 48));
      if ((v25 & 1) == 0)
      {
        sub_100173BA0();
      }

      *buf = 134217984;
      v94 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "converging state, current attempt, %zu, ending", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v45 = sub_10095223C((a1 + 48));
      if ((v46 & 1) == 0)
      {
        sub_100173BA0();
      }

      v82 = 134217984;
      v83 = v45;
      v47 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v26 = sub_100117154(v75, v76, *(a1 + 292), *(a1 + 300));
    *(v63 + 136) = v26;
    sub_100952684((a1 + 48), a2);
    if ((*(**(a1 + 1768) + 176))(*(a1 + 1768)))
    {
      (*(**(a1 + 1768) + 192))(*(a1 + 1768));
      sub_100952120(v63, a2);
    }

    (*(**(a1 + 1768) + 168))(*(a1 + 1768));
    sub_1008FA3C0();
    v62 = v64;
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1008FA3F8();
    if (v7)
    {
      v12 = 4;
    }

    else if (v8)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 4, a2);
      v12 = 3;
    }

    else if (v9)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (v62)
    {
      sub_100008080(v62);
    }

LABEL_71:
    if (v64)
    {
      sub_100008080(v64);
    }

    goto LABEL_73;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_73;
  }

  v10 = *(a1 + 128);
  v11 = sub_1002D7D88((a1 + 48));
  v12 = 0;
  if (v10 != 1 || (v5 & 0xFFFFFFFE) != 2)
  {
LABEL_73:
    if (!v12 && (v4 & v6) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v13 = v11;
  if (v11 && (*(a1 + 729) & 1) == 0)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v37 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v69[0];
      if (v70 >= 0)
      {
        v38 = v69;
      }

      v39 = v71;
      if (v72 < 0)
      {
        v39 = v71[0];
      }

      *buf = 136380931;
      v94 = v38;
      v95 = 2081;
      *v96 = v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "converging state, starting new attempt. fence %{private}s/%{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v58 = v69[0];
      if (v70 >= 0)
      {
        v58 = v69;
      }

      v59 = v71;
      if (v72 < 0)
      {
        v59 = v71[0];
      }

      v82 = 136380931;
      v83 = v58;
      v84 = 2081;
      *v85 = v59;
      v60 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    sub_100952354((a1 + 48), a2);
    (*(**(a1 + 1768) + 208))(*(a1 + 1768), 1, a2);
    sub_100CC35D8(a1, v5, a2, v66);
    v12 = 1;
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v14 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v69[0];
      if (v70 >= 0)
      {
        v15 = v69;
      }

      v16 = v71;
      if (v72 < 0)
      {
        v16 = v71[0];
      }

      v17 = *(a1 + 729);
      *buf = 136381187;
      v94 = v15;
      v95 = 2081;
      *v96 = v16;
      *&v96[8] = 1024;
      *v97 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "converging state, out-of-budget, cannot start new attempt. fence %{private}s/%{private}s, lowPowerModeEnabled, %d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v54 = v69[0];
      if (v70 >= 0)
      {
        v54 = v69;
      }

      v55 = v71;
      if (v72 < 0)
      {
        v55 = v71[0];
      }

      v56 = *(a1 + 729);
      v82 = 136381187;
      v83 = v54;
      v84 = 2081;
      *v85 = v55;
      *&v85[8] = 1024;
      *v86 = v56;
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    v12 = 5;
    if (!v13)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 5, a2);
    }
  }

LABEL_75:
  (*(**(a1 + 1768) + 200))(*(a1 + 1768), v5, v12, v69);
LABEL_76:
  if (v4)
  {
    *(a1 + 128) = v5;
    *(a1 + 136) = v67;
  }

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }
}

void sub_10021ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  sub_1004BF9B8(&a30);
  _Unwind_Resume(a1);
}

uint64_t sub_10021ED94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005FB68(buf);
  sub_10021FD7C(a2, buf);
  if (__p)
  {
    v138 = __p;
    operator delete(__p);
  }

  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (SBYTE7(v132) < 0)
  {
    operator delete(*&v131[16]);
  }

  if ((v131[15] & 0x80000000) != 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_10021FD3C(buf);
  v6 = *&v131[16];
  *(a3 + 32) = *v131;
  *(a3 + 48) = v6;
  *(a3 + 64) = v132;
  *(a3 + 80) = v133;
  v7 = *&buf[16];
  *a3 = *buf;
  *(a3 + 16) = v7;
  if ((*sub_100229814() & 1) == 0 || (v8 = a1 + 240, v9 = *(a1 + 240), v10 = (a1 + 248), v9 == (a1 + 248)))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if ((v9[24] & 0xA0) == 0x80 && *(v9 + 16) <= 400.0 && (*(v9 + 220) & 1) == 0 && *(v9 + 53) != 2 && v9[33] == v9[32])
      {
        *v118 = v9[45];
        v12 = *(v9 + 41);
        v115 = *(v9 + 39);
        v116 = v12;
        v117 = *(v9 + 43);
        v13 = *(v9 + 37);
        v113 = *(v9 + 35);
        v114 = v13;
        sub_10005FB68(v101);
        __str = (v9 + 4);
        if (sub_1002D2820(a1, v9 + 2, v101))
        {
          if ((v107 & 1) == 0)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v14 = v8;
            v15 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
            {
              v16 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v16 = __str->__r_.__value_.__r.__words[0];
              }

              v17 = v9 + 7;
              if (*(v9 + 79) < 0)
              {
                v17 = *v17;
              }

              v18 = v101;
              if (v102 < 0)
              {
                v18 = v101[0];
              }

              v19 = v103;
              if (v104 < 0)
              {
                v19 = v103[0];
              }

              *buf = 136381443;
              *&buf[4] = v16;
              *&buf[12] = 2081;
              *&buf[14] = v17;
              *&buf[22] = 2081;
              *&buf[24] = v18;
              *v131 = 2081;
              *&v131[2] = v19;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Fence %{private}s/%{private}s has helper fence %{private}s/%{private}s, but isHelperFence isn't set.", buf, 0x2Au);
            }

            v8 = v14;
            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v69 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v69 = __str->__r_.__value_.__r.__words[0];
              }

              v70 = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                v70 = v70->isa;
              }

              v71 = v101;
              if (v102 < 0)
              {
                v71 = v101[0];
              }

              v72 = v103;
              if (v104 < 0)
              {
                v72 = v103[0];
              }

              *v119 = 136381443;
              *&v119[4] = v69;
              v120 = 2081;
              v121 = v70;
              v122 = 2081;
              v123 = v71;
              v124 = 2081;
              v125 = *&v72;
              v73 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v73);
              if (v73 != buf)
              {
                free(v73);
              }

              v8 = v14;
            }
          }

          v20 = sub_100226C1C(v8, v101);
          if (v10 == v20)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v39 = v8;
            v40 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
            {
              v41 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v41 = __str->__r_.__value_.__r.__words[0];
              }

              v42 = v9 + 7;
              if (*(v9 + 79) < 0)
              {
                v42 = *v42;
              }

              v43 = v101;
              if (v102 < 0)
              {
                v43 = v101[0];
              }

              v44 = v103;
              if (v104 < 0)
              {
                v44 = v103[0];
              }

              *buf = 136315906;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v42;
              *&buf[22] = 2080;
              *&buf[24] = v43;
              *v131 = 2080;
              *&v131[2] = v44;
              _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "Fence %s/%s does not have monitoring status for helper fence %s/%s", buf, 0x2Au);
            }

            v8 = v39;
            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v78 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v78 = __str->__r_.__value_.__r.__words[0];
              }

              v79 = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                v79 = v79->isa;
              }

              v80 = v101;
              if (v102 < 0)
              {
                v80 = v101[0];
              }

              v81 = v103;
              if (v104 < 0)
              {
                v81 = v103[0];
              }

              *v119 = 136315906;
              *&v119[4] = v78;
              v120 = 2080;
              v121 = v79;
              v122 = 2080;
              v123 = v80;
              v124 = 2080;
              v125 = *&v81;
              v82 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v82);
              if (v82 != buf)
              {
                free(v82);
              }

              v8 = v39;
            }
          }

          else
          {
            *v118 = *(v20 + 360);
            v21 = *(v20 + 328);
            v115 = *(v20 + 312);
            v116 = v21;
            v117 = *(v20 + 344);
            v22 = *(v20 + 296);
            v113 = *(v20 + 280);
            v114 = v22;
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v23 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              v24 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v24 = __str->__r_.__value_.__r.__words[0];
              }

              v25 = v9 + 7;
              v93 = v8;
              v85 = v24;
              log = v23;
              if (*(v9 + 79) < 0)
              {
                v25 = *v25;
              }

              v84 = v25;
              v89 = a1;
              v91 = a2;
              if (v102 >= 0)
              {
                v26 = v101;
              }

              else
              {
                v26 = v101[0];
              }

              if (v104 >= 0)
              {
                v27 = v103;
              }

              else
              {
                v27 = v103[0];
              }

              sub_1002D7D58(v9 + 90, v119);
              v28 = SHIBYTE(v122);
              v29 = *v119;
              sub_1002D7D58(v118, v99);
              v30 = v119;
              if (v28 < 0)
              {
                v30 = v29;
              }

              v31 = v99;
              if (v100 < 0)
              {
                v31 = v99[0];
              }

              *buf = 136381955;
              *&buf[4] = v85;
              *&buf[12] = 2081;
              *&buf[14] = v84;
              *&buf[22] = 2081;
              *&buf[24] = v26;
              *v131 = 2081;
              *&v131[2] = v27;
              *&v131[10] = 2081;
              *&v131[12] = v30;
              *&v131[20] = 2081;
              *&v131[22] = v31;
              _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEBUG, "converging state, Fence %{private}s/%{private}s using monitoring status from helper fence %{private}s/%{private}s. Old proximity state: %{private}s, new proximity state: %{private}s", buf, 0x3Eu);
              if (v100 < 0)
              {
                operator delete(v99[0]);
              }

              a1 = v89;
              a2 = v91;
              v8 = v93;
              if (SHIBYTE(v122) < 0)
              {
                operator delete(*v119);
              }
            }

            if (sub_10000A100(121, 2))
            {
              v92 = a2;
              v94 = v8;
              v90 = a1;
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v86 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v86 = __str->__r_.__value_.__r.__words[0];
              }

              loga = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                loga = loga->isa;
              }

              if (v102 >= 0)
              {
                v32 = v101;
              }

              else
              {
                v32 = v101[0];
              }

              if (v104 >= 0)
              {
                v33 = v103;
              }

              else
              {
                v33 = v103[0];
              }

              sub_1002D7D58(v9 + 90, v99);
              v34 = v100;
              v35 = v99[0];
              sub_1002D7D58(v118, v97);
              v36 = v99;
              if (v34 < 0)
              {
                v36 = v35;
              }

              v37 = v97;
              if (v98 < 0)
              {
                v37 = v97[0];
              }

              *v119 = 136381955;
              *&v119[4] = v86;
              v120 = 2081;
              v121 = loga;
              v122 = 2081;
              v123 = v32;
              v124 = 2081;
              v125 = *&v33;
              v126 = 2081;
              v127 = v36;
              v128 = 2081;
              v129 = v37;
              v38 = _os_log_send_and_compose_impl();
              if (v98 < 0)
              {
                operator delete(v97[0]);
              }

              if (v100 < 0)
              {
                operator delete(v99[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v38);
              if (v38 != buf)
              {
                free(v38);
              }

              a1 = v90;
              a2 = v92;
              v8 = v94;
            }
          }
        }

        if (*(&v117 + 1) <= *(a1 + 136))
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v58 = v8;
          v59 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v60 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v60 = __str->__r_.__value_.__r.__words[0];
            }

            v61 = v9 + 7;
            if (*(v9 + 79) < 0)
            {
              v61 = *v61;
            }

            v62 = *(a1 + 136) - *(&v117 + 1);
            *buf = 136381443;
            *&buf[4] = v60;
            *&buf[12] = 2081;
            *&buf[14] = v61;
            *&buf[22] = 2049;
            *&buf[24] = *(&v117 + 1);
            *v131 = 2049;
            *&v131[2] = v62;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "converging state, Fence %{private}s/%{private}s proximity state is stale. Last update timestamp: %{private}f (%{private}f seconds prior)", buf, 0x2Au);
          }

          v8 = v58;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            if (*(v9 + 55) < 0)
            {
              __str = __str->__r_.__value_.__r.__words[0];
            }

            v66 = (v9 + 7);
            if (*(v9 + 79) < 0)
            {
              v66 = v66->isa;
            }

            v67 = *(a1 + 136) - *(&v117 + 1);
            *v119 = 136381443;
            *&v119[4] = __str;
            v120 = 2081;
            v121 = v66;
            v122 = 2049;
            v123 = *(&v117 + 1);
            v124 = 2049;
            v125 = v67;
            v68 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v68);
            if (v68 != buf)
            {
              free(v68);
            }

            v8 = v58;
          }
        }

        else if (v118[0] > *(a3 + 80))
        {
          v95 = v8;
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v45 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            v46 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v46 = __str->__r_.__value_.__r.__words[0];
            }

            v47 = v9 + 7;
            if (*(v9 + 79) < 0)
            {
              v47 = *v47;
            }

            sub_1002D7D58(v118, v119);
            v48 = v119;
            if (v122 < 0)
            {
              v48 = *v119;
            }

            *buf = 136381443;
            *&buf[4] = v46;
            *&buf[12] = 2081;
            *&buf[14] = v47;
            *&buf[22] = 2081;
            *&buf[24] = v48;
            *v131 = 2049;
            *&v131[2] = v114;
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "converging state, most energetic updated by fence %{private}s/%{private}s %{private}s. Distance: %{private}f", buf, 0x2Au);
            if (SHIBYTE(v122) < 0)
            {
              operator delete(*v119);
            }
          }

          v8 = v95;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v74 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v74 = __str->__r_.__value_.__r.__words[0];
            }

            v75 = (v9 + 7);
            if (*(v9 + 79) < 0)
            {
              v75 = v75->isa;
            }

            sub_1002D7D58(v118, v99);
            v76 = v99;
            if (v100 < 0)
            {
              v76 = v99[0];
            }

            *v119 = 136381443;
            *&v119[4] = v74;
            v120 = 2081;
            v121 = v75;
            v122 = 2081;
            v123 = v76;
            v124 = 2049;
            v125 = *&v114;
            v77 = _os_log_send_and_compose_impl();
            if (v100 < 0)
            {
              operator delete(v99[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v77);
            if (v77 != buf)
            {
              free(v77);
            }

            v8 = v95;
          }

          v49 = v116;
          *(a3 + 32) = v115;
          *(a3 + 48) = v49;
          *(a3 + 64) = v117;
          *(a3 + 80) = *v118;
          v50 = v114;
          *a3 = v113;
          *(a3 + 16) = v50;
          std::string::operator=(a2, __str);
          std::string::operator=((a2 + 24), (v9 + 7));
          std::string::operator=((a2 + 48), (v9 + 10));
          v51 = *(v9 + 13);
          v52 = *(v9 + 15);
          v53 = *(v9 + 17);
          *(a2 + 120) = *(v9 + 19);
          *(a2 + 104) = v53;
          *(a2 + 88) = v52;
          *(a2 + 72) = v51;
          v54 = *(v9 + 21);
          v55 = *(v9 + 23);
          v56 = *(v9 + 25);
          *(a2 + 181) = *(v9 + 213);
          *(a2 + 168) = v56;
          *(a2 + 152) = v55;
          *(a2 + 136) = v54;
          std::string::operator=((a2 + 192), (v9 + 28));
          v57 = *(a2 + 216);
          *(a2 + 216) = v9[31];

          if (__str != a2)
          {
            sub_1006BA434((a2 + 224), v9[32], v9[33], (v9[33] - v9[32]) >> 4);
          }

          v11 = 1;
        }

        if (v111)
        {
          v112 = v111;
          operator delete(v111);
        }

        if (v109 < 0)
        {
          operator delete(v108);
        }

        if (v106 < 0)
        {
          operator delete(v105);
        }

        if (v104 < 0)
        {
          operator delete(v103[0]);
        }

        if (v102 < 0)
        {
          operator delete(v101[0]);
        }
      }

      v63 = v9[1];
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = v9[2];
          v65 = *v64 == v9;
          v9 = v64;
        }

        while (!v65);
      }

      v9 = v64;
    }

    while (v64 != v10);
  }

  return v11 & 1;
}

double sub_10021FD3C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 16) = xmmword_101CE6870;
  *(a1 + 32) = _Q1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xBFF0000000000000;
  result = 0.0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_10021FD7C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 181);
  v8 = *(a2 + 168);
  v9 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = v9;
  *(a1 + 168) = v8;
  *(a1 + 181) = v7;
  v10 = *(a2 + 120);
  v11 = *(a2 + 104);
  v12 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v12;
  *(a1 + 104) = v11;
  *(a1 + 120) = v10;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v13 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v13;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  v14 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = 0;

  sub_10007057C(a1 + 224, a2 + 14);
  return a1;
}

void sub_10021FEA4(uint64_t a1, double a2)
{
  while (*(a1 + 64))
  {
    v4 = (*(*(a1 + 32) + ((*(a1 + 56) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 56));
    v5 = *v4;
    if (a2 - *(*v4 + 8) <= *(a1 + 8))
    {
      break;
    }

    v6 = v4[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4640 != -1)
    {
      sub_101985BDC();
    }

    v7 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = *(v5 + 16);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v5 + 8);
      *buf = 134218240;
      v12 = v9;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "converging state, pruning previous attempt, startTime, %f, endTime, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_101985BDC();
      }

      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceConvergenceStateBudget::pruneAttemptsPredatingTime(CFAbsoluteTime)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    sub_1000143D4((a1 + 24));
    if (v6)
    {
      sub_100008080(v6);
    }
  }
}

void sub_10022012C(id *a1, void *a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[333];
    v7 = 136380931;
    v8 = a2;
    v9 = 2049;
    v10 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: releaseActivityAlarm, %{private}s, %{private}p", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A43C38(a2, a1);
  }

  v6 = a1[333];
  if (v6)
  {
    [v6 invalidate];

    a1[333] = 0;
  }
}

BOOL sub_100220238()
{
  v0 = sub_1000206B4();
  v1 = off_10262F3D8;
  Current = CFAbsoluteTimeGetCurrent();
  return sub_100116D68(v0, v1, &Current);
}

double sub_100220284(uint64_t a1)
{
  *a1 = off_102452680;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  return result;
}

int8x16_t sub_1002202CC(int8x16_t *a1, uint64_t a2)
{
  *(a2 + 28) |= 3u;
  result = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1002202E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 100);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_53;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636C98 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 100);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 40);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v15 = *(a1 + 24);
    if (!v15)
    {
      v15 = *(qword_102636C98 + 24);
    }

    v16 = sub_1001F4538(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v4 += v17 + v18 + 1;
    v3 = *(a1 + 100);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    v11 = *(qword_102636C98 + 16);
  }

  v12 = sub_1001F4208(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 += v13 + v14 + 1;
  v3 = *(a1 + 100);
  if ((v3 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
LABEL_37:
    v19 = *(a1 + 32);
    if (!v19)
    {
      v19 = *(qword_102636C98 + 32);
    }

    v20 = sub_10010E6C8(v19, a2);
    v21 = v20;
    if (v20 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    }

    else
    {
      v22 = 1;
    }

    v4 += v21 + v22 + 1;
    v3 = *(a1 + 100);
  }

LABEL_43:
  v23 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v5 = v23 + 9;
  }

  else
  {
    v5 = v23;
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(a1 + 44);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_53:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = *(qword_102636C98 + 56);
      }

      v27 = sub_1001F4C0C(v26);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      LODWORD(v5) = v5 + v28 + v29 + 1;
      v3 = *(a1 + 100);
      if ((v3 & 0x200) == 0)
      {
LABEL_56:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_74;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    v30 = *(a1 + 64);
    if (!v30)
    {
      v30 = *(qword_102636C98 + 64);
    }

    v31 = *(v30 + 28);
    v32 = (v31 << 31 >> 31) & 9;
    if ((v31 & 2) != 0)
    {
      v32 += 9;
    }

    if (*(v30 + 28))
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    *(v30 + 24) = v33;
    LODWORD(v5) = v5 + v33 + 2;
    v3 = *(a1 + 100);
    if ((v3 & 0x400) == 0)
    {
LABEL_57:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_80;
    }

LABEL_74:
    v34 = *(a1 + 80);
    if (!v34)
    {
      v34 = *(qword_102636C98 + 80);
    }

    v35 = sub_1002AC9D0(v34, a2);
    v36 = v35;
    if (v35 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
    }

    else
    {
      v37 = 1;
    }

    LODWORD(v5) = v5 + v36 + v37 + 1;
    v3 = *(a1 + 100);
    if ((v3 & 0x800) == 0)
    {
LABEL_58:
      if ((v3 & 0x1000) == 0)
      {
LABEL_95:
        v5 = ((v3 >> 12) & 2) + v5;
        goto LABEL_96;
      }

LABEL_86:
      v40 = *(a1 + 88);
      if (!v40)
      {
        v40 = *(qword_102636C98 + 88);
      }

      v41 = *(v40 + 36);
      if (*(v40 + 36))
      {
        v42 = (v41 << 31 >> 31) & 9;
        if ((v41 & 2) != 0)
        {
          v42 += 9;
        }

        if ((v41 & 4) != 0)
        {
          v41 = v42 + 9;
        }

        else
        {
          v41 = v42;
        }
      }

      *(v40 + 32) = v41;
      LODWORD(v5) = v5 + v41 + 2;
      v3 = *(a1 + 100);
      goto LABEL_95;
    }

LABEL_80:
    v38 = *(a1 + 76);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 11;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v39 = 2;
    }

    LODWORD(v5) = v39 + v5;
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

LABEL_96:
  *(a1 + 96) = v5;
  return v5;
}

uint64_t sub_100220678(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 100);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636C98 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 100);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636C98 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636C98 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_26:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636C98 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_102636C98 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v11, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_35:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_102636C98 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v12, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_38:
  v13 = *(v5 + 80);
  if (!v13)
  {
    v13 = *(qword_102636C98 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v13, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_42:
  v14 = *(v5 + 88);
  if (!v14)
  {
    v14 = *(qword_102636C98 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v14, a2, a4);
  if ((*(v5 + 100) & 0x2000) != 0)
  {
LABEL_45:
    v15 = *(v5 + 73);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v15, a2, a4);
  }

  return result;
}

void sub_1002208B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452680;
  sub_100220920(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100220920(void *result)
{
  if (qword_102636C98 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[10];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[11];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void sub_100220AC8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019E8ED4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019E8EE8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100224224(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

std::string *sub_100220CA4(const std::string *a1, unsigned int a2, uint64_t a3, double a4, double a5)
{
  *(a3 + 52) |= 1u;
  v9 = *(a3 + 32);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 44) |= 1u;
  *(v9 + 8) = a4;
  *(a3 + 52) |= 2u;
  v10 = *(a3 + 40);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 492) |= 0x4000000u;
  v11 = *(v10 + 464);
  if (!v11)
  {
    operator new();
  }

  if (a2 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  if (!sub_10041ECF8(v12))
  {
    sub_101985574();
  }

  *(v11 + 36) |= 1u;
  *(v11 + 16) = v12;
  *(a3 + 52) |= 2u;
  v13 = *(a3 + 40);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 492) |= 0x4000000u;
  v14 = *(v13 + 464);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 36) |= 2u;
  v15 = *(v14 + 8);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  result = std::string::operator=(v15, a1);
  if (a2 == 2)
  {
    *(a3 + 52) |= 2u;
    v17 = *(a3 + 40);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 492) |= 0x4000000u;
    v18 = *(v17 + 464);
    if (!v18)
    {
      operator new();
    }

    v19 = a5;
    *(v18 + 36) |= 4u;
    *(v18 + 20) = v19;
  }

  return result;
}

void *sub_100220F88(void *result)
{
  *result = off_102480C38;
  result[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[2] = 0;
  result[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[4] = 0;
  return result;
}

void sub_100220FB8(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    sub_1000145C0(a1, __p);
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_1001F3464();
    }

    v2 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      v11 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "ProtobufSerializer,%{public}s,serialize failed", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v4 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v4 = *v4;
      }

      v8 = 136446210;
      v9 = v4;
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLProtobufSerializer::append(const ::google::protobuf::MessageLite &)", "%s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002211A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002211C8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 24);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

id sub_10022127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [*(a1 + 24) assertInside];
  if (*(a1 + 55) < 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return sub_100007244(a2, v5, v6);
  }

  else
  {
    *a2 = *(a1 + 32);
    *(a2 + 16) = *(a1 + 48);
  }

  return result;
}

__n128 sub_1002212E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = *(a1 + 2808);
  v2 = *(a1 + 2792);
  *(a2 + 96) = *(a1 + 2776);
  *(a2 + 112) = v2;
  v3 = *(a1 + 2728);
  *(a2 + 32) = *(a1 + 2712);
  *(a2 + 48) = v3;
  v4 = *(a1 + 2760);
  *(a2 + 64) = *(a1 + 2744);
  *(a2 + 80) = v4;
  result = *(a1 + 2696);
  *a2 = *(a1 + 2680);
  *(a2 + 16) = result;
  return result;
}

BOOL sub_100221314(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, uint64_t a6, double a7)
{
  v10 = *(a1 + 96);
  if (!v10)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v20 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
    {
      sub_100072AFC(a1, v191);
      v21 = v191[23] >= 0 ? v191 : *v191;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136642819;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Fence: location, why are you unknown?, %{sensitive}s", &buf, 0xCu);
      if ((v191[23] & 0x80000000) != 0)
      {
        operator delete(*v191);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019EC5E4(a1);
    }

    goto LABEL_36;
  }

  p_info = a3;
  v14 = *a4;
  v15 = 46;
  if (v10 > 7)
  {
    if (v10 <= 10)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          v159 = 0;
          v18 = 0;
          v19 = 80;
          v17 = 46;
          v15 = 46;
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v10 > 12)
      {
        if (v10 != 13)
        {
          v159 = 0;
          v18 = 0;
          v19 = 46;
          v17 = 46;
          if (v10 != 14)
          {
            goto LABEL_35;
          }

LABEL_76:
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          if (qword_1025D4600 != -1)
          {
            sub_1019EC004();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
          {
            *v191 = 68289795;
            *&v191[8] = 2082;
            *&v191[10] = "";
            *&v191[18] = 2049;
            *&v191[20] = v10;
            *&v191[28] = 2082;
            v192 = "assert";
            *v193 = 2081;
            *&v193[2] = "false";
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
            if (qword_1025D4600 != -1)
            {
              sub_1019EC018();
            }
          }

          v38 = qword_1025D4608;
          if (os_signpost_enabled(qword_1025D4608))
          {
            *v191 = 68289795;
            *&v191[8] = 2082;
            *&v191[10] = "";
            *&v191[18] = 2049;
            *&v191[20] = v10;
            *&v191[28] = 2082;
            v192 = "assert";
            *v193 = 2081;
            *&v193[2] = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
            if (qword_1025D4600 != -1)
            {
              sub_1019EC018();
            }
          }

          a6 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *v191 = 68289795;
            *&v191[8] = 2082;
            *&v191[10] = "";
            *&v191[18] = 2049;
            *&v191[20] = v10;
            *&v191[28] = 2082;
            v192 = "assert";
            *v193 = 2081;
            *&v193[2] = "false";
            _os_log_impl(dword_100000000, a6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
          }

          goto LABEL_363;
        }

LABEL_34:
        v159 = 0;
        v18 = 0;
        v19 = 46;
        v15 = 87;
        v17 = 46;
        goto LABEL_35;
      }

      if (v10 == 11)
      {
        goto LABEL_34;
      }
    }

    v18 = *a4;
    goto LABEL_37;
  }

  if (v10 <= 3)
  {
    v159 = 0;
    v18 = 0;
    v19 = 46;
    v17 = 46;
    if ((v10 - 1) >= 3)
    {
      goto LABEL_35;
    }

LABEL_29:
    v159 = 0;
    v18 = 0;
    v17 = 71;
    v19 = 46;
    goto LABEL_35;
  }

  if (v10 <= 5)
  {
    if (v10 != 4)
    {
      v18 = 0;
      goto LABEL_76;
    }

    goto LABEL_34;
  }

  v16 = v10 == 7;
  v17 = 46;
  if (v10 == 6)
  {
    v16 = 0;
  }

  v159 = v16;
  v18 = v10 == 6;
  v15 = 46;
  v19 = 46;
  if (v10 == 6)
  {
    v17 = 46;
  }

LABEL_35:
  v157 = v17;
  v158 = v19;
  v22 = sub_10021D4FC(a1, a2, a4, (*(a3 + 160) & 0x10) != 0, a5);
  if (v22 < 0.0)
  {
LABEL_36:
    v18 = *a4;
    goto LABEL_37;
  }

  v156 = v18;
  v18 = p_info + 224;
  if (p_info[29] != p_info[28])
  {
    if ((p_info[20] & 0x10) != 0)
    {
      v25 = sub_100AF6C88((a1 + 4), p_info + 28, *(a1 + 20));
    }

    else
    {
      *v191 = *(a1 + 4);
      v24 = *(a1 + 20);
      if (v24 >= *(sub_100226B68() + 43) || (v25 = sub_100AF6BFC(v191, p_info + 28)) != 0)
      {
        v26 = *(a1 + 20);
        if (v26 >= *(sub_100226B68() + 43) || (v27 = sub_100AF6D04(v191, (p_info + 28), 0), v27 >= *(sub_100226B68() + 44) * *(a1 + 20)))
        {
          v32 = *(sub_100226B68() + 45);
          v33 = *(a1 + 20);
          v34 = sub_100226B68();
          if (sub_100AF6C88((a1 + 4), p_info + 28, *(v34 + 46) + v32 * v33) == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = -1;
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }

    if (v25 == -1)
    {
      v18 = *a4;
    }

    else
    {
      v18 = v25;
    }

    if (!v14)
    {
      goto LABEL_253;
    }

    goto LABEL_225;
  }

  v28 = v22;
  v29 = sub_100226BC0(p_info);
  v30 = sub_100226BC0(p_info);
  if ((p_info[20] & 0x10) != 0)
  {
    v29 = v29 + *(sub_100226B68() + 41) - v28;
    v30 = v28 + v30 + *(sub_100226B68() + 41);
    goto LABEL_106;
  }

  v31 = *a4;
  if (*(p_info + 12) >= 7000.0)
  {
    if (v31 == 1)
    {
      v29 = v29 - (v28 + *(sub_100226B68() + 8));
      v30 = v30 - (v28 + *(sub_100226B68() + 7));
      goto LABEL_106;
    }

    if (v31)
    {
      v29 = v29 - v28;
      v30 = v30 - v28;
      goto LABEL_106;
    }

    v29 = v29 + v28 + *(sub_100226B68() + 8);
    v35 = *(sub_100226B68() + 7);
    goto LABEL_65;
  }

  if (v31 < 2)
  {
    if (v10 > 6)
    {
      if (v10 > 11)
      {
        if (v10 != 13)
        {
          goto LABEL_106;
        }

        goto LABEL_90;
      }

      if ((v10 - 10) >= 2)
      {
        if (v10 != 7)
        {
          if (v10 != 9)
          {
            goto LABEL_106;
          }

          v29 = v29 * *(sub_100226B68() + 15);
          v36 = *(sub_100226B68() + 14);
          goto LABEL_105;
        }

        v41 = sub_100226B68();
        if (a5)
        {
          v35 = *(v41 + 12);
        }

        else
        {
          v35 = *(v41 + 13);
        }

        goto LABEL_65;
      }

LABEL_95:
      v18 = *sub_100226B68();
      v40 = sub_100226B68();
      if (v18 == 1)
      {
        if (a5)
        {
          v36 = v40[19];
        }

        else
        {
          v36 = v40[20];
        }
      }

      else if (a5)
      {
        v36 = v40[17];
      }

      else
      {
        v36 = v40[18];
      }

      goto LABEL_105;
    }

    if (v10 <= 3)
    {
      if ((v10 - 1) < 3)
      {
        goto LABEL_95;
      }

LABEL_106:
      if (v29 > 0.0)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

    if (v10 == 4)
    {
LABEL_90:
      v36 = *(sub_100226B68() + 16);
      goto LABEL_105;
    }

    v39 = sub_100226B68();
    if (!a5)
    {
      v36 = *(v39 + 11);
      goto LABEL_105;
    }

    v35 = *(v39 + 10);
LABEL_65:
    v36 = v28 + v35;
LABEL_105:
    v30 = v30 + v36;
    goto LABEL_106;
  }

  if (!a5 || v10 > 9 || ((1 << v10) & 0x2C0) == 0)
  {
    goto LABEL_106;
  }

  v30 = v30 + v28 + *(sub_100226B68() + 9);
LABEL_107:
  v29 = 0.0;
LABEL_108:
  if (v30 <= 0.0)
  {
    v30 = 0.0;
  }

  v42 = *(p_info + 12) < 7000.0 && (p_info[20] & 0x10) == 0;
  v43 = a7;
  if (v42)
  {
    v44 = 1.0;
    if (v10 <= 5)
    {
      if ((v10 - 1) >= 4)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v10 > 0xE)
      {
        goto LABEL_318;
      }

      if (((1 << v10) & 0x2C00) == 0)
      {
        if (v10 == 9)
        {
          v45 = 0;
LABEL_122:
          if (*a4 == 1)
          {
            v46 = sub_100226B68();
            v47 = !v45;
            v48 = 192;
            v49 = 176;
            goto LABEL_126;
          }

          if (!*a4)
          {
            v46 = sub_100226B68();
            v47 = !v45;
            v48 = 184;
            v49 = 168;
LABEL_126:
            if (!v47)
            {
              v48 = v49;
            }

            v44 = *&v46[v48];
          }

LABEL_129:
          if (v28 * v44 <= a7)
          {
            v43 = a7 - v44 * v28;
          }

          else
          {
            v43 = 0.0;
          }

          goto LABEL_132;
        }

        if (((1 << v10) & 0x5000) == 0)
        {
LABEL_318:
          if ((v10 - 6) < 2)
          {
            v43 = a7;
            if (a5)
            {
              goto LABEL_132;
            }
          }

          goto LABEL_129;
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        if (qword_1025D4600 != -1)
        {
          sub_1019EC004();
        }

        v150 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
        {
          *v191 = 68289795;
          *&v191[8] = 2082;
          *&v191[10] = "";
          *&v191[18] = 2049;
          *&v191[20] = v10;
          *&v191[28] = 2082;
          v192 = "assert";
          *v193 = 2081;
          *&v193[2] = "false";
          _os_log_impl(dword_100000000, v150, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
          if (qword_1025D4600 != -1)
          {
            sub_1019EC018();
          }
        }

        v151 = qword_1025D4608;
        if (os_signpost_enabled(qword_1025D4608))
        {
          *v191 = 68289795;
          *&v191[8] = 2082;
          *&v191[10] = "";
          *&v191[18] = 2049;
          *&v191[20] = v10;
          *&v191[28] = 2082;
          v192 = "assert";
          *v193 = 2081;
          *&v193[2] = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v151, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
          if (qword_1025D4600 != -1)
          {
            sub_1019EC018();
          }
        }

        a6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *v191 = 68289795;
          *&v191[8] = 2082;
          *&v191[10] = "";
          *&v191[18] = 2049;
          *&v191[20] = v10;
          *&v191[28] = 2082;
          v192 = "assert";
          *v193 = 2081;
          *&v193[2] = "false";
          _os_log_impl(dword_100000000, a6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v191, 0x30u);
        }

LABEL_363:
        abort_report_np();
        __break(1u);
        goto LABEL_364;
      }
    }

    v45 = *(sub_100226B68() + 30) >= v28;
    goto LABEL_122;
  }

LABEL_132:
  v155 = v14;
  if (v14 && v43 < v29)
  {
    v18 = 0;
    goto LABEL_138;
  }

  v18 = *a4;
  if (v14 != 1 && v43 > v30)
  {
    v18 = 1;
LABEL_138:
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v50 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      log = v50;
      if (*(p_info + 23) >= 0)
      {
        v51 = *(p_info + 23);
      }

      else
      {
        v51 = p_info[1];
      }

      p_buf = &buf;
      sub_100070148(&buf, v51 + 1);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (v51)
      {
        if (*(p_info + 23) >= 0)
        {
          v53 = p_info;
        }

        else
        {
          v53 = *p_info;
        }

        memmove(p_buf, v53, v51);
      }

      *(&p_buf->__r_.__value_.__l.__data_ + v51) = 47;
      v54 = *(p_info + 47);
      if (v54 >= 0)
      {
        v55 = (p_info + 3);
      }

      else
      {
        v55 = p_info[3];
      }

      if (v54 >= 0)
      {
        v56 = *(p_info + 47);
      }

      else
      {
        v56 = p_info[4];
      }

      v57 = std::string::append(&buf, v55, v56);
      v58 = *&v57->__r_.__value_.__l.__data_;
      v216.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v216.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v59 = SHIBYTE(v216.__r_.__value_.__r.__words[2]);
      v60 = v216.__r_.__value_.__r.__words[0];
      v61 = sub_100226BC0(p_info);
      v62 = *(a1 + 20);
      v63 = &v216;
      if (v59 < 0)
      {
        v63 = v60;
      }

      v64 = p_info[9];
      v65 = p_info[10];
      if (v159)
      {
        v66 = 76;
      }

      else
      {
        v66 = 46;
      }

      v67 = *(a1 + 4);
      v68 = *(a1 + 12);
      if (v156)
      {
        v69 = 67;
      }

      else
      {
        v69 = 46;
      }

      *v191 = 136385027;
      *&v191[4] = v63;
      *&v191[12] = 1024;
      *&v191[14] = v157;
      *&v191[18] = 1024;
      *&v191[20] = v158;
      *&v191[24] = 1024;
      *&v191[26] = v15;
      LOWORD(v192) = 1024;
      *(&v192 + 2) = v69;
      HIWORD(v192) = 1024;
      *v193 = v66;
      *&v193[4] = 1026;
      *&v193[6] = a5;
      v194 = 2050;
      v195 = v61;
      v196 = 2050;
      v197 = a7;
      v198 = 2049;
      v199 = v29;
      v200 = 2049;
      v201 = v30;
      v202 = 2049;
      v203 = v43;
      v204 = 2049;
      v205 = v28;
      v206 = 2050;
      v207 = v62;
      v208 = 2053;
      v209 = v64;
      v210 = 2053;
      v211 = v65;
      v212 = 2053;
      v213 = v67;
      v214 = 2053;
      v215 = v68;
      _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEFAULT, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", v191, 0x9Eu);
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019EC38C(v191);
      sub_1008C3CF8(p_info, &v216);
      v154 = a6;
      v70 = SHIBYTE(v216.__r_.__value_.__r.__words[2]);
      v71 = v216.__r_.__value_.__r.__words[0];
      v72 = sub_100226BC0(p_info);
      v73 = *(a1 + 20);
      v74 = &v216;
      if (v70 < 0)
      {
        v74 = v71;
      }

      v75 = p_info[9];
      v76 = p_info[10];
      if (v159)
      {
        v77 = 76;
      }

      else
      {
        v77 = 46;
      }

      v78 = *(a1 + 4);
      v79 = *(a1 + 12);
      if (v156)
      {
        v80 = 67;
      }

      else
      {
        v80 = 46;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136385027;
      *(buf.__r_.__value_.__r.__words + 4) = v74;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v157;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v158;
      v161 = 1024;
      v162 = v15;
      v163 = 1024;
      v164 = v80;
      v165 = 1024;
      v166 = v77;
      v167 = 1026;
      v168 = a5;
      v169 = 2050;
      v170 = v72;
      v171 = 2050;
      v172 = a7;
      v173 = 2049;
      v174 = v29;
      v175 = 2049;
      v176 = v30;
      v177 = 2049;
      v178 = v43;
      v179 = 2049;
      v180 = v28;
      v181 = 2050;
      v182 = v73;
      v183 = 2053;
      v184 = v75;
      v185 = 2053;
      v186 = v76;
      v187 = 2053;
      v188 = v78;
      v189 = 2053;
      v190 = v79;
      v81 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v216.__r_.__value_.__l.__data_);
      }

LABEL_350:
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v81);
      if (v81 != v191)
      {
        free(v81);
      }

      a6 = v154;
      goto LABEL_213;
    }

    goto LABEL_213;
  }

  if (qword_1025D4640 != -1)
  {
    sub_1019EC040();
  }

  v82 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    loga = v82;
    if (*(p_info + 23) >= 0)
    {
      v83 = *(p_info + 23);
    }

    else
    {
      v83 = p_info[1];
    }

    v84 = &buf;
    sub_100070148(&buf, v83 + 1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v84 = buf.__r_.__value_.__r.__words[0];
    }

    if (v83)
    {
      if (*(p_info + 23) >= 0)
      {
        v85 = p_info;
      }

      else
      {
        v85 = *p_info;
      }

      memmove(v84, v85, v83);
    }

    *(&v84->__r_.__value_.__l.__data_ + v83) = 47;
    v86 = *(p_info + 47);
    if (v86 >= 0)
    {
      v87 = (p_info + 3);
    }

    else
    {
      v87 = p_info[3];
    }

    if (v86 >= 0)
    {
      v88 = *(p_info + 47);
    }

    else
    {
      v88 = p_info[4];
    }

    v89 = std::string::append(&buf, v87, v88);
    v90 = *&v89->__r_.__value_.__l.__data_;
    v216.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
    *&v216.__r_.__value_.__l.__data_ = v90;
    v89->__r_.__value_.__l.__size_ = 0;
    v89->__r_.__value_.__r.__words[2] = 0;
    v89->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v91 = SHIBYTE(v216.__r_.__value_.__r.__words[2]);
    v92 = v216.__r_.__value_.__r.__words[0];
    v93 = sub_100226BC0(p_info);
    v94 = *(a1 + 20);
    v95 = &v216;
    if (v91 < 0)
    {
      v95 = v92;
    }

    v96 = p_info[9];
    v97 = p_info[10];
    if (v159)
    {
      v98 = 76;
    }

    else
    {
      v98 = 46;
    }

    v99 = *(a1 + 4);
    v100 = *(a1 + 12);
    if (v156)
    {
      v101 = 67;
    }

    else
    {
      v101 = 46;
    }

    *v191 = 136385027;
    *&v191[4] = v95;
    *&v191[12] = 1024;
    *&v191[14] = v157;
    *&v191[18] = 1024;
    *&v191[20] = v158;
    *&v191[24] = 1024;
    *&v191[26] = v15;
    LOWORD(v192) = 1024;
    *(&v192 + 2) = v101;
    HIWORD(v192) = 1024;
    *v193 = v98;
    *&v193[4] = 1026;
    *&v193[6] = a5;
    v194 = 2050;
    v195 = v93;
    v196 = 2050;
    v197 = a7;
    v198 = 2049;
    v199 = v29;
    v200 = 2049;
    v201 = v30;
    v202 = 2049;
    v203 = v43;
    v204 = 2049;
    v205 = v28;
    v206 = 2050;
    v207 = v94;
    v208 = 2053;
    v209 = v96;
    v210 = 2053;
    v211 = v97;
    v212 = 2053;
    v213 = v99;
    v214 = 2053;
    v215 = v100;
    _os_log_impl(dword_100000000, loga, OS_LOG_TYPE_DEBUG, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", v191, 0x9Eu);
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EC38C(v191);
    sub_1008C3CF8(p_info, &v216);
    v154 = a6;
    v139 = SHIBYTE(v216.__r_.__value_.__r.__words[2]);
    v140 = v216.__r_.__value_.__r.__words[0];
    v141 = sub_100226BC0(p_info);
    v142 = *(a1 + 20);
    v143 = &v216;
    if (v139 < 0)
    {
      v143 = v140;
    }

    v144 = p_info[9];
    v145 = p_info[10];
    if (v159)
    {
      v146 = 76;
    }

    else
    {
      v146 = 46;
    }

    v147 = *(a1 + 4);
    v148 = *(a1 + 12);
    if (v156)
    {
      v149 = 67;
    }

    else
    {
      v149 = 46;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136385027;
    *(buf.__r_.__value_.__r.__words + 4) = v143;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v157;
    WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(buf.__r_.__value_.__r.__words[2]) = v158;
    v161 = 1024;
    v162 = v15;
    v163 = 1024;
    v164 = v149;
    v165 = 1024;
    v166 = v146;
    v167 = 1026;
    v168 = a5;
    v169 = 2050;
    v170 = v141;
    v171 = 2050;
    v172 = a7;
    v173 = 2049;
    v174 = v29;
    v175 = 2049;
    v176 = v30;
    v177 = 2049;
    v178 = v43;
    v179 = 2049;
    v180 = v28;
    v181 = 2050;
    v182 = v142;
    v183 = 2053;
    v184 = v144;
    v185 = 2053;
    v186 = v145;
    v187 = 2053;
    v188 = v147;
    v189 = 2053;
    v190 = v148;
    v81 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    goto LABEL_350;
  }

LABEL_213:
  v14 = v155;
  if (v159 && (*(p_info + 12) >= 7000.0 || v155))
  {
    goto LABEL_222;
  }

  v102 = v156;
  if (v18)
  {
    v102 = 0;
  }

  if (v102 == 1)
  {
    if (*(p_info + 12) < 7000.0 && (v28 > v30 * 0.0 || sub_1004BE71C(p_info)))
    {
LABEL_222:
      v18 = *a4;
      goto LABEL_224;
    }

    v18 = 0;
  }

LABEL_224:
  *(a6 + 624) = v43;
  *(a6 + 632) = v28;
  *(a6 + 640) = v29;
  *(a6 + 648) = v30;
  *(a6 + 608) = *a4;
  *(a6 + 604) = v18;
  if (!v155)
  {
    goto LABEL_253;
  }

LABEL_225:
  if (!v18)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC264();
    }

    v103 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(p_info + 23) >= 0)
      {
        v104 = *(p_info + 23);
      }

      else
      {
        v104 = p_info[1];
      }

      v105 = v191;
      sub_100070148(v191, v104 + 1);
      if (v191[23] < 0)
      {
        v105 = *v191;
      }

      if (v104)
      {
        if (*(p_info + 23) >= 0)
        {
          v106 = p_info;
        }

        else
        {
          v106 = *p_info;
        }

        memmove(v105, v106, v104);
      }

      *&v105[v104] = 47;
      v107 = *(p_info + 47);
      if (v107 >= 0)
      {
        v108 = (p_info + 3);
      }

      else
      {
        v108 = p_info[3];
      }

      if (v107 >= 0)
      {
        v109 = *(p_info + 47);
      }

      else
      {
        v109 = p_info[4];
      }

      v110 = std::string::append(v191, v108, v109);
      v111 = *&v110->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v111;
      v110->__r_.__value_.__l.__size_ = 0;
      v110->__r_.__value_.__r.__words[2] = 0;
      v110->__r_.__value_.__r.__words[0] = 0;
      if ((v191[23] & 0x80000000) != 0)
      {
        operator delete(*v191);
      }

      v112 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v112 = buf.__r_.__value_.__r.__words[0];
      }

      *v191 = 134283779;
      *&v191[4] = a7;
      *&v191[12] = 2081;
      *&v191[14] = v112;
      _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "Fence status changed to Inside, distToCenter, %{private}.1lf, %{private}s", v191, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v191, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &buf;
      }

      else
      {
        v135 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v216.__r_.__value_.__l.__data_) = 134283779;
      *(v216.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v216.__r_.__value_.__r.__words[1]) = 2081;
      *(&v216.__r_.__value_.__r.__words[1] + 6) = v135;
      v136 = _os_log_send_and_compose_impl();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v136);
      if (v136 != v191)
      {
        free(v136);
      }
    }

    v18 = 0;
    goto LABEL_37;
  }

LABEL_253:
  if (v14 != 1 && v18 == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC264();
    }

    v113 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(p_info + 23) >= 0)
      {
        v114 = *(p_info + 23);
      }

      else
      {
        v114 = p_info[1];
      }

      v115 = v191;
      sub_100070148(v191, v114 + 1);
      if (v191[23] < 0)
      {
        v115 = *v191;
      }

      if (v114)
      {
        if (*(p_info + 23) >= 0)
        {
          v116 = p_info;
        }

        else
        {
          v116 = *p_info;
        }

        memmove(v115, v116, v114);
      }

      *&v115[v114] = 47;
      v117 = *(p_info + 47);
      if (v117 >= 0)
      {
        v118 = (p_info + 3);
      }

      else
      {
        v118 = p_info[3];
      }

      if (v117 >= 0)
      {
        v119 = *(p_info + 47);
      }

      else
      {
        v119 = p_info[4];
      }

      v120 = std::string::append(v191, v118, v119);
      v121 = *&v120->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v121;
      v120->__r_.__value_.__l.__size_ = 0;
      v120->__r_.__value_.__r.__words[2] = 0;
      v120->__r_.__value_.__r.__words[0] = 0;
      if ((v191[23] & 0x80000000) != 0)
      {
        operator delete(*v191);
      }

      v122 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v122 = buf.__r_.__value_.__r.__words[0];
      }

      *v191 = 134283779;
      *&v191[4] = a7;
      *&v191[12] = 2081;
      *&v191[14] = v122;
      _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "Fence status changed to Outside, distToCenter, %{private}.1lf, %{private}s", v191, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v191, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v137 = &buf;
      }

      else
      {
        v137 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v216.__r_.__value_.__l.__data_) = 134283779;
      *(v216.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v216.__r_.__value_.__r.__words[1]) = 2081;
      *(&v216.__r_.__value_.__r.__words[1] + 6) = v137;
      v138 = _os_log_send_and_compose_impl();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v138);
      if (v138 != v191)
      {
        free(v138);
      }
    }

    v18 = 1;
    goto LABEL_37;
  }

  if (qword_1025D4640 != -1)
  {
    sub_1019EC264();
  }

  v123 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    if (*(p_info + 23) >= 0)
    {
      v124 = *(p_info + 23);
    }

    else
    {
      v124 = p_info[1];
    }

    v125 = v191;
    sub_100070148(v191, v124 + 1);
    if (v191[23] < 0)
    {
      v125 = *v191;
    }

    if (v124)
    {
      if (*(p_info + 23) >= 0)
      {
        v126 = p_info;
      }

      else
      {
        v126 = *p_info;
      }

      memmove(v125, v126, v124);
    }

    *&v125[v124] = 47;
    v127 = *(p_info + 47);
    if (v127 >= 0)
    {
      v128 = (p_info + 3);
    }

    else
    {
      v128 = p_info[3];
    }

    if (v127 >= 0)
    {
      v129 = *(p_info + 47);
    }

    else
    {
      v129 = p_info[4];
    }

    v130 = std::string::append(v191, v128, v129);
    v131 = *&v130->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v131;
    v130->__r_.__value_.__l.__size_ = 0;
    v130->__r_.__value_.__r.__words[2] = 0;
    v130->__r_.__value_.__r.__words[0] = 0;
    if ((v191[23] & 0x80000000) != 0)
    {
      operator delete(*v191);
    }

    v132 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v132 = buf.__r_.__value_.__r.__words[0];
    }

    *v191 = 134283779;
    *&v191[4] = a7;
    *&v191[12] = 2081;
    *&v191[14] = v132;
    _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "Fence status remained unchanged, distToCenter, %{private}.1lf, %{private}s", v191, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v191, 0x65CuLL);
    if (qword_1025D4640 == -1)
    {
LABEL_309:
      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &buf;
      }

      else
      {
        v133 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v216.__r_.__value_.__l.__data_) = 134283779;
      *(v216.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v216.__r_.__value_.__r.__words[1]) = 2081;
      *(&v216.__r_.__value_.__r.__words[1] + 6) = v133;
      v134 = _os_log_send_and_compose_impl();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v134);
      if (v134 != v191)
      {
        free(v134);
      }

      goto LABEL_37;
    }

LABEL_364:
    sub_1019EC264();
    goto LABEL_309;
  }

LABEL_37:
  result = v10 != 0;
  *a6 = v18;
  return result;
}

void sub_100223074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v46 - 169) < 0)
  {
    operator delete(*(v45 + 1632));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002230EC(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    LOBYTE(v1) = *(*(*(a1[4] + (((v1 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v1 + *(a1 + 56) - 1)) + 24) ^ 1;
  }

  return v1 & 1;
}

void sub_10022312C(uint64_t a1, double a2)
{
  v4 = sub_1002235FC(a1 + 904);
  if (*(a1 + 612) == 1 && ((v5 = v4, *(a1 + 730) != 1) || (*(a1 + 731) & 1) != 0))
  {
    if (v4)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v6 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Fence: FenceMonitorWifi needs tracking", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4D39C();
      }
    }

    v7 = *(a1 + 256);
    v8 = sub_10021D1B8(a1);
    v9 = v8;
    if (v7 < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5;
    }

    if (v10)
    {
      v11 = v5;
    }

    else
    {
      v11 = v8 | v5;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240704;
      *v22 = v11 & 1;
      *&v22[4] = 1026;
      *&v22[6] = v7;
      v23 = 1026;
      v24 = v9;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: engageContinuousTrackingIfNeeded, isEngageContinousTracking, %{public}d, numOfMonitoredFences, %{public}d, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::engageContinuousTrackingIfNeeded(const CFAbsoluteTime)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    *(a1 + 623) = v11 & 1;
    if (v11)
    {
      v13 = *(a1 + 624);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v14 = v13 - a2;
      v15 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *v22 = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "engageContinuousTrackingIfNeeded, timeToNextTimer, %{public}lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4D478();
      }

      if (v14 <= 0.0 || v14 >= *(a1 + 720) * 1.2)
      {
        sub_10021A0C4(a1, a2);
      }

      (*(**(a1 + 1768) + 320))(*(a1 + 1768), "engageContinuousTrackingIfNeeded");
    }

    else
    {
      *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
      (*(**(a1 + 1768) + 328))();
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v16 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 612);
      v18 = *(a1 + 728);
      v19 = *(a1 + 730);
      *buf = 67240704;
      *v22 = v17;
      *&v22[4] = 1026;
      *&v22[6] = v18;
      v23 = 1026;
      v24 = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Fence: location services disabled, no continous tracking, %{public}d, isAirplaneMode, %{public}d, cConnected, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4D294();
    }

    *(a1 + 623) = 0;
    *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
  }
}

uint64_t sub_100223604(uint64_t a1, const void *a2, const void *a3)
{
  v6 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_10007041C(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_1002236B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002236C4(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    *(result + 24) = 1;
  }

  if (*(result + 32) == 0.0)
  {
    return (*(*result + 944))();
  }

  return result;
}

void sub_100223710(int *a1, int8x16_t *a2, uint64_t a3, double a4)
{
  *(a3 + 52) |= 1u;
  v6 = *(a3 + 32);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 44) |= 1u;
  *(v6 + 8) = a4;
  *(a3 + 52) |= 2u;
  v7 = *(a3 + 40);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 492) |= 0x800u;
  v8 = *(v7 + 352);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 200) |= 0x10000u;
  v9 = *(v8 + 128);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_100021DC4(a1);
  if (!sub_100DF8570(v10))
  {
    sub_1019CD190();
  }

  *(v9 + 36) |= 2u;
  *(v9 + 12) = v10;
  *(a3 + 52) |= 2u;
  v11 = *(a3 + 40);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 488) |= 8u;
  v12 = *(v11 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 100) |= 4u;
  v13 = *(v12 + 16);
  if (!v13)
  {
    operator new();
  }

  sub_1001F34E4(a2, v13);
  *(a3 + 52) |= 2u;
  v14 = *(a3 + 40);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 488) |= 8u;
  v15 = *(v14 + 32);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 100) |= 8u;
  v16 = *(v15 + 24);
  if (!v16)
  {
    operator new();
  }

  sub_1001F3908(a2[10].i64, v16);
  v17 = a2[50].i64[1];
  if (v17)
  {
    *(a3 + 52) |= 2u;
    v18 = *(a3 + 40);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 492) |= 0x800u;
    v19 = *(v18 + 352);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 200) |= 0x10000u;
    v20 = *(v19 + 128);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 36) |= 4u;
    v21 = *(v20 + 16);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 128) |= 4u;
    v22 = *(v21 + 24);
    if (!v22)
    {
      operator new();
    }

    sub_10030D574(v17, v22);
  }

  v23 = a2[51].i64[1];
  *(a3 + 52) |= 2u;
  v24 = *(a3 + 40);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 488) |= 8u;
  v25 = *(v24 + 32);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 100) |= 0x10u;
  v26 = *(v25 + 32);
  if (!v26)
  {
    operator new();
  }

  sub_10010E544(v23, v26);
  *(a3 + 52) |= 2u;
  v27 = *(a3 + 40);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 488) |= 8u;
  v28 = *(v27 + 32);
  if (!v28)
  {
    operator new();
  }

  v29 = a2[52].i8[0];
  *(v28 + 100) |= 0x20u;
  *(v28 + 72) = v29;
  *(a3 + 52) |= 2u;
  *(v27 + 488) |= 8u;
  v30 = *(v27 + 32);
  if (!v30)
  {
    operator new();
  }

  v31 = a2[52].i64[1];
  *(v30 + 100) |= 0x40u;
  *(v30 + 48) = v31;
  *(a3 + 52) |= 2u;
  *(v27 + 488) |= 8u;
  v32 = *(v27 + 32);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 100) |= 0x100u;
  v33 = *(v32 + 56);
  if (!v33)
  {
    operator new();
  }

  sub_1002241F4(a2[53].i64, v33);
  *(a3 + 52) |= 2u;
  v34 = *(a3 + 40);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 488) |= 8u;
  v35 = *(v34 + 32);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 100) |= 0x200u;
  v36 = *(v35 + 64);
  if (!v36)
  {
    operator new();
  }

  sub_1002202CC(a2 + 55, v36);
  *(a3 + 52) |= 2u;
  v37 = *(a3 + 40);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 488) |= 8u;
  v38 = *(v37 + 32);
  if (!v38)
  {
    operator new();
  }

  v39 = sub_1001F40C8(a2[58].i32);
  if (!sub_10041ECEC(v39))
  {
    sub_10188265C();
  }

  *(v38 + 100) |= 0x800u;
  *(v38 + 76) = v39;
  *(a3 + 52) |= 2u;
  v40 = *(a3 + 40);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 488) |= 8u;
  v41 = *(v40 + 32);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 100) |= 0x1000u;
  v42 = *(v41 + 88);
  if (!v42)
  {
    operator new();
  }

  v43 = a2[59].i64[0];
  *(v42 + 36) |= 1u;
  *(v42 + 8) = v43;
  *(a3 + 52) |= 2u;
  v44 = *(a3 + 40);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 488) |= 8u;
  v45 = *(v44 + 32);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 100) |= 0x1000u;
  v46 = *(v45 + 88);
  if (!v46)
  {
    operator new();
  }

  v47 = a2[58].i64[1];
  *(v46 + 36) |= 2u;
  *(v46 + 16) = v47;
  *(a3 + 52) |= 2u;
  v48 = *(a3 + 40);
  if (!v48)
  {
    operator new();
  }

  *(v48 + 488) |= 8u;
  v49 = *(v48 + 32);
  if (!v49)
  {
    operator new();
  }

  *(v49 + 100) |= 0x1000u;
  v50 = *(v49 + 88);
  if (!v50)
  {
    operator new();
  }

  v51 = a2[59].i64[1];
  *(v50 + 36) |= 4u;
  *(v50 + 24) = v51;
  v52 = a2[72].i64[1];
  if (v52)
  {
    *(a3 + 52) |= 2u;
    v53 = *(a3 + 40);
    if (!v53)
    {
      operator new();
    }

    *(v53 + 488) |= 0x1000u;
    v54 = *(v53 + 104);
    if (!v54)
    {
      operator new();
    }

    sub_1002B1A50(v52, v54);
  }
}