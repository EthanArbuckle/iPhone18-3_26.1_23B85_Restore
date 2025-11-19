void sub_100202038(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onCellNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onCellNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100202214(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100202214(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v11 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v12);
  sub_10000B324(v7, v12[0].i8);
  v13 = 14;
  v12[0].i32[0] = 14;
  v12[0].i32[1] = sub_10000AD98(&v13);
  v8 = sub_10000AE98();
  v13 = 4;
  sub_10001E898(v8, &v13, v12, (a1 + 5220), &v11, a3, a4);
  sub_10010CA08(a1, *(a1 + 332), v9, a3, a4);
  v10 = *(a1 + 784);
  if (v10)
  {
    sub_1001FAE80(v10, a4);
  }
}

uint64_t sub_1002022D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4280))
  {
    return 0;
  }

  v21 = v3;
  v22 = v4;
  if (!*(a1 + 3912) || (*(a3 + 425) & 1) != 0)
  {
    return 0;
  }

  v9 = *(a2 + 96);
  v10 = (v9 & 0xFFFFFFF7) == 1 || (v9 | 8) == 11;
  if (v10 || (result = 0, v9 == 2) && (*(a1 + 4033) & 1) != 0)
  {
    sub_1002B4D50(a1);
    v11 = *(a2 + 16);
    *(a1 + 4088) = *a2;
    *(a1 + 4104) = v11;
    v12 = *(a2 + 32);
    v13 = *(a2 + 48);
    v14 = *(a2 + 80);
    *(a1 + 4152) = *(a2 + 64);
    *(a1 + 4168) = v14;
    *(a1 + 4120) = v12;
    *(a1 + 4136) = v13;
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    v17 = *(a2 + 128);
    *(a1 + 4228) = *(a2 + 140);
    *(a1 + 4200) = v16;
    *(a1 + 4216) = v17;
    *(a1 + 4184) = v15;
    result = (*(**(a1 + 3912) + 40))(*(a1 + 3912), a2, a3);
    v18 = *(a1 + 4408);
    if (v18)
    {
      if (result)
      {
        if (!*(a1 + 4416))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101956260();
          }

          v19 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLMM,Creating mapmatcher OS transaction", v20, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101956E08();
          }

          *(a1 + 4416) = os_transaction_create();
          v18 = *(a1 + 4408);
        }

        [v18 setNextFireDelay:300.0];
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100202484(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = 0;
LABEL_175:
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v131 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v131, OS_LOG_TYPE_ERROR, "#Error,fusion data association: init failed, null or hunc <= 0", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v202 = 0;
      v156 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v156);
      if (v156 != buf)
      {
        free(v156);
      }
    }

    goto LABEL_180;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_175;
  }

  v6 = *a2;
  if (!*a2 || *(v6 + 40) <= 0.0)
  {
    goto LABEL_175;
  }

  v179 = 0.0;
  v180 = 0.0;
  v173 = v5;
  if ((sub_100208760((a1 + 2384), &v180, &v179, *(v6 + 24), *(a1 + 2248)) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v134 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_ERROR, "#Error,fusion data association, calc_dNdE failed", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v202 = 0;
      v135 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v135);
      if (v135 != buf)
      {
        free(v135);
      }

      v132 = 0;
LABEL_194:
      v5 = v173;
      goto LABEL_181;
    }

LABEL_180:
    v132 = 0;
    goto LABEL_181;
  }

  v7 = *(a1 + 248);
  v177 = a1;
  if (!v7)
  {
    v178 = 0;
    v9 = 1.79769313e308;
    goto LABEL_196;
  }

  v176 = 0;
  v178 = 0;
  v8 = 0.0174532925;
  v9 = 1.79769313e308;
  v10 = v180 * 0.0174532925;
  v172 = v179 * 0.0174532925;
  __asm { FMOV            V0.2D, #-1.0 }

  v175 = _Q0;
  _Q0.f64[0] = NAN;
  _Q0.f64[1] = NAN;
  v174 = vnegq_f64(_Q0);
  do
  {
    v15 = v7[7];
    v16 = v15 / 0x1A;
    v17 = v7[4];
    v18 = v7[5];
    if (v18 == v17)
    {
      v20 = 0;
      v23 = 0;
      v22 = (v17 + ((((v7[8] + v15) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
      v19 = v15 % 0x1A;
    }

    else
    {
      v19 = v15 % 0x1A;
      v20 = *(v17 + 8 * v16) + 152 * (v15 % 0x1A);
      v21 = v7[8] + v15;
      v22 = (v17 + 8 * (v21 / 0x1A));
      v23 = *v22 + 152 * (v21 % 0x1A);
    }

    v24 = (v17 + 8 * v16);
    v25 = 1.79769313e308;
    v26 = v24;
    while (1)
    {
      v27 = v23;
      v28 = v22;
      v29 = v18 == v17 ? 0 : *v24 + 152 * v19;
      if (v29 == v23)
      {
        break;
      }

      if (v23 == *v28)
      {
        v22 = v28 - 1;
        v31 = *(v28 - 1);
        if ((*(v31 + 3948) & 1) == 0)
        {
LABEL_26:
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v33 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v34 = v27;
            if (v27 == *v28)
            {
              v34 = *(v28 - 1) + 3952;
            }

            v35 = *(v7 + 212);
            v36 = *(v34 - 120);
            *buf = 67240448;
            *v208 = v35;
            *&v208[4] = 2050;
            *&v208[6] = v36;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "#Error,fusion data association, found no fused location in the buffer, hID,%{public}d,bufferedLocation_mct,%{public}.3f", buf, 0x12u);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v37 = *(v7 + 212);
            if (v27 == *v28)
            {
              v27 = *(v28 - 1) + 3952;
            }

            v38 = *(v27 - 120);
            *v202 = 67240448;
            *&v202[4] = v37;
            *&v202[8] = 2050;
            *&v202[10] = v38;
            v39 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "auto cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v39);
            if (v39 != buf)
            {
              free(v39);
            }
          }

LABEL_41:
          v40 = 1.79769313e308;
          goto LABEL_42;
        }

        v30 = vabdd_f64(*(v31 + 3832), *(v6 + 16));
        if (v30 > v25)
        {
          break;
        }

        v23 = v31 + 3952;
      }

      else
      {
        if ((*(v23 - 4) & 1) == 0)
        {
          goto LABEL_26;
        }

        v30 = vabdd_f64(*(v23 - 120), *(v6 + 16));
        v22 = v28;
        if (v30 > v25)
        {
          break;
        }
      }

      v23 -= 152;
      v26 = v28;
      v20 = v27;
      v25 = v30;
    }

    if (v18 == v17)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v24 + 152 * v19;
    }

    if (v32 == v20)
    {
      goto LABEL_41;
    }

    v70 = v20;
    if (v20 == *v26)
    {
      v70 = *(v26 - 1) + 3952;
    }

    v71 = *(v70 - 96);
    *&v202[8] = v175;
    *&v202[40] = xmmword_101C75BF0;
    *&v202[56] = xmmword_101C75BF0;
    *&v202[72] = v175;
    v203 = v175;
    *v202 = off_1024DE5F8;
    v204 = 0xBFF0000000000000;
    v205 = 0;
    v206 = 0;
    if (v20 == *v26)
    {
      v74 = *(v26 - 1);
      if (*(v74 + 3832) > *(v6 + 16))
      {
        v72 = (v74 + 3832);
        v73 = v74 + 3952;
        goto LABEL_97;
      }

      *buf = *(v74 + 3944);
LABEL_106:
      operator new();
    }

    v72 = (v20 - 120);
    if (*(v20 - 120) <= *(v6 + 16))
    {
      *buf = 4;
      *buf = *(v20 - 8);
      goto LABEL_106;
    }

    v73 = v20;
LABEL_97:
    *buf = 4;
    *buf = *(v73 - 8);
    v75 = a2[1];
    v183 = *a2;
    v184 = v75;
    if (v75)
    {
      atomic_fetch_add_explicit(&v75->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = sub_100208A64(a1 + 1552, v72, buf, &v183, v202);
    if (v184)
    {
      std::__shared_weak_count::__release_weak(v184);
    }

    if (!v76)
    {
      goto LABEL_41;
    }

    if (v20 == *v26)
    {
      v80 = *(v26 - 1);
      v78 = *(v80 + 3840) - *&v202[24];
      v79 = v80 + 3952;
    }

    else
    {
      v78 = *(v20 - 112) - *&v202[24];
      v79 = v20;
    }

    v81 = *&v202[32];
    *v77.i64 = *(v79 - 104) * v8;
    v82 = 0x400921FB54442D18uLL;
    if (fabs(*v77.i64) <= 3.14159265)
    {
      v84 = 0x400921FB54442D18uLL;
    }

    else
    {
      v169 = vbslq_s8(v174, 0x400921FB54442D18uLL, v77);
      v83 = fmod(*v77.i64 + *v169.i64, 6.28318531);
      v84 = 0x400921FB54442D18uLL;
      v82.i64[1] = v169.i64[1];
      *v77.i64 = v83 - *v169.i64;
    }

    *v82.i64 = v81 * v8;
    v85.i64[1] = v84.i64[1];
    if (fabs(v81 * v8) > *v84.i64)
    {
      v170 = v77.i64[0];
      v167 = *vbslq_s8(v174, v84, v82).i64;
      *v85.i64 = fmod(*v82.i64 + v167, 6.28318531);
      v84 = 0x400921FB54442D18uLL;
      v77.i64[0] = v170;
      *v82.i64 = *v85.i64 - v167;
    }

    *v85.i64 = *v77.i64 - *v82.i64;
    if (vabdd_f64(*v77.i64, *v82.i64) > *v84.i64)
    {
      v171 = *vbslq_s8(v174, v84, v85).i64;
      *v85.i64 = fmod(*v85.i64 + v171, 6.28318531) - v171;
    }

    v86 = *&v202[40] * *&v202[40] * 0.5;
    v87 = v71 * v71 * 0.5;
    v88 = v172 * (*v85.i64 * 57.2957795) * (v172 * (*v85.i64 * 57.2957795));
    v89 = v10 * v78 * (v10 * v78);
    v90 = *(v7 + 140);
    if (((v90 - 1) >= 5 && v90 != 10 || (v90 - 3) > 7 || (v91 = v7[8] + v7[7] - 1, *(*(v7[4] + 8 * (v91 / 0x1A)) + 152 * (v91 % 0x1A) + 88) < 1.0)) && (*(v6 + 124) | 2) == 3 && (v92 = *(v6 + 80), v92 > 0.0) && v92 < 5.0 && (v93 = *(v6 + 72), v93 >= 2.0))
    {
      v87 = v87 + v93 * v93;
    }

    else if (*(v6 + 123) == 1)
    {
      v94 = v20;
      if (v20 == *v26)
      {
        v94 = *(v26 - 1) + 3952;
      }

      v95 = *(v6 + 16);
      if (v95 >= *(v94 - 120) && !sub_1001253BC(a1 + 2424, v95, -1.0))
      {
        v168 = v8;
        v96 = v88 + v89;
        if (((sub_100681564(a1 + 2424, *(v6 + 16), 6.0) & 1) != 0 || sub_1002F8B34(a1 + 2424, *(v6 + 16), 6.0)) && v96 > (v87 + v86) * 9.0)
        {
          _NF = v96 < v25 * 50.0 * (v25 * 50.0);
          v8 = v168;
          if (_NF)
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v97 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              if (v20 == *v26)
              {
                v100 = *(v26 - 1);
                v98 = (v100 + 3832);
                v166 = *&v202[40];
                v99 = v100 + 3952;
              }

              else
              {
                v98 = (v20 - 120);
                v166 = *&v202[40];
                v99 = v20;
              }

              v101 = *v98;
              v164 = *(v99 - 96);
              v165 = *(v6 + 40);
              v102 = v7[8] + v7[7] - 1;
              v103 = *(*(v7[4] + 8 * (v102 / 0x1A)) + 152 * (v102 % 0x1A) + 32);
              sub_1001FCE40(a1 + 2424, __p);
              v104 = __p;
              if (v188 < 0)
              {
                v104 = *__p;
              }

              *buf = 134351106;
              *v208 = v101;
              *&v208[8] = 2050;
              *&v208[10] = v25;
              *&v208[18] = 2050;
              *&v208[20] = v88 + v89;
              *&v208[28] = 2050;
              v209 = v87 + v86;
              v210 = 2050;
              v211 = v166;
              v212 = 2050;
              v213 = v164;
              v214 = 2050;
              *v215 = v165;
              *&v215[8] = 2050;
              v216 = v103;
              v217 = 2082;
              v218 = v104;
              _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "#fusion,data association,catching up with WSB fix by inflating validation gate,lastFilterUpdateMCT,%{public}.3f,abs_deltaTimeToFusedState_s,%{public}.3f,innovation_sqrd,%{public}.3f,innovation_var,%{public}.3f,timealignedHunc,%{public}.3f,fusedStateHunc,%{public}.3f,wsbHunc,%{public}.3f,lastFusedStateMCT,%{public}.3f,MotionActivity,%{public}s", buf, 0x5Cu);
              if (SHIBYTE(v188) < 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              if (v20 == *v26)
              {
                v123 = *(v26 - 1);
                v121 = (v123 + 3832);
                v122 = *&v202[40];
                v20 = v123 + 3952;
              }

              else
              {
                v121 = (v20 - 120);
                v122 = *&v202[40];
              }

              v124 = *v121;
              v125 = *(v20 - 96);
              v126 = *(v6 + 40);
              v127 = v7[8] + v7[7] - 1;
              v128 = *(*(v7[4] + 8 * (v127 / 0x1A)) + 152 * (v127 % 0x1A) + 32);
              sub_1001FCE40(a1 + 2424, v181);
              v129 = v181;
              if (v182 < 0)
              {
                v129 = v181[0];
              }

              *__p = 134351106;
              *&__p[4] = v124;
              v186 = 2050;
              v187 = v25;
              v188 = 2050;
              v189 = v88 + v89;
              v190 = 2050;
              v191 = v87 + v86;
              v192 = 2050;
              v193 = v122;
              v194 = 2050;
              v195 = v125;
              v196 = 2050;
              v197 = v126;
              v198 = 2050;
              v199 = v128;
              v200 = 2082;
              v201 = v129;
              v130 = _os_log_send_and_compose_impl();
              if (v182 < 0)
              {
                operator delete(v181[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v130);
              if (v130 != buf)
              {
                free(v130);
              }

              v8 = v168;
            }

            v87 = (v88 + v89) * 0.25;
            sub_1006ECC94((v7 + 25), sqrt(v87 + v87));
          }
        }

        else
        {
          v8 = v168;
        }
      }
    }

    v40 = v89 * (1.0 / (v86 + v87)) + v88 * (1.0 / (v86 + v87));
LABEL_42:
    v41 = v178;
    if (v40 < v9)
    {
      v41 = v7;
    }

    v178 = v41;
    if (v40 < v9)
    {
      v9 = v40;
    }

    v42 = *(v7 + 140) - 1;
    if (v42 < 0xA && ((0x21Fu >> v42) & 1) != 0 || (*(a1 + 2800) & 1) != 0)
    {
      v43 = 6.18007;
    }

    else
    {
      v44 = *(v6 + 124);
      if ((v44 & 0xFFFFFFFE) == 6 || v44 == 8)
      {
        v43 = 6.18007;
      }

      else
      {
        v43 = 11.8292;
      }
    }

    if (v40 <= v43)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v49 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v50 = *(v7 + 212);
        v51 = *(v7 + 214);
        *buf = 134349824;
        *v208 = v40;
        *&v208[8] = 2050;
        *&v208[10] = v43;
        *&v208[18] = 1026;
        *&v208[20] = v50;
        *&v208[24] = 1026;
        *&v208[26] = v51;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#fusion,data association success,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v108 = *(v7 + 212);
        v109 = *(v7 + 214);
        *v202 = 134349824;
        *&v202[4] = v40;
        *&v202[12] = 2050;
        *&v202[14] = v43;
        *&v202[22] = 1026;
        *&v202[24] = v108;
        *&v202[28] = 1026;
        *&v202[30] = v109;
        v110 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v110);
        if (v110 != buf)
        {
          free(v110);
        }
      }

      v52 = v7[8] + v7[7] - 1;
      v53 = *(v7[4] + 8 * (v52 / 0x1A)) + 152 * (v52 % 0x1A);
      if (*(v53 + 148) == 1 && *(v6 + 16) >= *(v53 + 32))
      {
        sub_10002F4A0(v53 + 16, "data association success", *(v7 + 212));
        if (*(a1 + 2904) == 1)
        {
          v54 = v7[8] + v7[7] - 1;
          v55 = *(v7[4] + 8 * (v54 / 0x1A)) + 152 * (v54 % 0x1A);
          if (*(v55 + 56) * 3.0 < *(v6 + 40))
          {
            v56 = *(v7 + 140);
            if (((v56 - 1) < 5 || v56 == 10) && (*(a1 + 2800) != 1 || (*(a1 + 2778) & 1) == 0))
            {
              v57 = sub_10020CECC(v55 + 16);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v58 = v57 * 50.0;
              v59 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v60 = v7[8] + v7[7] - 1;
                v61 = *(*(v7[4] + 8 * (v60 / 0x1A)) + 152 * (v60 % 0x1A) + 56);
                v62 = *(v7 + 98);
                *buf = 134350848;
                v63 = sqrt(v62);
                v64 = *(v6 + 40);
                v65 = *(a1 + 2800);
                v66 = *(a1 + 2778);
                *v208 = v57;
                v67 = v62 <= 0.0;
                v68 = -1.0;
                if (!v67)
                {
                  v68 = v63;
                }

                *&v208[8] = 2050;
                *&v208[10] = v61;
                *&v208[18] = 2050;
                *&v208[20] = v68;
                *&v208[28] = 2050;
                if (v58 <= v64)
                {
                  v69 = v57 * 50.0;
                }

                else
                {
                  v69 = v64;
                }

                v209 = v57 * 50.0;
                v210 = 2050;
                v211 = v64;
                v212 = 2050;
                v213 = v69;
                v214 = 1026;
                *v215 = v65;
                *&v215[4] = 1026;
                *&v215[6] = v66;
                _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "#fusion,data association success,timeSinceLastLocation_s,%{public}.3f,fusedLocationHunc,%{public}.3f,fusedFilterHunc,%{public}.3f,worstCaseDistanceTravelled_m,%{public}.3f,inputLocHunc,%{public}.3f,adjust_fusedLocationHunc_to,%{public}.3f,linkIsAssociated,%{public}d,inVisit,%{public}d", buf, 0x4Au);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v111 = v7[8] + v7[7] - 1;
                v112 = *(*(v7[4] + 8 * (v111 / 0x1A)) + 152 * (v111 % 0x1A) + 56);
                v113 = *(v7 + 98);
                *v202 = 134350848;
                v114 = sqrt(v113);
                v115 = *(v6 + 40);
                v116 = *(a1 + 2800);
                v117 = *(a1 + 2778);
                *&v202[4] = v57;
                v67 = v113 <= 0.0;
                v118 = -1.0;
                if (!v67)
                {
                  v118 = v114;
                }

                *&v202[12] = 2050;
                *&v202[14] = v112;
                *&v202[22] = 2050;
                *&v202[24] = v118;
                if (v58 <= v115)
                {
                  v119 = v57 * 50.0;
                }

                else
                {
                  v119 = v115;
                }

                *&v202[32] = 2050;
                *&v202[34] = v57 * 50.0;
                *&v202[42] = 2050;
                *&v202[44] = v115;
                *&v202[52] = 2050;
                *&v202[54] = v119;
                *&v202[62] = 1026;
                *&v202[64] = v116;
                *&v202[68] = 1026;
                *&v202[70] = v117;
                v120 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v120);
                if (v120 != buf)
                {
                  free(v120);
                }
              }
            }
          }
        }
      }

      sub_100204720((v7 + 1), a2);
      v176 = 1;
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v46 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(v7 + 212);
        v48 = *(v7 + 214);
        *buf = 134349824;
        *v208 = v40;
        *&v208[8] = 2050;
        *&v208[10] = v43;
        *&v208[18] = 1026;
        *&v208[20] = v47;
        *&v208[24] = 1026;
        *&v208[26] = v48;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#fusion,lost data association,mahalanobis distance (squared),%{public}.2f,GatingThreshold,%{public}.2f,hID,%{public}d,hypothesisState,%{public}d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v105 = *(v7 + 212);
        v106 = *(v7 + 214);
        *v202 = 134349824;
        *&v202[4] = v40;
        *&v202[12] = 2050;
        *&v202[14] = v43;
        *&v202[22] = 1026;
        *&v202[24] = v105;
        *&v202[28] = 1026;
        *&v202[30] = v106;
        v107 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v107);
        if (v107 != buf)
        {
          free(v107);
        }
      }

      if (*(v7 + 214) == 2)
      {
        *(v7 + 214) = 3;
      }

      ++*(v7 + 213);
    }

    v7 = *v7;
  }

  while (v7);
  if (v176)
  {
    v132 = 1;
    goto LABEL_194;
  }

LABEL_196:
  v5 = v173;
  if ((*(v6 + 124) - 6) <= 2 && sub_100D70044(a1, v6))
  {
    if (v178)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v136 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v137 = *(v178 + 212);
        *buf = 134349312;
        *v208 = v9;
        *&v208[8] = 1026;
        *&v208[10] = v137;
        _os_log_impl(dword_100000000, v136, OS_LOG_TYPE_DEBUG, "#fusion,data association failed,smallest mahalanobis distance (squared),%{public}.2f,hID,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v162 = *(v178 + 212);
        *v202 = 134349312;
        *&v202[4] = v9;
        *&v202[12] = 1026;
        *&v202[14] = v162;
        v163 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v163);
        if (v163 != buf)
        {
          free(v163);
        }

        v5 = v173;
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v138 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v138, OS_LOG_TYPE_DEBUG, "#fusion,Rejected inconsistent input cell location in favor of a-priori state", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v202 = 0;
      v157 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v157);
      if (v157 != buf)
      {
        free(v157);
      }

      v5 = v173;
    }

    v132 = 0;
    v139 = 7;
    goto LABEL_218;
  }

  v140 = *(a1 + 248);
  if (*(a1 + 2904) != 1)
  {
    if (v140)
    {
      goto LABEL_227;
    }

    goto LABEL_220;
  }

  if (!v140)
  {
LABEL_220:
    if (*(a1 + 2936))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v143 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v144 = *(a1 + 2936);
        *buf = 134349056;
        *v208 = v144;
        _os_log_impl(dword_100000000, v143, OS_LOG_TYPE_DEBUG, "#fusion,keep AOP buffered data while FusedHypotheses is empty,size of AOP buffer,%{public}zu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v160 = *(a1 + 2936);
        *v202 = 134349056;
        *&v202[4] = v160;
        v161 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v161);
        if (v161 != buf)
        {
          free(v161);
        }
      }
    }

    v140 = *(a1 + 248);
    if (!v140)
    {
LABEL_247:
      bzero(buf, 0x388uLL);
      sub_100856684(buf);
      operator new();
    }

    do
    {
LABEL_227:
      if ((v140[107] & 0xFFFFFFFB) != 0)
      {
        if (v140[8])
        {
          v145 = sub_10020CECC(*(v140[4] + 8 * (v140[7] / 0x1AuLL)) + 152 * (v140[7] % 0x1AuLL) + 16);
          if (v145 < 15.0)
          {
            v146 = v145;
            v147 = *(a1 + 2792);
            if (!v147 || v147[1] != 1 || (*v147 & 1) == 0)
            {
              *__p = v145 / 15.0 * 0.2 + 0.00000001;
              v148 = (v140 + 102);
              v149 = *(v140 + 102);
              if (*__p < v149)
              {
                v148 = __p;
              }

              if (v149 < 0.00000001)
              {
                v148 = &unk_101CFC6F8;
              }

              sub_10116952C((v140 + 1), *v148);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v150 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v151 = *(v140 + 212);
                v152 = v140[102];
                *buf = 67240704;
                *v208 = v151;
                *&v208[4] = 2050;
                *&v208[6] = v146;
                *&v208[14] = 2050;
                *&v208[16] = v152;
                _os_log_impl(dword_100000000, v150, OS_LOG_TYPE_DEBUG, "#fusion,Provisional hypothesis likelihood restricted hID,%{public}d,age_s,%{public}.3f,likelihood,%{public}.3f", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A7B5F4(buf);
                v153 = *(v140 + 212);
                v154 = v140[102];
                *v202 = 67240704;
                *&v202[4] = v153;
                *&v202[8] = 2050;
                *&v202[10] = v146;
                *&v202[18] = 2050;
                *&v202[20] = v154;
                v155 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v155);
                if (v155 != buf)
                {
                  free(v155);
                }

                a1 = v177;
              }
            }
          }
        }
      }

      v140 = *v140;
    }

    while (v140);
    goto LABEL_247;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v141 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v142 = *(v6 + 124);
    *buf = 67240192;
    *v208 = v142;
    _os_log_impl(dword_100000000, v141, OS_LOG_TYPE_DEBUG, "#fusion,lost data association: ignore input location type,%{public}d,to process buffered data on wakeup", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v158 = *(v6 + 124);
    *v202 = 67240192;
    *&v202[4] = v158;
    v159 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::associateLocationToHypotheses(const LCFusionFusedLocation &)", "%s\n", v159);
    if (v159 != buf)
    {
      free(v159);
    }

    v5 = v173;
  }

  v132 = 0;
  v139 = 14;
LABEL_218:
  *(a1 + 1544) = v139;
LABEL_181:
  if (v5)
  {
    sub_100008080(v5);
  }

  return v132;
}

void sub_100204708(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100204720(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 852) == 1)
  {
    if (*(a1 + 56) >= 6uLL)
    {
      sub_100208200((a1 + 16));
    }
  }

  else
  {
    if (*(a1 + 56) >= 0x3CuLL && (*(a1 + 828) & 0x80000000) != 0 && *(a1 + 832) < 0.0)
    {
      sub_100208200((a1 + 16));
    }

    if (!*(a1 + 840))
    {
      if (dword_102632830 == 1999)
      {
        v4 = 2101;
      }

      else
      {
        v4 = dword_102632830 + 1;
      }

      dword_102632830 = v4;
      *(a1 + 840) = v4;
      *(a1 + 788) = v4;
    }
  }

  v5 = a2[1];
  if (!v5)
  {
    v6 = 0;
LABEL_22:
    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 840);
      *buf = 67240192;
      v81 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,trying to update with unavailable location object", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BD54(buf);
      v64 = *(a1 + 840);
      v72 = 67240192;
      v73 = v64;
      v65 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionLocationHypothesis::newLocationUpdate(const LCFusionFusedLocation &)", "%s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    goto LABEL_27;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
    sub_1002050FC((a1 + 16), a2);
    *(a1 + 824) = -1;
    v22 = *(a1 + 56) + *(a1 + 48) - 1;
    v23 = *(*(a1 + 24) + 8 * (v22 / 0x1A)) + 152 * (v22 % 0x1A);
    if ((*(v23 + 148) & 1) == 0)
    {
      *(v23 + 148) = 1;
      v24 = *(v7 + 8);
      v25 = *(v7 + 24);
      v26 = *(v7 + 40);
      *(v23 + 72) = *(v7 + 56);
      *(v23 + 56) = v26;
      *(v23 + 40) = v25;
      *(v23 + 24) = v24;
      v27 = *(v7 + 72);
      v28 = *(v7 + 88);
      v29 = *(v7 + 104);
      *(v23 + 136) = *(v7 + 120);
      *(v23 + 120) = v29;
      *(v23 + 104) = v28;
      *(v23 + 88) = v27;
      v30 = *(a1 + 56) + *(a1 + 48) - 1;
      v31 = *(*(a1 + 24) + 8 * (v30 / 0x1A)) + 152 * (v30 % 0x1A);
      *(v31 + 149) = 0;
      *a1 = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
      *(v31 + 144) = *(a1 + 552);
    }

    goto LABEL_33;
  }

  v9 = (v7 + 16);
  v10 = *(v7 + 16);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  if (v10 >= *(*(v12 + 8 * ((v8 + v11 - 1) / 0x1A)) + 152 * ((v8 + v11 - 1) % 0x1A) + 32))
  {
    sub_1002050FC((a1 + 16), a2);
    v32 = *(a1 + 56);
    *(*(*(a1 + 24) + 8 * ((v32 + *(a1 + 48) - 1) / 0x1AuLL)) + 152 * ((v32 + *(a1 + 48) - 1) % 0x1AuLL) + 144) = *(a1 + 552);
    *(a1 + 824) = v32 - 2;
    goto LABEL_33;
  }

  v13 = *(v12 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A);
  v14 = *(v13 + 32);
  if (v10 <= v14)
  {
    if (v14 - v10 <= 60.0)
    {
      sub_101168DB8((a1 + 16), a2);
      *(a1 + 824) = 0;
      v47 = *(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL);
      if ((*(v47 + 148) & 1) == 0)
      {
        *(v47 + 148) = 1;
        v48 = *(v7 + 8);
        v49 = *(v7 + 24);
        v50 = *(v7 + 40);
        *(v47 + 72) = *(v7 + 56);
        *(v47 + 56) = v50;
        *(v47 + 40) = v49;
        *(v47 + 24) = v48;
        v51 = *(v7 + 72);
        v52 = *(v7 + 88);
        v53 = *(v7 + 104);
        *(v47 + 136) = *(v7 + 120);
        *(v47 + 120) = v53;
        *(v47 + 104) = v52;
        *(v47 + 88) = v51;
        *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 149) = 0;
        *a1 = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
        v54 = a2[1];
        v70 = *a2;
        v71 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = *(a1 + 552);
        sub_100208438(a1 + 192, (v7 + 16), &v70, buf);
        if (v71)
        {
          std::__shared_weak_count::__release_weak(v71);
        }
      }

      *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 144) = *(a1 + 552);
      goto LABEL_33;
    }

    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v39 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v40 = *(a1 + 840);
      v41 = *v9;
      v42 = *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 32);
      *buf = 67240960;
      v81 = v40;
      v82 = 2050;
      v83 = v41;
      v84 = 2050;
      v85 = v42;
      v86 = 2050;
      v87 = 0x404E000000000000;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,ignoring old out-of-sequence location sample,loc_mct,%{public}.3f,oldest location in buffer mct,%{public}.3f,age_tolerance_s,%{public}.1f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B4BD54(buf);
      v43 = *(a1 + 840);
      v44 = *v9;
      v45 = *(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 32);
      v72 = 67240960;
      v73 = v43;
      v74 = 2050;
      v75 = v44;
      v76 = 2050;
      v77 = v45;
      v78 = 2050;
      v79 = 0x404E000000000000;
      v46 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionLocationHypothesis::newLocationUpdate(const LCFusionFusedLocation &)", "%s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    goto LABEL_28;
  }

  v15 = v8 - 1;
  *(a1 + 824) = v8 - 1;
  v16 = v11 + v8;
  v17 = (v12 + 8 * (v16 / 0x1A));
  v18 = *(a1 + 32);
  if (v18 == v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v17 + 152 * (v16 % 0x1A);
  }

  if (v18 == v12)
  {
    v55 = 0;
  }

  else
  {
    v55 = v13;
  }

  if (v55 == v19)
  {
    goto LABEL_82;
  }

  v56 = *v17;
  while (v19 != v56)
  {
    if (v10 >= *(v19 - 120))
    {
      goto LABEL_81;
    }

    *(a1 + 824) = --v15;
LABEL_79:
    v19 -= 152;
    if (v55 == v19)
    {
      goto LABEL_82;
    }
  }

  v56 = *(v17 - 1);
  if (v10 < *(v56 + 3832))
  {
    *(a1 + 824) = --v15;
    v19 = v56 + 3952;
    --v17;
    goto LABEL_79;
  }

LABEL_81:
  sub_101168ED4((a1 + 16), v17, v19, a2);
  *(v57 + 144) = *(a1 + 552);
  v58 = *(v7 + 8);
  v59 = *(v7 + 24);
  v60 = *(v7 + 40);
  *(v57 + 72) = *(v7 + 56);
  *(v57 + 56) = v60;
  *(v57 + 40) = v59;
  *(v57 + 24) = v58;
  v61 = *(v7 + 72);
  v62 = *(v7 + 88);
  v63 = *(v7 + 104);
  *(v57 + 136) = *(v7 + 120);
  *(v57 + 120) = v63;
  *(v57 + 104) = v62;
  *(v57 + 88) = v61;
  *(v57 + 148) = 0;
  v15 = *(a1 + 824);
LABEL_82:
  if ((v15 & 0x80000000) == 0 && v15 < *(a1 + 56) - 1 && *(a1 + 832) < 0.0)
  {
    operator new();
  }

LABEL_33:
  v33 = *(a1 + 848);
  v34 = 1;
  if (v33 > 2)
  {
    if (v33 == 3)
    {
      v34 = 2;
    }

    else if (v33 != 4)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!v33)
  {
LABEL_42:
    *(a1 + 848) = v34;
    goto LABEL_43;
  }

  if (v33 != 1)
  {
LABEL_43:
    v35 = *(a1 + 56);
    goto LABEL_44;
  }

  v35 = *(a1 + 56);
  if (v35 >= 3)
  {
    *(a1 + 844) = 0x200000000;
LABEL_49:
    if (*(a1 + 852) == 1)
    {
      v38 = a2[1];
      v66 = *a2;
      v67 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001FD708(a1 + 192, (v7 + 16), &v66);
      v37 = v67;
      if (v67)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_27;
  }

LABEL_44:
  *(a1 + 844) = 0;
  if (v35 != 1)
  {
    goto LABEL_49;
  }

  v36 = a2[1];
  v68 = *a2;
  v69 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = *(a1 + 552);
  sub_100208438(a1 + 192, (v7 + 16), &v68, buf);
  v37 = v69;
  if (v69)
  {
LABEL_53:
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_27:
  if (v6)
  {
LABEL_28:
    sub_100008080(v6);
  }
}

void sub_1002050F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

__n128 sub_1002050FC(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10023D9E8(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A));
  v9 = v7 % 0x1A;
  v10 = *(a2 + 8);
  v11 = v8 + 152 * v9;
  *v11 = *a2;
  *(v11 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(v11 + 16) = off_1024DE5F8;
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  *(v11 + 72) = *(a2 + 72);
  *(v11 + 56) = v14;
  *(v11 + 40) = v13;
  *(v11 + 24) = v12;
  result = *(a2 + 88);
  v16 = *(a2 + 104);
  v17 = *(a2 + 120);
  *(v11 + 136) = *(a2 + 136);
  *(v11 + 120) = v17;
  *(v11 + 104) = v16;
  *(v11 + 88) = result;
  *(v11 + 144) = 4;
  *(v11 + 144) = *(a2 + 144);
  *(v11 + 148) = *(a2 + 148);
  ++a1[5];
  return result;
}

uint64_t sub_100205234(uint64_t a1)
{
  v2 = *(a1 + 824);
  if ((v2 & 0x80000000) != 0 || (v3 = *(a1 + 56), v3 <= v2))
  {
    if (qword_1025D4770 != -1)
    {
      sub_101B4BD40();
    }

    v31 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a1 + 840);
      v33 = *(a1 + 824);
      v34 = *(a1 + 56);
      *buf = 67240704;
      v47 = v32;
      v48 = 1026;
      *v49 = v33;
      *&v49[4] = 2050;
      *&v49[6] = v34;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,DataFusion called with invalid start fusion,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B4BD54(buf);
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v39);
LABEL_53:
      if (v39 != buf)
      {
        free(v39);
      }

      return 0;
    }
  }

  else
  {
    if (v2 == v3 - 1)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101B4BD40();
      }

      v4 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 840);
        v6 = *(a1 + 824);
        v7 = *(a1 + 56);
        *buf = 67240704;
        v47 = v5;
        v48 = 1026;
        *v49 = v6;
        *&v49[4] = 2050;
        *&v49[6] = v7;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "FusedLoc,hID,%{public}d,DataFusion called with nothing to do,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B4BD54(buf);
        v44 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }
    }

    v8 = *(a1 + 824);
    v9 = *(a1 + 56) - 1;
    if (v8 >= v9)
    {
      goto LABEL_51;
    }

    v10 = v8;
    __asm { FMOV            V0.2D, #-1.0 }

    v16 = *(a1 + 48);
    v17 = *(a1 + 24);
    if (*(*(v17 + 8 * ((v16 + v10) / 0x1AuLL)) + 152 * ((v16 + v10) % 0x1AuLL) + 148))
    {
      v18 = *(a1 + 832);
      v19 = v8 + 1;
      v20 = v16 + v19;
      v21 = (v16 + v19) / 0x1AuLL;
      if (v18 <= 0.0)
      {
        v22 = v20 % 0x1A;
      }

      else
      {
        v22 = v20 % 0x1A;
        v23 = *(v17 + 8 * v21) + 152 * v22;
        if (*(v23 + 32) >= v18 && *(v23 + 148) == 1)
        {
          if (qword_1025D4770 != -1)
          {
            sub_1002485F0();
          }

          v40 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v41 = *(a1 + 832);
            v42 = *(a1 + 56);
            v43 = *(*(*(a1 + 24) + 8 * ((*(a1 + 48) + v19) / 0x1AuLL)) + 152 * ((*(a1 + 48) + v19) % 0x1AuLL) + 32);
            *buf = 67240960;
            v47 = v10;
            v48 = 2050;
            *v49 = v42;
            *&v49[8] = 2050;
            *&v49[10] = v41;
            v50 = 2050;
            v51 = v43;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "FusedLoc,reached buffered location after roll-back index,breaking fusion,current fIndex,%{public}d,bufferSize,%{public}zu,first location after roll-back MCT,%{public}.3f,fIndexLocation_mct,%{public}.3f", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B4BD54(buf);
            v45 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v45);
            if (v45 != buf)
            {
              free(v45);
            }
          }

          v9 = *(a1 + 56) - 1;
LABEL_51:
          *(a1 + 824) = v9;
          return 1;
        }
      }

      v24 = (*(v17 + 8 * v21) + 152 * v22);
      v25 = v24[1];
      if (v25)
      {
        v26 = std::__shared_weak_count::lock(v25);
        if (v26 && *v24 && *(*v24 + 40) > 0.0)
        {
          operator new();
        }
      }

      else
      {
        v26 = 0;
      }

      if (qword_1025D4770 != -1)
      {
        sub_1002485F0();
      }

      v27 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 840);
        v29 = *(a1 + 56);
        *buf = 67240704;
        v47 = v28;
        v48 = 1026;
        *v49 = v19;
        *&v49[4] = 2050;
        *&v49[6] = v29;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,DataFusion called on invalid new raw location,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B4BD54(buf);
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      if (v26)
      {
        sub_100008080(v26);
      }

      return 0;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1002485F0();
    }

    v36 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 840);
      v38 = *(a1 + 56);
      *buf = 67240704;
      v47 = v37;
      v48 = 1026;
      *v49 = v10;
      *&v49[4] = 2050;
      *&v49[6] = v38;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,DataFusion called on fusion index which is not previously fused,index,%{public}d,bufferSize,%{public}zu", buf, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101B4BD54(buf);
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionLocationHypothesis::performLocationDataFusion(const LCFusionMotionActivity &)", "%s\n", v39);
      goto LABEL_53;
    }
  }

  return result;
}

void sub_100207950(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100207968(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v44 = off_1024DE5F8;
  v49 = *(a3 + 72);
  v50 = *(a3 + 88);
  v51 = *(a3 + 104);
  v52 = *(a3 + 120);
  v45 = *(a3 + 8);
  v46 = *(a3 + 24);
  v47 = *(a3 + 40);
  v48 = *(a3 + 56);
  (*(*a4 + 80))(a4, "predictedPreviousFusedLocation", a1[52].u32[2]);
  sub_10002F4A0(&v44, "FusedLoc,CC Fusion a priori", a1[52].i32[2]);
  v10 = *(a4 + 40);
  v11 = *(a3 + 40);
  v12.f64[0] = v11;
  v12.f64[1] = v10;
  __asm { FMOV            V1.2D, #0.5 }

  v18 = vmulq_f64(vmulq_f64(v12, v12), _Q1);
  __asm { FMOV            V1.2D, #1.0 }

  v21 = vbslq_s8(vcgtq_f64(_Q1, v18), _Q1, v18);
  v20 = vdivq_f64(_Q1, v21);
  v21.f64[0] = v20.f64[1];
  v22 = 1.0 / vaddvq_f64(v20);
  v23 = sqrt(v22 + v22);
  *&v47 = v23;
  if ((*(a3 + 124) - 6) <= 2 && (*(a4 + 124) - 6) <= 2)
  {
    if (v11 < v10)
    {
      v10 = v11;
    }

    if (v23 >= v10)
    {
      v10 = v23;
    }

    *&v47 = v10;
  }

  v24 = *(a3 + 24);
  v25 = v20.f64[0] * (*(a3 + 32) * 0.0174532925);
  v24.f64[1] = *(a4 + 24);
  v28 = vmulq_f64(v24, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v26 = vmulq_f64(v20, v28);
  v28.f64[0] = v21.f64[0] * (*(a4 + 32) * 0.0174532925);
  v21.f64[0] = v22 * vaddvq_f64(v26);
  v27 = v25 + v28.f64[0];
  v28.f64[0] = 3.14159265;
  v42 = v28;
  if (fabs(v21.f64[0]) > 3.14159265)
  {
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v41 = vbslq_s8(vnegq_f64(v29), v28, v21);
    v21.f64[0] = fmod(v21.f64[0] + *v41.i64, 6.28318531);
    *&v26.f64[1] = v41.i64[1];
    v21.f64[0] = v21.f64[0] - *v41.i64;
  }

  v26.f64[0] = v22 * v27;
  if (v21.f64[0] >= 1.57079633)
  {
    v30 = v42;
    v21.f64[0] = v42.f64[0] - v21.f64[0];
  }

  else
  {
    if (v21.f64[0] < -1.57079633)
    {
      v21.f64[0] = -3.14159265 - v21.f64[0];
    }

    v30 = v42;
  }

  *&v46 = v21.f64[0] * 57.2957795;
  if (fabs(v26.f64[0]) > *v30.i64)
  {
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v43 = *vbslq_s8(vnegq_f64(v31), v30, v26).i64;
    v26.f64[0] = fmod(v26.f64[0] + v43, 6.28318531) - v43;
  }

  *(&v46 + 1) = v26.f64[0] * 57.2957795;
  if (a5 <= 2.0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    if (*(&v49 + 1) <= 0.0)
    {
      v49 = *(a4 + 72);
    }

    if (*(&v50 + 1) <= 0.0)
    {
      v50 = *(a4 + 88);
    }
  }

  v32 = *&v47;
  if (*&v47 < 2.0)
  {
    v32 = 2.0;
  }

  *&v47 = v32;
  sub_10002F4A0(&v44, "FusedLoc,CC Fusion a posteriori", a1[52].i32[2]);
  v33 = *(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL);
  v34 = v45;
  v35 = v46;
  v36 = v47;
  *(v33 + 72) = v48;
  *(v33 + 56) = v36;
  *(v33 + 40) = v35;
  *(v33 + 24) = v34;
  v37 = v49;
  v38 = v50;
  v39 = v51;
  *(v33 + 136) = v52;
  *(v33 + 120) = v39;
  *(v33 + 104) = v38;
  *(v33 + 88) = v37;
  *(*(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL) + 148) = 1;
  *a1 = vextq_s8(v45, v45, 8uLL);
  return 1;
}

void sub_100207D3C(uint64_t a1, double *a2)
{
  if ((*(a1 + 828) & 0x80000000) != 0 && *(a1 + 832) <= 0.0 && *(a1 + 56) >= 2uLL)
  {
    do
    {
      if (sub_10002F2EC(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 16, a2) <= 900.0)
      {
        break;
      }

      sub_100208200((a1 + 16));
    }

    while (*(a1 + 56) >= 2uLL);
  }
}

void *sub_100207E00(void *a1, uint64_t **a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * ((a5 - *a4) >> 3) + 0x79435E50D79435E5 * (a3 - *a2);
  }

  return sub_100207E64(a1, a2, a3, v5);
}

void *sub_100207E64(void *a1, uint64_t **a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x1A));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = &(*v17)[19 * (v15 % 0x1A)];
    }

    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_100207FC0(a2, a3, v20, v21, &v22);
    return sub_10020828C(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x1A));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = &(*v13)[19 * (v11 % 0x1A)];
    }

    v22 = v13;
    v23 = v14;
    sub_100207FC0(a2, a3, v9, v10, &v22);
    return sub_100244294(a1, v9, v10, a4 - a1[5]);
  }
}

double sub_100207FC0(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
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
    for (i = *a1 + 494; ; i = v12 + 494)
    {
      sub_10020C55C(a2, i, v7, v8, &v14);
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

  sub_10020C55C(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t sub_100208064(uint64_t a1, int a2)
{
  if (a2 - 1) < 0xB && ((0x7EFu >> (a2 - 1)))
  {
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v7 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#fusion,unsupported location,type,%{public}d", buf, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::isLocationTypeSupported(CLLocationType) const", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }

    return 0;
  }

  return result;
}

void sub_1002081F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100208200(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A) + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1001FD668(a1, 1);
}

uint64_t sub_10020828C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x1A));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 152 * (v5 % 0x1A);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 26 * (v8 - a2) - 0x79435E50D79435E5 * ((v9 - *v8) >> 3) + 0x79435E50D79435E5 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x1A));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 152 * (v4 % 0x1A);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 26 * (a2 - v12) - 0x79435E50D79435E5 * v10 + 0x79435E50D79435E5 * ((v13 - *v12) >> 3);
      }

      v19 = v12;
      v20 = v13;
      sub_1000B9760(&v19, v14);
      v15 = v20;
      if (v20 != v9)
      {
        v16 = v19;
        do
        {
          v17 = *(v15 + 8);
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          v15 += 152;
          if (v15 - *v16 == 3952)
          {
            v18 = v16[1];
            ++v16;
            v15 = v18;
          }
        }

        while (v15 != v9);
      }

      v3[5] -= v11;
      do
      {
        result = sub_1001E0254(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100208438(uint64_t a1, double *a2, uint64_t *a3, _DWORD *a4)
{
  sub_10020AA14(a1);
  *(a1 + 360) = *a4;
  v8 = a3[1];
  v11[0] = *a3;
  v11[1] = v8;
  if (!v8)
  {
    return sub_1001FD708(a1, a2, v11);
  }

  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = sub_1001FD708(a1, a2, v11);
  std::__shared_weak_count::__release_weak(v8);
  return v9;
}

uint64_t sub_1002084D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    *a3 = *(a1 + 368);

    return sub_10002D178(a1, a2);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      *buf = 67240192;
      v9 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::getFilterLatestEstimate(LCFusionProviderLocation &, CFTimeInterval &)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    return 0;
  }
}

void sub_100208698(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002086A4(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x161uLL);
  *(a1 + 360) = *(a2 + 360);
  v4 = *(a2 + 508);
  v5 = *(a2 + 524);
  v6 = *(a2 + 540);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 524) = v5;
  *(a1 + 540) = v6;
  *(a1 + 508) = v4;
  v7 = *(a2 + 444);
  v8 = *(a2 + 460);
  v9 = *(a2 + 492);
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 492) = v9;
  *(a1 + 444) = v7;
  *(a1 + 460) = v8;
  v10 = *(a2 + 380);
  v11 = *(a2 + 396);
  v12 = *(a2 + 428);
  *(a1 + 412) = *(a2 + 412);
  *(a1 + 428) = v12;
  *(a1 + 380) = v10;
  *(a1 + 396) = v11;
  *(a1 + 364) = *(a2 + 364);
  v13 = *(a2 + 568);
  v14 = *(a2 + 576);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v13;
  v15 = *(a1 + 576);
  *(a1 + 576) = v14;
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v16;
  return a1;
}

uint64_t sub_100208760(float64x2_t *a1, double *a2, double *a3, double a4, double a5)
{
  v10 = -450.0;
  if (a5 >= -450.0)
  {
    v10 = 1000000.0;
    if (a5 <= 1000000.0)
    {
      v10 = a5;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC3A8();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218240;
        v24 = 1000000.0;
        v25 = 2048;
        v26 = a5;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning refAlt > %.1lf,refAlt,%.1lf,using the max", &v23, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AFC5B4();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AFC3A8();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218240;
      v24 = -450.0;
      v25 = 2048;
      v26 = a5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning refAlt < %.1lf,refAlt,%.1lf,using the min", &v23, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AFC6B0();
    }
  }

  v13 = a1[1].f64[1];
  if (v13 == 0.0 || vabdd_f64(a4, v13) > 0.005)
  {
    if (fabs(a4) > 90.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC7AC();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v23 = 134545665;
        v24 = a4;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "latitude,%{sensitive}.7lf,is out of bounds", &v23, 0xCu);
      }

      v15 = sub_10000A100(121, 0);
      result = 0;
      if (v15)
      {
        sub_101AFC7D4();
        return 0;
      }

      return result;
    }

    a1[1].f64[0] = a4 * 0.0174532925;
    a1[1].f64[1] = a4;
    v17 = __sincos_stret(a4 * 0.0174532925);
    v18 = v17.__sinval * -0.00669437999 * v17.__sinval + 1.0;
    v19 = sqrt(v18);
    v20.f64[0] = v18 * v19;
    v20.f64[1] = v19;
    v21 = vdivq_f64(xmmword_101D16770, v20);
    *a1 = v21;
    a1[2].f64[0] = v17.__cosval;
  }

  else
  {
    v21.f64[0] = a1->f64[0];
  }

  *a2 = v10 + v21.f64[0];
  v22 = (v10 + a1->f64[1]) * a1[2].f64[0];
  if (v22 < 10.0)
  {
    v22 = 10.0;
  }

  *a3 = v22;
  return 1;
}

uint64_t sub_100208A64(uint64_t a1, double *a2, _DWORD *a3, uint64_t *a4, uint64_t a5)
{
  sub_100029004(a1, a2);
  (*(*a5 + 128))(a5);
  v10 = a4[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a4;
      if (*a4)
      {
        if (*(v12 + 40) > 0.0)
        {
          v13 = (v12 + 16);
          v14 = *a2 - *(v12 + 16);
          if (v14 < 0.0)
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v15 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 596);
              v17 = *a2;
              *buf = 67240704;
              v108 = v16;
              v109 = 2050;
              v110 = v17;
              v111 = 2050;
              v112 = v14;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location skipped,dT <= 0,dt,%{public}.7f", buf, 0x1Cu);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_27;
            }

            goto LABEL_79;
          }

          if (v14 < 0.001)
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v23 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v24 = *(a1 + 596);
              v25 = *a2;
              *buf = 67240704;
              v108 = v24;
              v109 = 2050;
              v110 = v25;
              v111 = 2050;
              v112 = v14;
              _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate state skipped,small dt,%{public}.7f", buf, 0x1Cu);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_27;
            }

LABEL_79:
            sub_101912E28(buf);
            v70 = *(a1 + 596);
            v71 = *a2;
            __dst[0] = 67240704;
            __dst[1] = v70;
            LOWORD(__dst[2]) = 2050;
            *(&__dst[2] + 2) = v71;
            HIWORD(__dst[4]) = 2050;
            *&__dst[5] = v14;
            v72 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v72);
            if (v72 != buf)
            {
              free(v72);
            }

LABEL_27:
            v26 = *(v12 + 8);
            v27 = *(v12 + 24);
            v28 = *(v12 + 40);
            *(a5 + 56) = *(v12 + 56);
            *(a5 + 40) = v28;
            *(a5 + 24) = v27;
            *(a5 + 8) = v26;
            v29 = *(v12 + 72);
            v30 = *(v12 + 88);
            v31 = *(v12 + 104);
            *(a5 + 120) = *(v12 + 120);
            *(a5 + 104) = v31;
            *(a5 + 88) = v30;
            *(a5 + 72) = v29;
            v21 = 1;
LABEL_19:
            sub_100008080(v11);
            return v21;
          }

          v32 = *a2 - *(a1 + 368);
          v33 = v32 <= 5.0 && v32 >= 0.0;
          v34 = *(a1 + 24);
          v35 = *(a1 + 32);
          v36 = *(a1 + 248);
          v37 = *(a1 + 288);
          memcpy(__dst, a1, 0x161uLL);
          __dst[90] = *(a1 + 360);
          v38 = *(a1 + 540);
          v101 = *(a1 + 524);
          *v102 = v38;
          *&v102[12] = *(a1 + 552);
          v39 = *(a1 + 476);
          v97 = *(a1 + 460);
          v98 = v39;
          v40 = *(a1 + 508);
          v99 = *(a1 + 492);
          v100 = v40;
          v41 = *(a1 + 412);
          v93 = *(a1 + 396);
          v94 = v41;
          v42 = *(a1 + 444);
          v95 = *(a1 + 428);
          v96 = v42;
          v43 = *(a1 + 380);
          v91 = *(a1 + 364);
          v92 = v43;
          v103 = *(a1 + 568);
          v44 = *(a1 + 576);
          v104 = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = *(a1 + 600);
          v105 = *(a1 + 584);
          v106 = v45;
          if ((*(a1 + 596) - 2101) <= 0xFFFFFF9A)
          {
            *(a1 + 596) = 2001;
          }

          v79[0] = v12;
          v79[1] = v11;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *buf = *a3;
          v46 = sub_100208438(a1, (v12 + 16), v79, buf);
          std::__shared_weak_count::__release_weak(v11);
          if (v46)
          {
            *(a1 + 360) = *a3;
            if (*(v12 + 72) < 0.0 || (v59 = *(v12 + 80), v59 < 0.0) || v59 > 5.0 || *(v12 + 88) < 0.0 || (v60 = *(v12 + 96), v60 <= 0.0) || v60 > 90.0)
            {
              v47 = hypot(v34, v35);
              if (v47 > 0.0 && v33)
              {
                v49 = v36 + v37;
                if (v49 > 0.0)
                {
                  v50 = v47;
                  if (v49 < 25.0)
                  {
                    *(a1 + 24) = v34;
                    *(a1 + 32) = v35;
                    v51 = fmax(v32, 1.0);
                    v52 = v51 * v51 * v49 * 0.5;
                    *(a1 + 248) = v52;
                    *(a1 + 288) = v52;
                    *(a1 + 416) = v50;
                    if (qword_1025D4770 != -1)
                    {
                      sub_1001D30A0();
                    }

                    v53 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v54 = *(a1 + 596);
                      v55 = *v13;
                      *buf = 67241216;
                      v108 = v54;
                      v109 = 2050;
                      v110 = v55;
                      v111 = 2050;
                      v112 = v32;
                      v113 = 2050;
                      v114 = v50;
                      v115 = 2050;
                      v116 = v49;
                      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,loc_mct,%{public}.3f,location velocity override,dt,%{public}.3f,speed_mps,%{public}.3f,speedVar,%{public}.3f", buf, 0x30u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101912E28(buf);
                      v73 = *(a1 + 596);
                      v74 = *v13;
                      v80 = 67241216;
                      v81 = v73;
                      v82 = 2050;
                      v83 = v74;
                      v84 = 2050;
                      v85 = v32;
                      v86 = 2050;
                      v87 = v50;
                      v88 = 2050;
                      v89 = v49;
                      v75 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v75);
                      if (v75 != buf)
                      {
                        free(v75);
                      }
                    }
                  }
                }
              }
            }

            if (sub_10002980C(a1, a2))
            {
              if (sub_1002084D0(a1, a5, (a5 + 16)))
              {
                v21 = 1;
                goto LABEL_75;
              }

              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v64 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v65 = *(a1 + 596);
                v66 = *a2;
                *buf = 67240448;
                v108 = v65;
                v109 = 2050;
                v110 = v66;
                _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,get predicted location", buf, 0x12u);
              }

              if (!sub_10000A100(121, 2))
              {
LABEL_74:
                v21 = 0;
LABEL_75:
                sub_1002086A4(a1, __dst);
                if (v104)
                {
                  sub_100008080(v104);
                }

                goto LABEL_19;
              }
            }

            else
            {
              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v61 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v62 = *(a1 + 596);
                v63 = *a2;
                *buf = 67240448;
                v108 = v62;
                v109 = 2050;
                v110 = v63;
                _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,predict", buf, 0x12u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_74;
              }
            }
          }

          else
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v56 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v57 = *(a1 + 596);
              v58 = *a2;
              *buf = 67240448;
              v108 = v57;
              v109 = 2050;
              v110 = v58;
              _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,init", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_74;
            }
          }

          sub_101912E28(buf);
          v76 = *(a1 + 596);
          v77 = *a2;
          v80 = 67240448;
          v81 = v76;
          v82 = 2050;
          v83 = v77;
          v78 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v78);
          if (v78 != buf)
          {
            free(v78);
          }

          goto LABEL_74;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v18 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 596);
    v20 = *a2;
    *buf = 67240448;
    v108 = v19;
    v109 = 2050;
    v110 = v20;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,propagate location failed,null or hunc <= 0", buf, 0x12u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v67 = *(a1 + 596);
    v68 = *a2;
    __dst[0] = 67240448;
    __dst[1] = v67;
    LOWORD(__dst[2]) = 2050;
    *(&__dst[2] + 2) = v68;
    v69 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v69);
    if (v69 != buf)
    {
      free(v69);
    }
  }

  v21 = 0;
  if (v11)
  {
    goto LABEL_19;
  }

  return v21;
}

void sub_100209694(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002096A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8();
  *buf = 1;
  v5 = sub_10001A6B0(v4, buf);
  if ((*(a1 + 2776) & 1) != 0 || *(a1 + 2777) == 1)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 2776);
      v8 = *(a1 + 2777);
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      *buf = 67240960;
      *v71 = v7;
      *&v71[4] = 1026;
      *&v71[6] = v8;
      *v72 = 2050;
      *&v72[2] = v9;
      *v73 = 2050;
      *&v73[2] = v10;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,hasAirborneClient,%{public}d,hasFitnessClient,%{public}d,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x22u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v66);
    if (v66 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  if (*(a2 + 124) == 3)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      *buf = 134349312;
      *v71 = v15;
      *&v71[8] = 2050;
      *v72 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,accessory,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v66);
    if (v66 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  v17 = v5;
  if (sub_1001252CC(a1 + 2424, v5, 6.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a2 + 8);
      v20 = *(a2 + 16);
      *buf = 134349312;
      *v71 = v19;
      *&v71[8] = 2050;
      *v72 = v20;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,vehicleConnected,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v66);
    if (v66 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  v21 = sub_10000B1F8();
  *buf = 1;
  v22 = sub_10001A6B0(v21, buf);
  if (sub_10020C654((a1 + 2632), v22))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a2 + 8);
      v25 = *(a2 + 16);
      *buf = 134349312;
      *v71 = v24;
      *&v71[8] = 2050;
      *v72 = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,MapsRoutingActive,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v66);
    if (v66 == buf)
    {
      goto LABEL_8;
    }

LABEL_101:
    free(v66);
LABEL_8:
    v11 = sub_10000B1F8();
    *buf = 1;
    v12 = sub_10001A6B0(v11, buf);
LABEL_9:
    *(a1 + 184) = v12;
    return 1;
  }

  if (sub_100125258(a1 + 2424, v17, 6.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v26 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a2 + 8);
      v28 = *(a2 + 16);
      *buf = 134349312;
      *v71 = v27;
      *&v71[8] = 2050;
      *v72 = v28;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,CM driving,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v68);
    if (v68 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

  if (sub_10020C700(a1 + 2424) || sub_1001254F8(a1 + 2424))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v29 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a2 + 8);
      v31 = *(a2 + 16);
      *buf = 134349312;
      *v71 = v30;
      *&v71[8] = 2050;
      *v72 = v31;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,Apple fitness,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v68);
    if (v68 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

  if ((sub_100125608(a1 + 2424, v17, 6.0) || sub_1001255A0(a1 + 2424, v17, 6.0)) && sub_100D6B860(a1 + 2680, 6.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v32 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a2 + 8);
      v34 = *(a2 + 16);
      v35 = sub_100D6B860(a1 + 2680, 6.0);
      *buf = 134349568;
      *v71 = v33;
      *&v71[8] = 2050;
      *v72 = v34;
      *&v72[8] = 1026;
      *v73 = v35;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,highConfidenceOutdoorWalkingOrRunningOrCycling,cfat,%{public}.3f,mct,%{public}.3f,CLOutdoor,%{public}d", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    sub_100D6B860(a1 + 2680, 6.0);
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v68);
    if (v68 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_117;
  }

  v36 = *(a1 + 2168);
  v37 = *(v36 + 560);
  if (v37 <= 0.0 || (v38 = *(v36 + 568), v39 = *(a2 + 16), v39 >= v37) && v39 - v37 > 6.0)
  {
    v38 = 0;
  }

  v40 = sub_1001253BC(a1 + 2424, v17, 6.0) || (v38 - 1) < 2;
  if (((*(a2 + 122) & 1) != 0 || !v40 && (*(a1 + 2800) & 1) == 0) && *(a1 + 2360) > 20.0)
  {
    v41 = *(a1 + 2376);
    if (v41 >= 21 && *(a1 + 2372) <= 19 && *(a1 + 2380) / v41 > 0.5)
    {
      v42 = *(a1 + 2352);
      if (v42 <= 0.0 || *(a2 + 16) - v42 <= 5.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v43 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a2 + 8);
          v44 = *(a2 + 16);
          v46 = *(a1 + 2360);
          v47 = *(a1 + 2376);
          if (v47)
          {
            v48 = *(a1 + 2380) / v47;
          }

          else
          {
            v48 = 0.0;
          }

          v67 = *(a1 + 2372);
          *buf = 134350080;
          *v71 = v45;
          *&v71[8] = 2050;
          *v72 = v44;
          *&v72[8] = 2050;
          *v73 = v46;
          *&v73[8] = 2050;
          v74 = v48;
          v75 = 1026;
          v76 = v67;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,GNSS conditions detected,cfat,%{public}.3f,mct,%{public}.3f,GNSSSessionDuration_s,%{public}.1f,ratioOfEpochsWithGoodTrakcing,%{public}.2f,consecNumEpochsPoorTracking,%{public}d", buf, 0x30u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_105;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v68 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v68);
        if (v68 == buf)
        {
          goto LABEL_105;
        }

LABEL_117:
        free(v68);
LABEL_105:
        v12 = sub_10002F470();
        goto LABEL_9;
      }
    }
  }

  if (*(a1 + 175) != 1)
  {
    return 0;
  }

  v49 = sub_10002F470();
  v50 = *(a1 + 192);
  v51 = v49 - *(a1 + 184);
  if (v50 <= 0.0)
  {
    v50 = 5.0;
    if (!v40)
    {
      v50 = 40.0;
    }

    *(a1 + 192) = v50;
  }

  if (v51 <= v50)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v52 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a2 + 8);
      v54 = *(a2 + 16);
      v55 = *(a1 + 184);
      v56 = *(a1 + 192);
      *buf = 134349824;
      *v71 = v53;
      *&v71[8] = 2050;
      *v72 = v54;
      *&v72[8] = 2050;
      *v73 = v55;
      *&v73[8] = 2050;
      v74 = v56;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,passthroughHysteresis,cfat,%{public}.3f,mct,%{public}.3f,last_passthrough_mct,%{public}.3f,stickinessTime_s,%{public}.1f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v58 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v59 = *(a1 + 184);
    v60 = *(a1 + 192);
    *buf = 134349568;
    *v71 = v59;
    *&v71[8] = 2050;
    *v72 = v51;
    *&v72[8] = 2050;
    *v73 = v60;
    _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,passthroughHysteresis expired,switching off passthrough mode,last_passthrough_mct,%{public}.3f,elapsed,%{public}.1f,stickinessTime_s,%{public}.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v69 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v69);
    if (v69 != buf)
    {
      free(v69);
    }
  }

  result = 0;
  *(a1 + 175) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 184) = _Q0;
  return result;
}

void sub_10020A6AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10020A6B8(uint64_t a1, uint64_t *a2)
{
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10020D068(a1 + 3000, *(a1 + 2448));
  sub_100217474(a1 + 3000, *(*(a1 + 2168) + 568));
  sub_10020D1C4(a1, &v23, &v20, &v17);
  sub_10020D6E0(a1 + 3000, v23);
  sub_10020D5B0(a1 + 3000, &v17);
  sub_10021BF2C(a1 + 3000, &v20);
  v4 = *(a1 + 2168);
  v5 = v4[148];
  v6 = v4[149];
  v7 = v4[150];
  v8 = v4[151];
  *(v4 + 74) = 0;
  *(v4 + 75) = 0;
  sub_100217538(a1 + 3000, v7, v8, v5, v6);
  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 124);
    if (v10 == 4)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_100218AE4(a1, v9, &v14, &__p);
      sub_100219110(a1 + 3000, &v14);
      sub_1002191D8(a1 + 3000, &__p);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }
    }

    else if (v10 == 1)
    {
      sub_1002B4850(a1, v9, &v20, &v17);
      sub_1002B4B74(a1 + 3000, &v20, *(*a2 + 40));
      sub_1002B4C54(a1 + 3000, &v17, *(*a2 + 40));
      if (*(a1 + 1284) != 1)
      {
        sub_1008F4670(a1 + 3000);
      }
    }
  }

  sub_10020D75C(a1 + 3000);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_10020A85C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a2 + 96);
    v10 = *(a2 + 28) > -500.0;
    if (*(a2 + 36) <= 0.0)
    {
      v10 = 0;
    }

    v11 = (*(a3 + 312) - 1) < 2;
    v14[0] = 67240704;
    v14[1] = v9;
    v15 = 1026;
    v16 = v10;
    v17 = 1026;
    v18 = v11;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WifiZMetrics, process new location fix, type,%{public}d, isGoodZAxis,%{public}d, isUndulationValid,%{public}d", v14, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10174777C();
  }

  v12 = *(a2 + 96);
  if (v12 == 11 || v12 == 4)
  {
    v13 = *(a2 + 28);
    if (v13 > -500.0 && *(a2 + 36) > 0.0 && (*(a3 + 312) - 1) <= 1)
    {
      *(a1 + 168) = v13 + *(a3 + 316);
      *(a1 + 176) = 1;
      *(a1 + 184) = a4;
      *(a1 + 192) = 1;
      *(a1 + 200) = *(a2 + 36);
      *(a1 + 208) = 1;
      sub_1000AFF84(a1);
    }
  }
}

void sub_10020AA14(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 360) = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 368) = _Q0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 432) = _Q0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  memset_pattern16((a1 + 168), &unk_101C89510, 0x80uLL);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_101C75BF0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  if (*(a1 + 456) == 1)
  {
    *(a1 + 456) = 0;
  }

  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
  }

  *(a1 + 552) = 0xBFF0000000000000;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  v7 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v7)
  {
    sub_100008080(v7);
  }

  *(a1 + 584) = 0xBFF0000000000000;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
}

void sub_10020AB0C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      sub_1008572E0((v2 + 1));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

uint64_t sub_10020AB5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 2792);
  if (v4 && v4[1] == 1 && *v4 == 1)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#selection,CarPlay mode returning max likelihood hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v128 = 0;
      v110 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }

    return sub_100D704FC(a1, a2);
  }

  v7 = *(a1 + 248);
  if (!v7)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,#selection,No valid hypothesis available for selection,passthrough the location", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v128 = 0;
      v109 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v109);
      if (v109 != buf)
      {
        free(v109);
      }
    }

    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    v14 = *(a2 + 40);
    *(a1 + 1216) = *(a2 + 56);
    *(a1 + 1200) = v14;
    *(a1 + 1184) = v13;
    *(a1 + 1168) = v12;
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v17 = *(a2 + 104);
    *(a1 + 1280) = *(a2 + 120);
    *(a1 + 1264) = v17;
    *(a1 + 1248) = v16;
    *(a1 + 1232) = v15;
    return 1;
  }

  v8 = 1;
  v9 = *(a1 + 248);
  do
  {
    v9 = *v9;
    --v8;
  }

  while (v9);
  if (!v8)
  {
    v18 = *(v7 + 214);
    if (v18 && (v19 = v7[8]) != 0 && (*(*(v7[4] + 8 * ((v19 + v7[7] - 1) / 0x1AuLL)) + 152 * ((v19 + v7[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
    {
      if (v18 == 4)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v20 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#selection,only available hypothesis is a gross outlier, rejecting", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          *v128 = 0;
          v119 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v119);
          if (v119 != buf)
          {
            free(v119);
          }
        }

        result = 0;
        v21 = 5;
        goto LABEL_192;
      }

      *v128 = off_1024DE5F8;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v128[8] = _Q0;
      *&v129[16] = xmmword_101C75BF0;
      *&v129[32] = xmmword_101C75BF0;
      *v130 = _Q0;
      *&v130[16] = _Q0;
      *v131 = 0xBFF0000000000000;
      *&v131[12] = 0;
      *&v131[20] = 0;
      if (sub_10002980C((v7 + 25), (a2 + 16)) && (sub_10002A8E4((v7 + 25), v128) & 1) != 0)
      {
        *&v131[20] = sub_1000291EC((v7 + 1), (a2 + 16));
        *(v7 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
        v73 = v7[8] + v7[7] - 1;
        v74 = v7[4];
        v75 = (v73 * 0x4EC4EC4EC4EC4EC5uLL) >> 64;
        goto LABEL_183;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v102 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_ERROR, "#Error,#selection,Failed to retrieve estimate from the only available hypothesis", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_191;
      }

      sub_101A7B5F4(buf);
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v23);
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_191;
      }

      sub_101A7B5F4(buf);
      *v128 = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v23);
    }

    if (v23 != buf)
    {
      free(v23);
    }

    goto LABEL_191;
  }

  v124 = *(a1 + 2800);
  if ((v124 & 1) == 0)
  {
    v10 = *(*a1 + 24);
    v124 = v10 > 0.0 && v10 + 6.0 > *(a2 + 16);
  }

  v122 = *a1;
  v24 = 0;
  v25 = 0;
  v126 = 0;
  do
  {
    v26 = v7[7] + v7[8];
    v27 = v7[4];
    v28 = v7[5];
    v29 = (v27 + 8 * (v26 / 0x1A));
    if (v28 == v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = *v29 + 152 * (v26 % 0x1A);
    }

    while (1)
    {
      if (v28 == v27)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(v27 + 8 * (v7[7] / 0x1AuLL)) + 152 * (v7[7] % 0x1AuLL);
      }

      if (v31 == v30)
      {
        goto LABEL_67;
      }

      if (v30 == *v29)
      {
        v33 = *(v29 - 1);
        if ((*(v33 + 3948) & 1) == 0)
        {
          goto LABEL_67;
        }

        v32 = v33 + 3952;
      }

      else
      {
        v32 = v30;
        if ((*(v30 - 4) & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (sub_10002F2EC(v32 - 136, (a2 + 16)) > 31.0)
      {
LABEL_67:
        v37 = (v7[107] & 0xFFFFFFFB) != 0;
        goto LABEL_68;
      }

      if (v30 == *v29)
      {
        break;
      }

      v34 = v30;
      if (*(v30 - 16))
      {
        goto LABEL_62;
      }

LABEL_66:
      v30 -= 152;
      v27 = v7[4];
      v28 = v7[5];
    }

    v35 = *(v29 - 1);
    if ((*(v35 + 3936) & 1) == 0)
    {
      goto LABEL_65;
    }

    v34 = v35 + 3952;
LABEL_62:
    if (*(v34 - 12) != 4 || (v7[107] & 0xFFFFFFFB) == 0)
    {
      if (v30 != *v29)
      {
        goto LABEL_66;
      }

LABEL_65:
      v36 = *--v29;
      v30 = v36 + 3952;
      goto LABEL_66;
    }

    ++v24;
    v37 = 1;
    v126 = v7;
LABEL_68:
    v25 += v37;
    v7 = *v7;
  }

  while (v7);
  if (v24 < 1)
  {
    v123 = 0;
    v49 = 0;
    v39 = 0;
    v46 = -1.0;
    v45 = 0.0;
    v47 = 0.0;
    v53 = v124;
    goto LABEL_101;
  }

  v38 = sub_1001253BC(a1 + 2424, *(a2 + 16), 6.0);
  v39 = v38;
  v40 = *(a1 + 2168);
  v41 = *(v40 + 560);
  if (v41 > 0.0)
  {
    v42 = *(a2 + 16);
    if (v42 < v41 || v42 - v41 <= 6.0)
    {
      v39 = (*(v40 + 568) - 1) < 2 || v38;
    }
  }

  v44 = *(a1 + 2192);
  if (v44)
  {
    sub_100251B28(v44, buf);
    v46 = *buf;
    v45 = *&buf[8];
    v47 = v133;
    v48 = *buf > 0.0;
    if (v133 <= 0.0)
    {
      v48 = 0;
    }

    v49 = *&buf[8] <= 25.0 && v48;
    v123 = *v134;
    v50 = *(a2 + 16);
    if ((*buf < 0.0 || *buf <= v50 && v50 - *buf > 6.0) && !sub_100125258(a1 + 2424, v50, 6.0) && !sub_1001254F8(a1 + 2424) && !sub_1001253BC(a1 + 2424, *(a2 + 16), 6.0))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v51 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a2 + 16);
        *buf = 134350080;
        *&buf[4] = v52;
        *&buf[12] = 2050;
        *&buf[14] = v46;
        *&buf[22] = 2050;
        v133 = v45;
        *v134 = 2050;
        *&v134[2] = v47;
        *&v134[10] = 2050;
        *&v134[12] = v123;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#selection,IO data usage timed out,location_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v120 = *(a2 + 16);
        *v128 = 134350080;
        *&v128[4] = v120;
        *&v128[12] = 2050;
        *&v128[14] = v46;
        *&v128[22] = 2050;
        *v129 = v45;
        *&v129[8] = 2050;
        *&v129[10] = v47;
        *&v129[18] = 2050;
        *&v129[20] = v123;
        v121 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v121);
        if (v121 != buf)
        {
          free(v121);
        }
      }

      v49 = 0;
    }
  }

  else
  {
    v123 = 0;
    v49 = 0;
    v46 = -1.0;
    v45 = 0.0;
    v47 = 0.0;
  }

  if (v124)
  {
    v53 = 1;
    LOBYTE(v124) = 1;
LABEL_101:
    v125 = v53;
  }

  else
  {
    v125 = (v41 > 0.0) & (v39 | v49);
    LOBYTE(v124) = 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v54 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
  {
    v55 = *(a2 + 16);
    v56 = *(a1 + 2778);
    v57 = *(a1 + 2779);
    v58 = *(a1 + 2800);
    v59 = *(*a1 + 24);
    *buf = 134351360;
    *&buf[4] = v55;
    *&buf[12] = 1026;
    *&buf[14] = v56;
    *&buf[18] = 1026;
    *&buf[20] = v57;
    LOWORD(v133) = 1026;
    *(&v133 + 2) = v58;
    HIWORD(v133) = 1026;
    *v134 = v125;
    *&v134[4] = 1026;
    *&v134[6] = v24;
    *&v134[10] = 1026;
    *&v134[12] = v25;
    *&v134[16] = 2050;
    *&v134[18] = v59;
    *&v134[26] = 1026;
    *&v134[28] = v39 & 1;
    LOWORD(v135) = 1026;
    *(&v135 + 2) = v49;
    _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "#selection,newLocation_mct,%{public}.3f,isInsideVisit,%{public}d,isLikelyOutOfAVisit,%{public}d,isWiFiAssociated,%{public}d,%{public}d,numHypoWithAPWiFi,%{public}d,NumNonOutlierHypo,%{public}d,LastWifiAssociatedTime,%{public}.3f,static,%{public}d,radialDistanceMovedWithinThreshold,%{public}d", buf, 0x46u);
  }

  v60 = v39;
  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v103 = *(a2 + 16);
    v104 = *(a1 + 2778);
    v105 = *(a1 + 2779);
    v106 = *(a1 + 2800);
    v107 = *(*a1 + 24);
    *v128 = 134351360;
    *&v128[4] = v103;
    *&v128[12] = 1026;
    *&v128[14] = v104;
    *&v128[18] = 1026;
    *&v128[20] = v105;
    *v129 = 1026;
    *&v129[2] = v106;
    *&v129[6] = 1026;
    *&v129[8] = v125;
    *&v129[12] = 1026;
    *&v129[14] = v24;
    *&v129[18] = 1026;
    *&v129[20] = v25;
    *&v129[24] = 2050;
    *&v129[26] = v107;
    *&v129[34] = 1026;
    *&v129[36] = v39 & 1;
    *&v129[40] = 1026;
    *&v129[42] = v49;
    v108 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v108);
    if (v108 != buf)
    {
      free(v108);
    }
  }

  if (((v24 == 1) & v125) != 1 || !v126 || (v126[107] & 0xFFFFFFFB) == 0)
  {
    if (((v25 > 1) & v124) != 1)
    {
      goto LABEL_144;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v76 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v77 = sub_10000B1F8();
      *buf = 1;
      v78 = sub_10001A6B0(v77, buf);
      *buf = 134349568;
      *&buf[4] = v78;
      *&buf[12] = 1026;
      *&buf[14] = v125;
      *&buf[18] = 1026;
      *&buf[20] = v24;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "#selection,now_mct,%{public}.3f,APWiFiFix override skipped in favor of hypotheses mixture,Associated,%{public}d,NumHypoWithAPWiFi,%{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_144;
    }

    sub_101A7B5F4(buf);
    *v128 = 134349568;
    *&v128[4] = sub_10002F470();
    *&v128[12] = 1026;
    *&v128[14] = v125;
    *&v128[18] = 1026;
    *&v128[20] = v24;
    v79 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v79);
LABEL_206:
    if (v79 != buf)
    {
      free(v79);
    }

    goto LABEL_144;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v61 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v62 = *(v126 + 212);
    v63 = sub_10002F470();
    v64 = sub_10002F470();
    v65 = *(v122 + 24);
    v66 = v64 - v65;
    v67 = v46 > 0.0;
    *buf = 67242752;
    if (v47 <= 0.0)
    {
      v67 = 0;
    }

    *&buf[4] = v62;
    *&buf[8] = 2050;
    *&buf[10] = v63;
    *&buf[18] = 1026;
    *&buf[20] = v60 & 1;
    LOWORD(v133) = 1026;
    *(&v133 + 2) = v49;
    HIWORD(v133) = 1026;
    *v134 = 1;
    *&v134[4] = 2050;
    *&v134[6] = v66;
    *&v134[14] = 1026;
    *&v134[16] = v67;
    *&v134[20] = 2050;
    *&v134[22] = v46 - v65;
    *&v134[30] = 2050;
    v135 = v45;
    v136 = 2050;
    v137 = v47;
    v138 = 2050;
    v139 = v123;
    _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "#selection,APWiFi,hID,%{public}d,now_mct,%{public}.3f,Static,%{public}d,IODistanceBelowThreshold,%{public}d,isWiFiAssociated,%{public}d,how_long,%{public}.3f,isIODataValid,%{public}d,IOAgeWrtTimeAPWiFiAssociated_s,%{public}.2f,IODistanceMoved_m,%{public}.1f,IODistanceMovedInterval_s,%{public}.1f,IO_num_samples,%{public}zu", buf, 0x5Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v112 = *(v126 + 212);
    v113 = sub_10002F470();
    v114 = sub_10002F470();
    v115 = *(v122 + 24);
    v116 = v114 - v115;
    v117 = v46 > 0.0;
    *v128 = 67242752;
    if (v47 <= 0.0)
    {
      v117 = 0;
    }

    *&v128[4] = v112;
    *&v128[8] = 2050;
    *&v128[10] = v113;
    *&v128[18] = 1026;
    *&v128[20] = v60 & 1;
    *v129 = 1026;
    *&v129[2] = v49;
    *&v129[6] = 1026;
    *&v129[8] = 1;
    *&v129[12] = 2050;
    *&v129[14] = v116;
    *&v129[22] = 1026;
    *&v129[24] = v117;
    *&v129[28] = 2050;
    *&v129[30] = v46 - v115;
    *&v129[38] = 2050;
    *&v129[40] = v45;
    *v130 = 2050;
    *&v130[2] = v47;
    *&v130[10] = 2050;
    *&v130[12] = v123;
    v118 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v118);
    if (v118 != buf)
    {
      free(v118);
    }
  }

  v7 = v126;
  if (((v60 | v49) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v80 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v81 = *(a2 + 16);
      v82 = v46 > 0.0;
      *buf = 134350080;
      if (v47 <= 0.0)
      {
        v82 = 0;
      }

      *&buf[4] = v81;
      *&buf[12] = 1026;
      *&buf[14] = 0;
      *&buf[18] = 1026;
      *&buf[20] = 0;
      LOWORD(v133) = 1026;
      *(&v133 + 2) = v82;
      HIWORD(v133) = 2050;
      *v134 = v45;
      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "#selection,mct,%{public}.3f,Selection based on APWiFiFix hypothesis is skipped,Static,%{public}d,LargeDisplacement,%{public}d,IO_valid,%{public}d,IO_Displacement_m,%{public}.3f", buf, 0x28u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_144;
    }

    sub_101A7B5F4(buf);
    v83 = *(a2 + 16);
    v84 = v46 > 0.0;
    if (v47 <= 0.0)
    {
      v84 = 0;
    }

    *v128 = 134350080;
    *&v128[4] = v83;
    *&v128[12] = 1026;
    *&v128[14] = 0;
    *&v128[18] = 1026;
    *&v128[20] = 0;
    *v129 = 1026;
    *&v129[2] = v84;
    *&v129[6] = 2050;
    *&v129[8] = v45;
    v79 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v79);
    goto LABEL_206;
  }

  *v128 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v128[8] = _Q0;
  *&v129[16] = xmmword_101C75BF0;
  *&v129[32] = xmmword_101C75BF0;
  *v130 = _Q0;
  *&v130[16] = _Q0;
  *v131 = 0xBFF0000000000000;
  *&v131[12] = 0;
  *&v131[20] = sub_1000291EC((v126 + 1), (a2 + 16));
  if (sub_10002980C((v126 + 25), (a2 + 16)) && sub_10002A8E4((v126 + 25), v128))
  {
    *(v126 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
    v73 = v126[8] + v126[7] - 1;
    v74 = v126[4];
    v75 = (v73 * 0x4EC4EC4EC4EC4EC5uLL) >> 64;
LABEL_183:
    sub_1012E8F84(v128, *(v74 + 8 * (v75 >> 3)) + 152 * (v73 - 26 * (v75 >> 3)) + 16);
    sub_1002182BC(a1 + 256, (v7 + 1));
    *(a1 + 1232) = *v130;
    *(a1 + 1248) = *&v130[16];
    *(a1 + 1264) = *v131;
    *(a1 + 1280) = *&v131[16];
    *(a1 + 1168) = *&v128[8];
    *(a1 + 1184) = *v129;
    *(a1 + 1200) = *&v129[16];
    v100 = *&v129[32];
    goto LABEL_185;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v85 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "#selection,Failed to retrieve estimate from APWiFiFix hypothesis", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v79 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v79);
    goto LABEL_206;
  }

LABEL_144:
  if (!v25)
  {
    v96 = -1.0;
    if (*(a1 + 1104) && *(a1 + 312))
    {
      v96 = sub_100215A40(a1 + 256, *(a2 + 16));
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v97 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = v96;
      _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEFAULT, "#selection,all hypotheses are marked as outliers,age of previously selected hypothesis,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v128 = 134349056;
      *&v128[4] = v96;
      v111 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v111);
      if (v111 != buf)
      {
        free(v111);
      }
    }

    if (v96 > 900.0)
    {
      for (i = *(a1 + 248); i; i = *i)
      {
        *(i + 214) = 1;
      }

LABEL_178:
      if (sub_10024A318(a1, a2))
      {
        return 1;
      }
    }

LABEL_191:
    result = 0;
    v21 = 9;
LABEL_192:
    *(a1 + 1544) = v21;
    return result;
  }

  if (v25 != 1)
  {
    goto LABEL_178;
  }

  v86 = *(a1 + 248);
  if (!v86)
  {
    goto LABEL_178;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v127 = _Q0;
  while ((v86[107] & 0xFFFFFFFB) == 0)
  {
LABEL_161:
    v86 = *v86;
    if (!v86)
    {
      goto LABEL_178;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v88 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v89 = *(v86 + 212);
    v90 = *(a2 + 16);
    *buf = 67240704;
    *&buf[4] = v89;
    *&buf[8] = 2050;
    *&buf[10] = v90;
    *&buf[18] = 1026;
    *&buf[20] = v125;
    _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEBUG, "#selection,yield the only non-outlier hypothesis,hID,%{public}d,location_mct,%{public}.3f,isWiFiAssociated,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v92 = *(v86 + 212);
    v93 = *(a2 + 16);
    *v128 = 67240704;
    *&v128[4] = v92;
    *&v128[8] = 2050;
    *&v128[10] = v93;
    *&v128[18] = 1026;
    *&v128[20] = v125;
    v94 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v94);
    if (v94 != buf)
    {
      free(v94);
    }
  }

  *v128 = off_1024DE5F8;
  *&v128[8] = v127;
  *&v129[16] = xmmword_101C75BF0;
  *&v129[32] = xmmword_101C75BF0;
  *v130 = v127;
  *&v130[16] = v127;
  *v131 = 0xBFF0000000000000;
  *&v131[12] = 0;
  *&v131[20] = 0;
  if (!sub_10002980C((v86 + 25), (a2 + 16)) || !sub_10002A8E4((v86 + 25), v128))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v91 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEBUG, "#selection,Failed to retrieve estimate from the single non-outlier hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v95 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v95);
      if (v95 != buf)
      {
        free(v95);
      }
    }

    goto LABEL_161;
  }

  *&v131[20] = sub_1000291EC((v86 + 1), (a2 + 16));
  *(v86 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v101 = v86[8] + v86[7] - 1;
  sub_1012E8F84(v128, *(v86[4] + 8 * (v101 / 0x1A)) + 152 * (v101 % 0x1A) + 16);
  sub_1002182BC(a1 + 256, (v86 + 1));
  *(a1 + 1232) = *v130;
  *(a1 + 1248) = *&v130[16];
  *(a1 + 1264) = *v131;
  *(a1 + 1280) = *&v131[16];
  *(a1 + 1168) = *&v128[8];
  *(a1 + 1184) = *v129;
  *(a1 + 1200) = *&v129[16];
  v100 = *&v129[32];
LABEL_185:
  result = 1;
  *(a1 + 1216) = v100;
  return result;
}

void sub_10020C54C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10020C55C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  v6 = a3;
  v7 = a1;
  if (a1 == a2)
  {
    v12 = a1;
    goto LABEL_14;
  }

  v10 = *a3;
  while (1)
  {
    v11 = 0x86BCA1AF286BCA1BLL * ((v10 - a4 + 3952) >> 3);
    if ((0x86BCA1AF286BCA1BLL * (a2 - v7)) < v11)
    {
      v11 = 0x86BCA1AF286BCA1BLL * (a2 - v7);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v15 = v6[1];
    ++v6;
    v10 = v15;
    a4 = v15;
  }

  v12 = &v7[19 * v11];
  v13 = 152 * v11;
  do
  {
    result = sub_100216E10(a4, v7);
    v7 += 19;
    a4 += 152;
    v13 -= 152;
  }

  while (v13);
  if (v12 != a2)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a4 == *v6 + 3952)
  {
    v16 = v6[1];
    ++v6;
    a4 = v16;
  }

LABEL_14:
  *a5 = v12;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

BOOL sub_10020C654(_DWORD *a1, double a2)
{
  if (!sub_10020C6E4(a1, a2, 6.0) && *a1 == 1 || !sub_10020C6E4(a1, a2, 6.0) && !*a1)
  {
    return 1;
  }

  if (sub_10020C6E4(a1, a2, 6.0))
  {
    return 0;
  }

  return *a1 == 3;
}

void sub_10020C740(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  if (*(a1 + 112) > 0.0)
  {
    v7 = sub_10000B1F8();
    v8 = 1;
    *(a1 + 112) = sub_10001A6B0(v7, &v8);
  }
}

void sub_10020C7B8(BOOL *a1, uint64_t **a2, uint64_t a3)
{
  *a1 = 0;
  if (*(a3 + 848) & 0xFFFFFFFB) != 0 && (v4 = *(a3 + 56)) != 0 && (*(*(*(a3 + 24) + 8 * ((v4 + *(a3 + 48) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a3 + 48) - 1) % 0x1AuLL) + 148))
  {
    v41[0] = 0;
    v41[1] = 0;
    v40 = v41;
    v5 = *a2;
    if (*a2)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      do
      {
        if (v5[107] & 0xFFFFFFFB) != 0 && (v7 = v5[8]) != 0 && (*(*(v5[4] + 8 * ((v7 + v5[7] - 1) / 0x1AuLL)) + 152 * ((v7 + v5[7] - 1) % 0x1AuLL) + 148))
        {
          sub_1002170C4(v5 + 1, buf);
          v8 = p_info;
          v39 = *(v5 + 212);
          *v42 = &v39;
          v9 = sub_100212E9C(&v40, &v39);
          v10 = v9 + 6;
          v11 = v9 + 5;
          sub_1003C93BC((v9 + 5), v9[6]);
          v12 = *&buf[8];
          *(v10 - 1) = *buf;
          *v10 = v12;
          v13 = *&buf[16];
          v10[1] = *&buf[16];
          if (v13)
          {
            v12[2] = v10;
            *buf = &buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            v12 = 0;
          }

          else
          {
            *v11 = v10;
          }

          p_info = v8;
          sub_1003C93BC(buf, v12);
        }

        else
        {
          if (p_info[238] != -1)
          {
            sub_1018B5ED8();
          }

          v14 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,hypothesis,not valid", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B5F00(buf);
            *v42 = 0;
            v15 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v15);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        v5 = *v5;
      }

      while (v5);
      v17 = v40;
      v18 = a1;
      if (v40 != v41)
      {
        v19 = v40;
        do
        {
          if (*(v19 + 8) != *(a3 + 840))
          {
            v20 = (v19 + 6);
            v21 = v19[6];
            if (!v21)
            {
              goto LABEL_39;
            }

            v22 = (v19 + 6);
            v23 = v19[6];
            do
            {
              if (v23[7] >= 2)
              {
                v22 = v23;
              }

              v23 = *&v23[2 * (v23[7] < 2)];
            }

            while (v23);
            if (v22 == v20 || v22[7] >= 3)
            {
LABEL_39:
              v22 = (v19 + 6);
            }

            if (!v21)
            {
              goto LABEL_47;
            }

            v24 = (v19 + 6);
            do
            {
              if (v21[7] >= 1)
              {
                v24 = v21;
              }

              v21 = *&v21[2 * (v21[7] < 1)];
            }

            while (v21);
            if (v24 == v20 || v24[7] >= 2)
            {
LABEL_47:
              v24 = (v19 + 6);
            }

            if (v22 != v20 || v24 != v20)
            {
              if (p_info[238] != -1)
              {
                sub_1018B5ED8();
                v18 = a1;
              }

              v36 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,not selected has non cell provider,trust,false", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018B5F00(buf);
                *v42 = 0;
                v37 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v37);
                if (v37 != buf)
                {
                  free(v37);
                }

                v18 = a1;
              }

              *v18 = 0;
              goto LABEL_77;
            }
          }

          v25 = v19[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v19[2];
              v27 = *v26 == v19;
              v19 = v26;
            }

            while (!v27);
          }

          v19 = v26;
        }

        while (v26 != v41);
        while (*(v17 + 8) != *(a3 + 840))
        {
          v28 = v17[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v17[2];
              v27 = *v29 == v17;
              v17 = v29;
            }

            while (!v27);
          }

          v17 = v29;
          if (v29 == v41)
          {
            goto LABEL_77;
          }
        }

        *a1 = v17[7] > 1;
        if (p_info[238] != -1)
        {
          sub_1018B5ED8();
          v18 = a1;
        }

        v30 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v31 = v17[7];
          v32 = *v18;
          *buf = 134218240;
          *&buf[4] = v31;
          *&buf[12] = 1024;
          *&buf[14] = v32;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,numTechs,%zu,trust,%d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B5F00(buf);
          v33 = v17[7];
          v34 = *a1;
          *v42 = 134218240;
          *&v42[4] = v33;
          v43 = 1024;
          v44 = v34;
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }
      }
    }

LABEL_77:
    sub_10018F070(&v40, v41[0]);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018B5F44();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,selectedHypothesis,not valid", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B5F58();
    }
  }
}

double sub_10020CECC(uint64_t a1)
{
  if (*(a1 + 16) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101BA7B40();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,ProviderLoc,getAge called while MCT not set", buf, 2u);
    }

    v3 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BA7B54(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual CFTimeInterval cllcf::LCFusionProviderLocation::getAge() const", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    v2 = sub_10000B1F8();
    *buf = 1;
    return sub_10001A6B0(v2, buf) - *(a1 + 16);
  }

  return v3;
}

void sub_10020D05C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10020D068(uint64_t result, int a2)
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
      if (a2 > 5)
      {
        if (a2 <= 7)
        {
          if (a2 == 6)
          {
            ++*(v4 + 172);
          }

          else
          {
            ++*(v4 + 176);
          }

          return result;
        }

        switch(a2)
        {
          case 8:
            ++*(v4 + 180);
            return result;
          case 9:
            ++*(v4 + 184);
            return result;
          case 10:
            ++*(v4 + 188);
            return result;
        }
      }

      else
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            ++*(v4 + 160);
          }

          else if (a2 == 4)
          {
            ++*(v4 + 164);
          }

          else
          {
            ++*(v4 + 168);
          }

          return result;
        }

        if (!a2)
        {
          ++*(v4 + 152);
          return result;
        }

        if (a2 == 1)
        {
          ++*(v4 + 156);
          return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

void sub_10020D1C4(uint64_t a1, _DWORD *a2, const void **a3, void *a4)
{
  *a2 = 0;
  a3[1] = *a3;
  a4[1] = *a4;
  v4 = *(a1 + 248);
  if (v4)
  {
    v6 = a3;
    v7 = a1;
    __asm { FMOV            V0.2D, #-1.0 }

    v40 = _Q0;
    do
    {
      v52 = v40;
      v53 = xmmword_101C75BF0;
      v54 = xmmword_101C75BF0;
      v55 = v40;
      v56 = v40;
      v51 = off_1024DE5F8;
      v57 = 0xBFF0000000000000;
      v58 = 0;
      v59 = 0;
      if (*(v4 + 214))
      {
        v13 = v4[8];
        if (v13)
        {
          if (*(*(v4[4] + 8 * ((v13 + v4[7] - 1) / 0x1AuLL)) + 152 * ((v13 + v4[7] - 1) % 0x1AuLL) + 148) == 1)
          {
            if (sub_10002A8E4((v4 + 25), &v51))
            {
              if (*&v53 > 0.0)
              {
                ++*a2;
                v14 = *v4;
                if (*v4)
                {
                  do
                  {
                    while (1)
                    {
                      v42 = off_1024DE5F8;
                      v43 = v40;
                      v44 = xmmword_101C75BF0;
                      v45 = xmmword_101C75BF0;
                      v46 = v40;
                      v47 = v40;
                      v48 = 0xBFF0000000000000;
                      v49 = 0;
                      v50 = 0;
                      if (*(v14 + 214))
                      {
                        v15 = v14[8];
                        if (v15)
                        {
                          if (*(*(v14[4] + 8 * ((v15 + v14[7] - 1) / 0x1AuLL)) + 152 * ((v15 + v14[7] - 1) % 0x1AuLL) + 148) == 1 && sub_10002A8E4((v14 + 25), &v42) && *&v44 > 0.0)
                          {
                            break;
                          }
                        }
                      }

                      v14 = *v14;
                      if (!v14)
                      {
                        goto LABEL_43;
                      }
                    }

                    v16 = sub_1002190E4(v7, &v51, &v42);
                    v41 = v16;
                    v18 = a4[1];
                    v17 = a4[2];
                    if (v18 >= v17)
                    {
                      v20 = *a4;
                      v21 = v18 - *a4;
                      v22 = v21 >> 3;
                      v23 = (v21 >> 3) + 1;
                      if (v23 >> 61)
                      {
                        goto LABEL_45;
                      }

                      v24 = v17 - v20;
                      if (v24 >> 2 > v23)
                      {
                        v23 = v24 >> 2;
                      }

                      _CF = v24 >= 0x7FFFFFFFFFFFFFF8;
                      v25 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!_CF)
                      {
                        v25 = v23;
                      }

                      if (v25)
                      {
                        sub_1000B9708(a4, v25);
                      }

                      *(8 * v22) = v16;
                      v19 = 8 * v22 + 8;
                      memcpy(0, v20, v21);
                      v26 = *a4;
                      *a4 = 0;
                      a4[1] = v19;
                      a4[2] = 0;
                      if (v26)
                      {
                        operator delete(v26);
                      }

                      v6 = a3;
                      v7 = a1;
                    }

                    else
                    {
                      *v18 = v16;
                      v19 = (v18 + 1);
                    }

                    a4[1] = v19;
                    if (sub_100218DFC(v7, &v51, &v42, &v41))
                    {
                      v28 = v6[1];
                      v27 = v6[2];
                      if (v28 >= v27)
                      {
                        v30 = *v6;
                        v31 = v28 - *v6;
                        v32 = v31 >> 3;
                        v33 = (v31 >> 3) + 1;
                        if (v33 >> 61)
                        {
LABEL_45:
                          sub_10028C64C();
                        }

                        v34 = v27 - v30;
                        if (v34 >> 2 > v33)
                        {
                          v33 = v34 >> 2;
                        }

                        _CF = v34 >= 0x7FFFFFFFFFFFFFF8;
                        v35 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!_CF)
                        {
                          v35 = v33;
                        }

                        if (v35)
                        {
                          sub_1000B9708(v6, v35);
                        }

                        *(8 * v32) = v41;
                        v29 = 8 * v32 + 8;
                        memcpy(0, v30, v31);
                        v36 = *v6;
                        *v6 = 0;
                        v6[1] = v29;
                        v6[2] = 0;
                        if (v36)
                        {
                          operator delete(v36);
                        }

                        v7 = a1;
                      }

                      else
                      {
                        *v28 = v41;
                        v29 = (v28 + 8);
                      }

                      v6[1] = v29;
                    }

                    v14 = *v14;
                  }

                  while (v14);
                }
              }
            }
          }
        }
      }

LABEL_43:
      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t sub_10020D5B0(uint64_t result, double **a2)
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
        v7 = *(v4 + 200);
        v8 = *(v4 + 204);
        v9 = v6;
        v10 = *(v4 + 208);
        v11 = *(v4 + 212);
        do
        {
          v12 = *v9;
          if (*v9 <= 0.0 || v12 > 50.0)
          {
            if (v12 <= 50.0 || v12 > 100.0)
            {
              if (v12 <= 100.0 || v12 > 200.0)
              {
                *(v4 + 212) = ++v11;
              }

              else
              {
                *(v4 + 208) = ++v10;
              }
            }

            else
            {
              *(v4 + 204) = ++v8;
            }
          }

          else
          {
            *(v4 + 200) = ++v7;
          }

          ++v9;
        }

        while (v9 != v5);
        v16 = v6 + 1;
        if (v6 + 1 != v5)
        {
          v17 = *v6;
          v18 = v6 + 1;
          do
          {
            v19 = *v18++;
            v20 = v19;
            if (v17 < v19)
            {
              v17 = v20;
              v6 = v16;
            }

            v16 = v18;
          }

          while (v18 != v5);
        }

        v21 = *v6;
        if (*(v4 + 60) < v21)
        {
          *(v4 + 60) = v21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10020D6E0(uint64_t result, unsigned int a2)
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
      *(v4 + 32) = 1;
      if (a2 - 1 >= 4)
      {
        if (a2 <= 4)
        {
          return result;
        }

        v5 = 52;
      }

      else
      {
        v5 = 4 * (a2 - 1) + 36;
      }

      ++*(v4 + v5);
    }
  }

  return result;
}

void sub_10020D75C(uint64_t a1)
{
  v2 = sub_1000081AC();
  v3 = v2;
  if (*(a1 + 24) == 4 && v2 - *(a1 + 32) > 900.0)
  {
    *(a1 + 24) = *(a1 + 28);
    if (qword_1025D4770 != -1)
    {
      sub_10196BBD8();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 28);
      *buf = 67240192;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#LCFusionStats,reverting visit exit likely context to,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196BB94(buf);
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionStats::submitMetrics()", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v6 = *(a1 + 80);
  if (v3 - *(a1 + 72) >= v6)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 48);
    if (v10 != (a1 + 56))
    {
      do
      {
        sub_1008F2D50(a1, (v10 + 4), v6 < v9, *(v10 + 7));
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v13 = *v12 == v10;
            v10 = v12;
          }

          while (!v13);
        }

        v10 = v12;
      }

      while (v12 != (a1 + 56));
    }

    if (v6 >= v9)
    {
      sub_1008F2CB4(a1);
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_10196BB6C();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#LCFusionStats,submitMetrics,less than threshold time to submit metrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196BB94(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionStats::submitMetrics()", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

void sub_10020DA90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10020DA9C(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 3724);
  *a2 = *(a1 + 3708);
  a2[1] = v2;
  v3 = *(a1 + 3740);
  v4 = *(a1 + 3756);
  v5 = *(a1 + 3788);
  a2[4] = *(a1 + 3772);
  a2[5] = v5;
  a2[2] = v3;
  a2[3] = v4;
  v6 = *(a1 + 3804);
  v7 = *(a1 + 3820);
  v8 = *(a1 + 3836);
  *(a2 + 140) = *(a1 + 3848);
  a2[7] = v7;
  a2[8] = v8;
  a2[6] = v6;
  return *(a1 + 3728) > 0.0;
}

uint64_t sub_10020DAE8(uint64_t a1)
{
  v1 = *(a1 + 4276) - 1;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_101CB1724[v1];
  }
}

void sub_10020DB10(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a1 + 4344);
  if (v3)
  {
    sub_1002134D0(v3, a2, a3);
  }
}

uint64_t sub_10020DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128) == 1 && *(a1 + 130) == 1 && ((*(a1 + 152) & 1) != 0 || ((v3 = *(a1 + 11704), v4 = vabdd_f64(*(a3 + 32), v3), v3 > 0.0) ? (v5 = v4 <= 24.0) : (v5 = 0), v5)))
  {
    return sub_10101107C((a1 + 152), a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4296) == 1 && (v3 = *(a1 + 4288)) != 0)
  {
    return sub_10020DB94(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020DB94(void **a1, uint64_t a2, uint64_t a3)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!a1[65])
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v34 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,odometer is not available", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10174709C();
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "BaroAlt,update requested", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101746D0C();
  }

  v9 = a1 + 161;
  v198 = sub_1000081AC();
  *(a1 + 504) = sub_10020F350(a1, v198);
  v10 = *(a2 + 20);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0 && v10 < 200.0)
  {
    v11 = *a2;
    *(a1 + 152) = *(a2 + 16);
    *(a1 + 151) = v11;
    v12 = *(a2 + 32);
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    *(a1 + 156) = *(a2 + 80);
    *(a1 + 155) = v14;
    *(a1 + 154) = v13;
    *(a1 + 153) = v12;
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    v17 = *(a2 + 128);
    *(a1 + 2556) = *(a2 + 140);
    *(a1 + 159) = v17;
    *(a1 + 158) = v16;
    *(a1 + 157) = v15;
    *(a1 + 365) = v198;
    if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
    {
      v18 = (a3 + 24);
      if (*(sub_10023F4FC() + 3) != *(a3 + 24))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(a1 + 2492);
          v21 = *v18;
          *buf = 134349312;
          *&buf[4] = v20;
          *&buf[12] = 2050;
          *&buf[14] = v21;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "BaroAlt,fCachedLocation,time override,original cft,%{public}lf,gps cft,%{public}lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101746DE8();
        }

        *(a1 + 2492) = *v18;
      }
    }

    sub_100213A34(a1, a2);
  }

  if (*a1)
  {
    sub_10024596C(*a1, a2, a3, v198);
  }

  sub_1001DF6F0(a1, a2, v198);
  if ((a1[66] & 1) == 0)
  {
    [a1[65][2] register:a1[65][1] forNotification:7 registrationInfo:0];
    *(a1 + 528) = 1;
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v22 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "BaroAlt, subscribed to kNotificationOdometerUpdateElevationSpectator", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101746EE4();
    }
  }

  if ((a1[447] & 1) == 0)
  {
    sub_101739E10(a1);
  }

  v197 = 0;
  v196 = sub_1001FD090(a1, a2, a3, &v197 + 1, &v197, v198);
  if (*(a1 + 2172))
  {
    goto LABEL_35;
  }

  v23 = *a1;
  if (!*a1)
  {
    goto LABEL_37;
  }

  if (sub_100214550(v23, a3, &v196))
  {
LABEL_35:
    sub_101739F40(a1);
  }

  v23 = *a1;
LABEL_37:
  if (a1[22])
  {
    if (!v23)
    {
      goto LABEL_47;
    }

    v24 = sub_100020640(v23, &v198);
    *buf = v24;
    v25 = *(a3 + 592);
    if (v25 >= 0.0 && v25 <= 1.0)
    {
      v26 = a1[22];
      v26[27] = v25;
      *(v26 + 224) = 1;
      v27 = a1[22];
      v27[29] = v24;
      *(v27 + 240) = 1;
    }

    sub_10020A85C(a1[22], a2, a3, v24);
    sub_1002175A8(a1[22], buf, a3, v196);
    v23 = *a1;
  }

  if (v23)
  {
    v28 = 368;
    if (*(a1 + 245))
    {
      v28 = 244;
    }

    buf[0] = *(a1 + v28);
    sub_100217810(v23, &v198, (a1 + 199), a2, a3, a1 + 188, a1 + 197, a1 + 189, a1 + 190, &v196, a1 + 155, buf, a1 + 55, a1 + 56, a1 + 157, a1 + 57);
  }

LABEL_47:
  v194 = 0xBFF0000000000000;
  v195 = 0.0;
  v193 = 0xBFF0000000000000;
  if (sub_100217978(a1, &v198, a2, a3, v196, &v194, &v193))
  {
    v29 = *(a1 + 55);
    v30 = v29;
    *(a1 + 340) = v30;
    *(a1 + 341) = 1075838976;
    v31 = 388;
    if (*(a1 + 289))
    {
      v31 = 288;
    }

    if (*(a1 + v31) == 1)
    {
      memset(buf, 0, sizeof(buf));
      if (sub_1016B6D4C(*a1, buf))
      {
        v32 = *&buf[16] * 12.00129;
        v33 = *(a1 + 55) - *&buf[8];
      }

      else
      {
        v33 = 0.0;
        v32 = -1.0;
      }

      *(a1 + 343) = v32;
      *(a1 + 342) = v33;
    }

    else
    {
      v36 = *(a1 + 131);
      v37 = vdupq_n_s64(0x402800A915379FA9uLL);
      v38.f64[1] = v37.f64[1];
      v38.f64[0] = v29;
      v39 = vmulq_f64(v36, v37);
      *&v36.f64[0] = *&vsubq_f64(v38, v36);
      v36.f64[1] = v39.f64[1];
      a1[171] = vcvt_f32_f64(v36);
    }

    v40 = *(a1 + 3);
    v41 = *(a1 + 1);
    v42 = *(a1 + 2) + *(a1 + 4);
    *(a1 + 351) = v42;
    v43 = v40;
    *(a1 + 352) = v43;
    v45 = sub_100021618(v198, v41, 0.0);
    if (v45 > 5.0)
    {
      if (v45 > 864000.0)
      {
        v45 = 864000.0;
      }

      v46 = v45 + *(a1 + 352);
      *(a1 + 352) = v46;
    }

    v47 = *(a2 + 44);
    *(a1 + 173) = *(a2 + 4);
    v48.f64[0] = *(a3 + 376) + *(a3 + 316);
    v48.f64[1] = *(a3 + 384);
    *(a1 + 1412) = vcvt_hight_f32_f64(vcvt_f32_f64(v47), v48);
    *v47.f64 = *(a2 + 20);
    *(a1 + 350) = LODWORD(v47.f64[0]);
    *(a1 + 357) = *(a1 + 333);
    *(a1 + 358) = *(a1 + 334);
    *(a1 + 1448) = v196;
    *(a1 + 1449) = HIBYTE(v197);
    *(a1 + 1450) = v197;
    v49 = sub_10173A170(v44, &v193);
    *(a1 + 360) = v49;
    *(a1 + 361) = sub_10173A284(v49, &v194);
    sub_10173A3D4(a1, (a1 + 170), 0, 0);
    a1[170] = 0;
    a1[171] = 0;
    *(a1 + 173) = 0u;
    *(a1 + 175) = 0u;
    *(a1 + 1412) = 0u;
    *(a1 + 1436) = 0xFFFFFFFF00000000;
    *(a1 + 361) = -1;
    *(a1 + 724) = 0;
    *(a1 + 1450) = 0;
  }

  if (!*a1)
  {
    v50 = 0;
    goto LABEL_118;
  }

  v50 = sub_100217B20(*a1, (a1 + 199), (a1 + 255), a1 + 424, (a1 + 272), a1 + 60, a1 + 61, a2, a3, &v195, a1 + 62, a1 + 155, *(a1 + 874));
  if (!*a1)
  {
    goto LABEL_118;
  }

  v51 = *(a1 + 423);
  v52 = sub_100020640(*a1, &v198);
  v53 = sub_100021618(v51, v52, 315360000.0);
  v54 = a1[435];
  v55 = a1[429];
  if (v54 == v55)
  {
    v56 = a1[431];
    v57 = a1[434];
    v58 = v57 / 0x66;
    if (a1[432] == v56)
    {
      v59 = 0;
      v60 = 0;
    }

    else
    {
      v59 = (v56[v57 / 0x66] + 40 * (v57 % 0x66));
      v60 = v56[(v54 + v57) / 0x66] + 40 * ((v54 + v57) % 0x66);
    }

    v61 = a1[425];
    v62 = a1[428];
    v63 = &v61[v62 / 0x66];
    if (a1[426] == v61)
    {
      v64 = 0;
    }

    else
    {
      v64 = (*v63 + 40 * (v62 % 0x66));
    }

    if (v59 == v60)
    {
      goto LABEL_94;
    }

    v65 = &v56[v58];
    while (vabdd_f64(*v59, *v64) < 2.22044605e-16)
    {
      v59 += 5;
      if ((v59 - *v65) == 4080)
      {
        v66 = v65[1];
        ++v65;
        v59 = v66;
      }

      v64 += 5;
      if ((v64 - *v63) == 4080)
      {
        v67 = v63[1];
        ++v63;
        v64 = v67;
      }

      if (v59 == v60)
      {
        goto LABEL_94;
      }
    }
  }

  if (v55 && v53 > *(a1 + 436))
  {
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v68 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v69 = v198;
      v70 = a1[429];
      v71 = sub_100020640(*a1, &v198);
      v72 = *(a1 + 3228);
      v73 = *(a1 + 3236);
      v74 = *(a2 + 4);
      v75 = *(a2 + 12);
      *buf = 134350849;
      *&buf[4] = v69;
      *&buf[12] = 1026;
      *&buf[14] = v70;
      v4 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      *&buf[18] = 2050;
      *&buf[20] = v71;
      *&buf[28] = 2053;
      *&buf[30] = v72;
      *&buf[38] = 2053;
      v219 = v73;
      v220 = 2053;
      v221 = v74;
      v222 = 2053;
      v223 = v75;
      v224 = 2050;
      *v225 = v53;
      _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "BaroAlt,disk,save,time,%{public}lf,fBaroBiasHistory,size,%{public}d,locationCfAbsTime,%{public}lf,lastLocLat,%{sensitive}.8lf,lastLocLon,%{sensitive}.8lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v179 = v198;
      v180 = a1[429];
      v181 = sub_100020640(*a1, &v198);
      v182 = *(a1 + 3228);
      v183 = *(a1 + 3236);
      v184 = *(a2 + 4);
      v185 = *(a2 + 12);
      v199 = 134350849;
      *v200 = v179;
      *&v200[8] = 1026;
      *v201 = v180;
      *&v201[4] = 2050;
      *&v201[6] = v181;
      *&v201[14] = 2053;
      *&v201[16] = v182;
      v202 = 2053;
      v203 = v183;
      v204 = 2053;
      v205 = v184;
      v206 = 2053;
      v207 = v185;
      v208 = 2050;
      *v209 = v53;
      v186 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v186);
      if (v186 != buf)
      {
        free(v186);
      }

      v4 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v76 = sub_10173AE8C(a1, 0, v198);
    sub_10173B0B8(v198, v76, a1 + 424);
    sub_10173B914(a1);
    v77 = *(a1 + 158);
    *(a1 + 415) = *(a1 + 157);
    *(a1 + 417) = v77;
    *(a1 + 419) = *(a1 + 159);
    *(a1 + 3364) = *(a1 + 2556);
    v78 = *(a1 + 154);
    *(a1 + 407) = *(a1 + 153);
    *(a1 + 409) = v78;
    v79 = *(a1 + 156);
    *(a1 + 411) = *(a1 + 155);
    *(a1 + 413) = v79;
    v80 = *(a1 + 152);
    *(a1 + 403) = *(a1 + 151);
    *(a1 + 405) = v80;
    *(a1 + 423) = sub_100020640(*a1, &v198);
    sub_10173BA84(a1 + 430, a1 + 424);
  }

LABEL_94:
  v81 = *(a1 + 444);
  v82 = sub_100020640(*a1, &v198);
  v83 = sub_100021618(v81, v82, 315360000.0);
  v84 = *a1;
  v85 = a1[443];
  v86 = (*a1)[5];
  if (v85 == v86)
  {
    v87 = a1[439];
    v88 = a1[442];
    v89 = v88 / 0x66;
    if (a1[440] == v87)
    {
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v90 = (v87[v88 / 0x66] + 40 * (v88 % 0x66));
      v91 = v87[(v85 + v88) / 0x66] + 40 * ((v85 + v88) % 0x66);
    }

    v92 = *(v84 + 4);
    v93 = *(v84 + 1);
    v94 = *(v84 + 2);
    v95 = (v93 + 8 * (v92 / 0x66));
    if (v94 == v93)
    {
      v96 = 0;
    }

    else
    {
      v96 = (*v95 + 40 * (v92 % 0x66));
    }

    if (v90 == v91)
    {
      goto LABEL_118;
    }

    v97 = &v87[v89];
    while (vabdd_f64(*v90, *v96) < 2.22044605e-16)
    {
      v90 += 5;
      if ((v90 - *v97) == 4080)
      {
        v98 = v97[1];
        ++v97;
        v90 = v98;
      }

      v96 += 5;
      if ((v96 - *v95) == 4080)
      {
        v99 = v95[1];
        ++v95;
        v96 = v99;
      }

      if (v90 == v91)
      {
        goto LABEL_118;
      }
    }
  }

  if (v86 && v83 > *(a1 + 436))
  {
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v100 = v4[193];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      v101 = p_info;
      v102 = v4;
      v103 = v198;
      v104 = (*a1)[5];
      v105 = sub_100020640(*a1, &v198);
      v106 = *(a2 + 4);
      v107 = *(a2 + 12);
      *buf = 134350337;
      *&buf[4] = v103;
      v4 = v102;
      p_info = v101;
      *&buf[12] = 1026;
      *&buf[14] = v104;
      *&buf[18] = 2050;
      *&buf[20] = v105;
      *&buf[28] = 2053;
      *&buf[30] = v106;
      *&buf[38] = 2053;
      v219 = v107;
      v220 = 2050;
      v221 = v83;
      _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "BaroAlt,disk,save,time,%{public}.3lf,fLastSingleEpochBiasLongMemoryStoredToDisk,size,%{public}d,locationCfAbsTime,%{public}lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[192] != -1)
      {
        sub_100312410();
      }

      v187 = v198;
      v188 = (*a1)[5];
      v189 = sub_100020640(*a1, &v198);
      v190 = *(a2 + 4);
      v191 = *(a2 + 12);
      v199 = 134350337;
      *v200 = v187;
      *&v200[8] = 1026;
      *v201 = v188;
      *&v201[4] = 2050;
      *&v201[6] = v189;
      *&v201[14] = 2053;
      *&v201[16] = v190;
      v202 = 2053;
      v203 = v191;
      v204 = 2050;
      v205 = v83;
      v192 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v192);
      if (v192 != buf)
      {
        free(v192);
      }

      v4 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    sub_10173BB3C(a1, 0, v198);
    sub_10173BDAC(v198, v108, *a1);
    sub_10173C3DC(a1);
  }

LABEL_118:
  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v109 = v4[193];
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    v110 = *(a1 + 2172);
    v111 = a1[59];
    *buf = 67240704;
    *&buf[4] = v196;
    *&buf[8] = 1026;
    *&buf[10] = v110;
    *&buf[14] = 2050;
    *&buf[16] = v111;
    _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "BaroAlt,isApproToCal,%{public}d,fInEmergencyState,%{public}d,fLastBaroAltimeterSubscribeTime,%{public}.3f", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v149 = *(a1 + 2172);
    v150 = a1[59];
    v199 = 67240704;
    *v200 = v196;
    *&v200[4] = 1026;
    *&v200[6] = v149;
    *v201 = 2050;
    *&v201[2] = v150;
    v151 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v151);
    if (v151 != buf)
    {
      free(v151);
    }
  }

  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v112 = v4[193];
  if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
  {
    v113 = 368;
    if (*(a1 + 245))
    {
      v113 = 244;
    }

    v114 = *(a1 + v113);
    v115 = a1[189];
    v116 = a1[56];
    v117 = a1[57];
    v118 = *(a3 + 384);
    v119 = (*(a2 + 96) & 0xFFFFFFF7) == 1;
    v120 = *(a2 + 28);
    v121 = *(a2 + 36);
    v122 = *(a2 + 52);
    v123 = *(a2 + 44);
    v124 = *(a3 + 592);
    v125 = *(a3 + 24);
    v126 = a1[55];
    *buf = 134352897;
    *&buf[4] = v198;
    *&buf[12] = 2049;
    *&buf[14] = v115;
    *&buf[22] = 2049;
    *&buf[24] = v126;
    *&buf[32] = 1025;
    *&buf[34] = v114;
    *&buf[38] = 2049;
    v219 = v117;
    v220 = 2049;
    v221 = v195;
    v222 = 2049;
    v223 = v118;
    v224 = 1025;
    *v225 = v119;
    *&v225[4] = 2049;
    *&v225[6] = v120;
    *&v225[14] = 2049;
    *&v225[16] = v121;
    *&v225[24] = 1025;
    *&v225[26] = v196;
    *v226 = 2049;
    *&v226[2] = v122;
    *v227 = 2049;
    *&v227[2] = v123;
    v228 = 2050;
    v229 = v124;
    v230 = 2049;
    v231 = v125;
    v232 = 2049;
    v233 = v116;
    _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_INFO, "BaroAlt,baroKFinput,time,%{public}lf,refPressure,%{private}.3lf,measPressure,%{private}.3lf,isRefPresAvail,%{private}d,fTimeOfLastDevicePressure_s,%{private}.3lf,calibrationSourceAlt,%{private}.3lf,calibrationSourceAltUnc,%{private}.3lf,isLocationTypeGPS,%{private}d,alt,%{private}.3lf,altUnc,%{private}.3lf,isApproToCalib,%{private}d,speedAccuracy,%{private}.3lf,speed,%{private}.3lf,pOutdoor,%{public}.3lf,cfAbsTime,%{private}.3lf,temperature,%{private}.2lf", buf, 0x96u);
  }

  if (!sub_10000A100(121, 2))
  {
    if (!v50)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

  bzero(buf, 0x65CuLL);
  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v152 = 368;
  if (*(a1 + 245))
  {
    v152 = 244;
  }

  v153 = *(a1 + v152);
  v154 = a1[189];
  v155 = a1[56];
  v156 = a1[57];
  v157 = *(a3 + 384);
  v158 = (*(a2 + 96) & 0xFFFFFFF7) == 1;
  v159 = *(a2 + 28);
  v160 = *(a2 + 36);
  v161 = *(a2 + 52);
  v162 = *(a2 + 44);
  v163 = *(a3 + 592);
  v164 = *(a3 + 24);
  v165 = a1[55];
  v199 = 134352897;
  *v200 = v198;
  *&v200[8] = 2049;
  *v201 = v154;
  *&v201[8] = 2049;
  *&v201[10] = v165;
  *&v201[18] = 1025;
  *&v201[20] = v153;
  v202 = 2049;
  v203 = v156;
  v204 = 2049;
  v205 = v195;
  v206 = 2049;
  v207 = v157;
  v208 = 1025;
  *v209 = v158;
  *&v209[4] = 2049;
  *&v209[6] = v159;
  *&v209[14] = 2049;
  *&v209[16] = v160;
  *&v209[24] = 1025;
  *&v209[26] = v196;
  *v210 = 2049;
  *&v210[2] = v161;
  *v211 = 2049;
  *&v211[2] = v162;
  v212 = 2050;
  v213 = v163;
  v214 = 2049;
  v215 = v164;
  v216 = 2049;
  v217 = v155;
  v166 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v166);
  if (v166 != buf)
  {
    free(v166);
  }

  v4 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  if (v50)
  {
LABEL_131:
    v127 = *(a2 + 44);
    *v9 = *(a2 + 4);
    v128.f64[0] = v195;
    v128.f64[1] = *(a3 + 384);
    *(a1 + 1316) = vcvt_hight_f32_f64(vcvt_f32_f64(v127), v128);
    *v127.f64 = *(a2 + 20);
    *(a1 + 326) = LODWORD(v127.f64[0]);
    a1[168] = 0;
    sub_10173A3D4(a1, (a1 + 158), 1, 1);
    *(a1 + 79) = 0u;
    *v9 = 0u;
    *(a1 + 163) = 0u;
    *(a1 + 1316) = 0u;
    *(a1 + 1340) = 0xFFFFFFFF00000000;
    *(a1 + 337) = -1;
    *(a1 + 676) = 0;
    *(a1 + 1354) = 0;
  }

LABEL_132:
  v129 = 368;
  if (*(a1 + 245))
  {
    v129 = 244;
  }

  if (*(a1 + v129) == 1 && *(a1 + 61) > 0.0 && vabdd_f64(*(a1 + 62), v198) <= 2.22044605e-16 && *a1 && fabs(sub_100021618(v198, *(a1 + 196), 315360000.0)) >= 120.0)
  {
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v130 = v4[193];
    if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v130, OS_LOG_TYPE_INFO, "BaroAlt,query ref pressure for cal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101746FC0();
    }

    sub_10173C5AC(a1, a2);
  }

  if (*(a1 + 61) > 0.0 && vabdd_f64(*(a1 + 62), v198) <= 2.22044605e-16)
  {
    sub_10173CB84(a1, a2, v198, v195);
    sub_10173CCC4(a1);
  }

  if (*a1)
  {
    v131 = 380;
    if (*(a1 + 277))
    {
      v131 = 276;
    }

    if (sub_1001F7220(*a1, (a1 + 199), a1 + 255, (a1 + 1), (a1 + 158), (a1 + 451), (a1 + 455), (a1 + 459), a1 + 60, a1 + 61, a1 + 62, (a1 + 155), (a1 + 302), *(a1 + v131), 1u))
    {
      if (v50)
      {
        if (*(a1 + 3) > 0.0 && vabdd_f64(*(a1 + 62), v198) <= 2.22044605e-16)
        {
          v132 = *(a3 + 376);
          v133 = *(a1 + 2);
          v134 = sub_100020640(*a1, &v198);
          if (fabs(*(a1 + 280)) > 2.22044605e-16)
          {
            v135 = v134 - *(a1 + 261);
            *(a1 + 276) = v132 - v133;
            *(a1 + 277) = v135;
          }
        }

        v136 = *(a1 + 257);
        *(a1 + 261) = *(a1 + 255);
        *(a1 + 263) = v136;
        *(a1 + 265) = *(a1 + 259);
      }

      return 1;
    }
  }

  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v137 = v4[193];
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
  {
    v138 = *(a1 + 528);
    v139 = *(a3 + 376);
    v140 = *(a3 + 384);
    v141 = *(a2 + 28);
    v142 = *(a2 + 36);
    v143 = *(a2 + 20);
    v144 = a1[60];
    v145 = a1[61];
    v146 = a1[62];
    v147 = a1[157];
    v148 = a1[155];
    *buf = 134351873;
    *&buf[4] = v198;
    *&buf[12] = 1026;
    *&buf[14] = v138;
    *&buf[18] = 2049;
    *&buf[20] = v139;
    *&buf[28] = 2050;
    *&buf[30] = v140;
    *&buf[38] = 2049;
    v219 = v141;
    v220 = 2050;
    v221 = v142;
    v222 = 2050;
    v223 = v143;
    v224 = 2049;
    *v225 = v144;
    *&v225[8] = 2050;
    *&v225[10] = v145;
    *&v225[18] = 2050;
    *&v225[20] = v146;
    *&v225[28] = 2049;
    *v226 = v147;
    *&v226[8] = 2050;
    *v227 = v148;
    _os_log_impl(dword_100000000, v137, OS_LOG_TYPE_DEBUG, "BaroAlt,no action,time,%{public}lf,subscribedToOdom,%{public}d,demAlt,%{private}lf,unc,%{public}lf,alt,%{private}lf,altUnc,%{public}lf,horUnc,%{public}lf,baseAlt,%{private}lf,unc,%{public}lf,fTimeOfLastBaseAltitudeCalibration,%{public}lf,relAlt,%{private}lf,fTimeOfLastOdometerData,%{public}.4lf", buf, 0x76u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v167 = *(a1 + 528);
    v168 = *(a3 + 376);
    v169 = *(a3 + 384);
    v170 = *(a2 + 28);
    v171 = *(a2 + 36);
    v172 = *(a2 + 20);
    v173 = a1[60];
    v174 = a1[61];
    v175 = a1[62];
    v176 = a1[157];
    v177 = a1[155];
    v199 = 134351873;
    *v200 = v198;
    *&v200[8] = 1026;
    *v201 = v167;
    *&v201[4] = 2049;
    *&v201[6] = v168;
    *&v201[14] = 2050;
    *&v201[16] = v169;
    v202 = 2049;
    v203 = v170;
    v204 = 2050;
    v205 = v171;
    v206 = 2050;
    v207 = v172;
    v208 = 2049;
    *v209 = v173;
    *&v209[8] = 2050;
    *&v209[10] = v174;
    *&v209[18] = 2050;
    *&v209[20] = v175;
    *&v209[28] = 2049;
    *v210 = v176;
    *&v210[8] = 2050;
    *v211 = v177;
    v178 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v178);
    if (v178 != buf)
    {
      free(v178);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10020F350(uint64_t a1, double a2)
{
  v13 = a2;
  if (*(a1 + 3384) < 2.22044605e-16)
  {
    goto LABEL_8;
  }

  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  v4 = sub_100020640(*a1, &v13);
  v5 = sub_100021618(v4, *(a1 + 3384), 315360000.0);
  if (*(a1 + 284) == 1)
  {
    LODWORD(v6) = *(a1 + 280);
    v7 = v6;
  }

  else
  {
    v7 = 259200.0;
  }

  if (v5 >= v7)
  {
LABEL_8:
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 3384);
    *buf = 134349568;
    v21 = v9;
    v22 = 2050;
    v23 = v13;
    v24 = 1026;
    v25 = v3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "BaroAlt,BiasStalenessCheck,Time,%{public}.3lf,machContNow,%{public}.3lf,isStale,%{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v11 = *(a1 + 3384);
    v14 = 134349568;
    v15 = v11;
    v16 = 2050;
    v17 = v13;
    v18 = 1026;
    v19 = v3;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::isBaroBiasHistoryStale(const CFTimeInterval) const", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return v3;
}

void sub_10020F594(uint64_t a1, double a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 24);
    v5 = *a1 == 1 && *(a1 + 8) < v4;
    if (qword_1025D4600 != -1)
    {
      sub_101B0C0DC();
    }

    v7 = a2 - v4;
    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 24);
      *buf = 67240961;
      *v17 = v7 > 10.0;
      *&v17[4] = 1026;
      *&v17[6] = v5;
      *v18 = 2049;
      *&v18[2] = v9;
      v19 = 2049;
      v20 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,update,fixAfterOutage,%{public}d,staticBeforePreviousFix,%{public}d,staticTime,%{private}0.1f,posUncTime,%{private}0.1f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::ThresholdPosUncMetric::updateMetrics(const CFTimeInterval)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (v7 <= 10.0 || v5)
    {
      v12 = *(a1 + 40);
      v11 = (a1 + 40);
      *v11 = v12 + a2 - *(v11 - 2);
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v11;
        *buf = 134349312;
        *v17 = v14;
        *&v17[8] = 2050;
        *v18 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,update,metric,accDurPosUncThr,%{public}0.1f,time,%{public}0.1f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0CEF0(v11, a2);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B0C0DC();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,posunc,metric collection is not active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0CE0C();
    }
  }
}

void sub_10020F8F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 384) == 1 && (*(a1 + 385) & 1) != 0)
  {
    v4 = sub_1000081AC();
    v5 = *(a1 + 400);
    sub_10001CAF4(buf);
    *v44 = 0;
    v6 = v4 - v5;
    if (sub_1000B9370(*&buf[0], "homeVisitAtRestThrSec", v44))
    {
      v7 = *v44;
    }

    else
    {
      v7 = 300.0;
    }

    if (*(&buf[0] + 1))
    {
      sub_100008080(*(&buf[0] + 1));
    }

    if (v6 < v7)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = v6;
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#LCStats,homeVisit,stats not computed, duration being at rest for %{public}0.1f sec", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0C1F0();
      }

      return;
    }

    sub_1001097CC((a1 + 176), a1 + 408, a2);
    v15 = v14;
    v16 = *(a1 + 576);
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = *(a2 + 96);
    v18 = a1 + 576;
    do
    {
      if (*(v16 + 32) >= v17)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * (*(v16 + 32) < v17));
    }

    while (v16);
    if (v18 == a1 + 576 || v17 < *(v18 + 32))
    {
LABEL_29:
      memset(&buf[1] + 8, 0, 40);
      v19 = *(a2 + 20);
      *buf = v14;
      *(buf + 1) = v19;
      LODWORD(buf[1]) = *(a2 + 140);
      DWORD1(buf[1]) = 1;
      v20 = v14;
      if (v20 >= 100.0)
      {
        if (v20 >= 200.0)
        {
          LODWORD(buf[2]) = 1;
        }

        else
        {
          HIDWORD(buf[1]) = 1;
        }
      }

      else
      {
        DWORD2(buf[1]) = 1;
      }

      if (v19 <= 0.0)
      {
        v43 = 0.0;
      }

      else
      {
        v21 = v15 / v19;
        v43 = v21;
        if (v21 >= 1.0)
        {
          if (v21 >= 3.0)
          {
            HIDWORD(buf[2]) = 1;
          }

          else
          {
            DWORD2(buf[2]) = 1;
          }

          goto LABEL_40;
        }
      }

      DWORD1(buf[2]) = 1;
LABEL_40:
      *v44 = v15;
      sub_101058A1C(v13, buf, v44, &v43);
      *v44 = a2 + 96;
      v22 = sub_10105B720(a1 + 568, (a2 + 96));
      v23 = buf[1];
      *(v22 + 5) = buf[0];
      *(v22 + 7) = v23;
      *(v22 + 9) = buf[2];
      *(v22 + 84) = *(&buf[2] + 12);
LABEL_41:
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v24 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a2 + 96);
        v26 = *(a2 + 20);
        v27 = *(a2 + 140);
        LODWORD(buf[0]) = 67109888;
        DWORD1(buf[0]) = v25;
        WORD4(buf[0]) = 2048;
        *(buf + 10) = v15;
        WORD1(buf[1]) = 2048;
        *(&buf[1] + 4) = v26;
        WORD6(buf[1]) = 1024;
        *(&buf[1] + 14) = v27;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#LCStats,homeVisit,posType,%d,distFromCentroid,%0.2f m,estAcc,%0.2f m,sigEnv,%d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100232CD4();
        }

        v28 = *(a2 + 96);
        v29 = *(a2 + 20);
        v30 = *(a2 + 140);
        *v44 = 67109888;
        *&v44[4] = v28;
        *&v44[8] = 2048;
        *&v44[10] = v15;
        *&v44[18] = 2048;
        *&v44[20] = v29;
        v45 = 1024;
        v46 = v30;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::calcHomeVisitStats(const CLDaemonLocation &)", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      return;
    }

    ++*(v18 + 60);
    v32 = v14;
    if (v32 >= 100.0)
    {
      if (v32 >= 200.0)
      {
        ++*(v18 + 72);
      }

      else
      {
        ++*(v18 + 68);
      }
    }

    else
    {
      ++*(v18 + 64);
    }

    v33 = *(a2 + 20);
    if (v33 <= 0.0)
    {
      v43 = 0.0;
    }

    else
    {
      v34 = v15 / v33;
      v43 = v34;
      if (v34 >= 1.0)
      {
        if (v34 >= 3.0)
        {
          ++*(v18 + 84);
        }

        else
        {
          ++*(v18 + 80);
        }

LABEL_62:
        *buf = v15;
        sub_101058A1C(v13, (v18 + 40), buf, &v43);
        if (v15 > *(v18 + 40))
        {
          *(v18 + 40) = v15;
          *(v18 + 48) = *(a2 + 20);
          if (qword_1025D4600 != -1)
          {
            sub_100232CD4();
          }

          v35 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a2 + 20);
            v37 = *(a2 + 96);
            v38 = *(a2 + 140);
            LODWORD(buf[0]) = 134218752;
            *(buf + 4) = v15;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v36;
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = v37;
            WORD6(buf[1]) = 1024;
            *(&buf[1] + 14) = v38;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "#LCStats,homeVisit,maxError,%0.2f m,estAcc,%0.2f m,posType,%d,sigEnv,%d", buf, 0x22u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_100232CD4();
            }

            v39 = *(a2 + 20);
            v40 = *(a2 + 96);
            v41 = *(a2 + 140);
            *v44 = 134218752;
            *&v44[4] = v15;
            *&v44[12] = 2048;
            *&v44[14] = v39;
            *&v44[22] = 1024;
            *&v44[24] = v40;
            v45 = 1024;
            v46 = v41;
            v42 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::calcHomeVisitStats(const CLDaemonLocation &)", "%s\n", v42);
            if (v42 != buf)
            {
              free(v42);
            }
          }
        }

        goto LABEL_41;
      }
    }

    ++*(v18 + 76);
    goto LABEL_62;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 384);
    v12 = *(a1 + 385);
    LODWORD(buf[0]) = 67240448;
    DWORD1(buf[0]) = v11;
    WORD4(buf[0]) = 1026;
    *(buf + 10) = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#LCStats,homeVisit,stats not calculated,isHomeVisit,%{public}d,isStatic,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0C0F0();
  }
}

void sub_10021001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021003C(uint64_t a1)
{
  for (i = *(a1 + 248); i; i = *i)
  {
    if (*(i + 214))
    {
      v2 = i[8];
      if (v2 >= 2)
      {
        v3 = *(i + 208);
        if ((v3 & 0x80000000) == 0 && v3 < v2 - 1 && (sub_100205234((i + 1)) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v4 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_INFO))
          {
            v5 = *(i + 212);
            *buf = 67240192;
            v9 = v5;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#fusion,hID,%{public}d,hypothesis data fusion failed.", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v6 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesDataFusion()::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v6);
            if (v6 != buf)
            {
              free(v6);
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_10021022C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100210238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    v5 = 1;
    v6 = *(a1 + 248);
    do
    {
      v6 = *v6;
      --v5;
    }

    while (v6);
    if (!v5)
    {
      *(v2 + 816) = xmmword_101C76100;
      return 1;
    }

    v8 = *(a2 + 24);
    v7 = (a2 + 16);
    v197 = *(a2 + 16);
    v195 = 0.0;
    v196 = 0.0;
    if (sub_100208760((a1 + 2384), &v196, &v195, v8, *(a1 + 2248)))
    {
      v13 = v195;
      v12 = v196;
      v10.i64[0] = *(a2 + 24);
      v9.i64[0] = 0x400921FB54442D18;
      v191 = v9;
      if (fabs(*v10.i64) > 3.14159265)
      {
        v14.f64[0] = NAN;
        v14.f64[1] = NAN;
        v188 = *vbslq_s8(vnegq_f64(v14), v9, v10).i64;
        *v10.i64 = fmod(*v10.i64 + v188, 6.28318531) - v188;
      }

      if (*v10.i64 >= 1.57079633)
      {
        v15 = v191;
        *v10.i64 = *v191.i64 - *v10.i64;
      }

      else
      {
        v15 = v191;
        if (*v10.i64 < -1.57079633)
        {
          *v10.i64 = -3.14159265 - *v10.i64;
        }
      }

      v11.i64[0] = *(a2 + 32);
      v187 = *v10.i64;
      if (fabs(*v11.i64) <= *v15.i64)
      {
        v190 = v11;
      }

      else
      {
        v20.f64[0] = NAN;
        v20.f64[1] = NAN;
        v189 = *vbslq_s8(vnegq_f64(v20), v15, v11).i64;
        *v21.i64 = fmod(*v11.i64 + v189, 6.28318531) - v189;
        v190 = v21;
      }

      v22 = sub_10024B964(a1);
      v186 = v12 * 0.0174532925;
      v23 = v13 * 0.0174532925;
      if ((*(a2 + 124) & 0xFFFFFFFD) == 1)
      {
        *&__p = 0.0;
        v193 = 0;
        v194 = 0;
        v24 = *(a1 + 248);
        if (v24)
        {
          v25.f64[0] = NAN;
          v25.f64[1] = NAN;
          v179 = vnegq_f64(v25);
          v183 = *vbslq_s8(v179, v191, v190).i64;
          v181 = 0;
          v26 = fmod(*v190.i64 + v183, 6.28318531) - v183;
          if (fabs(*v190.i64) <= *v191.i64)
          {
            v27 = *v190.i64;
          }

          else
          {
            v27 = v26;
          }

          v165 = 0.0;
          v168 = 25000000.0;
          __asm { FMOV            V0.2D, #-1.0 }

          v184 = _Q0;
          v164 = 1.0;
          do
          {
            if ((v24[107] & 0xFFFFFFFB) != 0)
            {
              v32 = v24[8];
              if (v32)
              {
                if (*(*(v24[4] + 8 * ((v32 + v24[7] - 1) / 0x1AuLL)) + 152 * ((v32 + v24[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v212 = off_1024DE5F8;
                  *v213 = v184;
                  v214 = xmmword_101C75BF0;
                  v215 = xmmword_101C75BF0;
                  v216 = v184;
                  v217 = v184;
                  v218 = 0xBFF0000000000000;
                  v219 = 0;
                  v220 = 0;
                  v33 = sub_10002980C((v24 + 25), &v197);
                  v34 = sub_10002A8E4((v24 + 25), &v212);
                  v35 = v24[8] + v24[7] - 1;
                  *v36.i64 = sub_10020CECC(*(v24[4] + 8 * (v35 / 0x1A)) + 152 * (v35 % 0x1A) + 16);
                  if (v33 && (v34 & 1) != 0)
                  {
                    v38 = *v36.i64;
                    v39 = *&v214;
                    v37.i64[0] = *&v213[16];
                    if (fabs(*&v213[16]) > *v191.i64)
                    {
                      v171 = *vbslq_s8(v179, v191, v37).i64;
                      *v37.i64 = fmod(*&v213[16] + v171, 6.28318531) - v171;
                    }

                    if (*v37.i64 >= 1.57079633)
                    {
                      v40 = v191;
                      *v37.i64 = *v191.i64 - *v37.i64;
                    }

                    else
                    {
                      if (*v37.i64 < -1.57079633)
                      {
                        *v37.i64 = -3.14159265 - *v37.i64;
                      }

                      v40 = v191;
                    }

                    v36.i64[0] = *&v213[24];
                    if (fabs(*&v213[24]) > *v40.i64)
                    {
                      v166 = *vbslq_s8(v179, v40, v36).i64;
                      v172 = v37.i64[0];
                      *v36.i64 = fmod(*&v213[24] + v166, 6.28318531);
                      v40 = v191;
                      v37.i64[0] = v172;
                      *v36.i64 = *v36.i64 - v166;
                    }

                    if (vabdd_f64(*v190.i64, *v36.i64) <= *v40.i64)
                    {
                      v45 = *v190.i64 - *v36.i64;
                    }

                    else
                    {
                      if (fabs(*v36.i64) > *v40.i64)
                      {
                        v167 = *vbslq_s8(v179, v40, v36).i64;
                        v173 = v37.i64[0];
                        *v36.i64 = fmod(*v36.i64 + v167, 6.28318531);
                        v40.i64[0] = v191.i64[0];
                        v37.i64[0] = v173;
                        *v36.i64 = *v36.i64 - v167;
                      }

                      if (vabdd_f64(*v36.i64, v27) <= *v40.i64)
                      {
                        v44 = *v36.i64 - v27;
                      }

                      else
                      {
                        v44 = *v36.i64 - v27 + dbl_101CFC5F0[*v36.i64 - v27 > *v40.i64];
                      }

                      v45 = *v190.i64 - (*v190.i64 + v44);
                    }

                    if (qword_1025D4770 != -1)
                    {
                      v174 = v37.i64[0];
                      sub_100224830();
                      v37.i64[0] = v174;
                    }

                    v46 = v38 * 50.0;
                    v47 = v186 * (v187 - *v37.i64) * (v186 * (v187 - *v37.i64)) + v23 * v45 * (v23 * v45);
                    v48 = sqrt(v47);
                    v49 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v50 = *(a2 + 16);
                      v51 = *(v24 + 212);
                      v52 = *(a2 + 124);
                      v53 = v24[102];
                      v54 = v24[103];
                      *buf = 134219520;
                      *v222 = v50;
                      *&v222[8] = 1024;
                      *&v222[10] = v51;
                      v223 = 2048;
                      v224 = v48;
                      v225 = 2048;
                      v226 = v46;
                      v227 = 1024;
                      *v228 = v52;
                      *&v228[4] = 2048;
                      *&v228[6] = v53;
                      v229 = 2048;
                      v230 = v54;
                      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#selection,gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x40u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v61 = *(a2 + 16);
                      v62 = *(v24 + 212);
                      v63 = *(a2 + 124);
                      v64 = v24[102];
                      v65 = v24[103];
                      v198 = 134219520;
                      v199 = v61;
                      v200 = 1024;
                      v201 = v62;
                      v202 = 2048;
                      v203 = v48;
                      v204 = 2048;
                      v205 = v46;
                      v206 = 1024;
                      v207 = v63;
                      v208 = 2048;
                      v209 = v64;
                      v210 = 2048;
                      v211 = v65;
                      v66 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v66);
                      if (v66 != buf)
                      {
                        free(v66);
                      }
                    }

                    v55 = 5000.0;
                    if (v46 >= 5000.0)
                    {
                      v55 = v46;
                    }

                    if (v48 < v55)
                    {
                      *buf = *(v24 + 212);
                      sub_100D711F0(&__p, __p, buf);
                      v56 = v39 * v39 * 0.5 + *(a2 + 40) * *(a2 + 40) * 0.5;
                      if (v47 < v56 * 9.0 && v47 < v168)
                      {
                        v181 = *(v24 + 212);
                        v165 = exp(v47 * -0.5 / v56);
                        v164 = 1.0 - *(v24 + 102) * v165;
                        v168 = v47;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v41 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v42 = *v7;
                      v43 = *(v24 + 212);
                      *buf = 134218240;
                      *v222 = v42;
                      *&v222[8] = 1024;
                      *&v222[10] = v43;
                      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", buf, 0x12u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v58 = *v7;
                      v59 = *(v24 + 212);
                      v198 = 134218240;
                      v199 = v58;
                      v200 = 1024;
                      v201 = v59;
                      v60 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v60);
                      if (v60 != buf)
                      {
                        free(v60);
                      }
                    }

                    v22 = 0;
                  }
                }
              }
            }

            v24 = *v24;
          }

          while (v24);
          v133 = *(a1 + 248);
          v134 = v165;
          v135 = v164;
          if (v133)
          {
            v136 = log(v164);
            v137 = log(v164 + v165);
            do
            {
              if ((v133[107] & 0xFFFFFFFB) != 0)
              {
                v138 = v133[8];
                if (v138)
                {
                  if (*(*(v133[4] + 8 * ((v138 + v133[7] - 1) / 0x1AuLL)) + 152 * ((v138 + v133[7] - 1) % 0x1AuLL) + 148) == 1)
                  {
                    v139 = *(v133 + 212);
                    if (v139 == v181)
                    {
                      *(v133 + 103) = v137 + *(v133 + 103);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v140 = qword_1025D4778;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v141 = *(v133 + 212);
                        v142 = *(a2 + 40);
                        v143 = v133[103];
                        *buf = 67110144;
                        *v222 = v141;
                        *&v222[4] = 2048;
                        *&v222[6] = v134;
                        v223 = 2048;
                        v224 = v135;
                        v225 = 2048;
                        v226 = v142;
                        v227 = 2048;
                        *v228 = v143;
                        _os_log_impl(dword_100000000, v140, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update gaussian aposteriori,hID,%d,gaussianProb,%.9f,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", buf, 0x30u);
                      }

                      if (!sub_10000A100(121, 2))
                      {
                        goto LABEL_194;
                      }

                      sub_101A7B5F4(buf);
                      v144 = *(v133 + 212);
                      v145 = *(a2 + 40);
                      v146 = v133[103];
                      LODWORD(v212) = 67110144;
                      HIDWORD(v212) = v144;
                      *v213 = 2048;
                      *&v213[2] = v134;
                      *&v213[10] = 2048;
                      *&v213[12] = v135;
                      *&v213[20] = 2048;
                      *&v213[22] = v145;
                      *&v213[30] = 2048;
                      *&v214 = v146;
                      v147 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v147);
                    }

                    else
                    {
                      v148 = __p;
                      if (__p != v193)
                      {
                        while (*v148 != v139)
                        {
                          if (++v148 == v193)
                          {
                            goto LABEL_188;
                          }
                        }
                      }

                      if (v148 == v193)
                      {
LABEL_188:
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v155 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v156 = *(v133 + 212);
                          v157 = v133[103];
                          *buf = 67109376;
                          *v222 = v156;
                          *&v222[4] = 2048;
                          *&v222[6] = v157;
                          _os_log_impl(dword_100000000, v155, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update hypothesis too far from fix,hID,%d outlier rejection for this fix,loglikelihood,%.5f", buf, 0x12u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v158 = *(v133 + 212);
                          v159 = v133[103];
                          LODWORD(v212) = 67109376;
                          HIDWORD(v212) = v158;
                          *v213 = 2048;
                          *&v213[2] = v159;
                          v160 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v160);
                          if (v160 != buf)
                          {
                            free(v160);
                          }

                          v134 = v165;
                          v135 = v164;
                        }

                        sub_1008F46C8(a1 + 3000);
                        goto LABEL_194;
                      }

                      *(v133 + 103) = v136 + *(v133 + 103);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v149 = qword_1025D4778;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v150 = *(v133 + 212);
                        v151 = *(a2 + 40);
                        v152 = *(v133 + 103);
                        *buf = 67109888;
                        *v222 = v150;
                        *&v222[4] = 2048;
                        *&v222[6] = v135;
                        v223 = 2048;
                        v224 = v151;
                        v225 = 2048;
                        v226 = v152;
                        _os_log_impl(dword_100000000, v149, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update gaussian aposteriori,hID,%d,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", buf, 0x26u);
                      }

                      if (!sub_10000A100(121, 2))
                      {
                        goto LABEL_194;
                      }

                      sub_101A7B5F4(buf);
                      v153 = *(a2 + 40);
                      v154 = v133[103];
                      v212 = __PAIR64__(*(v133 + 212), 67109888);
                      *v213 = 2048;
                      *&v213[2] = v135;
                      *&v213[10] = 2048;
                      *&v213[12] = v153;
                      *&v213[20] = 2048;
                      *&v213[22] = v154;
                      v147 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v147);
                    }

                    if (v147 != buf)
                    {
                      free(v147);
                    }

                    v134 = v165;
                    v135 = v164;
                  }
                }
              }

LABEL_194:
              v133 = *v133;
            }

            while (v133);
          }

          if (*&__p != 0.0)
          {
            v193 = __p;
            operator delete(__p);
          }
        }
      }

      else
      {
        v67 = *(a1 + 248);
        if (v67)
        {
          v68.f64[0] = NAN;
          v68.f64[1] = NAN;
          v180 = vnegq_f64(v68);
          v185 = *vbslq_s8(v180, v191, v190).i64;
          v69 = fmod(*v190.i64 + v185, 6.28318531) - v185;
          if (fabs(*v190.i64) <= *v191.i64)
          {
            v69 = *v190.i64;
          }

          v163 = v69;
          __asm { FMOV            V0.2D, #-1.0 }

          v182 = _Q0;
          v71 = 10000.0;
          do
          {
            if ((v67[107] & 0xFFFFFFFB) != 0)
            {
              v72 = v67[8];
              if (v72)
              {
                if (*(*(v67[4] + 8 * ((v72 + v67[7] - 1) / 0x1AuLL)) + 152 * ((v72 + v67[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v212 = off_1024DE5F8;
                  *v213 = v182;
                  v214 = xmmword_101C75BF0;
                  v215 = xmmword_101C75BF0;
                  v216 = v182;
                  v217 = v182;
                  v218 = 0xBFF0000000000000;
                  v219 = 0;
                  v220 = 0;
                  v73 = sub_10002980C((v67 + 25), &v197);
                  v74 = sub_10002A8E4((v67 + 25), &v212);
                  v75 = v67[8] + v67[7] - 1;
                  v78 = sub_10020CECC(*(v67[4] + 8 * (v75 / 0x1A)) + 152 * (v75 % 0x1A) + 16) * 50.0;
                  *&__p = v78;
                  if (v73 && (v74 & 1) != 0)
                  {
                    v77.i64[0] = *&v213[16];
                    if (fabs(*&v213[16]) > *v191.i64)
                    {
                      v175 = *vbslq_s8(v180, v191, v77).i64;
                      *v77.i64 = fmod(*&v213[16] + v175, 6.28318531) - v175;
                    }

                    if (*v77.i64 >= 1.57079633)
                    {
                      v79 = v191;
                      *v77.i64 = *v191.i64 - *v77.i64;
                    }

                    else
                    {
                      if (*v77.i64 < -1.57079633)
                      {
                        *v77.i64 = -3.14159265 - *v77.i64;
                      }

                      v79 = v191;
                    }

                    v76.i64[0] = *&v213[24];
                    if (fabs(*&v213[24]) > *v79.i64)
                    {
                      v169 = *vbslq_s8(v180, v79, v76).i64;
                      v176 = v77.i64[0];
                      *v76.i64 = fmod(*&v213[24] + v169, 6.28318531);
                      v79 = v191;
                      v77.i64[0] = v176;
                      *v76.i64 = *v76.i64 - v169;
                    }

                    if (vabdd_f64(*v190.i64, *v76.i64) <= *v79.i64)
                    {
                      v84 = *v190.i64 - *v76.i64;
                    }

                    else
                    {
                      if (fabs(*v76.i64) > *v79.i64)
                      {
                        v170 = *vbslq_s8(v180, v79, v76).i64;
                        v177 = v77.i64[0];
                        *v76.i64 = fmod(*v76.i64 + v170, 6.28318531);
                        v79.i64[0] = v191.i64[0];
                        v77.i64[0] = v177;
                        *v76.i64 = *v76.i64 - v170;
                      }

                      if (vabdd_f64(*v76.i64, v163) <= *v79.i64)
                      {
                        v83 = *v76.i64 - v163;
                      }

                      else
                      {
                        v83 = *v76.i64 - v163 + dbl_101CFC5F0[*v76.i64 - v163 > *v79.i64];
                      }

                      v84 = *v190.i64 - (*v190.i64 + v83);
                    }

                    if (qword_1025D4770 != -1)
                    {
                      v178 = v77.i64[0];
                      sub_100224830();
                      v77.i64[0] = v178;
                    }

                    v85 = sqrt(v186 * (v187 - *v77.i64) * (v186 * (v187 - *v77.i64)) + v23 * v84 * (v23 * v84));
                    v86 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v87 = *(a2 + 16);
                      v88 = *(v67 + 212);
                      v89 = *(a2 + 124);
                      v90 = v67[102];
                      v91 = v67[103];
                      *buf = 134219520;
                      *v222 = v87;
                      *&v222[8] = 1024;
                      *&v222[10] = v88;
                      v223 = 2048;
                      v224 = v85;
                      v225 = 2048;
                      v226 = v78;
                      v227 = 1024;
                      *v228 = v89;
                      *&v228[4] = 2048;
                      *&v228[6] = v90;
                      v229 = 2048;
                      v230 = v91;
                      _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "#selection,non-gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x40u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v123 = *(a2 + 16);
                      v124 = *(v67 + 212);
                      v125 = *(a2 + 124);
                      v126 = v67[102];
                      v127 = v67[103];
                      v198 = 134219520;
                      v199 = v123;
                      v200 = 1024;
                      v201 = v124;
                      v202 = 2048;
                      v203 = v85;
                      v204 = 2048;
                      v205 = v78;
                      v206 = 1024;
                      v207 = v125;
                      v208 = 2048;
                      v209 = v126;
                      v210 = 2048;
                      v211 = v127;
                      v128 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v128);
                      if (v128 != buf)
                      {
                        free(v128);
                      }
                    }

                    v92 = *(a2 + 40);
                    if ((*(a2 + 124) - 6) >= 3 && (sub_1000291EC((v67 + 1), (a2 + 16)), v78 = *&__p, (*(v67 + 226) - 6) > 2))
                    {
                      p_p = &__p;
                      if (*&__p < 5000.0)
                      {
                        p_p = &unk_101CFC6F0;
                      }
                    }

                    else
                    {
                      p_p = &unk_101CFC6E8;
                      if (v78 >= v71)
                      {
                        p_p = &__p;
                      }
                    }

                    v94 = fabs(v85);
                    if (v94 >= v92)
                    {
                      if (v94 >= *p_p)
                      {
                        v67[103] = 0xC0326BB1BBB55516;
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v116 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v117 = *v7;
                          v118 = *(v67 + 212);
                          v119 = *(v67 + 103);
                          *buf = 134218496;
                          *v222 = v117;
                          *&v222[8] = 1024;
                          *&v222[10] = v118;
                          v223 = 2048;
                          v224 = v119;
                          _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update hypothesis too far from fix,time_mct,%.3f,hID,%d,outlier rejection for this fix,logLikelihood,%.5f", buf, 0x1Cu);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v129 = *v7;
                          v130 = *(v67 + 212);
                          v131 = *(v67 + 103);
                          v198 = 134218496;
                          v199 = v129;
                          v200 = 1024;
                          v201 = v130;
                          v202 = 2048;
                          v203 = v131;
                          v132 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v132);
                          if (v132 != buf)
                          {
                            free(v132);
                          }
                        }

                        sub_1008F46C8(a1 + 3000);
                      }

                      else
                      {
                        *(v67 + 103) = *(v67 + 103) + fmin(-log((v92 + v92) * *&v214), -8.0);
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v108 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v109 = *v7;
                          v110 = *(v67 + 212);
                          v111 = *(v67 + 103);
                          *buf = 134218496;
                          *v222 = v109;
                          *&v222[8] = 1024;
                          *&v222[10] = v110;
                          v223 = 2048;
                          v224 = v111;
                          _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update uniform walkout aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", buf, 0x1Cu);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v112 = *v7;
                          v113 = *(v67 + 212);
                          v114 = *(v67 + 103);
                          v198 = 134218496;
                          v199 = v112;
                          v200 = 1024;
                          v201 = v113;
                          v202 = 2048;
                          v203 = v114;
                          v115 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v115);
                          if (v115 != buf)
                          {
                            free(v115);
                          }
                        }
                      }
                    }

                    else
                    {
                      v95 = v71;
                      v96 = *&v214;
                      v97 = erf((v92 - v85) / *&v214);
                      v98 = erf((-v92 - v85) / v96);
                      v99 = log(v97 - v98);
                      *(v67 + 103) = *(v67 + 103) + v99 - log((v92 + v92) * v96);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v100 = qword_1025D4778;
                      v71 = v95;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v101 = *v7;
                        v102 = *(v67 + 212);
                        v103 = *(v67 + 103);
                        *buf = 134218496;
                        *v222 = v101;
                        *&v222[8] = 1024;
                        *&v222[10] = v102;
                        v223 = 2048;
                        v224 = v103;
                        _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update uniform aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", buf, 0x1Cu);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101A7B5F4(buf);
                        v104 = *v7;
                        v105 = *(v67 + 212);
                        v106 = *(v67 + 103);
                        v198 = 134218496;
                        v199 = v104;
                        v200 = 1024;
                        v201 = v105;
                        v202 = 2048;
                        v203 = v106;
                        v107 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v107);
                        if (v107 != buf)
                        {
                          free(v107);
                        }

                        v71 = v95;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v80 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v81 = *v7;
                      v82 = *(v67 + 212);
                      *buf = 134218240;
                      *v222 = v81;
                      *&v222[8] = 1024;
                      *&v222[10] = v82;
                      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", buf, 0x12u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v120 = *v7;
                      v121 = *(v67 + 212);
                      v198 = 134218240;
                      v199 = v120;
                      v200 = 1024;
                      v201 = v121;
                      v122 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v122);
                      if (v122 != buf)
                      {
                        free(v122);
                      }
                    }

                    v22 = 0;
                  }
                }
              }
            }

            v67 = *v67;
          }

          while (v67);
        }
      }

      if (!v22 || !sub_10024B964(a1))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v161 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v161, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update failed. Resetting all likelihoods to be equal", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v212) = 0;
          v162 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v162);
          if (v162 != buf)
          {
            free(v162);
          }
        }

        sub_100D713B0(a1);
        return 0;
      }

      return 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error,fusion likelihood update, calc_dNdE failed", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101A7B5F4(buf);
      LOWORD(v212) = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v18);
LABEL_25:
      if (v18 != buf)
      {
        free(v18);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#selection,No valid hypothesis available for likelihood update", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101A7B5F4(buf);
      LOWORD(v212) = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v18);
      goto LABEL_25;
    }
  }

  return result;
}

void sub_100211EB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100211EF8(uint64_t a1)
{
  v3 = (a1 + 248);
  v2 = *(a1 + 248);
  if (v2)
  {
    do
    {
      sub_100207D3C((v2 + 1), (a1 + 200));
      v2 = *v2;
    }

    while (v2);
    v4 = *v3;
    *buf = 0;
    if (v4)
    {
      v5 = v3;
      do
      {
        v6 = sub_10021BE40((v4 + 1));
        v7 = *v5;
        if (v6)
        {
          do
          {
            v7 = *v7;
          }

          while (v7 && sub_10021BE40((v7 + 1)));
          if (buf != v5 && v5 != v7)
          {
            v8 = v5;
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8 != v7);
            if (v9 != v5)
            {
              *v9 = *buf;
              *buf = *v5;
              *v5 = v7;
            }
          }

          if (!v7)
          {
            break;
          }
        }

        v4 = *v7;
        v5 = v7;
      }

      while (*v7);
    }
  }

  else
  {
    *buf = 0;
  }

  v46 = v3;
  sub_10020AB0C(buf);
  v10 = (a1 + 224);
  v11 = *(a1 + 224);
  v12 = (a1 + 232);
  if (v11 != (a1 + 232))
  {
    do
    {
      sub_100207D3C((v11 + 5), (a1 + 200));
      if (v11[12])
      {
        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v16 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v11 + 220);
          v18 = sub_1001FD6E4(*(v11 + 8));
          *buf = 67240450;
          *&buf[4] = v17;
          *&buf[8] = 2082;
          *&buf[10] = v18;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#fusion,purging,provider specific hypothesis with empty buffer is erased,hID,%{public}d,type,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v19 = *(v11 + 220);
          v20 = sub_1001FD6E4(*(v11 + 8));
          *v50 = 67240450;
          *&v50[4] = v19;
          *&v50[8] = 2082;
          *&v50[10] = v20;
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v14 = sub_10045E8A0((a1 + 224), v11);
        sub_1008572E0((v11 + 5));
        operator delete(v11);
      }

      v11 = v14;
    }

    while (v14 != v12);
  }

  v49 = a1;
  *v50 = 0;
  *buf = a1;
  v22 = *(a1 + 248);
  if (v22)
  {
    v23 = v3;
    do
    {
      v24 = sub_10021274C(buf, (v22 + 1));
      v25 = *v23;
      if (v24)
      {
        do
        {
          v25 = *v25;
        }

        while (v25 && sub_10021274C(buf, (v25 + 1)));
        if (v50 != v23 && v23 != v25)
        {
          v26 = v23;
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26 != v25);
          if (v27 != v23)
          {
            *v27 = *v50;
            *v50 = *v23;
            *v23 = v25;
          }
        }

        if (!v25)
        {
          break;
        }
      }

      v22 = *v25;
      v23 = v25;
    }

    while (*v25);
  }

  sub_10020AB0C(v50);
  v28 = *v10;
  if (*v10 != v12)
  {
    do
    {
      if (sub_10021274C(&v49, (v28 + 5)))
      {
        v29 = sub_10045E8A0((a1 + 224), v28);
        sub_1008572E0((v28 + 5));
        operator delete(v28);
      }

      else
      {
        v30 = v28[1];
        if (v30)
        {
          do
          {
            v29 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v29 = v28[2];
            v15 = *v29 == v28;
            v28 = v29;
          }

          while (!v15);
        }
      }

      v28 = v29;
    }

    while (v29 != v12);
  }

  v48 = a1;
  v31 = *(a1 + 248);
  if (v31)
  {
    v32 = 0;
    do
    {
      ++v32;
      v31 = *v31;
    }

    while (v31);
    if ((v32 - 1) >= 0xC)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v33 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v32;
        *&buf[12] = 2050;
        *&buf[14] = 12;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#fusion,purging,maximum number of fused hypotheses reached,number,%{public}zu,max,%{public}zu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *v50 = 134349312;
        *&v50[4] = v32;
        *&v50[12] = 2050;
        *&v50[14] = 12;
        v45 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      v47 = v32 - 12;
      sub_100D6FBB0(&v48, &v47, 0);
      if (v47 >= 1)
      {
        sub_100D6FBB0(&v48, &v47, 4);
        if (v47 >= 1)
        {
          sub_100D6FBB0(&v48, &v47, 3);
          if (v47 >= 1)
          {
            sub_100D6FBB0(&v48, &v47, 1);
            if (v47 >= 1)
            {
              v34 = 13;
              v35 = v46;
              do
              {
                v35 = *v35;
                --v34;
              }

              while (v34 > 1);
              for (; v35; v35 = *v35)
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v36 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v37 = *(v35 + 64);
                  if (v37)
                  {
                    v38 = *(*(*(v35 + 32) + 8 * ((v37 + *(v35 + 56) - 1) / 0x1AuLL)) + 152 * ((v37 + *(v35 + 56) - 1) % 0x1AuLL) + 32);
                  }

                  else
                  {
                    v38 = 0xBFF0000000000000;
                  }

                  v39 = *(v35 + 848);
                  *buf = 67240704;
                  *&buf[4] = v39;
                  *&buf[8] = 2050;
                  *&buf[10] = v38;
                  *&buf[18] = 2050;
                  *&buf[20] = v37;
                  _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#fusion,purging,active fused hypothesis deleted,hID,%{public}d,lastFusedLocation_mct,%{public}.3f,bufferSize,%{public}zu", buf, 0x1Cu);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4770 != -1)
                  {
                    sub_100224830();
                  }

                  v40 = *(v35 + 848);
                  v41 = *(v35 + 64);
                  if (v41)
                  {
                    v42 = *(*(*(v35 + 32) + 8 * ((v41 + *(v35 + 56) - 1) / 0x1AuLL)) + 152 * ((v41 + *(v35 + 56) - 1) % 0x1AuLL) + 32);
                  }

                  else
                  {
                    v42 = 0xBFF0000000000000;
                  }

                  *v50 = 67240704;
                  *&v50[4] = v40;
                  *&v50[8] = 2050;
                  *&v50[10] = v42;
                  *&v50[18] = 2050;
                  *&v50[20] = v41;
                  v43 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v43);
                  if (v43 != buf)
                  {
                    free(v43);
                  }
                }
              }

              sub_100D6FEB8(v46, 0, 0);
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_1002126FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10037EA9C(exception_object);
}

uint64_t sub_10021274C(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 840);
      *buf = 67240192;
      v44 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#fusion,purging,hypothesis with empty buffer is erased,hID,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B8F4(a2);
    }

    return 1;
  }

  v3 = *a1;
  v4 = sub_100215A40(a2, *(*a1 + 200));
  if (*(a2 + 848) == 1 && v4 > 15.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a2 + 840);
      v20 = *(a2 + 848);
      v21 = *(a2 + 56);
      *buf = 67241216;
      v44 = v19;
      v45 = 1026;
      *v46 = v20;
      *&v46[4] = 2050;
      *&v46[6] = v21;
      *&v46[14] = 2050;
      *&v46[16] = v4;
      v47 = 2050;
      v48 = 0x402E000000000000;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#fusion,purging,stale tentative hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f", buf, 0x2Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v31 = *(a2 + 840);
    v32 = *(a2 + 848);
    v33 = *(a2 + 56);
    LODWORD(__p) = 67241216;
    HIDWORD(__p) = v31;
    v37 = 1026;
    *v38 = v32;
    *&v38[4] = 2050;
    *&v38[6] = v33;
    *&v38[14] = 2050;
    *&v38[16] = v4;
    v39 = 2050;
    v40 = 0x402E000000000000;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v15);
LABEL_55:
    if (v15 != buf)
    {
      free(v15);
    }

    goto LABEL_27;
  }

  if (v4 <= 30.0)
  {
    return 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 840);
    v8 = *(a2 + 848);
    v9 = *(a2 + 56);
    v10 = *(a2 + 844);
    *buf = 67241472;
    v44 = v7;
    v45 = 1026;
    *v46 = v8;
    *&v46[4] = 2050;
    *&v46[6] = v9;
    *&v46[14] = 2050;
    *&v46[16] = v4;
    v47 = 2050;
    v48 = 0x403E000000000000;
    v49 = 1026;
    v50 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,purging,stale hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f,numLostDataAssociation,%{public}u", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v11 = *(a2 + 840);
    v12 = *(a2 + 848);
    v13 = *(a2 + 56);
    v14 = *(a2 + 844);
    LODWORD(__p) = 67241472;
    HIDWORD(__p) = v11;
    v37 = 1026;
    *v38 = v12;
    *&v38[4] = 2050;
    *&v38[6] = v13;
    *&v38[14] = 2050;
    *&v38[16] = v4;
    v39 = 2050;
    v40 = 0x403E000000000000;
    v41 = 1026;
    v42 = v14;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v15);
    goto LABEL_55;
  }

LABEL_27:
  if (!*(v3 + 1104) || *(a2 + 840) != *(v3 + 1096) || !sub_100125424(v3 + 2424, *(v3 + 200), -1.0) || *(v3 + 200) - *(v3 + 256) >= 900.0)
  {
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v22 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a2 + 840);
    v24 = *(v3 + 200) - *(v3 + 256);
    sub_1001FCE40(v3 + 2424, &__p);
    v25 = v38[13] >= 0 ? &__p : __p;
    *buf = 67240706;
    v44 = v23;
    v45 = 2050;
    *v46 = v24;
    *&v46[8] = 2082;
    *&v46[10] = v25;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#fusion,purging skipped,to avoid losing the selected/yielding hypothesis,hID,%{public}d,elapsed time since last location update_s,%{public}.1f,LatestMotionActivity,%{public}s", buf, 0x1Cu);
    if ((v38[13] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v27 = *(a2 + 840);
    v28 = *(v3 + 200) - *(v3 + 256);
    sub_1001FCE40(v3 + 2424, v34);
    if (v35 >= 0)
    {
      v29 = v34;
    }

    else
    {
      v29 = v34[0];
    }

    LODWORD(__p) = 67240706;
    HIDWORD(__p) = v27;
    v37 = 2050;
    *v38 = v28;
    *&v38[8] = 2082;
    *&v38[10] = v29;
    v30 = _os_log_send_and_compose_impl();
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }

    return 0;
  }

  return result;
}

void *sub_100212DE4(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x1A));
      v8 = (*v7 + 152 * (v6 % 0x1A));
    }

    sub_100207E00(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  }

  return a1;
}

uint64_t *sub_100212E9C(uint64_t a1, unsigned int *a2)
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

uint64_t sub_100212F7C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2880) - 3) >= 2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#Error,get fused location failed, Fusion is not in the running state", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_23;
  }

  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  if (!*(a1 + 1284))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,getFusedLocation,fused location type is Unknown", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (*(a1 + 1200) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v12 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,getFusedLocation,get fused location: failed, hunc <= 0", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

LABEL_23:
    sub_101A7B5F4(buf);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v13);
LABEL_31:
    if (v13 != buf)
    {
      free(v13);
    }

    return 0;
  }

  if (sub_10002790C(a1 + 1160, a2))
  {
    *(a2 + 88) = *(a1 + 104);
    *(a2 + 84) = *(a1 + 100);
    *a2 = *(a1 + 16);
    *(a2 + 124) = *(a1 + 140);
    *(a2 + 100) = *(a1 + 116);
    *(a2 + 116) = *(a1 + 132);
    *(a2 + 144) = *(a1 + 160);
    *(a2 + 136) = *(a1 + 152);
    *(a2 + 152) = *(a1 + 168);
    result = 1;
    *(a2 + 132) = 1;
    return result;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v14 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#fusion,getFusedLocation,failed to convert to daemon location", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v13);
    goto LABEL_31;
  }

  return result;
}

void sub_100213470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10021347C(uint64_t a1)
{
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 160))();
  }

  return result;
}

uint64_t sub_1002134AC(uint64_t a1)
{
  v1 = *(a1 + 4344);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 128);
  }

  return v1 & 1;
}

uint64_t sub_1002134C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 4344);
  if (result)
  {
    return sub_10020DB20(result, a2, a3);
  }

  return result;
}

void sub_1002134D0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    if (*(a1 + 130) != 1)
    {
      return;
    }

    if ((*(a1 + 152) & 1) != 0 || ((v13 = *(a1 + 11704), v14 = vabdd_f64(*(a3 + 32), v13), v13 > 0.0) ? (v15 = v14 <= 24.0) : (v15 = 0), v15))
    {
LABEL_3:
      if (*(a1 + 129) == 1)
      {
        sub_1001F348C(&v35);
        sub_10081F970(a2, &v35);
        sub_1001F4008(&buf);
        sub_1008205DC(a3, &buf);
        v6 = sub_101138B44();
        sub_101139530(v6, &v35, &buf, 0);
        sub_1004246B0(&buf);
        sub_100421AA0(&v35);
      }

      if (*(a1 + 130) == 1)
      {
        sub_101015620((a1 + 152), a2, a3);
      }

      if (*(a1 + 32) == 1 && (*(a1 + 13792) & 1) == 0)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10196E618();
        }

        v7 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLVC,handleLocationNotification,Download DEM tiles", &buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196E5D4(&buf);
          LOWORD(v35) = 0;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLVisionController::handleLocationNotification(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v20);
          if (v20 != &buf)
          {
            free(v20);
          }
        }

        v8 = a2[7];
        v32 = a2[6];
        v33 = v8;
        v34[0] = a2[8];
        *(v34 + 12) = *(a2 + 140);
        v9 = a2[3];
        v28 = a2[2];
        v29 = v9;
        v10 = a2[5];
        v30 = a2[4];
        v31 = v10;
        v11 = a2[1];
        v26 = *a2;
        v27 = v11;
        v12 = *(a1 + 24);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v24 = sub_100905DF4;
        v25 = &unk_10246A7A0;
        [v12 downloadIfNeeded:objc_msgSend(&buf signalQuality:"copy") allowCenterOverCellular:0 ringsToDownloadOverCellular:{1, 1}];
        *(a1 + 13792) = 1;
      }
    }

    else if (v13 > 0.0)
    {
      if (*(a1 + 129) == 1)
      {
        sub_1001F348C(&v35);
        sub_10081F970(a2, &v35);
        sub_1001F4008(&buf);
        sub_1008205DC(a3, &buf);
        v16 = sub_101138B44();
        sub_101139530(v16, &v35, &buf, 0);
        v17 = sub_101138B44();
        sub_10106A17C(v17);
        sub_1004246B0(&buf);
        sub_100421AA0(&v35);
      }

      sub_10101085C(a1 + 152);
      if (qword_1025D46A0 != -1)
      {
        sub_10196E618();
      }

      v18 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a3 + 32);
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLVC,handleLocationNotification,manual location fuser reset,machAbsTime,%{public}.3lf", &buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196E5D4(&buf);
        v21 = *(a3 + 32);
        v35 = 134349056;
        v36 = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLVisionController::handleLocationNotification(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v22);
        if (v22 != &buf)
        {
          free(v22);
        }
      }
    }
  }
}

void sub_100213940(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10021394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 4344);
  if (v3)
  {
    sub_10021395C(v3, a2, a3);
  }
}

void sub_10021395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128) == 1)
  {
    if ((*(a1 + 32) & 1) != 0 || *(a1 + 130) == 1 && ((*(a1 + 152) & 1) != 0 || ((v6 = *(a1 + 11704), v7 = vabdd_f64(*(a3 + 32), v6), v6 > 0.0) ? (v8 = v7 <= 24.0) : (v8 = 0), v8)))
    {
      if (*(a1 + 129) == 1)
      {
        sub_1001F348C(v10);
        sub_10081F970(a2, v10);
        sub_1001F4008(v9);
        sub_1008205DC(a3, v9);
        v5 = sub_101138B44();
        sub_101139530(v5, v10, v9, 1);
        sub_1004246B0(v9);
        sub_100421AA0(v10);
      }
    }
  }
}

void sub_100213A34(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5[0] = a2;
  v5[1] = &v6 + 1;
  v5[2] = &v6;
  sub_10000EC00(__p, "InAWeek");
  sub_100213BCC(v5, *(a1 + 3720), @"CLBaroAltCalibrationCountMMForAWeek", @"CLBaroAltCalibrationCountOutdoorContextForAWeek", @"CLBaroAltAppropriateToCalibrateCountForAWeek", @"CLBaroAltCalibrationCountOnlyUsedDEMForAWeek", @"CLBaroAltCalibrationCountUsedDEMandRefPressureForAWeek", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeForAWeek", __p, a1 + 3608, a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(__p, "InAMonth");
  sub_100213BCC(v5, *(a1 + 3728), @"CLBaroAltCalibrationCountMMForAMonth", @"CLBaroAltCalibrationCountOutdoorContextForAMonth", @"CLBaroAltAppropriateToCalibrateCountForAMonth", @"CLBaroAltCalibrationCountOnlyUsedDEMForAMonth", @"CLBaroAltCalibrationCountUsedDEMandRefPressureForAMonth", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeForAMonth", __p, a1 + 3640, a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(__p, "In3Months");
  sub_100213BCC(v5, *(a1 + 3736), @"CLBaroAltCalibrationCountMMFor3Months", @"CLBaroAltCalibrationCountOutdoorContextFor3Months", @"CLBaroAltAppropriateToCalibrateCountFor3Months", @"CLBaroAltCalibrationCountOnlyUsedDEMFor3Months", @"CLBaroAltCalibrationCountUsedDEMandRefPressureFor3Months", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeFor3Months", __p, a1 + 3672, a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100213BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100213BCC(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFString *a8, void ***a9, uint64_t a10, uint64_t *a11)
{
  v56 = sub_1000081AC();
  if (*a11)
  {
    v15 = sub_100020640(*a11, &v56);
    v16 = sub_100021618(v15, *(a10 + 24), 315360000.0);
  }

  else
  {
    v16 = 0.0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v17 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    if (*(a9 + 23) >= 0)
    {
      v18 = a9;
    }

    else
    {
      v18 = *a9;
    }

    *buf = 136315650;
    *&buf[4] = v18;
    *&buf[12] = 2050;
    *&buf[14] = v16;
    *&buf[22] = 2050;
    v75 = a2;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,uploadToAnalyticsCheck,durationSinceStartMonitoringTimeSec,%{public}.3lf,baroAltCalibrationUploadThreshold,%{public}.3lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    if (*(a9 + 23) >= 0)
    {
      v49 = a9;
    }

    else
    {
      v49 = *a9;
    }

    v57 = 136315650;
    v58[0] = v49;
    LOWORD(v58[1]) = 2050;
    *(&v58[1] + 2) = v16;
    WORD1(v58[2]) = 2050;
    *(&v58[2] + 4) = a2;
    v50 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const std::string &, const double, BarometricAltitudeCalibrationAnalyticsData &, const std::unique_ptr<CLBarometricAltimeterCore> &) const", "%s\n", v50);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  if (fabs(v16) > a2)
  {
    *(v58 + 4) = 0xBFF0000000000000;
    memset(&v58[1] + 4, 0, 60);
    LOBYTE(v57) = 1;
    if (*a11)
    {
      *(v58 + 4) = sub_100020640(*a11, &v56);
      if (SBYTE3(v58[4]) < 0)
      {
        *(&v58[2] + 4) = 19;
        v19 = *(&v58[1] + 4);
        goto LABEL_18;
      }
    }

    else
    {
      *(v58 + 4) = 0;
    }

    v19 = &v58[1] + 4;
    BYTE3(v58[4]) = 19;
LABEL_18:
    strcpy(v19, "com.apple.locationd");
    HIDWORD(v58[4]) = vcvtad_u64_f64(v16);
    *&v58[5] = *a10;
    LODWORD(v58[7]) = *(a10 + 16);
    v20 = (*a1 + 4);
    *(&v58[7] + 4) = vcvt_f32_f64(*v20);
    sub_100226520(v20->f64, &v20->f64[1], &v58[8] + 1);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (*(a9 + 23) >= 0)
      {
        v22 = a9;
      }

      else
      {
        v22 = *a9;
      }

      *buf = 136317443;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v58[4]);
      *&buf[18] = 1024;
      *&buf[20] = v58[5];
      LOWORD(v75) = 1024;
      *(&v75 + 2) = HIDWORD(v58[5]);
      HIWORD(v75) = 1024;
      *v76 = v58[6];
      *&v76[4] = 1024;
      *&v76[6] = HIDWORD(v58[6]);
      v77 = 1024;
      v78 = v58[7];
      v79 = 2053;
      v80 = *(&v58[7] + 1);
      v81 = 2053;
      v82 = *&v58[8];
      v83 = 1029;
      v84 = HIDWORD(v58[8]);
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#gnssca Submit BaroAltitudeCalibrationInfo session metric to CA,%s,durationSinceStartMonitoringTimeSec,%d,calibrationCountMM,%d,calibrationCountOutdoorContext,%d,appropriateToCalibrateCount,%d,calibrationCountOnlyUsedDEM,%d,calibrationCountUsedDEMandRefPressure,%d,deresFinalLatitude,%{sensitive}.7f,deresFinalLongitude,%{sensitive}.7f,deweightedAreaID,%{sensitive}d", buf, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101745A7C(buf);
      v51 = *(a9 + 23) >= 0 ? a9 : *a9;
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136317443;
      *(__dst.__r_.__value_.__r.__words + 4) = v51;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = HIDWORD(v58[4]);
      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v58[5];
      v60 = 1024;
      v61 = HIDWORD(v58[5]);
      v62 = 1024;
      v63 = v58[6];
      v64 = 1024;
      v65 = HIDWORD(v58[6]);
      v66 = 1024;
      v67 = v58[7];
      v68 = 2053;
      v69 = *(&v58[7] + 1);
      v70 = 2053;
      v71 = *&v58[8];
      v72 = 1029;
      v73 = HIDWORD(v58[8]);
      v52 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CLDaemonStats_Type::BarometricAltitudeCalibrationData &, const std::string &) const", "%s\n", v52);
      if (v52 != buf)
      {
        free(v52);
      }
    }

    memset(&__dst, 0, sizeof(__dst));
    v23 = *(a9 + 23);
    if ((v23 & 0x80) != 0)
    {
      v25 = a9[1];
      if (v25 != 7)
      {
        if (v25 != 8)
        {
          if (v25 != 9)
          {
            goto LABEL_64;
          }

          v24 = *a9;
          goto LABEL_35;
        }

        v31 = **a9;
LABEL_49:
        if (v31 != 0x68746E6F4D416E49)
        {
          goto LABEL_64;
        }

        v29 = "com.apple.locationd.position.BaroAltitudeCalibrationInAMonth";
        v30 = 60;
        goto LABEL_57;
      }

      if (**a9 != 1463905865 || *(*a9 + 3) != 1801807191)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v23 != 7)
      {
        if (v23 != 8)
        {
          v24 = a9;
          if (v23 != 9)
          {
            goto LABEL_64;
          }

LABEL_35:
          v26 = *v24;
          v27 = *(v24 + 8);
          if (v26 != 0x68746E6F4D336E49 || v27 != 115)
          {
            goto LABEL_64;
          }

          v29 = "com.apple.locationd.position.BaroAltitudeCalibrationIn3Months";
          v30 = 61;
          goto LABEL_57;
        }

        v31 = *a9;
        goto LABEL_49;
      }

      if (*a9 != 1463905865 || *(a9 + 3) != 1801807191)
      {
        goto LABEL_64;
      }
    }

    v29 = "com.apple.locationd.position.BaroAltitudeCalibrationInfo";
    v30 = 56;
LABEL_57:
    sub_100006BE0(&__dst, v29, v30);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
      if (!__dst.__r_.__value_.__l.__size_)
      {
LABEL_63:
        operator delete(p_dst);
        goto LABEL_64;
      }
    }

    else
    {
      if (!*(&__dst.__r_.__value_.__s + 23))
      {
        goto LABEL_64;
      }

      p_dst = &__dst;
    }

    [NSString stringWithUTF8String:p_dst];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1017447D0;
    v75 = COERCE_DOUBLE(&unk_102449CF8);
    *v76 = &v57;
    AnalyticsSendEventLazy();
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_63;
    }

LABEL_64:
    v35 = sub_1000206B4();
    sub_1004FA94C(v35);
    v36 = sub_1000206B4();
    sub_1004FA94C(v36);
    v37 = sub_1000206B4();
    sub_1004FA94C(v37);
    v38 = sub_1000206B4();
    sub_1004FA94C(v38);
    v39 = sub_1000206B4();
    sub_1004FA94C(v39);
    v40 = sub_1000206B4();
    sub_1004FA94C(v40);
    v41 = sub_1000206B4();
    (*(*v41 + 944))(v41);
    *(a10 + 24) = 0;
    v42 = (a10 + 24);
    *a10 = 0;
    *(a10 + 8) = 0;
    *(a10 + 16) = 0;
    if (*a11)
    {
      v43 = sub_100020640(*a11, &v56);
    }

    else
    {
      v43 = 0.0;
    }

    *v42 = v43;
    v44 = sub_1000206B4();
    sub_100116DD4(v44, a8, (a10 + 24));
    v45 = sub_1000206B4();
    (*(*v45 + 944))(v45);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v46 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      if (*(a9 + 23) >= 0)
      {
        v47 = a9;
      }

      else
      {
        v47 = *a9;
      }

      v48 = *v42;
      *buf = 136315394;
      *&buf[4] = v47;
      *&buf[12] = 2050;
      *&buf[14] = v48;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,RestoreStartMonitoringCalibrationTimeForAnalytics,%{public}lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101745A7C(buf);
      if (*(a9 + 23) >= 0)
      {
        v53 = a9;
      }

      else
      {
        v53 = *a9;
      }

      v54 = *v42;
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v53;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2050;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = v54;
      v55 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const std::string &, const double, BarometricAltitudeCalibrationAnalyticsData &, const std::unique_ptr<CLBarometricAltimeterCore> &) const", "%s\n", v55);
      if (v55 != buf)
      {
        free(v55);
      }
    }

    if (SBYTE3(v58[4]) < 0)
    {
      operator delete(*(&v58[1] + 4));
    }
  }
}

void sub_100214510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100214550(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a2 + 384);
  if (v3 > 0.0 && v3 < 12.0)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_100214578(uint64_t *a1, double *a2, uint64_t a3, double *a4, void *a5)
{
  if (*a1)
  {
    if (*(a1 + 269) <= *(a1 + 255))
    {
      v9 = *(a1 + 255);
    }

    else
    {
      v9 = *(a1 + 269);
    }

    v10 = sub_100020640(*a1, a2);
    *a4 = sub_100021618(v10, v9, -1.0);
    v11 = *a1;

    sub_100217A60(v11, a5, a3);
  }

  else
  {
    *a4 = -1.0;
    *a5 = 0xBFF0000000000000;
  }
}

double sub_100214630(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a3 + 316);
  v9 = fabs(v8);
  if ((*(a3 + 312) - 1) > 0xFFFFFFFD || v9 <= 2.22044605e-16)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "BaroAlt,invalid undulation model, use last known best undulation", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016BC030();
    }

    sub_100214CE0(*(a1 + 592), (a1 + 192), (a1 + 200), a4);
    v12 = *(a3 + 376) + *(a1 + 192);
  }

  else
  {
    v12 = *(a3 + 376) + v8;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1016BBF2C();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v14 = *(a2 + 64);
    v15 = *(a3 + 376);
    v16 = *(a3 + 316);
    v17 = *(a3 + 312);
    v18 = *(a1 + 192);
    v19 = *(a1 + 200);
    *buf = 134350593;
    v23 = v14;
    v24 = 2049;
    v25 = v12;
    v26 = 2049;
    v27 = v15;
    v28 = 2050;
    v29 = v16;
    v30 = 1026;
    v31 = v17;
    v32 = 2050;
    v33 = v18;
    v34 = 1026;
    v35 = v19;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "BaroAlt,compute wgs84 altitude for calibration,time,%{public}.lf,groundAltitudeWgs84,%{private}.3lf,groundAltitude,%{private}.3lf,undulationIn,%{public}.3lf,undulationInModel,%{public}d,storedUndulation,%{public}.3lf,storedUndulationModel,%{public}d", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "double CLBarometricAltimeterCore::getGroundAltInWgs84(const CLBaroAltEstimatorInput &, const CFAbsoluteTime, const CLDaemonLocationPrivate &)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return v12;
}

void sub_100214948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 12);
  if (v5 < -180.0 || (v6 = *(a3 + 4), fabs(v6) > 90.0) || v5 > 180.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a2 + 64);
      v16 = *(a3 + 4);
      v17 = *(a3 + 12);
      *buf = 134349569;
      v31 = v15;
      v32 = 2053;
      v33 = v16;
      v34 = 2053;
      v35 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "BaroAlt,#Warning,time,%{public}lf,invalid location for DMA undulation look up,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v20 = *(a2 + 64);
      v21 = *(a3 + 4);
      v22 = *(a3 + 12);
      v24 = 3.9124e-34;
      v25 = v20;
      v26 = 2053;
      v27 = v21;
      v28 = 2053;
      v29 = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLBarometricAltimeterCore::lookUpDMAUndulationIfNeeded(CLBaroAltEstimatorInput &, const CLDaemonLocation &)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  else
  {
    v8 = (a1 + 192);
    v9 = (a1 + 200);
    v10 = fabs(*(a1 + 192));
    if ((*(a1 + 200) - 1) > 0xFFFFFFFD || v10 <= 2.22044605e-16)
    {
      v24 = 0.0;
      if (sub_1001D381C(&v24, v6, v5))
      {
        if (qword_1025D4600 != -1)
        {
          sub_1016BBF2C();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 64);
          *buf = 134349312;
          v31 = v13;
          v32 = 2050;
          v33 = v24;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "BaroAlt,time,%{public}lf,no undulation knowledge yet,fall back to DMA altitude,undulation,%{public}lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016BD410();
        }

        sub_100218038(*(a1 + 592), 1, v24, *(a3 + 76));
        sub_100214CE0(*(a1 + 592), v8, v9, *(a3 + 76));
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1016BBF2C();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a2 + 64);
          *buf = 134349056;
          v31 = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "BaroAlt,#Warning,time,%{public}lf,failed to get DMA altitude", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016BD308(a2);
        }
      }
    }
  }
}